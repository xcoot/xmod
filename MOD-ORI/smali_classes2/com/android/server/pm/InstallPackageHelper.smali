.class public final Lcom/android/server/pm/InstallPackageHelper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mApexManager:Lcom/android/server/pm/ApexManager;

.field public final mAppDataHelper:Lcom/android/server/pm/AppDataHelper;

.field public final mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

.field public final mContext:Landroid/content/Context;

.field public final mDeletePackageHelper:Lcom/android/server/pm/DeletePackageHelper;

.field public final mDexManager:Lcom/android/server/pm/dex/DexManager;

.field public final mIncrementalManager:Landroid/os/incremental/IncrementalManager;

.field public final mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

.field public final mMonetizationUtils:Lcom/samsung/android/server/pm/monetization/MonetizationUtils;

.field public final mPackageAbiHelper:Lcom/android/server/pm/PackageAbiHelper;

.field public final mPm:Lcom/android/server/pm/PackageManagerService;

.field public final mPreloadDuplicateApps:Lcom/samsung/android/server/pm/install/PreloadDuplicateApps;

.field public final mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

.field public final mSharedLibraries:Lcom/android/server/pm/SharedLibrariesImpl;

.field public final mUpdateOwnershipHelper:Lcom/android/server/pm/UpdateOwnershipHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/AppDataHelper;Lcom/android/server/pm/RemovePackageHelper;Lcom/android/server/pm/DeletePackageHelper;Lcom/android/server/pm/BroadcastHelper;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/samsung/android/server/pm/install/PreloadDuplicateApps;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/samsung/android/server/pm/install/PreloadDuplicateApps;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPreloadDuplicateApps:Lcom/samsung/android/server/pm/install/PreloadDuplicateApps;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 12
    .line 13
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 16
    .line 17
    iput-object p2, p0, Lcom/android/server/pm/InstallPackageHelper;->mAppDataHelper:Lcom/android/server/pm/AppDataHelper;

    .line 18
    .line 19
    iput-object p5, p0, Lcom/android/server/pm/InstallPackageHelper;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    .line 20
    .line 21
    iput-object p3, p0, Lcom/android/server/pm/InstallPackageHelper;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    .line 22
    .line 23
    iput-object p4, p0, Lcom/android/server/pm/InstallPackageHelper;->mDeletePackageHelper:Lcom/android/server/pm/DeletePackageHelper;

    .line 24
    .line 25
    iget-object p2, v0, Lcom/android/server/pm/PackageManagerServiceInjector;->mIncrementalManagerProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    .line 26
    .line 27
    iget-object p3, v0, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    .line 28
    .line 29
    invoke-virtual {p2, p3, v0}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    check-cast p2, Landroid/os/incremental/IncrementalManager;

    .line 34
    .line 35
    iput-object p2, p0, Lcom/android/server/pm/InstallPackageHelper;->mIncrementalManager:Landroid/os/incremental/IncrementalManager;

    .line 36
    .line 37
    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 38
    .line 39
    iget-object p2, p1, Lcom/android/server/pm/PackageManagerServiceInjector;->mApexManagerProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    .line 40
    .line 41
    iget-object p3, p1, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    .line 42
    .line 43
    invoke-virtual {p2, p3, p1}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    check-cast p2, Lcom/android/server/pm/ApexManager;

    .line 48
    .line 49
    iput-object p2, p0, Lcom/android/server/pm/InstallPackageHelper;->mApexManager:Lcom/android/server/pm/ApexManager;

    .line 50
    .line 51
    iget-object p2, p1, Lcom/android/server/pm/PackageManagerServiceInjector;->mDexManagerProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    .line 52
    .line 53
    iget-object p3, p1, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    .line 54
    .line 55
    invoke-virtual {p2, p3, p1}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    check-cast p2, Lcom/android/server/pm/dex/DexManager;

    .line 60
    .line 61
    iput-object p2, p0, Lcom/android/server/pm/InstallPackageHelper;->mDexManager:Lcom/android/server/pm/dex/DexManager;

    .line 62
    .line 63
    iget-object p2, p1, Lcom/android/server/pm/PackageManagerServiceInjector;->mArtManagerServiceProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    .line 64
    .line 65
    iget-object p3, p1, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    .line 66
    .line 67
    invoke-virtual {p2, p3, p1}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    check-cast p2, Lcom/android/server/pm/dex/ArtManagerService;

    .line 72
    .line 73
    iget-object p2, p1, Lcom/android/server/pm/PackageManagerServiceInjector;->mContext:Landroid/content/Context;

    .line 74
    .line 75
    iput-object p2, p0, Lcom/android/server/pm/InstallPackageHelper;->mContext:Landroid/content/Context;

    .line 76
    .line 77
    iget-object p3, p1, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageDexOptimizerProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    .line 78
    .line 79
    iget-object p4, p1, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    .line 80
    .line 81
    invoke-virtual {p3, p4, p1}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object p3

    .line 85
    check-cast p3, Lcom/android/server/pm/PackageDexOptimizer;

    .line 86
    .line 87
    iget-object p3, p1, Lcom/android/server/pm/PackageManagerServiceInjector;->mAbiHelper:Lcom/android/server/pm/PackageAbiHelper;

    .line 88
    .line 89
    iput-object p3, p0, Lcom/android/server/pm/InstallPackageHelper;->mPackageAbiHelper:Lcom/android/server/pm/PackageAbiHelper;

    .line 90
    .line 91
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSharedLibrariesImpl()Lcom/android/server/pm/SharedLibrariesImpl;

    .line 92
    .line 93
    .line 94
    move-result-object p3

    .line 95
    iput-object p3, p0, Lcom/android/server/pm/InstallPackageHelper;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesImpl;

    .line 96
    .line 97
    iget-object p3, p1, Lcom/android/server/pm/PackageManagerServiceInjector;->mUpdateOwnershipHelperProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    .line 98
    .line 99
    iget-object p4, p1, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    .line 100
    .line 101
    invoke-virtual {p3, p4, p1}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    check-cast p1, Lcom/android/server/pm/UpdateOwnershipHelper;

    .line 106
    .line 107
    iput-object p1, p0, Lcom/android/server/pm/InstallPackageHelper;->mUpdateOwnershipHelper:Lcom/android/server/pm/UpdateOwnershipHelper;

    .line 108
    .line 109
    sget-boolean p1, Lcom/samsung/android/rune/PMRune;->PM_BADGE_ON_MONETIZED_APP_SUPPORTED:Z

    .line 110
    .line 111
    if-eqz p1, :cond_0

    .line 112
    .line 113
    invoke-static {p2}, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->getInstance(Landroid/content/Context;)Lcom/samsung/android/server/pm/monetization/MonetizationUtils;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    iput-object p1, p0, Lcom/android/server/pm/InstallPackageHelper;->mMonetizationUtils:Lcom/samsung/android/server/pm/monetization/MonetizationUtils;

    .line 118
    .line 119
    :cond_0
    return-void
.end method

.method public static checkNoAppStorageIsConsistent(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/AndroidPackage;)Z
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getProperties()Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const-string v1, "android.internal.PROPERTY_NO_APP_DATA_STORAGE"

    .line 10
    .line 11
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Landroid/content/pm/PackageManager$Property;

    .line 16
    .line 17
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getProperties()Ljava/util/Map;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Landroid/content/pm/PackageManager$Property;

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    if-eqz p0, :cond_3

    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$Property;->getBoolean()Z

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    if-nez p0, :cond_1

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    if-eqz p1, :cond_2

    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/content/pm/PackageManager$Property;->getBoolean()Z

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    if-eqz p0, :cond_2

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    move v0, v1

    .line 47
    :goto_0
    return v0

    .line 48
    :cond_3
    :goto_1
    if-eqz p1, :cond_5

    .line 49
    .line 50
    invoke-virtual {p1}, Landroid/content/pm/PackageManager$Property;->getBoolean()Z

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    if-nez p0, :cond_4

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_4
    move v0, v1

    .line 58
    :cond_5
    :goto_2
    return v0
.end method

.method public static isAdminApplication(Lcom/android/server/pm/pkg/AndroidPackage;)Z
    .locals 5

    .line 1
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getReceivers()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    move v2, v1

    .line 11
    :goto_0
    if-ge v2, v0, :cond_1

    .line 12
    .line 13
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getReceivers()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    check-cast v3, Lcom/android/internal/pm/pkg/component/ParsedActivity;

    .line 22
    .line 23
    if-eqz v3, :cond_0

    .line 24
    .line 25
    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getPermission()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    if-eqz v4, :cond_0

    .line 30
    .line 31
    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getName()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    if-eqz v4, :cond_0

    .line 36
    .line 37
    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getPermission()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    const-string v4, "android.permission.BIND_DEVICE_ADMIN"

    .line 42
    .line 43
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-eqz v3, :cond_0

    .line 48
    .line 49
    const/4 p0, 0x1

    .line 50
    return p0

    .line 51
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    return v1
.end method

.method public static onInstallComplete(ILandroid/content/Context;Landroid/content/IntentSender;)V
    .locals 8

    .line 1
    new-instance v3, Landroid/content/Intent;

    .line 2
    .line 3
    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v0, "android.content.pm.extra.STATUS"

    .line 7
    .line 8
    invoke-static {p0}, Landroid/content/pm/PackageManager;->installStatusToPublicStatus(I)I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    invoke-virtual {v3, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 13
    .line 14
    .line 15
    :try_start_0
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    const/4 v0, 0x0

    .line 20
    invoke-virtual {p0, v0}, Landroid/app/BroadcastOptions;->setPendingIntentBackgroundActivityLaunchAllowed(Z)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    .line 24
    .line 25
    .line 26
    move-result-object v7

    .line 27
    const/4 v2, 0x0

    .line 28
    const/4 v4, 0x0

    .line 29
    const/4 v5, 0x0

    .line 30
    const/4 v6, 0x0

    .line 31
    move-object v0, p2

    .line 32
    move-object v1, p1

    .line 33
    invoke-virtual/range {v0 .. v7}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    .line 36
    :catch_0
    return-void
.end method

.method public static setUpFsVerity(Lcom/android/server/pm/pkg/AndroidPackage;)V
    .locals 5

    .line 1
    sget-boolean v0, Lcom/android/server/pm/PackageManagerServiceUtils;->DEBUG:Z

    .line 2
    .line 3
    invoke-static {}, Landroid/security/Flags;->deprecateFsvSig()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->DEVICE_INITIAL_SDK_INT:I

    .line 11
    .line 12
    const/16 v1, 0x1e

    .line 13
    .line 14
    const/4 v2, 0x2

    .line 15
    const/4 v3, 0x0

    .line 16
    if-ge v0, v1, :cond_2

    .line 17
    .line 18
    const-string/jumbo v0, "ro.apk_verity.mode"

    .line 19
    .line 20
    .line 21
    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-ne v0, v2, :cond_1

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    :goto_0
    return-void

    .line 29
    :cond_2
    :goto_1
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-static {v0}, Landroid/os/incremental/IncrementalManager;->isIncrementalPath(Ljava/lang/String;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_3

    .line 38
    .line 39
    invoke-static {}, Landroid/os/incremental/IncrementalManager;->getVersion()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-ge v0, v2, :cond_3

    .line 44
    .line 45
    return-void

    .line 46
    :cond_3
    new-instance v0, Landroid/util/ArrayMap;

    .line 47
    .line 48
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 49
    .line 50
    .line 51
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getBaseApkPath()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getBaseApkPath()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-static {v2}, Lcom/android/internal/security/VerityUtils;->getFsveritySignatureFilePath(Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getBaseApkPath()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-static {v1}, Landroid/content/pm/dex/DexMetadataHelper;->buildDexMetadataPathForApk(Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-static {v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    if-eqz v2, :cond_4

    .line 79
    .line 80
    invoke-static {v1}, Lcom/android/internal/security/VerityUtils;->getFsveritySignatureFilePath(Ljava/lang/String;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    :cond_4
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitCodePaths()[Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    array-length v1, p0

    .line 92
    :goto_2
    if-ge v3, v1, :cond_6

    .line 93
    .line 94
    aget-object v2, p0, v3

    .line 95
    .line 96
    invoke-static {v2}, Lcom/android/internal/security/VerityUtils;->getFsveritySignatureFilePath(Ljava/lang/String;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    invoke-virtual {v0, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    invoke-static {v2}, Landroid/content/pm/dex/DexMetadataHelper;->buildDexMetadataPathForApk(Ljava/lang/String;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    invoke-static {v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    .line 108
    .line 109
    .line 110
    move-result v4

    .line 111
    if-eqz v4, :cond_5

    .line 112
    .line 113
    invoke-static {v2}, Lcom/android/internal/security/VerityUtils;->getFsveritySignatureFilePath(Ljava/lang/String;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v4

    .line 117
    invoke-virtual {v0, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    :cond_5
    add-int/lit8 v3, v3, 0x1

    .line 121
    .line 122
    goto :goto_2

    .line 123
    :cond_6
    const-class p0, Lcom/android/server/security/FileIntegrityService;

    .line 124
    .line 125
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    check-cast p0, Lcom/android/server/security/FileIntegrityService;

    .line 130
    .line 131
    invoke-virtual {v0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    :cond_7
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 140
    .line 141
    .line 142
    move-result v1

    .line 143
    if-eqz v1, :cond_a

    .line 144
    .line 145
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    check-cast v1, Ljava/util/Map$Entry;

    .line 150
    .line 151
    const/16 v2, -0x76

    .line 152
    .line 153
    :try_start_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v3

    .line 157
    check-cast v3, Ljava/lang/String;

    .line 158
    .line 159
    invoke-static {v3}, Lcom/android/internal/security/VerityUtils;->hasFsverity(Ljava/lang/String;)Z

    .line 160
    .line 161
    .line 162
    move-result v4

    .line 163
    if-eqz v4, :cond_8

    .line 164
    .line 165
    goto :goto_3

    .line 166
    :cond_8
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    check-cast v1, Ljava/lang/String;

    .line 171
    .line 172
    new-instance v4, Ljava/io/File;

    .line 173
    .line 174
    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    .line 178
    .line 179
    .line 180
    move-result v4

    .line 181
    if-eqz v4, :cond_7

    .line 182
    .line 183
    invoke-static {v3}, Lcom/android/internal/security/VerityUtils;->setUpFsverity(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {p0, v1, v3}, Lcom/android/server/security/FileIntegrityService;->verifyPkcs7DetachedSignature(Ljava/lang/String;Ljava/lang/String;)Z

    .line 187
    .line 188
    .line 189
    move-result v1

    .line 190
    if-eqz v1, :cond_9

    .line 191
    .line 192
    goto :goto_3

    .line 193
    :cond_9
    new-instance p0, Lcom/android/server/pm/PrepareFailure;

    .line 194
    .line 195
    const-string v0, "fs-verity signature does not verify against a known key"

    .line 196
    .line 197
    invoke-direct {p0, v2, v0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 198
    .line 199
    .line 200
    throw p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    :catch_0
    move-exception p0

    .line 202
    new-instance v0, Lcom/android/server/pm/PrepareFailure;

    .line 203
    .line 204
    new-instance v1, Ljava/lang/StringBuilder;

    .line 205
    .line 206
    const-string v3, "Failed to enable fs-verity: "

    .line 207
    .line 208
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object p0

    .line 218
    invoke-direct {v0, v2, p0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 219
    .line 220
    .line 221
    throw v0

    .line 222
    :cond_a
    return-void
.end method

.method public static tryToRecover(Landroid/apex/ApexInfo;)V
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "!@ Unexpected exception occurred while parsing "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Landroid/apex/ApexInfo;->modulePath:Ljava/lang/String;

    .line 9
    .line 10
    const-string v2, "PackageManager"

    .line 11
    .line 12
    invoke-static {v0, v1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object p0, p0, Landroid/apex/ApexInfo;->modulePath:Ljava/lang/String;

    .line 16
    .line 17
    const-string v0, "/|@"

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    array-length v0, p0

    .line 24
    const-string/jumbo v1, "sys.apexd.restore.module"

    .line 25
    .line 26
    .line 27
    const/4 v3, 0x3

    .line 28
    const/4 v4, 0x1

    .line 29
    const-string v5, "data"

    .line 30
    .line 31
    const/4 v6, 0x4

    .line 32
    if-le v0, v6, :cond_0

    .line 33
    .line 34
    aget-object v0, p0, v4

    .line 35
    .line 36
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_0

    .line 41
    .line 42
    const-string v0, "decompressed"

    .line 43
    .line 44
    aget-object v7, p0, v3

    .line 45
    .line 46
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_0

    .line 51
    .line 52
    aget-object p0, p0, v6

    .line 53
    .line 54
    invoke-static {v1, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    array-length v0, p0

    .line 59
    if-le v0, v6, :cond_1

    .line 60
    .line 61
    aget-object v0, p0, v4

    .line 62
    .line 63
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-eqz v0, :cond_1

    .line 68
    .line 69
    aget-object p0, p0, v3

    .line 70
    .line 71
    const-string v0, "active"

    .line 72
    .line 73
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result p0

    .line 77
    if-eqz p0, :cond_1

    .line 78
    .line 79
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    :cond_1
    :goto_0
    const-string p0, "!@ reboot by ApexManager"

    .line 83
    .line 84
    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    const-string/jumbo p0, "sys.powerctl"

    .line 88
    .line 89
    .line 90
    const-string/jumbo v0, "reboot,recoveryDecompressedApex"

    .line 91
    .line 92
    .line 93
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    return-void
.end method

.method public static updateDigest(Ljava/security/MessageDigest;Ljava/io/File;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/security/DigestInputStream;

    .line 2
    .line 3
    new-instance v1, Ljava/io/FileInputStream;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1, p0}, Ljava/security/DigestInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V

    .line 9
    .line 10
    .line 11
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/security/DigestInputStream;->read()I

    .line 12
    .line 13
    .line 14
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    const/4 p1, -0x1

    .line 16
    if-eq p0, p1, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {v0}, Ljava/security/DigestInputStream;->close()V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    :try_start_1
    invoke-virtual {v0}, Ljava/security/DigestInputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 25
    .line 26
    .line 27
    goto :goto_1

    .line 28
    :catchall_1
    move-exception p1

    .line 29
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 30
    .line 31
    .line 32
    :goto_1
    throw p0
.end method


# virtual methods
.method public final addForInitLI(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;IILandroid/os/UserHandle;Lcom/android/server/pm/ApexManager$ActiveApexInfo;)Lcom/android/server/pm/pkg/AndroidPackage;
    .locals 21

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v9, p5

    .line 6
    .line 7
    iget-object v2, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 8
    .line 9
    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 10
    .line 11
    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 12
    .line 13
    monitor-enter v2

    .line 14
    if-nez v9, :cond_0

    .line 15
    .line 16
    :try_start_0
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->isStaticSharedLibrary()Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-eqz v3, :cond_0

    .line 21
    .line 22
    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/PackageManagerService;->renameStaticSharedLibraryPackage(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception v0

    .line 27
    goto/16 :goto_8

    .line 28
    .line 29
    :cond_0
    :goto_0
    iget-object v3, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 30
    .line 31
    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 32
    .line 33
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    invoke-virtual {v3, v4}, Lcom/android/server/pm/Settings;->getDisabledSystemPkgLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 38
    .line 39
    .line 40
    move-result-object v10

    .line 41
    if-eqz v9, :cond_1

    .line 42
    .line 43
    if-eqz v10, :cond_1

    .line 44
    .line 45
    iget-object v3, v9, Lcom/android/server/pm/ApexManager$ActiveApexInfo;->apexModuleName:Ljava/lang/String;

    .line 46
    .line 47
    iget-object v4, v10, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    .line 48
    .line 49
    iput-object v3, v4, Lcom/android/server/pm/pkg/PackageStateUnserialized;->mApexModuleName:Ljava/lang/String;

    .line 50
    .line 51
    iget-object v3, v4, Lcom/android/server/pm/pkg/PackageStateUnserialized;->mPackageSetting:Lcom/android/server/pm/PackageSetting;

    .line 52
    .line 53
    invoke-virtual {v3}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 54
    .line 55
    .line 56
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    invoke-virtual/range {p0 .. p4}, Lcom/android/server/pm/InstallPackageHelper;->scanSystemPackageLI(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;IILandroid/os/UserHandle;)Landroid/util/Pair;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 62
    .line 63
    move-object v11, v3

    .line 64
    check-cast v11, Lcom/android/server/pm/ScanResult;

    .line 65
    .line 66
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast v2, Ljava/lang/Boolean;

    .line 69
    .line 70
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 71
    .line 72
    .line 73
    move-result v12

    .line 74
    new-instance v13, Lcom/android/server/pm/InstallRequest;

    .line 75
    .line 76
    move-object v2, v13

    .line 77
    move-object/from16 v3, p1

    .line 78
    .line 79
    move/from16 v4, p2

    .line 80
    .line 81
    move/from16 v5, p3

    .line 82
    .line 83
    move-object/from16 v6, p4

    .line 84
    .line 85
    move-object v7, v11

    .line 86
    move-object v8, v10

    .line 87
    invoke-direct/range {v2 .. v8}, Lcom/android/server/pm/InstallRequest;-><init>(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;IILandroid/os/UserHandle;Lcom/android/server/pm/ScanResult;Lcom/android/server/pm/PackageSetting;)V

    .line 88
    .line 89
    .line 90
    iget-object v2, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 91
    .line 92
    iget-object v3, v2, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 93
    .line 94
    monitor-enter v3

    .line 95
    :try_start_1
    iget-object v2, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 96
    .line 97
    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 98
    .line 99
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    invoke-virtual {v2, v4}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    const/4 v4, 0x0

    .line 108
    if-eqz v2, :cond_2

    .line 109
    .line 110
    iget-object v2, v2, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    .line 111
    .line 112
    iget-object v2, v2, Lcom/android/server/pm/pkg/PackageStateUnserialized;->mApexModuleName:Ljava/lang/String;

    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_2
    move-object v2, v4

    .line 116
    :goto_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 117
    if-eqz v9, :cond_3

    .line 118
    .line 119
    iget-object v2, v9, Lcom/android/server/pm/ApexManager$ActiveApexInfo;->apexModuleName:Ljava/lang/String;

    .line 120
    .line 121
    iput-object v2, v13, Lcom/android/server/pm/InstallRequest;->mApexModuleName:Ljava/lang/String;

    .line 122
    .line 123
    goto :goto_2

    .line 124
    :cond_3
    if-eqz v10, :cond_4

    .line 125
    .line 126
    iget-object v2, v10, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    .line 127
    .line 128
    iget-object v2, v2, Lcom/android/server/pm/pkg/PackageStateUnserialized;->mApexModuleName:Ljava/lang/String;

    .line 129
    .line 130
    iput-object v2, v13, Lcom/android/server/pm/InstallRequest;->mApexModuleName:Ljava/lang/String;

    .line 131
    .line 132
    goto :goto_2

    .line 133
    :cond_4
    if-eqz v2, :cond_5

    .line 134
    .line 135
    iput-object v2, v13, Lcom/android/server/pm/InstallRequest;->mApexModuleName:Ljava/lang/String;

    .line 136
    .line 137
    :cond_5
    :goto_2
    iget-object v2, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 138
    .line 139
    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 140
    .line 141
    monitor-enter v2

    .line 142
    const/4 v3, 0x0

    .line 143
    :try_start_2
    iget-object v5, v11, Lcom/android/server/pm/ScanResult;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    .line 144
    .line 145
    iget-object v5, v5, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    .line 146
    .line 147
    invoke-static {v13}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 148
    .line 149
    .line 150
    move-result-object v14

    .line 151
    iget-object v6, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 152
    .line 153
    iget-object v15, v6, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 154
    .line 155
    invoke-virtual {v6, v0}, Lcom/android/server/pm/PackageManagerService;->getSettingsVersionForPackage(Lcom/android/server/pm/pkg/AndroidPackage;)Lcom/android/server/pm/Settings$VersionInfo;

    .line 156
    .line 157
    .line 158
    move-result-object v6

    .line 159
    invoke-static {v5, v6}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    .line 160
    .line 161
    .line 162
    move-result-object v16

    .line 163
    iget-object v5, v1, Lcom/android/server/pm/InstallPackageHelper;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesImpl;

    .line 164
    .line 165
    iget-object v6, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 166
    .line 167
    iget-object v7, v6, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 168
    .line 169
    iget-object v8, v7, Lcom/android/server/pm/Settings;->mKeySetManagerService:Lcom/android/server/pm/KeySetManagerService;

    .line 170
    .line 171
    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 172
    .line 173
    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSystemConfig()Lcom/android/server/SystemConfig;

    .line 174
    .line 175
    .line 176
    move-result-object v20

    .line 177
    move-object/from16 v17, v5

    .line 178
    .line 179
    move-object/from16 v18, v8

    .line 180
    .line 181
    move-object/from16 v19, v7

    .line 182
    .line 183
    invoke-static/range {v14 .. v20}, Lcom/android/server/pm/ReconcilePackageUtils;->reconcilePackages(Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Lcom/android/server/pm/SharedLibrariesImpl;Lcom/android/server/pm/KeySetManagerService;Lcom/android/server/pm/Settings;Lcom/android/server/SystemConfig;)Ljava/util/List;

    .line 184
    .line 185
    .line 186
    move-result-object v5

    .line 187
    const/high16 v6, 0x4000000

    .line 188
    .line 189
    and-int v6, p3, v6

    .line 190
    .line 191
    if-nez v6, :cond_6

    .line 192
    .line 193
    invoke-virtual {v1, v13}, Lcom/android/server/pm/InstallPackageHelper;->optimisticallyRegisterAppId(Lcom/android/server/pm/InstallRequest;)Z

    .line 194
    .line 195
    .line 196
    move-result v6

    .line 197
    goto :goto_3

    .line 198
    :catchall_1
    move-exception v0

    .line 199
    goto/16 :goto_7

    .line 200
    .line 201
    :catch_0
    move-exception v0

    .line 202
    goto/16 :goto_6

    .line 203
    .line 204
    :cond_6
    invoke-virtual {v13}, Lcom/android/server/pm/InstallRequest;->assertScanResultExists()V

    .line 205
    .line 206
    .line 207
    iget-object v6, v13, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    .line 208
    .line 209
    iget-object v6, v6, Lcom/android/server/pm/ScanResult;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    .line 210
    .line 211
    const/4 v7, -0x1

    .line 212
    invoke-virtual {v6, v7}, Lcom/android/server/pm/PackageSetting;->setAppId(I)V
    :try_end_2
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 213
    .line 214
    .line 215
    move v6, v3

    .line 216
    :goto_3
    :try_start_3
    check-cast v5, Ljava/util/ArrayList;

    .line 217
    .line 218
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object v5

    .line 222
    check-cast v5, Lcom/android/server/pm/ReconciledPackage;

    .line 223
    .line 224
    iget-object v7, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 225
    .line 226
    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 227
    .line 228
    invoke-virtual {v7}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    .line 229
    .line 230
    .line 231
    move-result-object v7

    .line 232
    invoke-virtual {v1, v5, v7}, Lcom/android/server/pm/InstallPackageHelper;->commitReconciledScanResultLocked(Lcom/android/server/pm/ReconciledPackage;[I)Lcom/android/server/pm/pkg/AndroidPackage;
    :try_end_3
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 233
    .line 234
    .line 235
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 236
    if-eqz v12, :cond_7

    .line 237
    .line 238
    iget-object v2, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 239
    .line 240
    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 241
    .line 242
    monitor-enter v2

    .line 243
    :try_start_5
    iget-object v5, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 244
    .line 245
    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 246
    .line 247
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v6

    .line 251
    invoke-virtual {v5, v6}, Lcom/android/server/pm/Settings;->disableSystemPackageLPw(Ljava/lang/String;)Z

    .line 252
    .line 253
    .line 254
    monitor-exit v2

    .line 255
    goto :goto_4

    .line 256
    :catchall_2
    move-exception v0

    .line 257
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 258
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 259
    .line 260
    throw v0

    .line 261
    :cond_7
    :goto_4
    iget-object v2, v1, Lcom/android/server/pm/InstallPackageHelper;->mIncrementalManager:Landroid/os/incremental/IncrementalManager;

    .line 262
    .line 263
    if-eqz v2, :cond_8

    .line 264
    .line 265
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPath()Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v2

    .line 269
    invoke-static {v2}, Landroid/os/incremental/IncrementalManager;->isIncrementalPath(Ljava/lang/String;)Z

    .line 270
    .line 271
    .line 272
    move-result v2

    .line 273
    if-eqz v2, :cond_8

    .line 274
    .line 275
    iget-object v2, v11, Lcom/android/server/pm/ScanResult;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    .line 276
    .line 277
    if-eqz v2, :cond_8

    .line 278
    .line 279
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->isLoading()Z

    .line 280
    .line 281
    .line 282
    move-result v2

    .line 283
    if-eqz v2, :cond_8

    .line 284
    .line 285
    iget-object v2, v1, Lcom/android/server/pm/InstallPackageHelper;->mIncrementalManager:Landroid/os/incremental/IncrementalManager;

    .line 286
    .line 287
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPath()Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v5

    .line 291
    new-instance v6, Lcom/android/server/pm/IncrementalProgressListener;

    .line 292
    .line 293
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v7

    .line 297
    iget-object v8, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 298
    .line 299
    invoke-direct {v6, v8, v7}, Lcom/android/server/pm/IncrementalProgressListener;-><init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)V

    .line 300
    .line 301
    .line 302
    invoke-virtual {v2, v5, v6}, Landroid/os/incremental/IncrementalManager;->registerLoadingProgressCallback(Ljava/lang/String;Landroid/content/pm/IPackageLoadingProgressCallback;)Z

    .line 303
    .line 304
    .line 305
    :cond_8
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->aslInApkAppMetadataSource()Z

    .line 306
    .line 307
    .line 308
    move-result v2

    .line 309
    if-eqz v2, :cond_9

    .line 310
    .line 311
    iget-object v2, v11, Lcom/android/server/pm/ScanResult;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    .line 312
    .line 313
    iget v5, v2, Lcom/android/server/pm/PackageSetting;->mAppMetadataSource:I

    .line 314
    .line 315
    const/4 v6, 0x1

    .line 316
    if-ne v5, v6, :cond_9

    .line 317
    .line 318
    iget-object v5, v2, Lcom/android/server/pm/PackageSetting;->mAppMetadataFilePath:Ljava/lang/String;

    .line 319
    .line 320
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    .line 321
    .line 322
    .line 323
    move-result v2

    .line 324
    invoke-static {v0, v5, v2}, Lcom/android/server/pm/PackageManagerServiceUtils;->extractAppMetadataFromApk(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;Z)Z

    .line 325
    .line 326
    .line 327
    move-result v0

    .line 328
    if-nez v0, :cond_9

    .line 329
    .line 330
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 331
    .line 332
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 333
    .line 334
    monitor-enter v1

    .line 335
    :try_start_6
    iget-object v0, v11, Lcom/android/server/pm/ScanResult;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    .line 336
    .line 337
    iput-object v4, v0, Lcom/android/server/pm/PackageSetting;->mAppMetadataFilePath:Ljava/lang/String;

    .line 338
    .line 339
    invoke-virtual {v0}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 340
    .line 341
    .line 342
    invoke-virtual {v0, v3}, Lcom/android/server/pm/PackageSetting;->setAppMetadataSource(I)V

    .line 343
    .line 344
    .line 345
    monitor-exit v1

    .line 346
    goto :goto_5

    .line 347
    :catchall_3
    move-exception v0

    .line 348
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 349
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 350
    .line 351
    throw v0

    .line 352
    :cond_9
    :goto_5
    iget-object v0, v11, Lcom/android/server/pm/ScanResult;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    .line 353
    .line 354
    iget-object v0, v0, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 355
    .line 356
    return-object v0

    .line 357
    :catch_1
    move-exception v0

    .line 358
    move v3, v6

    .line 359
    :goto_6
    if-eqz v3, :cond_a

    .line 360
    .line 361
    :try_start_7
    invoke-virtual {v1, v13}, Lcom/android/server/pm/InstallPackageHelper;->cleanUpAppIdCreation(Lcom/android/server/pm/InstallRequest;)V

    .line 362
    .line 363
    .line 364
    :cond_a
    throw v0

    .line 365
    :goto_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 366
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 367
    .line 368
    throw v0

    .line 369
    :catchall_4
    move-exception v0

    .line 370
    :try_start_8
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 371
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 372
    .line 373
    throw v0

    .line 374
    :goto_8
    :try_start_9
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 375
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 376
    .line 377
    throw v0
.end method

.method public final assertOverlayIsValid(Lcom/android/server/pm/pkg/AndroidPackage;II)V
    .locals 1

    .line 1
    const/high16 v0, 0x10000

    .line 2
    .line 3
    and-int/2addr v0, p3

    .line 4
    if-eqz v0, :cond_3

    .line 5
    .line 6
    and-int/lit8 p2, p2, 0x10

    .line 7
    .line 8
    if-nez p2, :cond_1

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 11
    .line 12
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mOverlayConfig:Lcom/android/internal/content/om/OverlayConfig;

    .line 17
    .line 18
    invoke-virtual {p0, p2}, Lcom/android/internal/content/om/OverlayConfig;->isMutable(Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    if-eqz p0, :cond_0

    .line 23
    .line 24
    goto/16 :goto_1

    .line 25
    .line 26
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string p2, "Overlay "

    .line 29
    .line 30
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string p1, " is static and cannot be upgraded."

    .line 41
    .line 42
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    const/16 p1, -0xf

    .line 50
    .line 51
    invoke-static {p1, p0}, Lcom/android/server/pm/PackageManagerException;->ofInternalError(ILjava/lang/String;)Lcom/android/server/pm/PackageManagerException;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    throw p0

    .line 56
    :cond_1
    const/high16 p0, 0x80000

    .line 57
    .line 58
    and-int/2addr p0, p3

    .line 59
    if-eqz p0, :cond_2

    .line 60
    .line 61
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    .line 62
    .line 63
    .line 64
    move-result p0

    .line 65
    invoke-static {}, Lcom/android/server/pm/ScanPackageUtils;->getVendorPartitionVersion()I

    .line 66
    .line 67
    .line 68
    move-result p2

    .line 69
    if-ge p0, p2, :cond_8

    .line 70
    .line 71
    const-string p0, "PackageManager"

    .line 72
    .line 73
    new-instance p2, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    const-string p3, "System overlay "

    .line 76
    .line 77
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const-string p1, " targets an SDK below the required SDK level of vendor overlays ("

    .line 88
    .line 89
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-static {}, Lcom/android/server/pm/ScanPackageUtils;->getVendorPartitionVersion()I

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    const-string p1, "). This will become an install error in a future release"

    .line 100
    .line 101
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    .line 110
    .line 111
    goto/16 :goto_1

    .line 112
    .line 113
    :cond_2
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    .line 114
    .line 115
    .line 116
    move-result p0

    .line 117
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 118
    .line 119
    if-ge p0, p2, :cond_8

    .line 120
    .line 121
    const-string p0, "PackageManager"

    .line 122
    .line 123
    new-instance p3, Ljava/lang/StringBuilder;

    .line 124
    .line 125
    const-string v0, "System overlay "

    .line 126
    .line 127
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    const-string p1, " targets an SDK below the required SDK level of system overlays ("

    .line 138
    .line 139
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    const-string p1, "). This will become an install error in a future release"

    .line 146
    .line 147
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    .line 156
    .line 157
    goto/16 :goto_1

    .line 158
    .line 159
    :cond_3
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    .line 160
    .line 161
    .line 162
    move-result p2

    .line 163
    const/16 p3, 0x1d

    .line 164
    .line 165
    if-ge p2, p3, :cond_5

    .line 166
    .line 167
    iget-object p2, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 168
    .line 169
    iget-object p2, p2, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 170
    .line 171
    sget-boolean p3, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 172
    .line 173
    monitor-enter p2

    .line 174
    :try_start_0
    iget-object p3, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 175
    .line 176
    iget-object p3, p3, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 177
    .line 178
    const-string v0, "android"

    .line 179
    .line 180
    invoke-virtual {p3, v0}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 181
    .line 182
    .line 183
    move-result-object p3

    .line 184
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    .line 186
    .line 187
    .line 188
    move-result-object p2

    .line 189
    invoke-static {p3, p2}, Lcom/android/server/pm/PackageManagerServiceUtils;->comparePackageSignatures(Lcom/android/server/pm/PackageSetting;Landroid/content/pm/SigningDetails;)Z

    .line 190
    .line 191
    .line 192
    move-result p2

    .line 193
    if-eqz p2, :cond_4

    .line 194
    .line 195
    goto :goto_0

    .line 196
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    .line 197
    .line 198
    const-string p2, "Overlay "

    .line 199
    .line 200
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object p1

    .line 207
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    const-string p1, " must target Q or later, or be signed with the platform certificate"

    .line 211
    .line 212
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object p0

    .line 219
    const/16 p1, -0x10

    .line 220
    .line 221
    invoke-static {p1, p0}, Lcom/android/server/pm/PackageManagerException;->ofInternalError(ILjava/lang/String;)Lcom/android/server/pm/PackageManagerException;

    .line 222
    .line 223
    .line 224
    move-result-object p0

    .line 225
    throw p0

    .line 226
    :catchall_0
    move-exception p0

    .line 227
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 228
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 229
    .line 230
    throw p0

    .line 231
    :cond_5
    :goto_0
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getOverlayTargetOverlayableName()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object p2

    .line 235
    if-nez p2, :cond_8

    .line 236
    .line 237
    iget-object p2, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 238
    .line 239
    iget-object p2, p2, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 240
    .line 241
    sget-boolean p3, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 242
    .line 243
    monitor-enter p2

    .line 244
    :try_start_2
    iget-object p3, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 245
    .line 246
    iget-object p3, p3, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 247
    .line 248
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getOverlayTarget()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    invoke-virtual {p3, v0}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 253
    .line 254
    .line 255
    move-result-object p3

    .line 256
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 257
    if-eqz p3, :cond_8

    .line 258
    .line 259
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    .line 260
    .line 261
    .line 262
    move-result-object p2

    .line 263
    invoke-static {p3, p2}, Lcom/android/server/pm/PackageManagerServiceUtils;->comparePackageSignatures(Lcom/android/server/pm/PackageSetting;Landroid/content/pm/SigningDetails;)Z

    .line 264
    .line 265
    .line 266
    move-result p2

    .line 267
    if-nez p2, :cond_8

    .line 268
    .line 269
    iget-object p2, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 270
    .line 271
    iget-object p3, p2, Lcom/android/server/pm/PackageManagerService;->mOverlayConfigSignaturePackage:Ljava/lang/String;

    .line 272
    .line 273
    if-eqz p3, :cond_7

    .line 274
    .line 275
    iget-object p2, p2, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 276
    .line 277
    monitor-enter p2

    .line 278
    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 279
    .line 280
    iget-object p3, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 281
    .line 282
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mOverlayConfigSignaturePackage:Ljava/lang/String;

    .line 283
    .line 284
    invoke-virtual {p3, p0}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 285
    .line 286
    .line 287
    move-result-object p0

    .line 288
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 289
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    .line 290
    .line 291
    .line 292
    move-result-object p2

    .line 293
    invoke-static {p0, p2}, Lcom/android/server/pm/PackageManagerServiceUtils;->comparePackageSignatures(Lcom/android/server/pm/PackageSetting;Landroid/content/pm/SigningDetails;)Z

    .line 294
    .line 295
    .line 296
    move-result p0

    .line 297
    if-eqz p0, :cond_6

    .line 298
    .line 299
    goto :goto_1

    .line 300
    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    .line 301
    .line 302
    const-string p2, "Overlay "

    .line 303
    .line 304
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 305
    .line 306
    .line 307
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object p2

    .line 311
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    .line 313
    .line 314
    const-string p2, " signed with a different certificate than both the reference package and target "

    .line 315
    .line 316
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    .line 318
    .line 319
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getOverlayTarget()Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object p1

    .line 323
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    .line 325
    .line 326
    const-string p1, ", and the overlay lacks <overlay android:targetName>"

    .line 327
    .line 328
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    .line 330
    .line 331
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object p0

    .line 335
    const/16 p1, -0x12

    .line 336
    .line 337
    invoke-static {p1, p0}, Lcom/android/server/pm/PackageManagerException;->ofInternalError(ILjava/lang/String;)Lcom/android/server/pm/PackageManagerException;

    .line 338
    .line 339
    .line 340
    move-result-object p0

    .line 341
    throw p0

    .line 342
    :catchall_1
    move-exception p0

    .line 343
    :try_start_4
    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 344
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 345
    .line 346
    throw p0

    .line 347
    :cond_7
    new-instance p0, Ljava/lang/StringBuilder;

    .line 348
    .line 349
    const-string p2, "Overlay "

    .line 350
    .line 351
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 352
    .line 353
    .line 354
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object p2

    .line 358
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    .line 360
    .line 361
    const-string p2, " and target "

    .line 362
    .line 363
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    .line 365
    .line 366
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getOverlayTarget()Ljava/lang/String;

    .line 367
    .line 368
    .line 369
    move-result-object p1

    .line 370
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    .line 372
    .line 373
    const-string p1, " signed with different certificates, and the overlay lacks <overlay android:targetName>"

    .line 374
    .line 375
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    .line 377
    .line 378
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object p0

    .line 382
    const/16 p1, -0x11

    .line 383
    .line 384
    invoke-static {p1, p0}, Lcom/android/server/pm/PackageManagerException;->ofInternalError(ILjava/lang/String;)Lcom/android/server/pm/PackageManagerException;

    .line 385
    .line 386
    .line 387
    move-result-object p0

    .line 388
    throw p0

    .line 389
    :catchall_2
    move-exception p0

    .line 390
    :try_start_5
    monitor-exit p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 391
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 392
    .line 393
    throw p0

    .line 394
    :cond_8
    :goto_1
    return-void
.end method

.method public final assertPackageIsValid(Lcom/android/server/pm/pkg/AndroidPackage;II)V
    .locals 9

    .line 1
    const/4 v0, 0x1

    .line 2
    and-int/lit8 v1, p2, 0x40

    .line 3
    .line 4
    const/4 v2, -0x2

    .line 5
    const/4 v3, 0x0

    .line 6
    if-eqz v1, :cond_4

    .line 7
    .line 8
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->isDeclaredHavingCode()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const-string v4, " code is missing"

    .line 13
    .line 14
    const-string v5, "Package "

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getBaseApkPath()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-static {v1}, Lcom/android/server/pm/ScanPackageUtils;->apkHasCode(Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    .line 30
    .line 31
    new-instance p2, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {p2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getBaseApkPath()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-direct {p0, v2, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p0

    .line 54
    :cond_1
    :goto_0
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitCodePaths()[Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-nez v1, :cond_4

    .line 63
    .line 64
    move v1, v3

    .line 65
    :goto_1
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitCodePaths()[Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v6

    .line 69
    array-length v6, v6

    .line 70
    if-ge v1, v6, :cond_4

    .line 71
    .line 72
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitFlags()[I

    .line 73
    .line 74
    .line 75
    move-result-object v6

    .line 76
    aget v6, v6, v1

    .line 77
    .line 78
    and-int/lit8 v6, v6, 0x4

    .line 79
    .line 80
    if-eqz v6, :cond_3

    .line 81
    .line 82
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitCodePaths()[Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v6

    .line 86
    aget-object v6, v6, v1

    .line 87
    .line 88
    invoke-static {v6}, Lcom/android/server/pm/ScanPackageUtils;->apkHasCode(Ljava/lang/String;)Z

    .line 89
    .line 90
    .line 91
    move-result v6

    .line 92
    if-eqz v6, :cond_2

    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_2
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    .line 96
    .line 97
    new-instance p2, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    invoke-direct {p2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitCodePaths()[Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    aget-object p1, p1, v1

    .line 107
    .line 108
    invoke-static {p2, p1, v4}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-direct {p0, v2, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 113
    .line 114
    .line 115
    throw p0

    .line 116
    :cond_3
    :goto_2
    add-int/2addr v1, v0

    .line 117
    goto :goto_1

    .line 118
    :cond_4
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    if-eqz v1, :cond_23

    .line 123
    .line 124
    and-int/lit8 v1, p3, 0x10

    .line 125
    .line 126
    if-nez v1, :cond_5

    .line 127
    .line 128
    move v1, v0

    .line 129
    goto :goto_3

    .line 130
    :cond_5
    move v1, v3

    .line 131
    :goto_3
    and-int/lit16 v4, p3, 0x1000

    .line 132
    .line 133
    if-eqz v4, :cond_6

    .line 134
    .line 135
    move v4, v0

    .line 136
    goto :goto_4

    .line 137
    :cond_6
    move v4, v3

    .line 138
    :goto_4
    const/high16 v5, 0x4000000

    .line 139
    .line 140
    and-int/2addr v5, p3

    .line 141
    if-eqz v5, :cond_7

    .line 142
    .line 143
    move v5, v0

    .line 144
    goto :goto_5

    .line 145
    :cond_7
    move v5, v3

    .line 146
    :goto_5
    const/4 v6, -0x5

    .line 147
    if-nez v1, :cond_8

    .line 148
    .line 149
    if-eqz v4, :cond_a

    .line 150
    .line 151
    :cond_8
    iget-object v1, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 152
    .line 153
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v4

    .line 161
    invoke-interface {v1, v4}, Lcom/android/server/pm/Computer;->isApexPackage(Ljava/lang/String;)Z

    .line 162
    .line 163
    .line 164
    move-result v1

    .line 165
    if-eqz v1, :cond_a

    .line 166
    .line 167
    if-eqz v5, :cond_9

    .line 168
    .line 169
    goto :goto_6

    .line 170
    :cond_9
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    .line 171
    .line 172
    new-instance p2, Ljava/lang/StringBuilder;

    .line 173
    .line 174
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 175
    .line 176
    .line 177
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    const-string p1, " is an APEX package and can\'t be installed as an APK."

    .line 185
    .line 186
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    invoke-direct {p0, v6, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 194
    .line 195
    .line 196
    throw p0

    .line 197
    :cond_a
    :goto_6
    iget-object v1, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 198
    .line 199
    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 200
    .line 201
    iget-object v1, v1, Lcom/android/server/pm/Settings;->mKeySetManagerService:Lcom/android/server/pm/KeySetManagerService;

    .line 202
    .line 203
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 204
    .line 205
    .line 206
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    if-eqz v1, :cond_22

    .line 211
    .line 212
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    .line 213
    .line 214
    .line 215
    move-result-object v1

    .line 216
    invoke-virtual {v1}, Landroid/content/pm/SigningDetails;->getPublicKeys()Landroid/util/ArraySet;

    .line 217
    .line 218
    .line 219
    move-result-object v1

    .line 220
    if-eqz v1, :cond_21

    .line 221
    .line 222
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    .line 223
    .line 224
    .line 225
    move-result v4

    .line 226
    if-lez v4, :cond_21

    .line 227
    .line 228
    const/4 v4, 0x0

    .line 229
    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 230
    .line 231
    .line 232
    move-result v1

    .line 233
    if-nez v1, :cond_21

    .line 234
    .line 235
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getKeySetMapping()Ljava/util/Map;

    .line 236
    .line 237
    .line 238
    move-result-object v1

    .line 239
    if-eqz v1, :cond_d

    .line 240
    .line 241
    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 242
    .line 243
    .line 244
    move-result v5

    .line 245
    if-nez v5, :cond_c

    .line 246
    .line 247
    invoke-interface {v1, v4}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    .line 248
    .line 249
    .line 250
    move-result v5

    .line 251
    if-nez v5, :cond_c

    .line 252
    .line 253
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 254
    .line 255
    .line 256
    move-result-object v5

    .line 257
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 258
    .line 259
    .line 260
    move-result-object v5

    .line 261
    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 262
    .line 263
    .line 264
    move-result v7

    .line 265
    if-eqz v7, :cond_d

    .line 266
    .line 267
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    move-result-object v7

    .line 271
    check-cast v7, Landroid/util/ArraySet;

    .line 272
    .line 273
    invoke-virtual {v7}, Landroid/util/ArraySet;->size()I

    .line 274
    .line 275
    .line 276
    move-result v8

    .line 277
    if-lez v8, :cond_b

    .line 278
    .line 279
    invoke-virtual {v7, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 280
    .line 281
    .line 282
    move-result v7

    .line 283
    if-nez v7, :cond_b

    .line 284
    .line 285
    goto :goto_7

    .line 286
    :cond_b
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    .line 287
    .line 288
    const-string p1, "Package has null/no public keys for defined key-sets."

    .line 289
    .line 290
    invoke-direct {p0, v2, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 291
    .line 292
    .line 293
    throw p0

    .line 294
    :cond_c
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    .line 295
    .line 296
    const-string p1, "Package has null defined key set."

    .line 297
    .line 298
    invoke-direct {p0, v2, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 299
    .line 300
    .line 301
    throw p0

    .line 302
    :cond_d
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getUpgradeKeySets()Ljava/util/Set;

    .line 303
    .line 304
    .line 305
    move-result-object v4

    .line 306
    if-eqz v4, :cond_f

    .line 307
    .line 308
    if-eqz v1, :cond_e

    .line 309
    .line 310
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 311
    .line 312
    .line 313
    move-result-object v1

    .line 314
    invoke-interface {v1, v4}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    .line 315
    .line 316
    .line 317
    move-result v1

    .line 318
    if-eqz v1, :cond_e

    .line 319
    .line 320
    goto :goto_8

    .line 321
    :cond_e
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    .line 322
    .line 323
    const-string p1, "Package has upgrade-key-sets without corresponding definitions."

    .line 324
    .line 325
    invoke-direct {p0, v2, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 326
    .line 327
    .line 328
    throw p0

    .line 329
    :cond_f
    :goto_8
    iget-object v1, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 330
    .line 331
    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 332
    .line 333
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 334
    .line 335
    monitor-enter v1

    .line 336
    :try_start_0
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v2

    .line 340
    const-string v4, "android"

    .line 341
    .line 342
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 343
    .line 344
    .line 345
    move-result v2

    .line 346
    if-eqz v2, :cond_11

    .line 347
    .line 348
    iget-object v2, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 349
    .line 350
    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mAndroidApplication:Landroid/content/pm/ApplicationInfo;

    .line 351
    .line 352
    if-nez v2, :cond_10

    .line 353
    .line 354
    goto :goto_9

    .line 355
    :cond_10
    const-string p0, "PackageManager"

    .line 356
    .line 357
    const-string p2, "*************************************************"

    .line 358
    .line 359
    invoke-static {p0, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    .line 361
    .line 362
    const-string p0, "PackageManager"

    .line 363
    .line 364
    const-string p2, "Core android package being redefined.  Skipping."

    .line 365
    .line 366
    invoke-static {p0, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    .line 368
    .line 369
    const-string p0, "PackageManager"

    .line 370
    .line 371
    new-instance p2, Ljava/lang/StringBuilder;

    .line 372
    .line 373
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 374
    .line 375
    .line 376
    const-string p3, " codePath="

    .line 377
    .line 378
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    .line 380
    .line 381
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    .line 382
    .line 383
    .line 384
    move-result-object p1

    .line 385
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    .line 387
    .line 388
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 389
    .line 390
    .line 391
    move-result-object p1

    .line 392
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    .line 394
    .line 395
    const-string p0, "PackageManager"

    .line 396
    .line 397
    const-string p1, "*************************************************"

    .line 398
    .line 399
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    .line 401
    .line 402
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    .line 403
    .line 404
    const-string p1, "Core android package being redefined.  Skipping."

    .line 405
    .line 406
    invoke-direct {p0, v6, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 407
    .line 408
    .line 409
    throw p0

    .line 410
    :catchall_0
    move-exception p0

    .line 411
    goto/16 :goto_e

    .line 412
    .line 413
    :cond_11
    :goto_9
    and-int/lit8 v2, p3, 0x4

    .line 414
    .line 415
    if-nez v2, :cond_15

    .line 416
    .line 417
    iget-object v4, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 418
    .line 419
    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 420
    .line 421
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 422
    .line 423
    .line 424
    move-result-object v5

    .line 425
    iget-object v4, v4, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    .line 426
    .line 427
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 428
    .line 429
    .line 430
    move-result v4

    .line 431
    if-eqz v4, :cond_15

    .line 432
    .line 433
    iget-object p3, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 434
    .line 435
    iget-object p3, p3, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 436
    .line 437
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 438
    .line 439
    .line 440
    move-result-object v2

    .line 441
    invoke-virtual {p3, v2}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 442
    .line 443
    .line 444
    move-result-object p3

    .line 445
    iget-object v2, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 446
    .line 447
    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 448
    .line 449
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 450
    .line 451
    .line 452
    move-result-object v4

    .line 453
    invoke-virtual {v2, v4}, Lcom/android/server/pm/Settings;->getDisabledSystemPkgLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 454
    .line 455
    .line 456
    move-result-object v2

    .line 457
    if-eqz v2, :cond_12

    .line 458
    .line 459
    goto :goto_a

    .line 460
    :cond_12
    move v0, v3

    .line 461
    :goto_a
    if-eqz p3, :cond_14

    .line 462
    .line 463
    iget-object v2, p0, Lcom/android/server/pm/InstallPackageHelper;->mPreloadDuplicateApps:Lcom/samsung/android/server/pm/install/PreloadDuplicateApps;

    .line 464
    .line 465
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 466
    .line 467
    .line 468
    and-int/lit8 p2, p2, 0x10

    .line 469
    .line 470
    if-nez p2, :cond_14

    .line 471
    .line 472
    invoke-virtual {p3}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    .line 473
    .line 474
    .line 475
    move-result p2

    .line 476
    if-eqz p2, :cond_14

    .line 477
    .line 478
    if-nez v0, :cond_14

    .line 479
    .line 480
    iget-object p2, p3, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 481
    .line 482
    invoke-interface {p2}, Lcom/android/server/pm/pkg/AndroidPackage;->isStub()Z

    .line 483
    .line 484
    .line 485
    move-result p2

    .line 486
    if-eqz p2, :cond_13

    .line 487
    .line 488
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getLongVersionCode()J

    .line 489
    .line 490
    .line 491
    move-result-wide v2

    .line 492
    iget-wide v4, p3, Lcom/android/server/pm/PackageSetting;->versionCode:J

    .line 493
    .line 494
    cmp-long p2, v2, v4

    .line 495
    .line 496
    if-ltz p2, :cond_14

    .line 497
    .line 498
    goto :goto_b

    .line 499
    :cond_13
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getLongVersionCode()J

    .line 500
    .line 501
    .line 502
    move-result-wide v2

    .line 503
    iget-wide v4, p3, Lcom/android/server/pm/PackageSetting;->versionCode:J

    .line 504
    .line 505
    cmp-long p2, v2, v4

    .line 506
    .line 507
    if-lez p2, :cond_14

    .line 508
    .line 509
    :goto_b
    iget-object p2, p0, Lcom/android/server/pm/InstallPackageHelper;->mPreloadDuplicateApps:Lcom/samsung/android/server/pm/install/PreloadDuplicateApps;

    .line 510
    .line 511
    invoke-virtual {p2, p1}, Lcom/samsung/android/server/pm/install/PreloadDuplicateApps;->addDuplicatePackage(Lcom/android/server/pm/pkg/AndroidPackage;)V

    .line 512
    .line 513
    .line 514
    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPreloadDuplicateApps:Lcom/samsung/android/server/pm/install/PreloadDuplicateApps;

    .line 515
    .line 516
    iget-object p2, p3, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 517
    .line 518
    invoke-virtual {p0, p2}, Lcom/samsung/android/server/pm/install/PreloadDuplicateApps;->addSystemPackage(Lcom/android/server/pm/pkg/AndroidPackage;)V

    .line 519
    .line 520
    .line 521
    :cond_14
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    .line 522
    .line 523
    new-instance p2, Ljava/lang/StringBuilder;

    .line 524
    .line 525
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 526
    .line 527
    .line 528
    const-string p3, "Application package "

    .line 529
    .line 530
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    .line 532
    .line 533
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 534
    .line 535
    .line 536
    move-result-object p1

    .line 537
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    .line 539
    .line 540
    const-string p1, " already installed.  Skipping duplicate."

    .line 541
    .line 542
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    .line 544
    .line 545
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 546
    .line 547
    .line 548
    move-result-object p1

    .line 549
    invoke-direct {p0, v6, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 550
    .line 551
    .line 552
    throw p0

    .line 553
    :cond_15
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->isStaticSharedLibrary()Z

    .line 554
    .line 555
    .line 556
    move-result v0

    .line 557
    if-eqz v0, :cond_18

    .line 558
    .line 559
    if-nez v2, :cond_17

    .line 560
    .line 561
    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 562
    .line 563
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 564
    .line 565
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getManifestPackageName()Ljava/lang/String;

    .line 566
    .line 567
    .line 568
    move-result-object v3

    .line 569
    iget-object v0, v0, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    .line 570
    .line 571
    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 572
    .line 573
    .line 574
    move-result v0

    .line 575
    if-nez v0, :cond_16

    .line 576
    .line 577
    goto :goto_c

    .line 578
    :cond_16
    const-string p0, "Duplicate static shared lib provider package"

    .line 579
    .line 580
    new-instance p1, Lcom/android/server/pm/PackageManagerException;

    .line 581
    .line 582
    const/16 p2, -0xd

    .line 583
    .line 584
    invoke-direct {p1, p0, p2}, Lcom/android/server/pm/PackageManagerException;-><init>(Ljava/lang/String;I)V

    .line 585
    .line 586
    .line 587
    throw p1

    .line 588
    :cond_17
    :goto_c
    invoke-static {p1, p3}, Lcom/android/server/pm/ScanPackageUtils;->assertStaticSharedLibraryIsValid(Lcom/android/server/pm/pkg/AndroidPackage;I)V

    .line 589
    .line 590
    .line 591
    invoke-virtual {p0, p1}, Lcom/android/server/pm/InstallPackageHelper;->assertStaticSharedLibraryVersionCodeIsValid(Lcom/android/server/pm/pkg/AndroidPackage;)V

    .line 592
    .line 593
    .line 594
    :cond_18
    and-int/lit16 v0, p3, 0x80

    .line 595
    .line 596
    if-eqz v0, :cond_1d

    .line 597
    .line 598
    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 599
    .line 600
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 601
    .line 602
    .line 603
    move-result-object v3

    .line 604
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInitAppsHelper:Lcom/android/server/pm/InitAppsHelper;

    .line 605
    .line 606
    iget-object v0, v0, Lcom/android/server/pm/InitAppsHelper;->mExpectingBetter:Landroid/util/ArrayMap;

    .line 607
    .line 608
    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 609
    .line 610
    .line 611
    move-result v0

    .line 612
    if-eqz v0, :cond_19

    .line 613
    .line 614
    const-string v0, "PackageManager"

    .line 615
    .line 616
    new-instance v3, Ljava/lang/StringBuilder;

    .line 617
    .line 618
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 619
    .line 620
    .line 621
    const-string v4, "Relax SCAN_REQUIRE_KNOWN requirement for package "

    .line 622
    .line 623
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 624
    .line 625
    .line 626
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 627
    .line 628
    .line 629
    move-result-object v4

    .line 630
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 631
    .line 632
    .line 633
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 634
    .line 635
    .line 636
    move-result-object v3

    .line 637
    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    .line 639
    .line 640
    goto/16 :goto_d

    .line 641
    .line 642
    :cond_19
    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 643
    .line 644
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 645
    .line 646
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 647
    .line 648
    .line 649
    move-result-object v3

    .line 650
    invoke-virtual {v0, v3}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 651
    .line 652
    .line 653
    move-result-object v0

    .line 654
    if-eqz v0, :cond_1b

    .line 655
    .line 656
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    .line 657
    .line 658
    .line 659
    move-result-object v3

    .line 660
    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->mPathString:Ljava/lang/String;

    .line 661
    .line 662
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 663
    .line 664
    .line 665
    move-result v3

    .line 666
    if-eqz v3, :cond_1a

    .line 667
    .line 668
    goto/16 :goto_d

    .line 669
    .line 670
    :cond_1a
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    .line 671
    .line 672
    new-instance p2, Ljava/lang/StringBuilder;

    .line 673
    .line 674
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 675
    .line 676
    .line 677
    const-string p3, "Application package "

    .line 678
    .line 679
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 680
    .line 681
    .line 682
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 683
    .line 684
    .line 685
    move-result-object p3

    .line 686
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 687
    .line 688
    .line 689
    const-string p3, " found at "

    .line 690
    .line 691
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 692
    .line 693
    .line 694
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    .line 695
    .line 696
    .line 697
    move-result-object p1

    .line 698
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 699
    .line 700
    .line 701
    const-string p1, " but expected at "

    .line 702
    .line 703
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 704
    .line 705
    .line 706
    iget-object p1, v0, Lcom/android/server/pm/PackageSetting;->mPathString:Ljava/lang/String;

    .line 707
    .line 708
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 709
    .line 710
    .line 711
    const-string p1, "; ignoring."

    .line 712
    .line 713
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 714
    .line 715
    .line 716
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 717
    .line 718
    .line 719
    move-result-object p1

    .line 720
    const/16 p2, -0x17

    .line 721
    .line 722
    invoke-direct {p0, p2, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 723
    .line 724
    .line 725
    throw p0

    .line 726
    :cond_1b
    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 727
    .line 728
    iget-boolean v0, v0, Lcom/android/server/pm/PackageManagerService;->mFirstBoot:Z

    .line 729
    .line 730
    if-eqz v0, :cond_1c

    .line 731
    .line 732
    const-string v0, "PackageManager"

    .line 733
    .line 734
    new-instance v3, Ljava/lang/StringBuilder;

    .line 735
    .line 736
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 737
    .line 738
    .line 739
    const-string v4, "Application package "

    .line 740
    .line 741
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 742
    .line 743
    .line 744
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 745
    .line 746
    .line 747
    move-result-object v4

    .line 748
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 749
    .line 750
    .line 751
    const-string v4, " not found at first boot, but allow data preload apps to be installed"

    .line 752
    .line 753
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 754
    .line 755
    .line 756
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 757
    .line 758
    .line 759
    move-result-object v3

    .line 760
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    .line 762
    .line 763
    goto :goto_d

    .line 764
    :cond_1c
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    .line 765
    .line 766
    new-instance p2, Ljava/lang/StringBuilder;

    .line 767
    .line 768
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 769
    .line 770
    .line 771
    const-string p3, "Application package "

    .line 772
    .line 773
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 774
    .line 775
    .line 776
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 777
    .line 778
    .line 779
    move-result-object p1

    .line 780
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 781
    .line 782
    .line 783
    const-string p1, " not found; ignoring."

    .line 784
    .line 785
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 786
    .line 787
    .line 788
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 789
    .line 790
    .line 791
    move-result-object p1

    .line 792
    const/16 p2, -0x13

    .line 793
    .line 794
    invoke-direct {p0, p2, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 795
    .line 796
    .line 797
    throw p0

    .line 798
    :cond_1d
    :goto_d
    if-eqz v2, :cond_1e

    .line 799
    .line 800
    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 801
    .line 802
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolver;

    .line 803
    .line 804
    invoke-virtual {v0, p1}, Lcom/android/server/pm/resolution/ComponentResolver;->assertProvidersNotDefined(Lcom/android/server/pm/pkg/AndroidPackage;)V

    .line 805
    .line 806
    .line 807
    :cond_1e
    invoke-static {p1}, Lcom/android/server/pm/ScanPackageUtils;->assertProcessesAreValid(Lcom/android/server/pm/pkg/AndroidPackage;)V

    .line 808
    .line 809
    .line 810
    invoke-virtual {p0, p1}, Lcom/android/server/pm/InstallPackageHelper;->assertPackageWithSharedUserIdIsPrivileged(Lcom/android/server/pm/pkg/AndroidPackage;)V

    .line 811
    .line 812
    .line 813
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getOverlayTarget()Ljava/lang/String;

    .line 814
    .line 815
    .line 816
    move-result-object v0

    .line 817
    if-eqz v0, :cond_1f

    .line 818
    .line 819
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/InstallPackageHelper;->assertOverlayIsValid(Lcom/android/server/pm/pkg/AndroidPackage;II)V

    .line 820
    .line 821
    .line 822
    :cond_1f
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    .line 823
    .line 824
    .line 825
    move-result p0

    .line 826
    invoke-static {p0}, Landroid/util/apk/ApkSignatureVerifier;->getMinimumSignatureSchemeVersionForTargetSdk(I)I

    .line 827
    .line 828
    .line 829
    move-result p0

    .line 830
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    .line 831
    .line 832
    .line 833
    move-result-object p2

    .line 834
    invoke-virtual {p2}, Landroid/content/pm/SigningDetails;->getSignatureSchemeVersion()I

    .line 835
    .line 836
    .line 837
    move-result p2

    .line 838
    if-lt p2, p0, :cond_20

    .line 839
    .line 840
    monitor-exit v1

    .line 841
    return-void

    .line 842
    :cond_20
    new-instance p2, Lcom/android/server/pm/PackageManagerException;

    .line 843
    .line 844
    const-string p3, "No signature found in package of version "

    .line 845
    .line 846
    const-string v0, " or newer for package "

    .line 847
    .line 848
    invoke-static {p0, p3, v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 849
    .line 850
    .line 851
    move-result-object p0

    .line 852
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 853
    .line 854
    .line 855
    move-result-object p1

    .line 856
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 857
    .line 858
    .line 859
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 860
    .line 861
    .line 862
    move-result-object p0

    .line 863
    const/16 p1, -0x67

    .line 864
    .line 865
    invoke-direct {p2, p1, p0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 866
    .line 867
    .line 868
    throw p2

    .line 869
    :goto_e
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 870
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 871
    .line 872
    throw p0

    .line 873
    :cond_21
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    .line 874
    .line 875
    const-string p1, "Package has invalid signing-key-set."

    .line 876
    .line 877
    invoke-direct {p0, v2, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 878
    .line 879
    .line 880
    throw p0

    .line 881
    :cond_22
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    .line 882
    .line 883
    const-string p1, "Passed invalid package to keyset validation."

    .line 884
    .line 885
    invoke-direct {p0, v2, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 886
    .line 887
    .line 888
    throw p0

    .line 889
    :cond_23
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    .line 890
    .line 891
    const-string p1, "Code and resource paths haven\'t been set correctly"

    .line 892
    .line 893
    invoke-direct {p0, v2, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 894
    .line 895
    .line 896
    throw p0
.end method

.method public final assertPackageWithSharedUserIdIsPrivileged(Lcom/android/server/pm/pkg/AndroidPackage;)V
    .locals 5

    .line 1
    invoke-static {p1}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageLegacyUtils;->isPrivileged(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSharedUserId()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->isLeavingSharedUser()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 21
    .line 22
    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 23
    .line 24
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 25
    .line 26
    monitor-enter v1
    :try_end_0
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    :try_start_1
    iget-object v2, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 28
    .line 29
    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 30
    .line 31
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSharedUserId()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    const/4 v4, 0x0

    .line 36
    invoke-virtual {v2, v3, v4}, Lcom/android/server/pm/Settings;->getSharedUserLPw(Ljava/lang/String;Z)Lcom/android/server/pm/SharedUserSetting;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    monitor-exit v1

    .line 41
    goto :goto_0

    .line 42
    :catchall_0
    move-exception v2

    .line 43
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    :try_start_2
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 45
    .line 46
    throw v2
    :try_end_2
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_2 .. :try_end_2} :catch_0

    .line 47
    :catch_0
    :goto_0
    if-eqz v0, :cond_1

    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/android/server/pm/SharedUserSetting;->isPrivileged()Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_1

    .line 54
    .line 55
    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 56
    .line 57
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 58
    .line 59
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 60
    .line 61
    monitor-enter v0

    .line 62
    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 63
    .line 64
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 65
    .line 66
    const-string v1, "android"

    .line 67
    .line 68
    invoke-virtual {p0, v1}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 73
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-static {p0, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->comparePackageSignatures(Lcom/android/server/pm/PackageSetting;Landroid/content/pm/SigningDetails;)Z

    .line 78
    .line 79
    .line 80
    move-result p0

    .line 81
    if-eqz p0, :cond_0

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    const-string v0, "Apps that share a user with a privileged app must themselves be marked as privileged. "

    .line 87
    .line 88
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const-string v0, " shares privileged user "

    .line 99
    .line 100
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSharedUserId()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    const-string p1, "."

    .line 111
    .line 112
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    new-instance p1, Lcom/android/server/pm/PackageManagerException;

    .line 120
    .line 121
    const/16 v0, -0x13

    .line 122
    .line 123
    invoke-direct {p1, p0, v0}, Lcom/android/server/pm/PackageManagerException;-><init>(Ljava/lang/String;I)V

    .line 124
    .line 125
    .line 126
    throw p1

    .line 127
    :catchall_1
    move-exception p0

    .line 128
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 129
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 130
    .line 131
    throw p0

    .line 132
    :cond_1
    :goto_1
    return-void
.end method

.method public final assertStaticSharedLibraryVersionCodeIsValid(Lcom/android/server/pm/pkg/AndroidPackage;)V
    .locals 17

    .line 1
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getStaticSharedLibraryName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    move-object/from16 v1, p0

    .line 6
    .line 7
    iget-object v1, v1, Lcom/android/server/pm/InstallPackageHelper;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesImpl;

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Lcom/android/server/pm/SharedLibrariesImpl;->getSharedLibraryInfos(Ljava/lang/String;)Lcom/android/server/utils/WatchedLongSparseArray;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-wide/high16 v1, -0x8000000000000000L

    .line 14
    .line 15
    const-wide v3, 0x7fffffffffffffffL

    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    iget-object v5, v0, Lcom/android/server/utils/WatchedLongSparseArray;->mStorage:Landroid/util/LongSparseArray;

    .line 23
    .line 24
    invoke-virtual {v5}, Landroid/util/LongSparseArray;->size()I

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    const/4 v6, 0x0

    .line 29
    :goto_0
    if-ge v6, v5, :cond_2

    .line 30
    .line 31
    iget-object v7, v0, Lcom/android/server/utils/WatchedLongSparseArray;->mStorage:Landroid/util/LongSparseArray;

    .line 32
    .line 33
    invoke-virtual {v7, v6}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v7

    .line 37
    check-cast v7, Landroid/content/pm/SharedLibraryInfo;

    .line 38
    .line 39
    invoke-virtual {v7}, Landroid/content/pm/SharedLibraryInfo;->getDeclaringPackage()Landroid/content/pm/VersionedPackage;

    .line 40
    .line 41
    .line 42
    move-result-object v8

    .line 43
    invoke-virtual {v8}, Landroid/content/pm/VersionedPackage;->getLongVersionCode()J

    .line 44
    .line 45
    .line 46
    move-result-wide v8

    .line 47
    invoke-virtual {v7}, Landroid/content/pm/SharedLibraryInfo;->getLongVersion()J

    .line 48
    .line 49
    .line 50
    move-result-wide v10

    .line 51
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getStaticSharedLibraryVersion()J

    .line 52
    .line 53
    .line 54
    move-result-wide v12

    .line 55
    cmp-long v10, v10, v12

    .line 56
    .line 57
    const-wide/16 v11, 0x1

    .line 58
    .line 59
    if-gez v10, :cond_0

    .line 60
    .line 61
    add-long/2addr v8, v11

    .line 62
    invoke-static {v1, v2, v8, v9}, Ljava/lang/Math;->max(JJ)J

    .line 63
    .line 64
    .line 65
    move-result-wide v1

    .line 66
    goto :goto_1

    .line 67
    :cond_0
    invoke-virtual {v7}, Landroid/content/pm/SharedLibraryInfo;->getLongVersion()J

    .line 68
    .line 69
    .line 70
    move-result-wide v13

    .line 71
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getStaticSharedLibraryVersion()J

    .line 72
    .line 73
    .line 74
    move-result-wide v15

    .line 75
    cmp-long v7, v13, v15

    .line 76
    .line 77
    if-lez v7, :cond_1

    .line 78
    .line 79
    sub-long/2addr v8, v11

    .line 80
    invoke-static {v3, v4, v8, v9}, Ljava/lang/Math;->min(JJ)J

    .line 81
    .line 82
    .line 83
    move-result-wide v3

    .line 84
    :goto_1
    add-int/lit8 v6, v6, 0x1

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_1
    move-wide v1, v8

    .line 88
    move-wide v3, v1

    .line 89
    :cond_2
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getLongVersionCode()J

    .line 90
    .line 91
    .line 92
    move-result-wide v5

    .line 93
    cmp-long v0, v5, v1

    .line 94
    .line 95
    if-ltz v0, :cond_3

    .line 96
    .line 97
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getLongVersionCode()J

    .line 98
    .line 99
    .line 100
    move-result-wide v0

    .line 101
    cmp-long v0, v0, v3

    .line 102
    .line 103
    if-gtz v0, :cond_3

    .line 104
    .line 105
    return-void

    .line 106
    :cond_3
    const-string v0, "Static shared lib version codes must be ordered as lib versions"

    .line 107
    .line 108
    const/16 v1, -0xe

    .line 109
    .line 110
    invoke-static {v1, v0}, Lcom/android/server/pm/PackageManagerException;->ofInternalError(ILjava/lang/String;)Lcom/android/server/pm/PackageManagerException;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    throw v0
.end method

.method public final cleanUpAppIdCreation(Lcom/android/server/pm/InstallRequest;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getScannedPackageSetting()Lcom/android/server/pm/PackageSetting;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getScannedPackageSetting()Lcom/android/server/pm/PackageSetting;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget v0, v0, Lcom/android/server/pm/PackageSetting;->mAppId:I

    .line 12
    .line 13
    if-lez v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 18
    .line 19
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 20
    .line 21
    monitor-enter v0

    .line 22
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getScannedPackageSetting()Lcom/android/server/pm/PackageSetting;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iget p1, p1, Lcom/android/server/pm/PackageSetting;->mAppId:I

    .line 31
    .line 32
    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->removeAppIdLPw(I)V

    .line 33
    .line 34
    .line 35
    monitor-exit v0

    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 40
    .line 41
    throw p0

    .line 42
    :cond_0
    :goto_0
    return-void
.end method

.method public final commitPackageSettings(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/ReconciledPackage;)V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    move-object/from16 v8, p2

    .line 6
    .line 7
    move-object/from16 v9, p3

    .line 8
    .line 9
    move-object/from16 v10, p4

    .line 10
    .line 11
    const/4 v11, 0x1

    .line 12
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v12

    .line 16
    iget-object v13, v10, Lcom/android/server/pm/ReconciledPackage;->mInstallRequest:Lcom/android/server/pm/InstallRequest;

    .line 17
    .line 18
    invoke-virtual {v13}, Lcom/android/server/pm/InstallRequest;->assertScanResultExists()V

    .line 19
    .line 20
    .line 21
    iget-object v1, v13, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    .line 22
    .line 23
    iget-object v1, v1, Lcom/android/server/pm/ScanResult;->mRequest:Lcom/android/server/pm/ScanRequest;

    .line 24
    .line 25
    iget-object v14, v1, Lcom/android/server/pm/ScanRequest;->mOldPkg:Lcom/android/server/pm/pkg/AndroidPackage;

    .line 26
    .line 27
    iget v15, v13, Lcom/android/server/pm/InstallRequest;->mScanFlags:I

    .line 28
    .line 29
    iget v1, v13, Lcom/android/server/pm/InstallRequest;->mParseFlags:I

    .line 30
    .line 31
    const/high16 v2, -0x80000000

    .line 32
    .line 33
    and-int/2addr v1, v2

    .line 34
    const/4 v6, 0x0

    .line 35
    if-eqz v1, :cond_0

    .line 36
    .line 37
    move v5, v11

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    move v5, v6

    .line 40
    :goto_0
    iget-object v1, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 41
    .line 42
    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mCustomResolverComponentName:Landroid/content/ComponentName;

    .line 43
    .line 44
    if-eqz v1, :cond_1

    .line 45
    .line 46
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-eqz v1, :cond_1

    .line 59
    .line 60
    iget-object v4, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 61
    .line 62
    const-string v2, "Replacing default ResolverActivity with custom activity: "

    .line 63
    .line 64
    iget-object v3, v4, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 65
    .line 66
    monitor-enter v3

    .line 67
    :try_start_0
    iput-boolean v11, v4, Lcom/android/server/pm/PackageManagerService;->mResolverReplaced:Z

    .line 68
    .line 69
    sget-object v16, Lcom/android/server/pm/pkg/PackageUserStateInternal;->DEFAULT:Lcom/android/server/pm/pkg/PackageUserStateDefault;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 70
    .line 71
    const/16 v17, 0x0

    .line 72
    .line 73
    const-wide/16 v18, 0x0

    .line 74
    .line 75
    move-object/from16 v1, p1

    .line 76
    .line 77
    move-object/from16 v20, v2

    .line 78
    .line 79
    move-object/from16 v21, v3

    .line 80
    .line 81
    move-wide/from16 v2, v18

    .line 82
    .line 83
    move-object v11, v4

    .line 84
    move-object/from16 v4, v16

    .line 85
    .line 86
    move/from16 v22, v5

    .line 87
    .line 88
    move/from16 v5, v17

    .line 89
    .line 90
    move-object/from16 v16, v14

    .line 91
    .line 92
    move v14, v6

    .line 93
    move-object/from16 v6, p2

    .line 94
    .line 95
    :try_start_1
    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateApplicationInfo(Lcom/android/server/pm/pkg/AndroidPackage;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ApplicationInfo;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    iget-object v2, v11, Lcom/android/server/pm/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    .line 100
    .line 101
    iput-object v1, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 102
    .line 103
    iget-object v1, v11, Lcom/android/server/pm/PackageManagerService;->mCustomResolverComponentName:Landroid/content/ComponentName;

    .line 104
    .line 105
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    iput-object v1, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 110
    .line 111
    iget-object v1, v11, Lcom/android/server/pm/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    .line 112
    .line 113
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    iput-object v2, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 118
    .line 119
    iget-object v1, v11, Lcom/android/server/pm/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    .line 120
    .line 121
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getProcessName()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    iput-object v2, v1, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 126
    .line 127
    iget-object v1, v11, Lcom/android/server/pm/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    .line 128
    .line 129
    iput v14, v1, Landroid/content/pm/ActivityInfo;->launchMode:I

    .line 130
    .line 131
    const v2, 0x10320

    .line 132
    .line 133
    .line 134
    iput v2, v1, Landroid/content/pm/ActivityInfo;->flags:I

    .line 135
    .line 136
    iput v14, v1, Landroid/content/pm/ActivityInfo;->theme:I

    .line 137
    .line 138
    const/4 v2, 0x1

    .line 139
    iput-boolean v2, v1, Landroid/content/pm/ActivityInfo;->exported:Z

    .line 140
    .line 141
    iput-boolean v2, v1, Landroid/content/pm/ActivityInfo;->enabled:Z

    .line 142
    .line 143
    iget-object v2, v11, Lcom/android/server/pm/PackageManagerService;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 144
    .line 145
    iput-object v1, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 146
    .line 147
    iput v14, v2, Landroid/content/pm/ResolveInfo;->priority:I

    .line 148
    .line 149
    iput v14, v2, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    .line 150
    .line 151
    iput v14, v2, Landroid/content/pm/ResolveInfo;->match:I

    .line 152
    .line 153
    iget-object v1, v11, Lcom/android/server/pm/PackageManagerService;->mCustomResolverComponentName:Landroid/content/ComponentName;

    .line 154
    .line 155
    iput-object v1, v11, Lcom/android/server/pm/PackageManagerService;->mResolveComponentName:Landroid/content/ComponentName;

    .line 156
    .line 157
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->onChange()V

    .line 158
    .line 159
    .line 160
    const-string v1, "PackageManager"

    .line 161
    .line 162
    new-instance v2, Ljava/lang/StringBuilder;

    .line 163
    .line 164
    move-object/from16 v3, v20

    .line 165
    .line 166
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    iget-object v3, v11, Lcom/android/server/pm/PackageManagerService;->mResolveComponentName:Landroid/content/ComponentName;

    .line 170
    .line 171
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v2

    .line 178
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    .line 180
    .line 181
    monitor-exit v21

    .line 182
    goto :goto_2

    .line 183
    :catchall_0
    move-exception v0

    .line 184
    goto :goto_1

    .line 185
    :catchall_1
    move-exception v0

    .line 186
    move-object/from16 v21, v3

    .line 187
    .line 188
    :goto_1
    monitor-exit v21
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 189
    throw v0

    .line 190
    :cond_1
    move/from16 v22, v5

    .line 191
    .line 192
    move-object/from16 v16, v14

    .line 193
    .line 194
    move v14, v6

    .line 195
    :goto_2
    const/4 v11, 0x0

    .line 196
    if-eqz v9, :cond_2

    .line 197
    .line 198
    iget-wide v1, v9, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J

    .line 199
    .line 200
    iget-wide v3, v8, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J

    .line 201
    .line 202
    cmp-long v1, v1, v3

    .line 203
    .line 204
    if-gez v1, :cond_2

    .line 205
    .line 206
    invoke-virtual {v8, v11}, Lcom/android/server/pm/PackageSetting;->setAppMetadataFilePath(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v8, v14}, Lcom/android/server/pm/PackageSetting;->setAppMetadataSource(I)V

    .line 210
    .line 211
    .line 212
    :cond_2
    iget-object v1, v8, Lcom/android/server/pm/PackageSetting;->mAppMetadataFilePath:Ljava/lang/String;

    .line 213
    .line 214
    const/4 v6, 0x2

    .line 215
    if-nez v1, :cond_5

    .line 216
    .line 217
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v1

    .line 221
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    .line 222
    .line 223
    .line 224
    move-result v2

    .line 225
    if-eqz v2, :cond_3

    .line 226
    .line 227
    new-instance v1, Ljava/lang/StringBuilder;

    .line 228
    .line 229
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 230
    .line 231
    .line 232
    invoke-static {}, Landroid/os/Environment;->getDataDirectoryPath()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v2

    .line 236
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    const-string v2, "/app-metadata/"

    .line 240
    .line 241
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v2

    .line 248
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v1

    .line 255
    :cond_3
    const-string v2, "/app.metadata"

    .line 256
    .line 257
    invoke-static {v1, v2}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v1

    .line 261
    iget-boolean v2, v13, Lcom/android/server/pm/InstallRequest;->mHasAppMetadataFileFromInstaller:Z

    .line 262
    .line 263
    if-eqz v2, :cond_4

    .line 264
    .line 265
    invoke-virtual {v8, v1}, Lcom/android/server/pm/PackageSetting;->setAppMetadataFilePath(Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->aslInApkAppMetadataSource()Z

    .line 269
    .line 270
    .line 271
    move-result v1

    .line 272
    if-eqz v1, :cond_5

    .line 273
    .line 274
    invoke-virtual {v8, v6}, Lcom/android/server/pm/PackageSetting;->setAppMetadataSource(I)V

    .line 275
    .line 276
    .line 277
    goto :goto_3

    .line 278
    :cond_4
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->aslInApkAppMetadataSource()Z

    .line 279
    .line 280
    .line 281
    move-result v2

    .line 282
    if-eqz v2, :cond_5

    .line 283
    .line 284
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getProperties()Ljava/util/Map;

    .line 285
    .line 286
    .line 287
    move-result-object v2

    .line 288
    const-string v3, "android.content.PROPERTY_ANDROID_SAFETY_LABEL"

    .line 289
    .line 290
    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 291
    .line 292
    .line 293
    move-result v2

    .line 294
    if-eqz v2, :cond_5

    .line 295
    .line 296
    invoke-virtual {v8, v1}, Lcom/android/server/pm/PackageSetting;->setAppMetadataFilePath(Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    const/4 v1, 0x1

    .line 300
    invoke-virtual {v8, v1}, Lcom/android/server/pm/PackageSetting;->setAppMetadataSource(I)V

    .line 301
    .line 302
    .line 303
    :cond_5
    :goto_3
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v1

    .line 307
    const-string v2, "android"

    .line 308
    .line 309
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 310
    .line 311
    .line 312
    move-result v1

    .line 313
    if-eqz v1, :cond_7

    .line 314
    .line 315
    iget-object v5, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 316
    .line 317
    iget-object v4, v5, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 318
    .line 319
    monitor-enter v4

    .line 320
    :try_start_2
    iput-object v7, v5, Lcom/android/server/pm/PackageManagerService;->mPlatformPackage:Lcom/android/server/pm/pkg/AndroidPackage;

    .line 321
    .line 322
    sget-object v17, Lcom/android/server/pm/pkg/PackageUserStateInternal;->DEFAULT:Lcom/android/server/pm/pkg/PackageUserStateDefault;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 323
    .line 324
    const/16 v19, 0x0

    .line 325
    .line 326
    const-wide/16 v2, 0x0

    .line 327
    .line 328
    move-object/from16 v1, p1

    .line 329
    .line 330
    move-object/from16 v20, v4

    .line 331
    .line 332
    move-object/from16 v4, v17

    .line 333
    .line 334
    move-object v11, v5

    .line 335
    move/from16 v5, v19

    .line 336
    .line 337
    move-object/from16 v6, p2

    .line 338
    .line 339
    :try_start_3
    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateApplicationInfo(Lcom/android/server/pm/pkg/AndroidPackage;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ApplicationInfo;

    .line 340
    .line 341
    .line 342
    move-result-object v1

    .line 343
    iput-object v1, v11, Lcom/android/server/pm/PackageManagerService;->mAndroidApplication:Landroid/content/pm/ApplicationInfo;

    .line 344
    .line 345
    iget-boolean v2, v11, Lcom/android/server/pm/PackageManagerService;->mResolverReplaced:Z

    .line 346
    .line 347
    if-nez v2, :cond_6

    .line 348
    .line 349
    iget-object v2, v11, Lcom/android/server/pm/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    .line 350
    .line 351
    iput-object v1, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 352
    .line 353
    const-class v1, Lcom/android/internal/app/ResolverActivity;

    .line 354
    .line 355
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object v1

    .line 359
    iput-object v1, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 360
    .line 361
    iget-object v1, v11, Lcom/android/server/pm/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    .line 362
    .line 363
    iget-object v2, v11, Lcom/android/server/pm/PackageManagerService;->mAndroidApplication:Landroid/content/pm/ApplicationInfo;

    .line 364
    .line 365
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 366
    .line 367
    iput-object v2, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 368
    .line 369
    const-string/jumbo v2, "system:ui"

    .line 370
    .line 371
    .line 372
    iput-object v2, v1, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 373
    .line 374
    iput v14, v1, Landroid/content/pm/ActivityInfo;->launchMode:I

    .line 375
    .line 376
    const/4 v2, 0x3

    .line 377
    iput v2, v1, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    .line 378
    .line 379
    const v2, 0x11220

    .line 380
    .line 381
    .line 382
    iput v2, v1, Landroid/content/pm/ActivityInfo;->flags:I

    .line 383
    .line 384
    const v2, 0x1030226

    .line 385
    .line 386
    .line 387
    iput v2, v1, Landroid/content/pm/ActivityInfo;->theme:I

    .line 388
    .line 389
    const/4 v2, 0x1

    .line 390
    iput-boolean v2, v1, Landroid/content/pm/ActivityInfo;->exported:Z

    .line 391
    .line 392
    iput-boolean v2, v1, Landroid/content/pm/ActivityInfo;->enabled:Z

    .line 393
    .line 394
    const/4 v2, 0x2

    .line 395
    iput v2, v1, Landroid/content/pm/ActivityInfo;->resizeMode:I

    .line 396
    .line 397
    const/16 v2, 0xdb0

    .line 398
    .line 399
    iput v2, v1, Landroid/content/pm/ActivityInfo;->configChanges:I

    .line 400
    .line 401
    iget-object v2, v11, Lcom/android/server/pm/PackageManagerService;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 402
    .line 403
    iput-object v1, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 404
    .line 405
    iput v14, v2, Landroid/content/pm/ResolveInfo;->priority:I

    .line 406
    .line 407
    iput v14, v2, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    .line 408
    .line 409
    iput v14, v2, Landroid/content/pm/ResolveInfo;->match:I

    .line 410
    .line 411
    new-instance v1, Landroid/content/ComponentName;

    .line 412
    .line 413
    iget-object v2, v11, Lcom/android/server/pm/PackageManagerService;->mAndroidApplication:Landroid/content/pm/ApplicationInfo;

    .line 414
    .line 415
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 416
    .line 417
    iget-object v3, v11, Lcom/android/server/pm/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    .line 418
    .line 419
    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 420
    .line 421
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    .line 423
    .line 424
    iput-object v1, v11, Lcom/android/server/pm/PackageManagerService;->mResolveComponentName:Landroid/content/ComponentName;

    .line 425
    .line 426
    goto :goto_4

    .line 427
    :catchall_2
    move-exception v0

    .line 428
    goto :goto_5

    .line 429
    :cond_6
    :goto_4
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->onChange()V

    .line 430
    .line 431
    .line 432
    monitor-exit v20
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 433
    invoke-virtual {v11}, Lcom/android/server/pm/PackageManagerService;->applyUpdatedSystemOverlayPaths()V

    .line 434
    .line 435
    .line 436
    goto :goto_6

    .line 437
    :catchall_3
    move-exception v0

    .line 438
    move-object/from16 v20, v4

    .line 439
    .line 440
    :goto_5
    :try_start_4
    monitor-exit v20
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 441
    throw v0

    .line 442
    :cond_7
    :goto_6
    iget-object v1, v0, Lcom/android/server/pm/InstallPackageHelper;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesImpl;

    .line 443
    .line 444
    iget-object v4, v10, Lcom/android/server/pm/ReconciledPackage;->mAllowedSharedLibraryInfos:Ljava/util/List;

    .line 445
    .line 446
    new-instance v5, Landroid/util/ArrayMap;

    .line 447
    .line 448
    iget-object v2, v10, Lcom/android/server/pm/ReconciledPackage;->mAllPackages:Ljava/util/Map;

    .line 449
    .line 450
    invoke-interface {v2}, Ljava/util/Map;->size()I

    .line 451
    .line 452
    .line 453
    move-result v2

    .line 454
    iget-object v3, v10, Lcom/android/server/pm/ReconciledPackage;->mInstallRequests:Ljava/util/List;

    .line 455
    .line 456
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 457
    .line 458
    .line 459
    move-result v3

    .line 460
    add-int/2addr v3, v2

    .line 461
    invoke-direct {v5, v3}, Landroid/util/ArrayMap;-><init>(I)V

    .line 462
    .line 463
    .line 464
    iget-object v2, v10, Lcom/android/server/pm/ReconciledPackage;->mAllPackages:Ljava/util/Map;

    .line 465
    .line 466
    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->putAll(Ljava/util/Map;)V

    .line 467
    .line 468
    .line 469
    iget-object v2, v10, Lcom/android/server/pm/ReconciledPackage;->mInstallRequests:Ljava/util/List;

    .line 470
    .line 471
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 472
    .line 473
    .line 474
    move-result-object v2

    .line 475
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 476
    .line 477
    .line 478
    move-result v3

    .line 479
    if-eqz v3, :cond_8

    .line 480
    .line 481
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 482
    .line 483
    .line 484
    move-result-object v3

    .line 485
    check-cast v3, Lcom/android/server/pm/InstallRequest;

    .line 486
    .line 487
    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->getScannedPackageSetting()Lcom/android/server/pm/PackageSetting;

    .line 488
    .line 489
    .line 490
    move-result-object v6

    .line 491
    iget-object v6, v6, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    .line 492
    .line 493
    iget-object v3, v3, Lcom/android/server/pm/InstallRequest;->mParsedPackage:Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 494
    .line 495
    invoke-virtual {v5, v6, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    .line 497
    .line 498
    goto :goto_7

    .line 499
    :cond_8
    move-object/from16 v2, p1

    .line 500
    .line 501
    move-object/from16 v3, p2

    .line 502
    .line 503
    move v6, v15

    .line 504
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/SharedLibrariesImpl;->commitSharedLibraryChanges(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Ljava/util/List;Ljava/util/Map;I)Ljava/util/ArrayList;

    .line 505
    .line 506
    .line 507
    move-result-object v1

    .line 508
    iput-object v1, v13, Lcom/android/server/pm/InstallRequest;->mLibraryConsumers:Ljava/util/ArrayList;

    .line 509
    .line 510
    and-int/lit8 v2, v15, 0x10

    .line 511
    .line 512
    if-eqz v2, :cond_9

    .line 513
    .line 514
    goto :goto_8

    .line 515
    :cond_9
    and-int/lit16 v2, v15, 0x400

    .line 516
    .line 517
    if-eqz v2, :cond_a

    .line 518
    .line 519
    goto :goto_8

    .line 520
    :cond_a
    and-int/lit16 v2, v15, 0x800

    .line 521
    .line 522
    if-eqz v2, :cond_b

    .line 523
    .line 524
    goto :goto_8

    .line 525
    :cond_b
    iget-object v2, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 526
    .line 527
    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 528
    .line 529
    .line 530
    move-result-object v2

    .line 531
    invoke-interface {v2, v12}, Lcom/android/server/pm/Computer;->checkPackageFrozen(Ljava/lang/String;)V

    .line 532
    .line 533
    .line 534
    :goto_8
    iget-boolean v2, v13, Lcom/android/server/pm/InstallRequest;->mReplace:Z

    .line 535
    .line 536
    if-eqz v1, :cond_d

    .line 537
    .line 538
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getStaticSharedLibraryName()Ljava/lang/String;

    .line 539
    .line 540
    .line 541
    move-result-object v3

    .line 542
    if-eqz v3, :cond_c

    .line 543
    .line 544
    if-eqz v2, :cond_d

    .line 545
    .line 546
    :cond_c
    move v6, v14

    .line 547
    :goto_9
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 548
    .line 549
    .line 550
    move-result v3

    .line 551
    if-ge v6, v3, :cond_d

    .line 552
    .line 553
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 554
    .line 555
    .line 556
    move-result-object v3

    .line 557
    check-cast v3, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 558
    .line 559
    invoke-interface {v3}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 560
    .line 561
    .line 562
    move-result-object v4

    .line 563
    iget-object v5, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 564
    .line 565
    invoke-interface {v3}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    .line 566
    .line 567
    .line 568
    move-result v3

    .line 569
    const-string/jumbo v10, "update lib"

    .line 570
    .line 571
    .line 572
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 573
    .line 574
    .line 575
    const/4 v5, -0x1

    .line 576
    const/16 v11, 0xc

    .line 577
    .line 578
    invoke-static {v4, v3, v5, v10, v11}, Lcom/android/server/pm/PackageManagerService;->killApplication(Ljava/lang/String;IILjava/lang/String;I)V

    .line 579
    .line 580
    .line 581
    const/4 v3, 0x1

    .line 582
    add-int/2addr v6, v3

    .line 583
    goto :goto_9

    .line 584
    :cond_d
    const-string/jumbo v1, "updateSettings"

    .line 585
    .line 586
    .line 587
    const-wide/32 v3, 0x40000

    .line 588
    .line 589
    .line 590
    invoke-static {v3, v4, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 591
    .line 592
    .line 593
    iget-object v1, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 594
    .line 595
    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 596
    .line 597
    sget-boolean v5, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 598
    .line 599
    monitor-enter v1

    .line 600
    :try_start_5
    iget-object v5, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 601
    .line 602
    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 603
    .line 604
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 605
    .line 606
    .line 607
    iget-object v6, v8, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    .line 608
    .line 609
    iget-object v6, v6, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 610
    .line 611
    invoke-virtual {v6}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    .line 612
    .line 613
    .line 614
    move-result-object v6

    .line 615
    if-nez v6, :cond_e

    .line 616
    .line 617
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    .line 618
    .line 619
    .line 620
    move-result-object v6

    .line 621
    iget-object v10, v8, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    .line 622
    .line 623
    iput-object v6, v10, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 624
    .line 625
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 626
    .line 627
    .line 628
    :cond_e
    invoke-virtual {v5, v8}, Lcom/android/server/pm/Settings;->getSharedUserSettingLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/SharedUserSetting;

    .line 629
    .line 630
    .line 631
    move-result-object v6

    .line 632
    if-eqz v6, :cond_f

    .line 633
    .line 634
    iget-object v10, v6, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    .line 635
    .line 636
    iget-object v11, v10, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 637
    .line 638
    invoke-virtual {v11}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    .line 639
    .line 640
    .line 641
    move-result-object v11

    .line 642
    if-nez v11, :cond_f

    .line 643
    .line 644
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    .line 645
    .line 646
    .line 647
    move-result-object v11

    .line 648
    iput-object v11, v10, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 649
    .line 650
    :cond_f
    invoke-virtual {v5, v8, v6}, Lcom/android/server/pm/Settings;->addPackageSettingLPw(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/SharedUserSetting;)V

    .line 651
    .line 652
    .line 653
    iget-object v5, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 654
    .line 655
    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 656
    .line 657
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 658
    .line 659
    .line 660
    move-result-object v6

    .line 661
    invoke-virtual {v5, v6, v7}, Lcom/android/server/utils/WatchedArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 662
    .line 663
    .line 664
    const/high16 v5, 0x800000

    .line 665
    .line 666
    and-int/2addr v5, v15

    .line 667
    if-eqz v5, :cond_10

    .line 668
    .line 669
    iget-object v5, v0, Lcom/android/server/pm/InstallPackageHelper;->mApexManager:Lcom/android/server/pm/ApexManager;

    .line 670
    .line 671
    invoke-virtual {v5, v7}, Lcom/android/server/pm/ApexManager;->registerApkInApex(Lcom/android/server/pm/pkg/AndroidPackage;)V

    .line 672
    .line 673
    .line 674
    goto :goto_a

    .line 675
    :catchall_4
    move-exception v0

    .line 676
    goto/16 :goto_13

    .line 677
    .line 678
    :cond_10
    :goto_a
    iget-object v5, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 679
    .line 680
    invoke-virtual {v5}, Lcom/android/server/pm/PackageManagerService;->isDeviceUpgrading()Z

    .line 681
    .line 682
    .line 683
    move-result v5

    .line 684
    if-eqz v5, :cond_11

    .line 685
    .line 686
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    .line 687
    .line 688
    .line 689
    move-result v5

    .line 690
    if-nez v5, :cond_12

    .line 691
    .line 692
    :cond_11
    if-eqz v2, :cond_13

    .line 693
    .line 694
    :cond_12
    iget-object v5, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 695
    .line 696
    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 697
    .line 698
    invoke-virtual {v5}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    .line 699
    .line 700
    .line 701
    move-result-object v5

    .line 702
    array-length v6, v5

    .line 703
    move v10, v14

    .line 704
    :goto_b
    if-ge v10, v6, :cond_13

    .line 705
    .line 706
    aget v11, v5, v10

    .line 707
    .line 708
    invoke-virtual {v8, v11}, Lcom/android/server/pm/PackageSetting;->restoreComponentSettings(I)V

    .line 709
    .line 710
    .line 711
    const/4 v11, 0x1

    .line 712
    add-int/2addr v10, v11

    .line 713
    goto :goto_b

    .line 714
    :cond_13
    const/high16 v5, 0x4000000

    .line 715
    .line 716
    and-int/2addr v5, v15

    .line 717
    if-nez v5, :cond_14

    .line 718
    .line 719
    iget-object v5, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 720
    .line 721
    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 722
    .line 723
    iget-object v5, v5, Lcom/android/server/pm/Settings;->mKeySetManagerService:Lcom/android/server/pm/KeySetManagerService;

    .line 724
    .line 725
    invoke-virtual {v5, v7}, Lcom/android/server/pm/KeySetManagerService;->addScannedPackageLPw(Lcom/android/server/pm/pkg/AndroidPackage;)V

    .line 726
    .line 727
    .line 728
    :cond_14
    iget-object v5, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 729
    .line 730
    invoke-virtual {v5}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 731
    .line 732
    .line 733
    move-result-object v5

    .line 734
    iget-object v6, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 735
    .line 736
    iget-object v10, v6, Lcom/android/server/pm/PackageManagerService;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolver;

    .line 737
    .line 738
    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mSetupWizardPackage:Ljava/lang/String;

    .line 739
    .line 740
    move/from16 v11, v22

    .line 741
    .line 742
    invoke-virtual {v10, v7, v11, v6, v5}, Lcom/android/server/pm/resolution/ComponentResolver;->addAllComponents(Lcom/android/server/pm/pkg/AndroidPackage;ZLjava/lang/String;Lcom/android/server/pm/Computer;)V

    .line 743
    .line 744
    .line 745
    iget-object v6, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 746
    .line 747
    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mAppsFilter:Lcom/android/server/pm/AppsFilterImpl;

    .line 748
    .line 749
    and-int/lit16 v10, v15, 0x400

    .line 750
    .line 751
    if-eqz v10, :cond_15

    .line 752
    .line 753
    const/4 v10, 0x1

    .line 754
    goto :goto_c

    .line 755
    :cond_15
    move v10, v14

    .line 756
    :goto_c
    invoke-virtual {v6, v5, v8, v2, v10}, Lcom/android/server/pm/AppsFilterImpl;->addPackage(Lcom/android/server/pm/Computer;Lcom/android/server/pm/pkg/PackageStateInternal;ZZ)V

    .line 757
    .line 758
    .line 759
    iget-object v2, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 760
    .line 761
    invoke-virtual {v2, v7}, Lcom/android/server/pm/PackageManagerService;->addAllPackageProperties(Lcom/android/server/pm/pkg/AndroidPackage;)V

    .line 762
    .line 763
    .line 764
    invoke-virtual {v13}, Lcom/android/server/pm/InstallRequest;->getInstallFlags()I

    .line 765
    .line 766
    .line 767
    move-result v2

    .line 768
    sget-object v5, Lcom/android/server/pm/PackageInstallerSession;->EMPTY_CHILD_SESSION_ARRAY:[I

    .line 769
    .line 770
    const/high16 v5, 0x8000000

    .line 771
    .line 772
    and-int/2addr v2, v5

    .line 773
    if-eqz v2, :cond_16

    .line 774
    .line 775
    goto :goto_e

    .line 776
    :cond_16
    if-eqz v9, :cond_18

    .line 777
    .line 778
    iget-object v2, v9, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 779
    .line 780
    if-nez v2, :cond_17

    .line 781
    .line 782
    goto :goto_d

    .line 783
    :cond_17
    iget-object v2, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 784
    .line 785
    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    .line 786
    .line 787
    iget-object v5, v13, Lcom/android/server/pm/InstallRequest;->mPreVerifiedDomains:Landroid/content/pm/verify/domain/DomainSet;

    .line 788
    .line 789
    check-cast v2, Lcom/android/server/pm/verify/domain/DomainVerificationService;

    .line 790
    .line 791
    invoke-virtual {v2, v9, v8, v5}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->migrateState(Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/content/pm/verify/domain/DomainSet;)V

    .line 792
    .line 793
    .line 794
    goto :goto_e

    .line 795
    :cond_18
    :goto_d
    iget-object v2, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 796
    .line 797
    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    .line 798
    .line 799
    iget-object v5, v13, Lcom/android/server/pm/InstallRequest;->mPreVerifiedDomains:Landroid/content/pm/verify/domain/DomainSet;

    .line 800
    .line 801
    check-cast v2, Lcom/android/server/pm/verify/domain/DomainVerificationService;

    .line 802
    .line 803
    invoke-virtual {v2, v8, v5}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->addPackage(Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/content/pm/verify/domain/DomainSet;)V

    .line 804
    .line 805
    .line 806
    :goto_e
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getInstrumentations()Ljava/util/List;

    .line 807
    .line 808
    .line 809
    move-result-object v2

    .line 810
    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    .line 811
    .line 812
    .line 813
    move-result v2

    .line 814
    move v6, v14

    .line 815
    const/4 v5, 0x0

    .line 816
    :goto_f
    if-ge v6, v2, :cond_1b

    .line 817
    .line 818
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getInstrumentations()Ljava/util/List;

    .line 819
    .line 820
    .line 821
    move-result-object v9

    .line 822
    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 823
    .line 824
    .line 825
    move-result-object v9

    .line 826
    check-cast v9, Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;

    .line 827
    .line 828
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 829
    .line 830
    .line 831
    move-result-object v10

    .line 832
    invoke-static {v9, v10}, Lcom/android/internal/pm/pkg/component/ComponentMutateUtils;->setPackageName(Lcom/android/internal/pm/pkg/component/ParsedComponent;Ljava/lang/String;)V

    .line 833
    .line 834
    .line 835
    iget-object v10, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 836
    .line 837
    invoke-interface {v9}, Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;->getComponentName()Landroid/content/ComponentName;

    .line 838
    .line 839
    .line 840
    move-result-object v12

    .line 841
    iget-object v10, v10, Lcom/android/server/pm/PackageManagerService;->mInstrumentation:Lcom/android/server/utils/WatchedArrayMap;

    .line 842
    .line 843
    invoke-virtual {v10, v12, v9}, Lcom/android/server/utils/WatchedArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 844
    .line 845
    .line 846
    if-eqz v11, :cond_1a

    .line 847
    .line 848
    if-nez v5, :cond_19

    .line 849
    .line 850
    new-instance v5, Ljava/lang/StringBuilder;

    .line 851
    .line 852
    const/16 v10, 0x100

    .line 853
    .line 854
    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 855
    .line 856
    .line 857
    goto :goto_10

    .line 858
    :cond_19
    const/16 v10, 0x20

    .line 859
    .line 860
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 861
    .line 862
    .line 863
    :goto_10
    invoke-interface {v9}, Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;->getName()Ljava/lang/String;

    .line 864
    .line 865
    .line 866
    move-result-object v9

    .line 867
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 868
    .line 869
    .line 870
    :cond_1a
    const/4 v9, 0x1

    .line 871
    add-int/2addr v6, v9

    .line 872
    goto :goto_f

    .line 873
    :cond_1b
    const/4 v9, 0x1

    .line 874
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getProtectedBroadcasts()Ljava/util/List;

    .line 875
    .line 876
    .line 877
    move-result-object v2

    .line 878
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 879
    .line 880
    .line 881
    move-result v5

    .line 882
    if-nez v5, :cond_1c

    .line 883
    .line 884
    iget-object v5, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 885
    .line 886
    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mProtectedBroadcasts:Landroid/util/ArraySet;

    .line 887
    .line 888
    monitor-enter v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 889
    :try_start_6
    iget-object v6, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 890
    .line 891
    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mProtectedBroadcasts:Landroid/util/ArraySet;

    .line 892
    .line 893
    invoke-virtual {v6, v2}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 894
    .line 895
    .line 896
    monitor-exit v5

    .line 897
    goto :goto_11

    .line 898
    :catchall_5
    move-exception v0

    .line 899
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 900
    :try_start_7
    throw v0

    .line 901
    :cond_1c
    :goto_11
    iget-object v0, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 902
    .line 903
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    .line 904
    .line 905
    and-int/lit16 v2, v15, 0x2000

    .line 906
    .line 907
    if-eqz v2, :cond_1d

    .line 908
    .line 909
    move v11, v9

    .line 910
    goto :goto_12

    .line 911
    :cond_1d
    move v11, v14

    .line 912
    :goto_12
    iget-object v0, v0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    .line 913
    .line 914
    iget-object v0, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionManagerServiceImpl:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    .line 915
    .line 916
    move-object/from16 v2, v16

    .line 917
    .line 918
    invoke-interface {v0, v8, v11, v2}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->onPackageAdded(Lcom/android/server/pm/pkg/PackageState;ZLcom/android/server/pm/pkg/AndroidPackage;)V

    .line 919
    .line 920
    .line 921
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 922
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 923
    .line 924
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 925
    .line 926
    .line 927
    return-void

    .line 928
    :goto_13
    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 929
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 930
    .line 931
    throw v0
.end method

.method public final commitPackagesLocked(Ljava/util/List;[I)V
    .locals 29

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v8, p2

    .line 4
    .line 5
    const/4 v9, 0x1

    .line 6
    move-object/from16 v0, p1

    .line 7
    .line 8
    check-cast v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v10

    .line 14
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_50

    .line 19
    .line 20
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    move-object v11, v0

    .line 25
    check-cast v11, Lcom/android/server/pm/ReconciledPackage;

    .line 26
    .line 27
    iget-object v12, v11, Lcom/android/server/pm/ReconciledPackage;->mInstallRequest:Lcom/android/server/pm/InstallRequest;

    .line 28
    .line 29
    iget-object v13, v12, Lcom/android/server/pm/InstallRequest;->mParsedPackage:Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 30
    .line 31
    invoke-interface {v13}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v14

    .line 35
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 36
    .line 37
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 38
    .line 39
    iget-object v0, v0, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    .line 40
    .line 41
    invoke-virtual {v0, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 46
    .line 47
    iget-object v2, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 48
    .line 49
    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 50
    .line 51
    invoke-virtual {v2, v14}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    if-nez v0, :cond_0

    .line 56
    .line 57
    if-eqz v2, :cond_0

    .line 58
    .line 59
    sget-object v0, Lcom/android/server/pm/AsecInstallHelper;->ASEC_INTERNAL_PATH:Ljava/lang/String;

    .line 60
    .line 61
    iget v0, v2, Lcom/android/server/pm/SettingBase;->mPkgFlags:I

    .line 62
    .line 63
    const/high16 v2, 0x40000

    .line 64
    .line 65
    and-int/2addr v0, v2

    .line 66
    if-eqz v0, :cond_0

    .line 67
    .line 68
    new-instance v0, Ljava/util/ArrayList;

    .line 69
    .line 70
    invoke-direct {v0, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    iget-object v2, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 77
    .line 78
    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    .line 79
    .line 80
    new-instance v3, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda4;

    .line 81
    .line 82
    invoke-direct {v3, v1, v0, v9}, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/pm/InstallPackageHelper;Ljava/lang/Object;I)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 86
    .line 87
    .line 88
    :cond_0
    iget-object v0, v12, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    .line 89
    .line 90
    const/4 v15, 0x4

    .line 91
    if-eqz v0, :cond_1

    .line 92
    .line 93
    invoke-virtual {v0, v15}, Lcom/android/server/pm/PackageMetrics;->onStepStarted(I)V

    .line 94
    .line 95
    .line 96
    :cond_1
    iget-boolean v0, v12, Lcom/android/server/pm/InstallRequest;->mReplace:Z

    .line 97
    .line 98
    const/4 v6, 0x0

    .line 99
    if-eqz v0, :cond_18

    .line 100
    .line 101
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 102
    .line 103
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 104
    .line 105
    iget-object v0, v0, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    .line 106
    .line 107
    invoke-virtual {v0, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    move-object v2, v0

    .line 112
    check-cast v2, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 113
    .line 114
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 115
    .line 116
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-interface {v0, v14}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 125
    .line 126
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerServiceInjector;->mGetLocalServiceProducer:Lcom/android/server/pm/PackageManagerServiceInjector$ServiceProducer;

    .line 127
    .line 128
    const-class v4, Lcom/android/server/SpqrService;

    .line 129
    .line 130
    invoke-interface {v0, v4}, Lcom/android/server/pm/PackageManagerServiceInjector$ServiceProducer;->produce(Ljava/lang/Class;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    move-object v4, v0

    .line 135
    check-cast v4, Lcom/android/server/SpqrService;

    .line 136
    .line 137
    const-wide/16 v16, 0x0

    .line 138
    .line 139
    if-nez v4, :cond_2

    .line 140
    .line 141
    :goto_1
    move-object/from16 v28, v10

    .line 142
    .line 143
    goto/16 :goto_6

    .line 144
    .line 145
    :cond_2
    invoke-virtual {v12}, Lcom/android/server/pm/InstallRequest;->getScannedPackageSetting()Lcom/android/server/pm/PackageSetting;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    iget-object v0, v0, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 150
    .line 151
    iget v5, v12, Lcom/android/server/pm/InstallRequest;->mScanFlags:I

    .line 152
    .line 153
    and-int/lit16 v5, v5, 0x2000

    .line 154
    .line 155
    if-eqz v5, :cond_3

    .line 156
    .line 157
    move v5, v9

    .line 158
    goto :goto_2

    .line 159
    :cond_3
    move v5, v6

    .line 160
    :goto_2
    iget-object v15, v1, Lcom/android/server/pm/InstallPackageHelper;->mIncrementalManager:Landroid/os/incremental/IncrementalManager;

    .line 161
    .line 162
    if-eqz v15, :cond_4

    .line 163
    .line 164
    move v15, v9

    .line 165
    goto :goto_3

    .line 166
    :cond_4
    move v15, v6

    .line 167
    :goto_3
    iget-object v9, v4, Lcom/android/server/ProfileService;->TAG:Ljava/lang/String;

    .line 168
    .line 169
    if-nez v2, :cond_5

    .line 170
    .line 171
    const-string v0, "Old package is missing"

    .line 172
    .line 173
    invoke-static {v9, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    .line 175
    .line 176
    goto :goto_1

    .line 177
    :cond_5
    if-nez v0, :cond_6

    .line 178
    .line 179
    const-string v0, "New package is missing"

    .line 180
    .line 181
    invoke-static {v9, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    .line 183
    .line 184
    goto :goto_1

    .line 185
    :cond_6
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v7

    .line 189
    if-eqz v5, :cond_7

    .line 190
    .line 191
    const-string v0, "Package is instant "

    .line 192
    .line 193
    invoke-static {v0, v7, v9}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    goto :goto_1

    .line 197
    :cond_7
    const-string/jumbo v5, "sys.dexopt.ctrl"

    .line 198
    .line 199
    .line 200
    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 201
    .line 202
    .line 203
    move-result v5

    .line 204
    if-eqz v5, :cond_8

    .line 205
    .line 206
    const-string v0, "Dexopt is limited"

    .line 207
    .line 208
    invoke-static {v9, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    .line 210
    .line 211
    goto :goto_1

    .line 212
    :cond_8
    invoke-virtual {v4, v7}, Lcom/android/server/ProfileService;->isPackageBlockListed(Ljava/lang/String;)Z

    .line 213
    .line 214
    .line 215
    move-result v5

    .line 216
    if-eqz v5, :cond_9

    .line 217
    .line 218
    const-string v0, "Blocklisted "

    .line 219
    .line 220
    invoke-static {v0, v7, v9}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    goto :goto_1

    .line 224
    :cond_9
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->isDebuggable()Z

    .line 225
    .line 226
    .line 227
    move-result v5

    .line 228
    if-eqz v5, :cond_a

    .line 229
    .line 230
    const-string v0, "Package is debuggable "

    .line 231
    .line 232
    invoke-static {v0, v7, v9}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    goto :goto_1

    .line 236
    :cond_a
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getBaseApkPath()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v5

    .line 240
    const/16 v6, 0xb

    .line 241
    .line 242
    invoke-virtual {v4, v6, v5}, Lcom/android/server/ProfileService;->apkHasNumOfDexFiles(ILjava/lang/String;)Z

    .line 243
    .line 244
    .line 245
    move-result v6

    .line 246
    if-eqz v6, :cond_b

    .line 247
    .line 248
    const-string v0, "Package has too many dexes "

    .line 249
    .line 250
    invoke-static {v0, v7, v9}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    goto :goto_1

    .line 254
    :cond_b
    invoke-static {v9, v5}, Lcom/android/server/ProfileService;->checkSafeToCreateProfile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 255
    .line 256
    .line 257
    move-result v5

    .line 258
    if-nez v5, :cond_c

    .line 259
    .line 260
    const-string v0, "Unsafe to create profile"

    .line 261
    .line 262
    invoke-static {v9, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    .line 264
    .line 265
    goto :goto_1

    .line 266
    :cond_c
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    .line 267
    .line 268
    .line 269
    move-result v5

    .line 270
    invoke-static {v5}, Landroid/os/UserHandle;->getAppId(I)I

    .line 271
    .line 272
    .line 273
    move-result v5

    .line 274
    const/16 v6, 0x1388

    .line 275
    .line 276
    if-lt v5, v6, :cond_d

    .line 277
    .line 278
    const/16 v6, 0x176f

    .line 279
    .line 280
    if-gt v5, v6, :cond_d

    .line 281
    .line 282
    const-string v0, "Reserved app id "

    .line 283
    .line 284
    invoke-static {v0, v7, v9}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    .line 286
    .line 287
    goto/16 :goto_1

    .line 288
    .line 289
    :cond_d
    if-eqz v15, :cond_e

    .line 290
    .line 291
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v5

    .line 295
    invoke-static {v5}, Landroid/os/incremental/IncrementalManager;->isIncrementalPath(Ljava/lang/String;)Z

    .line 296
    .line 297
    .line 298
    move-result v5

    .line 299
    if-eqz v5, :cond_e

    .line 300
    .line 301
    const-string v0, "Incremental installation"

    .line 302
    .line 303
    invoke-static {v9, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    .line 305
    .line 306
    goto/16 :goto_1

    .line 307
    .line 308
    :cond_e
    new-instance v5, Ljava/lang/StringBuilder;

    .line 309
    .line 310
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 311
    .line 312
    .line 313
    invoke-static {v7}, Landroid/os/Environment;->getDataRefProfilesDePackageDirectory(Ljava/lang/String;)Ljava/io/File;

    .line 314
    .line 315
    .line 316
    move-result-object v6

    .line 317
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 318
    .line 319
    .line 320
    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    .line 321
    .line 322
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    const/4 v7, 0x0

    .line 326
    invoke-static {v7}, Landroid/content/pm/dex/ArtManager;->getProfileName(Ljava/lang/String;)Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object v15

    .line 330
    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v5

    .line 337
    new-instance v7, Ljava/io/File;

    .line 338
    .line 339
    invoke-direct {v7, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 340
    .line 341
    .line 342
    invoke-virtual {v7}, Ljava/io/File;->length()J

    .line 343
    .line 344
    .line 345
    move-result-wide v19

    .line 346
    cmp-long v5, v19, v16

    .line 347
    .line 348
    if-nez v5, :cond_f

    .line 349
    .line 350
    const-string v0, "Profile is missing"

    .line 351
    .line 352
    invoke-static {v9, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    .line 354
    .line 355
    goto/16 :goto_1

    .line 356
    .line 357
    :cond_f
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object v5

    .line 361
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getBaseApkPath()Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object v20

    .line 365
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getBaseApkPath()Ljava/lang/String;

    .line 366
    .line 367
    .line 368
    move-result-object v21

    .line 369
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    .line 370
    .line 371
    .line 372
    move-result v7

    .line 373
    invoke-static {v7}, Landroid/os/UserHandle;->getAppId(I)I

    .line 374
    .line 375
    .line 376
    move-result v9

    .line 377
    new-instance v15, Ljava/lang/StringBuilder;

    .line 378
    .line 379
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 380
    .line 381
    .line 382
    move-object/from16 v28, v10

    .line 383
    .line 384
    invoke-static {v5}, Landroid/os/Environment;->getDataRefProfilesDePackageDirectory(Ljava/lang/String;)Ljava/io/File;

    .line 385
    .line 386
    .line 387
    move-result-object v10

    .line 388
    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 389
    .line 390
    .line 391
    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    .line 393
    .line 394
    const/4 v6, 0x0

    .line 395
    invoke-static {v6}, Landroid/content/pm/dex/ArtManager;->getProfileName(Ljava/lang/String;)Ljava/lang/String;

    .line 396
    .line 397
    .line 398
    move-result-object v10

    .line 399
    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    .line 401
    .line 402
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 403
    .line 404
    .line 405
    move-result-object v25

    .line 406
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getVersionName()Ljava/lang/String;

    .line 407
    .line 408
    .line 409
    move-result-object v26

    .line 410
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getVersionName()Ljava/lang/String;

    .line 411
    .line 412
    .line 413
    move-result-object v27

    .line 414
    const-string v0, "Failed to prepare new profile for "

    .line 415
    .line 416
    invoke-virtual {v4, v7, v9}, Lcom/android/server/ProfileService;->checkUserAndService(II)Z

    .line 417
    .line 418
    .line 419
    move-result v6

    .line 420
    if-nez v6, :cond_10

    .line 421
    .line 422
    :goto_4
    const/4 v0, 0x0

    .line 423
    goto :goto_5

    .line 424
    :cond_10
    :try_start_0
    iget-object v6, v4, Lcom/android/server/SpqrService;->mService:Landroid/os/ISpqrService;

    .line 425
    .line 426
    move-object/from16 v19, v6

    .line 427
    .line 428
    move/from16 v22, v7

    .line 429
    .line 430
    move/from16 v23, v9

    .line 431
    .line 432
    move-object/from16 v24, v5

    .line 433
    .line 434
    invoke-interface/range {v19 .. v27}, Landroid/os/ISpqrService;->createInvariantProfile(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 435
    .line 436
    .line 437
    move-result v6

    .line 438
    if-eqz v6, :cond_11

    .line 439
    .line 440
    const/4 v0, 0x1

    .line 441
    goto :goto_5

    .line 442
    :cond_11
    iget-object v6, v4, Lcom/android/server/ProfileService;->TAG:Ljava/lang/String;

    .line 443
    .line 444
    new-instance v7, Ljava/lang/StringBuilder;

    .line 445
    .line 446
    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 447
    .line 448
    .line 449
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    .line 451
    .line 452
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 453
    .line 454
    .line 455
    move-result-object v0

    .line 456
    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 457
    .line 458
    .line 459
    goto :goto_4

    .line 460
    :catch_0
    move-exception v0

    .line 461
    iget-object v4, v4, Lcom/android/server/ProfileService;->TAG:Ljava/lang/String;

    .line 462
    .line 463
    new-instance v5, Ljava/lang/StringBuilder;

    .line 464
    .line 465
    const-string v6, "Failed to create invariant profile: "

    .line 466
    .line 467
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 468
    .line 469
    .line 470
    invoke-static {v0, v5, v4}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 471
    .line 472
    .line 473
    goto :goto_4

    .line 474
    :goto_5
    iput-boolean v0, v12, Lcom/android/server/pm/InstallRequest;->mSpqrProfileGenerated:Z

    .line 475
    .line 476
    :goto_6
    invoke-virtual {v12}, Lcom/android/server/pm/InstallRequest;->assertScanResultExists()V

    .line 477
    .line 478
    .line 479
    iget-object v0, v12, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    .line 480
    .line 481
    iget-object v0, v0, Lcom/android/server/pm/ScanResult;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    .line 482
    .line 483
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 484
    .line 485
    .line 486
    const/4 v4, 0x0

    .line 487
    :goto_7
    array-length v5, v8

    .line 488
    if-ge v4, v5, :cond_13

    .line 489
    .line 490
    invoke-interface {v3, v4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    .line 491
    .line 492
    .line 493
    move-result-object v5

    .line 494
    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageUserState;->getFirstInstallTimeMillis()J

    .line 495
    .line 496
    .line 497
    move-result-wide v5

    .line 498
    cmp-long v7, v5, v16

    .line 499
    .line 500
    if-eqz v7, :cond_12

    .line 501
    .line 502
    invoke-virtual {v0, v4}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 503
    .line 504
    .line 505
    move-result-object v7

    .line 506
    iput-wide v5, v7, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mFirstInstallTimeMillis:J

    .line 507
    .line 508
    invoke-virtual {v7}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged$4()V

    .line 509
    .line 510
    .line 511
    :cond_12
    const/4 v5, 0x1

    .line 512
    add-int/2addr v4, v5

    .line 513
    goto :goto_7

    .line 514
    :cond_13
    invoke-virtual {v0}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 515
    .line 516
    .line 517
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 518
    .line 519
    .line 520
    move-result-wide v4

    .line 521
    invoke-virtual {v12}, Lcom/android/server/pm/InstallRequest;->assertScanResultExists()V

    .line 522
    .line 523
    .line 524
    iget-object v0, v12, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    .line 525
    .line 526
    iget-object v0, v0, Lcom/android/server/pm/ScanResult;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    .line 527
    .line 528
    invoke-virtual {v0, v4, v5}, Lcom/android/server/pm/PackageSetting;->setLastUpdateTime(J)V

    .line 529
    .line 530
    .line 531
    iget-object v0, v12, Lcom/android/server/pm/InstallRequest;->mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

    .line 532
    .line 533
    iget-object v4, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 534
    .line 535
    iget-object v5, v4, Lcom/android/server/pm/PackageManagerService;->mAppsFilter:Lcom/android/server/pm/AppsFilterImpl;

    .line 536
    .line 537
    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 538
    .line 539
    .line 540
    move-result-object v4

    .line 541
    invoke-virtual {v12}, Lcom/android/server/pm/InstallRequest;->getScannedPackageSetting()Lcom/android/server/pm/PackageSetting;

    .line 542
    .line 543
    .line 544
    move-result-object v6

    .line 545
    iget-object v7, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 546
    .line 547
    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 548
    .line 549
    iget-object v7, v7, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 550
    .line 551
    invoke-virtual {v5, v4, v6, v8, v7}, Lcom/android/server/pm/AppsFilterBase;->getVisibilityAllowList(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Lcom/android/server/pm/pkg/PackageStateInternal;[ILcom/android/server/utils/WatchedArrayMap;)Landroid/util/SparseArray;

    .line 552
    .line 553
    .line 554
    move-result-object v4

    .line 555
    iput-object v4, v0, Lcom/android/server/pm/PackageRemovedInfo;->mBroadcastAllowList:Landroid/util/SparseArray;

    .line 556
    .line 557
    iget-boolean v0, v12, Lcom/android/server/pm/InstallRequest;->mSystem:Z

    .line 558
    .line 559
    if-eqz v0, :cond_15

    .line 560
    .line 561
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    .line 562
    .line 563
    invoke-virtual {v0, v2}, Lcom/android/server/pm/RemovePackageHelper;->removePackage(Lcom/android/server/pm/pkg/AndroidPackage;)V

    .line 564
    .line 565
    .line 566
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 567
    .line 568
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 569
    .line 570
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 571
    .line 572
    .line 573
    move-result-object v4

    .line 574
    invoke-virtual {v0, v4}, Lcom/android/server/pm/Settings;->disableSystemPackageLPw(Ljava/lang/String;)Z

    .line 575
    .line 576
    .line 577
    move-result v0

    .line 578
    if-nez v0, :cond_14

    .line 579
    .line 580
    iget-object v0, v12, Lcom/android/server/pm/InstallRequest;->mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

    .line 581
    .line 582
    new-instance v4, Lcom/android/server/pm/CleanUpArgs;

    .line 583
    .line 584
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    .line 585
    .line 586
    .line 587
    move-result-object v2

    .line 588
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getPrimaryCpuAbi()Ljava/lang/String;

    .line 589
    .line 590
    .line 591
    move-result-object v5

    .line 592
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getSecondaryCpuAbi()Ljava/lang/String;

    .line 593
    .line 594
    .line 595
    move-result-object v3

    .line 596
    invoke-static {v5, v3}, Lcom/android/server/pm/InstructionSets;->getAppDexInstructionSets(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 597
    .line 598
    .line 599
    move-result-object v3

    .line 600
    invoke-direct {v4, v3, v14, v2}, Lcom/android/server/pm/CleanUpArgs;-><init>([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    .line 602
    .line 603
    iput-object v4, v0, Lcom/android/server/pm/PackageRemovedInfo;->mArgs:Lcom/android/server/pm/CleanUpArgs;

    .line 604
    .line 605
    const/4 v10, 0x0

    .line 606
    const/4 v15, 0x0

    .line 607
    goto/16 :goto_c

    .line 608
    .line 609
    :cond_14
    iget-object v0, v12, Lcom/android/server/pm/InstallRequest;->mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

    .line 610
    .line 611
    const/4 v7, 0x0

    .line 612
    iput-object v7, v0, Lcom/android/server/pm/PackageRemovedInfo;->mArgs:Lcom/android/server/pm/CleanUpArgs;

    .line 613
    .line 614
    move-object v15, v7

    .line 615
    const/4 v10, 0x0

    .line 616
    goto/16 :goto_c

    .line 617
    .line 618
    :cond_15
    const/4 v7, 0x0

    .line 619
    :try_start_1
    iget-object v2, v1, Lcom/android/server/pm/InstallPackageHelper;->mDeletePackageHelper:Lcom/android/server/pm/DeletePackageHelper;

    .line 620
    .line 621
    iget-object v3, v11, Lcom/android/server/pm/ReconciledPackage;->mDeletePackageAction:Lcom/android/server/pm/DeletePackageAction;

    .line 622
    .line 623
    iget-object v0, v2, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 624
    .line 625
    iget-object v9, v0, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 626
    .line 627
    iget-object v0, v9, Lcom/android/server/pm/PackageManagerTracedLock;->mLock:Lcom/android/server/pm/PackageManagerTracedLock$RawLock;

    .line 628
    .line 629
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_1
    .catch Lcom/android/server/pm/SystemDeleteException; {:try_start_1 .. :try_end_1} :catch_2

    .line 630
    .line 631
    .line 632
    const/4 v5, 0x1

    .line 633
    const/4 v0, 0x0

    .line 634
    move-object v4, v14

    .line 635
    const/4 v10, 0x0

    .line 636
    move-object/from16 v6, p2

    .line 637
    .line 638
    move-object v15, v7

    .line 639
    move v7, v0

    .line 640
    :try_start_2
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/DeletePackageHelper;->executeDeletePackageLIF(Lcom/android/server/pm/DeletePackageAction;Ljava/lang/String;Z[IZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 641
    .line 642
    .line 643
    :try_start_3
    invoke-virtual {v9}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_3
    .catch Lcom/android/server/pm/SystemDeleteException; {:try_start_3 .. :try_end_3} :catch_1

    .line 644
    .line 645
    .line 646
    goto :goto_a

    .line 647
    :catchall_0
    move-exception v0

    .line 648
    move-object v2, v0

    .line 649
    :try_start_4
    invoke-virtual {v9}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 650
    .line 651
    .line 652
    goto :goto_8

    .line 653
    :catchall_1
    move-exception v0

    .line 654
    move-object v3, v0

    .line 655
    :try_start_5
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 656
    .line 657
    .line 658
    :goto_8
    throw v2
    :try_end_5
    .catch Lcom/android/server/pm/SystemDeleteException; {:try_start_5 .. :try_end_5} :catch_1

    .line 659
    :catch_1
    move-exception v0

    .line 660
    goto :goto_9

    .line 661
    :catch_2
    move-exception v0

    .line 662
    move-object v15, v7

    .line 663
    const/4 v10, 0x0

    .line 664
    :goto_9
    iget-object v2, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 665
    .line 666
    iget-boolean v2, v2, Lcom/android/server/pm/PackageManagerService;->mIsEngBuild:Z

    .line 667
    .line 668
    if-nez v2, :cond_17

    .line 669
    .line 670
    :goto_a
    iget v0, v12, Lcom/android/server/pm/InstallRequest;->mReturnCode:I

    .line 671
    .line 672
    const/4 v2, 0x1

    .line 673
    if-ne v0, v2, :cond_19

    .line 674
    .line 675
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 676
    .line 677
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 678
    .line 679
    invoke-interface {v13}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    .line 680
    .line 681
    .line 682
    move-result-object v2

    .line 683
    invoke-virtual {v0, v2}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 684
    .line 685
    .line 686
    move-result-object v0

    .line 687
    if-eqz v0, :cond_19

    .line 688
    .line 689
    iget-object v2, v12, Lcom/android/server/pm/InstallRequest;->mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

    .line 690
    .line 691
    iget-object v3, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 692
    .line 693
    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 694
    .line 695
    iget-object v0, v0, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    .line 696
    .line 697
    iget-object v3, v3, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    .line 698
    .line 699
    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 700
    .line 701
    .line 702
    move-result-object v0

    .line 703
    if-nez v0, :cond_16

    .line 704
    .line 705
    const/4 v6, 0x1

    .line 706
    goto :goto_b

    .line 707
    :cond_16
    move v6, v10

    .line 708
    :goto_b
    iput-boolean v6, v2, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedForAllUsers:Z

    .line 709
    .line 710
    goto :goto_c

    .line 711
    :cond_17
    new-instance v1, Ljava/lang/RuntimeException;

    .line 712
    .line 713
    const-string v2, "Unexpected failure"

    .line 714
    .line 715
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 716
    .line 717
    .line 718
    throw v1

    .line 719
    :cond_18
    move-object/from16 v28, v10

    .line 720
    .line 721
    const/4 v15, 0x0

    .line 722
    move v10, v6

    .line 723
    :cond_19
    :goto_c
    invoke-virtual {v1, v11, v8}, Lcom/android/server/pm/InstallPackageHelper;->commitReconciledScanResultLocked(Lcom/android/server/pm/ReconciledPackage;[I)Lcom/android/server/pm/pkg/AndroidPackage;

    .line 724
    .line 725
    .line 726
    move-result-object v2

    .line 727
    const-string/jumbo v0, "updateSettingsInternal"

    .line 728
    .line 729
    .line 730
    const-wide/32 v3, 0x40000

    .line 731
    .line 732
    .line 733
    invoke-static {v3, v4, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 734
    .line 735
    .line 736
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 737
    .line 738
    .line 739
    move-result-object v5

    .line 740
    iget-object v0, v12, Lcom/android/server/pm/InstallRequest;->mOrigUsers:[I

    .line 741
    .line 742
    invoke-virtual {v12}, Lcom/android/server/pm/InstallRequest;->getInstallReason()I

    .line 743
    .line 744
    .line 745
    move-result v6

    .line 746
    invoke-virtual {v12}, Lcom/android/server/pm/InstallRequest;->getInstallerPackageName()Ljava/lang/String;

    .line 747
    .line 748
    .line 749
    move-result-object v7

    .line 750
    const-string v9, "application_policy"

    .line 751
    .line 752
    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 753
    .line 754
    .line 755
    move-result-object v9

    .line 756
    invoke-static {v9}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/application/IApplicationPolicy;

    .line 757
    .line 758
    .line 759
    move-result-object v9

    .line 760
    iget v11, v12, Lcom/android/server/pm/InstallRequest;->mUserId:I

    .line 761
    .line 762
    const/4 v13, -0x1

    .line 763
    if-eq v11, v13, :cond_1a

    .line 764
    .line 765
    const/4 v3, -0x2

    .line 766
    if-eq v11, v3, :cond_1a

    .line 767
    .line 768
    iget-object v3, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 769
    .line 770
    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 771
    .line 772
    iget-object v3, v3, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    .line 773
    .line 774
    invoke-virtual {v3, v11}, Lcom/android/server/pm/UserManagerService$LocalService;->exists(I)Z

    .line 775
    .line 776
    .line 777
    move-result v3

    .line 778
    if-nez v3, :cond_1a

    .line 779
    .line 780
    const-string v0, "User "

    .line 781
    .line 782
    const-string v3, " doesn\'t exist or has been removed"

    .line 783
    .line 784
    invoke-static {v11, v0, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 785
    .line 786
    .line 787
    move-result-object v0

    .line 788
    new-instance v3, Lcom/android/server/pm/PackageManagerException;

    .line 789
    .line 790
    const/16 v4, -0x26

    .line 791
    .line 792
    invoke-direct {v3, v0, v4}, Lcom/android/server/pm/PackageManagerException;-><init>(Ljava/lang/String;I)V

    .line 793
    .line 794
    .line 795
    invoke-virtual {v12, v15, v3}, Lcom/android/server/pm/InstallRequest;->setError(Ljava/lang/String;Lcom/android/server/pm/PackageManagerException;)V

    .line 796
    .line 797
    .line 798
    move-object/from16 v22, v14

    .line 799
    .line 800
    goto/16 :goto_2c

    .line 801
    .line 802
    :cond_1a
    iget-object v3, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 803
    .line 804
    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 805
    .line 806
    sget-boolean v4, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 807
    .line 808
    monitor-enter v3

    .line 809
    :try_start_6
    iget-object v4, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 810
    .line 811
    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 812
    .line 813
    invoke-virtual {v4, v5}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 814
    .line 815
    .line 816
    move-result-object v4

    .line 817
    if-eqz v4, :cond_43

    .line 818
    .line 819
    invoke-virtual {v4}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    .line 820
    .line 821
    .line 822
    move-result v18

    .line 823
    if-eqz v18, :cond_20

    .line 824
    .line 825
    if-eqz v0, :cond_1e

    .line 826
    .line 827
    iget-object v15, v12, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    .line 828
    .line 829
    if-nez v15, :cond_1b

    .line 830
    .line 831
    move v15, v10

    .line 832
    goto :goto_d

    .line 833
    :cond_1b
    iget-boolean v15, v15, Lcom/android/server/pm/InstallArgs;->mApplicationEnabledSettingPersistent:Z

    .line 834
    .line 835
    :goto_d
    if-nez v15, :cond_1e

    .line 836
    .line 837
    array-length v15, v0

    .line 838
    :goto_e
    if-ge v10, v15, :cond_1e

    .line 839
    .line 840
    move/from16 v19, v15

    .line 841
    .line 842
    aget v15, v0, v10

    .line 843
    .line 844
    if-eq v11, v13, :cond_1c

    .line 845
    .line 846
    if-ne v11, v15, :cond_1d

    .line 847
    .line 848
    :cond_1c
    const/4 v13, 0x0

    .line 849
    goto :goto_10

    .line 850
    :cond_1d
    :goto_f
    const/4 v13, 0x1

    .line 851
    goto :goto_11

    .line 852
    :goto_10
    invoke-virtual {v4, v13, v15, v7}, Lcom/android/server/pm/PackageSetting;->setEnabled(IILjava/lang/String;)V

    .line 853
    .line 854
    .line 855
    goto :goto_f

    .line 856
    :goto_11
    add-int/2addr v10, v13

    .line 857
    move/from16 v15, v19

    .line 858
    .line 859
    const/4 v13, -0x1

    .line 860
    goto :goto_e

    .line 861
    :catchall_2
    move-exception v0

    .line 862
    goto/16 :goto_38

    .line 863
    .line 864
    :cond_1e
    if-eqz v8, :cond_1f

    .line 865
    .line 866
    if-eqz v0, :cond_1f

    .line 867
    .line 868
    array-length v10, v8

    .line 869
    const/4 v13, 0x0

    .line 870
    :goto_12
    if-ge v13, v10, :cond_1f

    .line 871
    .line 872
    aget v15, v8, v13

    .line 873
    .line 874
    move/from16 v19, v10

    .line 875
    .line 876
    invoke-static {v0, v15}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    .line 877
    .line 878
    .line 879
    move-result v10

    .line 880
    invoke-virtual {v4, v15, v10}, Lcom/android/server/pm/PackageSetting;->setInstalled(IZ)V

    .line 881
    .line 882
    .line 883
    const/4 v10, 0x1

    .line 884
    add-int/2addr v13, v10

    .line 885
    move/from16 v10, v19

    .line 886
    .line 887
    goto :goto_12

    .line 888
    :cond_1f
    if-eqz v8, :cond_20

    .line 889
    .line 890
    array-length v10, v8

    .line 891
    const/4 v13, 0x0

    .line 892
    :goto_13
    if-ge v13, v10, :cond_20

    .line 893
    .line 894
    aget v15, v8, v13

    .line 895
    .line 896
    invoke-virtual {v4, v15}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 897
    .line 898
    .line 899
    move-result-object v15

    .line 900
    move/from16 v19, v10

    .line 901
    .line 902
    const/4 v10, 0x0

    .line 903
    iput-object v10, v15, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mComponentLabelIconOverrideMap:Lcom/android/server/utils/WatchedArrayMap;

    .line 904
    .line 905
    invoke-virtual {v4}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 906
    .line 907
    .line 908
    const/4 v10, 0x1

    .line 909
    add-int/2addr v13, v10

    .line 910
    move/from16 v10, v19

    .line 911
    .line 912
    goto :goto_13

    .line 913
    :cond_20
    iget-object v10, v4, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    .line 914
    .line 915
    iget-object v10, v10, Lcom/android/server/pm/pkg/PackageStateUnserialized;->usesLibraryInfos:Ljava/util/List;

    .line 916
    .line 917
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    .line 918
    .line 919
    .line 920
    move-result v10

    .line 921
    if-nez v10, :cond_24

    .line 922
    .line 923
    iget-object v10, v4, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    .line 924
    .line 925
    iget-object v10, v10, Lcom/android/server/pm/pkg/PackageStateUnserialized;->usesLibraryInfos:Ljava/util/List;

    .line 926
    .line 927
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 928
    .line 929
    .line 930
    move-result-object v10

    .line 931
    :goto_14
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 932
    .line 933
    .line 934
    move-result v13

    .line 935
    if-eqz v13, :cond_24

    .line 936
    .line 937
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 938
    .line 939
    .line 940
    move-result-object v13

    .line 941
    check-cast v13, Lcom/android/server/pm/pkg/SharedLibraryWrapper;

    .line 942
    .line 943
    array-length v15, v8

    .line 944
    move-object/from16 v19, v10

    .line 945
    .line 946
    const/4 v10, 0x0

    .line 947
    :goto_15
    if-ge v10, v15, :cond_23

    .line 948
    .line 949
    move/from16 v21, v15

    .line 950
    .line 951
    aget v15, v8, v10

    .line 952
    .line 953
    move-object/from16 v22, v14

    .line 954
    .line 955
    iget-object v14, v13, Lcom/android/server/pm/pkg/SharedLibraryWrapper;->mInfo:Landroid/content/pm/SharedLibraryInfo;

    .line 956
    .line 957
    invoke-virtual {v14}, Landroid/content/pm/SharedLibraryInfo;->getType()I

    .line 958
    .line 959
    .line 960
    move-result v14

    .line 961
    move-object/from16 v23, v2

    .line 962
    .line 963
    const/4 v2, 0x1

    .line 964
    if-eq v14, v2, :cond_21

    .line 965
    .line 966
    goto :goto_17

    .line 967
    :cond_21
    iget-object v2, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 968
    .line 969
    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 970
    .line 971
    iget-object v14, v13, Lcom/android/server/pm/pkg/SharedLibraryWrapper;->mInfo:Landroid/content/pm/SharedLibraryInfo;

    .line 972
    .line 973
    invoke-virtual {v14}, Landroid/content/pm/SharedLibraryInfo;->getPackageName()Ljava/lang/String;

    .line 974
    .line 975
    .line 976
    move-result-object v14

    .line 977
    invoke-virtual {v2, v14}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 978
    .line 979
    .line 980
    move-result-object v2

    .line 981
    if-nez v2, :cond_22

    .line 982
    .line 983
    :goto_16
    const/4 v2, 0x1

    .line 984
    goto :goto_17

    .line 985
    :cond_22
    iget-object v14, v13, Lcom/android/server/pm/pkg/SharedLibraryWrapper;->mInfo:Landroid/content/pm/SharedLibraryInfo;

    .line 986
    .line 987
    invoke-virtual {v14}, Landroid/content/pm/SharedLibraryInfo;->getName()Ljava/lang/String;

    .line 988
    .line 989
    .line 990
    move-result-object v14

    .line 991
    invoke-virtual {v2, v15}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    .line 992
    .line 993
    .line 994
    move-result-object v2

    .line 995
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageUserState;->getOverlayPaths()Landroid/content/pm/overlay/OverlayPaths;

    .line 996
    .line 997
    .line 998
    move-result-object v2

    .line 999
    invoke-virtual {v4, v15}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 1000
    .line 1001
    .line 1002
    move-result-object v15

    .line 1003
    invoke-virtual {v15, v14, v2}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setSharedLibraryOverlayPaths(Ljava/lang/String;Landroid/content/pm/overlay/OverlayPaths;)Z

    .line 1004
    .line 1005
    .line 1006
    invoke-virtual {v4}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 1007
    .line 1008
    .line 1009
    goto :goto_16

    .line 1010
    :goto_17
    add-int/2addr v10, v2

    .line 1011
    move/from16 v15, v21

    .line 1012
    .line 1013
    move-object/from16 v14, v22

    .line 1014
    .line 1015
    move-object/from16 v2, v23

    .line 1016
    .line 1017
    goto :goto_15

    .line 1018
    :cond_23
    move-object/from16 v10, v19

    .line 1019
    .line 1020
    goto :goto_14

    .line 1021
    :cond_24
    move-object/from16 v23, v2

    .line 1022
    .line 1023
    move-object/from16 v22, v14

    .line 1024
    .line 1025
    const/4 v2, -0x1

    .line 1026
    if-eq v11, v2, :cond_29

    .line 1027
    .line 1028
    const/4 v2, 0x1

    .line 1029
    invoke-virtual {v4, v11, v2}, Lcom/android/server/pm/PackageSetting;->setInstalled(IZ)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1030
    .line 1031
    .line 1032
    if-eqz v9, :cond_25

    .line 1033
    .line 1034
    const/4 v2, 0x0

    .line 1035
    :try_start_7
    invoke-interface {v9, v5, v2, v11}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getApplicationStateEnabledAsUser(Ljava/lang/String;ZI)Z

    .line 1036
    .line 1037
    .line 1038
    move-result v0

    .line 1039
    if-nez v0, :cond_25

    .line 1040
    .line 1041
    const-string v0, "PackageManager"

    .line 1042
    .line 1043
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1044
    .line 1045
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1046
    .line 1047
    .line 1048
    const-string v9, "This app can not be enabled due to EDM policy. packageName = "

    .line 1049
    .line 1050
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1051
    .line 1052
    .line 1053
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1054
    .line 1055
    .line 1056
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1057
    .line 1058
    .line 1059
    move-result-object v2

    .line 1060
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 1061
    .line 1062
    .line 1063
    goto :goto_19

    .line 1064
    :catch_3
    move-exception v0

    .line 1065
    :try_start_8
    const-string v2, "PackageManager"

    .line 1066
    .line 1067
    new-instance v9, Ljava/lang/StringBuilder;

    .line 1068
    .line 1069
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 1070
    .line 1071
    .line 1072
    const-string v10, "RemoteException - "

    .line 1073
    .line 1074
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1075
    .line 1076
    .line 1077
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1078
    .line 1079
    .line 1080
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1081
    .line 1082
    .line 1083
    move-result-object v0

    .line 1084
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    .line 1086
    .line 1087
    :cond_25
    iget-object v0, v12, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    .line 1088
    .line 1089
    if-nez v0, :cond_26

    .line 1090
    .line 1091
    const/4 v0, 0x0

    .line 1092
    goto :goto_18

    .line 1093
    :cond_26
    iget-boolean v0, v0, Lcom/android/server/pm/InstallArgs;->mApplicationEnabledSettingPersistent:Z

    .line 1094
    .line 1095
    :goto_18
    if-nez v0, :cond_28

    .line 1096
    .line 1097
    invoke-virtual {v4, v11}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    .line 1098
    .line 1099
    .line 1100
    move-result-object v0

    .line 1101
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageUserState;->getArchiveState()Lcom/android/server/pm/pkg/ArchiveState;

    .line 1102
    .line 1103
    .line 1104
    move-result-object v0

    .line 1105
    if-eqz v0, :cond_27

    .line 1106
    .line 1107
    const-string v0, "auto_disabler"

    .line 1108
    .line 1109
    invoke-virtual {v4, v11}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    .line 1110
    .line 1111
    .line 1112
    move-result-object v2

    .line 1113
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageUserState;->getLastDisableAppCaller()Ljava/lang/String;

    .line 1114
    .line 1115
    .line 1116
    move-result-object v2

    .line 1117
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1118
    .line 1119
    .line 1120
    move-result v0

    .line 1121
    if-eqz v0, :cond_27

    .line 1122
    .line 1123
    goto :goto_19

    .line 1124
    :cond_27
    const/4 v2, 0x0

    .line 1125
    invoke-virtual {v4, v2, v11, v7}, Lcom/android/server/pm/PackageSetting;->setEnabled(IILjava/lang/String;)V

    .line 1126
    .line 1127
    .line 1128
    :cond_28
    :goto_19
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 1129
    .line 1130
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    .line 1131
    .line 1132
    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerService;->mPackageArchiver:Lcom/android/server/pm/PackageArchiver;

    .line 1133
    .line 1134
    invoke-virtual {v0, v4, v11}, Lcom/android/server/pm/PackageArchiver;->clearArchiveState(Lcom/android/server/pm/PackageSetting;I)V

    .line 1135
    .line 1136
    .line 1137
    goto/16 :goto_21

    .line 1138
    .line 1139
    :cond_29
    if-eqz v8, :cond_31

    .line 1140
    .line 1141
    array-length v2, v8

    .line 1142
    const/4 v9, 0x0

    .line 1143
    :goto_1a
    if-ge v9, v2, :cond_31

    .line 1144
    .line 1145
    aget v10, v8, v9

    .line 1146
    .line 1147
    sget-object v13, Lcom/android/server/pm/PersonaServiceHelper;->ALLOWED_BLUETOOTH_TARGET:Ljava/util/List;

    .line 1148
    .line 1149
    iget-object v13, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 1150
    .line 1151
    iget-object v13, v13, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 1152
    .line 1153
    invoke-virtual {v13, v10}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 1154
    .line 1155
    .line 1156
    move-result-object v13

    .line 1157
    invoke-virtual {v13}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    .line 1158
    .line 1159
    .line 1160
    move-result v13

    .line 1161
    if-eqz v13, :cond_2a

    .line 1162
    .line 1163
    iget-object v13, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 1164
    .line 1165
    iget-object v14, v13, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 1166
    .line 1167
    iget-object v13, v13, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 1168
    .line 1169
    const-string/jumbo v14, "no_debugging_features"

    .line 1170
    .line 1171
    .line 1172
    invoke-virtual {v13, v14, v10}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    .line 1173
    .line 1174
    .line 1175
    move-result v13

    .line 1176
    if-eqz v13, :cond_2a

    .line 1177
    .line 1178
    const-string v13, "PackageManager"

    .line 1179
    .line 1180
    new-instance v14, Ljava/lang/StringBuilder;

    .line 1181
    .line 1182
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 1183
    .line 1184
    .line 1185
    const-string v15, "isAdbInstallDisallowed : false , currentUserId : "

    .line 1186
    .line 1187
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1188
    .line 1189
    .line 1190
    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1191
    .line 1192
    .line 1193
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1194
    .line 1195
    .line 1196
    move-result-object v10

    .line 1197
    invoke-static {v13, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    .line 1199
    .line 1200
    :goto_1b
    const/4 v10, 0x1

    .line 1201
    goto :goto_20

    .line 1202
    :cond_2a
    invoke-static {v0, v10}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    .line 1203
    .line 1204
    .line 1205
    move-result v13

    .line 1206
    iget-object v14, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 1207
    .line 1208
    const-string/jumbo v15, "no_install_apps"

    .line 1209
    .line 1210
    .line 1211
    invoke-virtual {v14, v10, v15}, Lcom/android/server/pm/PackageManagerService;->isUserRestricted(ILjava/lang/String;)Z

    .line 1212
    .line 1213
    .line 1214
    move-result v14

    .line 1215
    if-nez v14, :cond_2c

    .line 1216
    .line 1217
    iget-object v14, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 1218
    .line 1219
    const-string/jumbo v15, "no_debugging_features"

    .line 1220
    .line 1221
    .line 1222
    invoke-virtual {v14, v10, v15}, Lcom/android/server/pm/PackageManagerService;->isUserRestricted(ILjava/lang/String;)Z

    .line 1223
    .line 1224
    .line 1225
    move-result v14

    .line 1226
    if-eqz v14, :cond_2b

    .line 1227
    .line 1228
    goto :goto_1c

    .line 1229
    :cond_2b
    const/4 v14, 0x0

    .line 1230
    goto :goto_1d

    .line 1231
    :cond_2c
    :goto_1c
    const/4 v14, 0x1

    .line 1232
    :goto_1d
    if-nez v13, :cond_2d

    .line 1233
    .line 1234
    if-nez v14, :cond_2e

    .line 1235
    .line 1236
    :cond_2d
    const/4 v13, 0x1

    .line 1237
    goto :goto_1e

    .line 1238
    :cond_2e
    const/4 v13, 0x0

    .line 1239
    invoke-virtual {v4, v10, v13}, Lcom/android/server/pm/PackageSetting;->setInstalled(IZ)V

    .line 1240
    .line 1241
    .line 1242
    goto :goto_1b

    .line 1243
    :goto_1e
    invoke-virtual {v4, v10, v13}, Lcom/android/server/pm/PackageSetting;->setInstalled(IZ)V

    .line 1244
    .line 1245
    .line 1246
    iget-object v13, v12, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    .line 1247
    .line 1248
    if-nez v13, :cond_2f

    .line 1249
    .line 1250
    const/4 v13, 0x0

    .line 1251
    goto :goto_1f

    .line 1252
    :cond_2f
    iget-boolean v13, v13, Lcom/android/server/pm/InstallArgs;->mApplicationEnabledSettingPersistent:Z

    .line 1253
    .line 1254
    :goto_1f
    if-nez v13, :cond_30

    .line 1255
    .line 1256
    const/4 v13, 0x0

    .line 1257
    invoke-virtual {v4, v13, v10, v7}, Lcom/android/server/pm/PackageSetting;->setEnabled(IILjava/lang/String;)V

    .line 1258
    .line 1259
    .line 1260
    :cond_30
    iget-object v13, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 1261
    .line 1262
    iget-object v13, v13, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    .line 1263
    .line 1264
    iget-object v13, v13, Lcom/android/server/pm/PackageInstallerService;->mPackageArchiver:Lcom/android/server/pm/PackageArchiver;

    .line 1265
    .line 1266
    invoke-virtual {v13, v4, v10}, Lcom/android/server/pm/PackageArchiver;->clearArchiveState(Lcom/android/server/pm/PackageSetting;I)V

    .line 1267
    .line 1268
    .line 1269
    goto :goto_1b

    .line 1270
    :goto_20
    add-int/2addr v9, v10

    .line 1271
    goto :goto_1a

    .line 1272
    :cond_31
    :goto_21
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 1273
    .line 1274
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 1275
    .line 1276
    iget-object v2, v4, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    .line 1277
    .line 1278
    invoke-virtual {v0, v2}, Lcom/android/server/pm/Settings;->addInstallerPackageNames(Lcom/android/server/pm/InstallSource;)V

    .line 1279
    .line 1280
    .line 1281
    new-instance v0, Landroid/util/ArraySet;

    .line 1282
    .line 1283
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 1284
    .line 1285
    .line 1286
    iget-object v2, v12, Lcom/android/server/pm/InstallRequest;->mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

    .line 1287
    .line 1288
    if-eqz v2, :cond_32

    .line 1289
    .line 1290
    iget-object v2, v2, Lcom/android/server/pm/PackageRemovedInfo;->mInstallReasons:Landroid/util/SparseIntArray;

    .line 1291
    .line 1292
    if-eqz v2, :cond_32

    .line 1293
    .line 1294
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    .line 1295
    .line 1296
    .line 1297
    move-result v2

    .line 1298
    const/4 v7, 0x0

    .line 1299
    :goto_22
    if-ge v7, v2, :cond_32

    .line 1300
    .line 1301
    iget-object v9, v12, Lcom/android/server/pm/InstallRequest;->mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

    .line 1302
    .line 1303
    iget-object v9, v9, Lcom/android/server/pm/PackageRemovedInfo;->mInstallReasons:Landroid/util/SparseIntArray;

    .line 1304
    .line 1305
    invoke-virtual {v9, v7}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 1306
    .line 1307
    .line 1308
    move-result v9

    .line 1309
    iget-object v10, v12, Lcom/android/server/pm/InstallRequest;->mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

    .line 1310
    .line 1311
    iget-object v10, v10, Lcom/android/server/pm/PackageRemovedInfo;->mInstallReasons:Landroid/util/SparseIntArray;

    .line 1312
    .line 1313
    invoke-virtual {v10, v7}, Landroid/util/SparseIntArray;->valueAt(I)I

    .line 1314
    .line 1315
    .line 1316
    move-result v10

    .line 1317
    invoke-virtual {v4, v9}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 1318
    .line 1319
    .line 1320
    move-result-object v13

    .line 1321
    iput v10, v13, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mInstallReason:I

    .line 1322
    .line 1323
    const-class v14, Landroid/content/pm/PackageManager$InstallReason;

    .line 1324
    .line 1325
    const/4 v15, 0x0

    .line 1326
    invoke-static {v14, v15, v10}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 1327
    .line 1328
    .line 1329
    invoke-virtual {v13}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged$4()V

    .line 1330
    .line 1331
    .line 1332
    invoke-virtual {v4}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 1333
    .line 1334
    .line 1335
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1336
    .line 1337
    .line 1338
    move-result-object v9

    .line 1339
    invoke-virtual {v0, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1340
    .line 1341
    .line 1342
    const/4 v9, 0x1

    .line 1343
    add-int/2addr v7, v9

    .line 1344
    goto :goto_22

    .line 1345
    :cond_32
    iget-object v2, v12, Lcom/android/server/pm/InstallRequest;->mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

    .line 1346
    .line 1347
    if-eqz v2, :cond_33

    .line 1348
    .line 1349
    iget-object v2, v2, Lcom/android/server/pm/PackageRemovedInfo;->mUninstallReasons:Landroid/util/SparseIntArray;

    .line 1350
    .line 1351
    if-eqz v2, :cond_33

    .line 1352
    .line 1353
    const/4 v2, 0x0

    .line 1354
    :goto_23
    iget-object v7, v12, Lcom/android/server/pm/InstallRequest;->mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

    .line 1355
    .line 1356
    iget-object v7, v7, Lcom/android/server/pm/PackageRemovedInfo;->mUninstallReasons:Landroid/util/SparseIntArray;

    .line 1357
    .line 1358
    invoke-virtual {v7}, Landroid/util/SparseIntArray;->size()I

    .line 1359
    .line 1360
    .line 1361
    move-result v7

    .line 1362
    if-ge v2, v7, :cond_33

    .line 1363
    .line 1364
    iget-object v7, v12, Lcom/android/server/pm/InstallRequest;->mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

    .line 1365
    .line 1366
    iget-object v7, v7, Lcom/android/server/pm/PackageRemovedInfo;->mUninstallReasons:Landroid/util/SparseIntArray;

    .line 1367
    .line 1368
    invoke-virtual {v7, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 1369
    .line 1370
    .line 1371
    move-result v7

    .line 1372
    iget-object v9, v12, Lcom/android/server/pm/InstallRequest;->mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

    .line 1373
    .line 1374
    iget-object v9, v9, Lcom/android/server/pm/PackageRemovedInfo;->mUninstallReasons:Landroid/util/SparseIntArray;

    .line 1375
    .line 1376
    invoke-virtual {v9, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    .line 1377
    .line 1378
    .line 1379
    move-result v9

    .line 1380
    invoke-virtual {v4, v9, v7}, Lcom/android/server/pm/PackageSetting;->setUninstallReason(II)V

    .line 1381
    .line 1382
    .line 1383
    const/4 v7, 0x1

    .line 1384
    add-int/2addr v2, v7

    .line 1385
    goto :goto_23

    .line 1386
    :cond_33
    const/4 v2, -0x1

    .line 1387
    if-ne v11, v2, :cond_35

    .line 1388
    .line 1389
    array-length v2, v8

    .line 1390
    const/4 v7, 0x0

    .line 1391
    :goto_24
    if-ge v7, v2, :cond_36

    .line 1392
    .line 1393
    aget v9, v8, v7

    .line 1394
    .line 1395
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1396
    .line 1397
    .line 1398
    move-result-object v10

    .line 1399
    invoke-virtual {v0, v10}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 1400
    .line 1401
    .line 1402
    move-result v10

    .line 1403
    if-nez v10, :cond_34

    .line 1404
    .line 1405
    invoke-virtual {v4, v9}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    .line 1406
    .line 1407
    .line 1408
    move-result v10

    .line 1409
    if-eqz v10, :cond_34

    .line 1410
    .line 1411
    invoke-virtual {v4, v9}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 1412
    .line 1413
    .line 1414
    move-result-object v9

    .line 1415
    iput v6, v9, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mInstallReason:I

    .line 1416
    .line 1417
    const-class v10, Landroid/content/pm/PackageManager$InstallReason;

    .line 1418
    .line 1419
    const/4 v13, 0x0

    .line 1420
    invoke-static {v10, v13, v6}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 1421
    .line 1422
    .line 1423
    invoke-virtual {v9}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged$4()V

    .line 1424
    .line 1425
    .line 1426
    invoke-virtual {v4}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 1427
    .line 1428
    .line 1429
    :cond_34
    const/4 v9, 0x1

    .line 1430
    add-int/2addr v7, v9

    .line 1431
    goto :goto_24

    .line 1432
    :cond_35
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1433
    .line 1434
    .line 1435
    move-result-object v2

    .line 1436
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 1437
    .line 1438
    .line 1439
    move-result v0

    .line 1440
    if-nez v0, :cond_36

    .line 1441
    .line 1442
    invoke-virtual {v4, v11}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 1443
    .line 1444
    .line 1445
    move-result-object v0

    .line 1446
    iput v6, v0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mInstallReason:I

    .line 1447
    .line 1448
    const-class v2, Landroid/content/pm/PackageManager$InstallReason;

    .line 1449
    .line 1450
    const/4 v7, 0x0

    .line 1451
    invoke-static {v2, v7, v6}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 1452
    .line 1453
    .line 1454
    invoke-virtual {v0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged$4()V

    .line 1455
    .line 1456
    .line 1457
    invoke-virtual {v4}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 1458
    .line 1459
    .line 1460
    :cond_36
    iget-object v0, v4, Lcom/android/server/pm/PackageSetting;->mPathString:Ljava/lang/String;

    .line 1461
    .line 1462
    invoke-static {v0}, Landroid/os/incremental/IncrementalManager;->isIncrementalPath(Ljava/lang/String;)Z

    .line 1463
    .line 1464
    .line 1465
    move-result v2

    .line 1466
    if-eqz v2, :cond_37

    .line 1467
    .line 1468
    iget-object v2, v1, Lcom/android/server/pm/InstallPackageHelper;->mIncrementalManager:Landroid/os/incremental/IncrementalManager;

    .line 1469
    .line 1470
    if-eqz v2, :cond_37

    .line 1471
    .line 1472
    new-instance v6, Lcom/android/server/pm/IncrementalProgressListener;

    .line 1473
    .line 1474
    iget-object v7, v4, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    .line 1475
    .line 1476
    iget-object v9, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 1477
    .line 1478
    invoke-direct {v6, v9, v7}, Lcom/android/server/pm/IncrementalProgressListener;-><init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)V

    .line 1479
    .line 1480
    .line 1481
    invoke-virtual {v2, v0, v6}, Landroid/os/incremental/IncrementalManager;->registerLoadingProgressCallback(Ljava/lang/String;Landroid/content/pm/IPackageLoadingProgressCallback;)Z

    .line 1482
    .line 1483
    .line 1484
    :cond_37
    array-length v0, v8

    .line 1485
    const/4 v6, 0x0

    .line 1486
    :goto_25
    if-ge v6, v0, :cond_39

    .line 1487
    .line 1488
    aget v2, v8, v6

    .line 1489
    .line 1490
    invoke-virtual {v4, v2}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    .line 1491
    .line 1492
    .line 1493
    move-result v7

    .line 1494
    if-eqz v7, :cond_38

    .line 1495
    .line 1496
    const/4 v7, 0x0

    .line 1497
    invoke-virtual {v4, v7, v2}, Lcom/android/server/pm/PackageSetting;->setUninstallReason(II)V

    .line 1498
    .line 1499
    .line 1500
    :cond_38
    const/4 v2, 0x1

    .line 1501
    add-int/2addr v6, v2

    .line 1502
    goto :goto_25

    .line 1503
    :cond_39
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 1504
    .line 1505
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 1506
    .line 1507
    invoke-virtual {v0, v4}, Lcom/android/server/pm/Settings;->writeKernelMappingLPr(Lcom/android/server/pm/PackageSetting;)V

    .line 1508
    .line 1509
    .line 1510
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 1511
    .line 1512
    .line 1513
    move-result-object v0

    .line 1514
    invoke-virtual {v12}, Lcom/android/server/pm/InstallRequest;->getInstallFlags()I

    .line 1515
    .line 1516
    .line 1517
    move-result v2

    .line 1518
    and-int/lit16 v2, v2, 0x100

    .line 1519
    .line 1520
    if-eqz v2, :cond_3a

    .line 1521
    .line 1522
    new-instance v7, Landroid/util/ArrayMap;

    .line 1523
    .line 1524
    invoke-direct {v7}, Landroid/util/ArrayMap;-><init>()V

    .line 1525
    .line 1526
    .line 1527
    invoke-interface/range {v23 .. v23}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    .line 1528
    .line 1529
    .line 1530
    move-result-object v2

    .line 1531
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 1532
    .line 1533
    .line 1534
    move-result-object v2

    .line 1535
    :goto_26
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1536
    .line 1537
    .line 1538
    move-result v4

    .line 1539
    if-eqz v4, :cond_3d

    .line 1540
    .line 1541
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1542
    .line 1543
    .line 1544
    move-result-object v4

    .line 1545
    check-cast v4, Ljava/lang/String;

    .line 1546
    .line 1547
    const/4 v6, 0x1

    .line 1548
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1549
    .line 1550
    .line 1551
    move-result-object v9

    .line 1552
    invoke-virtual {v7, v4, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1553
    .line 1554
    .line 1555
    goto :goto_26

    .line 1556
    :cond_3a
    iget-object v2, v12, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    .line 1557
    .line 1558
    if-nez v2, :cond_3b

    .line 1559
    .line 1560
    const/4 v7, 0x0

    .line 1561
    goto :goto_27

    .line 1562
    :cond_3b
    iget-object v7, v2, Lcom/android/server/pm/InstallArgs;->mPermissionStates:Landroid/util/ArrayMap;

    .line 1563
    .line 1564
    :goto_27
    if-eqz v7, :cond_3c

    .line 1565
    .line 1566
    goto :goto_28

    .line 1567
    :cond_3c
    const/4 v7, 0x0

    .line 1568
    :cond_3d
    :goto_28
    invoke-virtual {v12}, Lcom/android/server/pm/InstallRequest;->getInstallFlags()I

    .line 1569
    .line 1570
    .line 1571
    move-result v2

    .line 1572
    const/high16 v4, 0x400000

    .line 1573
    .line 1574
    and-int/2addr v2, v4

    .line 1575
    if-eqz v2, :cond_3e

    .line 1576
    .line 1577
    new-instance v2, Ljava/util/ArrayList;

    .line 1578
    .line 1579
    invoke-interface/range {v23 .. v23}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    .line 1580
    .line 1581
    .line 1582
    move-result-object v4

    .line 1583
    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1584
    .line 1585
    .line 1586
    goto :goto_29

    .line 1587
    :cond_3e
    iget-object v2, v12, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    .line 1588
    .line 1589
    if-nez v2, :cond_3f

    .line 1590
    .line 1591
    const/4 v2, 0x0

    .line 1592
    goto :goto_29

    .line 1593
    :cond_3f
    iget-object v2, v2, Lcom/android/server/pm/InstallArgs;->mAllowlistedRestrictedPermissions:Ljava/util/List;

    .line 1594
    .line 1595
    :goto_29
    if-eqz v2, :cond_40

    .line 1596
    .line 1597
    new-instance v0, Ljava/util/ArrayList;

    .line 1598
    .line 1599
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1600
    .line 1601
    .line 1602
    :cond_40
    iget-object v2, v12, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    .line 1603
    .line 1604
    if-nez v2, :cond_41

    .line 1605
    .line 1606
    const/4 v2, 0x3

    .line 1607
    goto :goto_2a

    .line 1608
    :cond_41
    iget v2, v2, Lcom/android/server/pm/InstallArgs;->mAutoRevokePermissionsMode:I

    .line 1609
    .line 1610
    :goto_2a
    iget-object v4, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 1611
    .line 1612
    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    .line 1613
    .line 1614
    invoke-virtual {v12}, Lcom/android/server/pm/InstallRequest;->assertScanResultExists()V

    .line 1615
    .line 1616
    .line 1617
    iget-object v6, v12, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    .line 1618
    .line 1619
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1620
    .line 1621
    .line 1622
    new-instance v6, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;

    .line 1623
    .line 1624
    if-nez v7, :cond_42

    .line 1625
    .line 1626
    new-instance v7, Landroid/util/ArrayMap;

    .line 1627
    .line 1628
    invoke-direct {v7}, Landroid/util/ArrayMap;-><init>()V

    .line 1629
    .line 1630
    .line 1631
    :cond_42
    invoke-direct {v6, v7, v0, v2}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;-><init>(Landroid/util/ArrayMap;Ljava/util/List;I)V

    .line 1632
    .line 1633
    .line 1634
    move-object/from16 v2, v23

    .line 1635
    .line 1636
    invoke-virtual {v4, v2, v6, v11}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->onPackageInstalled(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;I)V

    .line 1637
    .line 1638
    .line 1639
    goto :goto_2b

    .line 1640
    :cond_43
    move-object/from16 v22, v14

    .line 1641
    .line 1642
    :goto_2b
    iput-object v5, v12, Lcom/android/server/pm/InstallRequest;->mName:Ljava/lang/String;

    .line 1643
    .line 1644
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    .line 1645
    .line 1646
    .line 1647
    move-result v0

    .line 1648
    iput v0, v12, Lcom/android/server/pm/InstallRequest;->mAppId:I

    .line 1649
    .line 1650
    iput-object v2, v12, Lcom/android/server/pm/InstallRequest;->mPkg:Lcom/android/server/pm/pkg/AndroidPackage;

    .line 1651
    .line 1652
    const/4 v4, 0x1

    .line 1653
    iput v4, v12, Lcom/android/server/pm/InstallRequest;->mReturnCode:I

    .line 1654
    .line 1655
    const-string/jumbo v0, "writeSettings"

    .line 1656
    .line 1657
    .line 1658
    const-wide/32 v4, 0x40000

    .line 1659
    .line 1660
    .line 1661
    invoke-static {v4, v5, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1662
    .line 1663
    .line 1664
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 1665
    .line 1666
    const/4 v6, 0x0

    .line 1667
    invoke-virtual {v0, v6}, Lcom/android/server/pm/PackageManagerService;->writeSettingsLPrTEMP(Z)V

    .line 1668
    .line 1669
    .line 1670
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1671
    .line 1672
    .line 1673
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 1674
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 1675
    .line 1676
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1677
    .line 1678
    .line 1679
    :goto_2c
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 1680
    .line 1681
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 1682
    .line 1683
    move-object/from16 v3, v22

    .line 1684
    .line 1685
    invoke-virtual {v0, v3}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 1686
    .line 1687
    .line 1688
    move-result-object v4

    .line 1689
    if-eqz v4, :cond_4d

    .line 1690
    .line 1691
    const/4 v5, 0x1

    .line 1692
    invoke-virtual {v4, v8, v5}, Lcom/android/server/pm/PackageSetting;->queryInstalledUsers([IZ)[I

    .line 1693
    .line 1694
    .line 1695
    move-result-object v0

    .line 1696
    iput-object v0, v12, Lcom/android/server/pm/InstallRequest;->mNewUsers:[I

    .line 1697
    .line 1698
    invoke-virtual {v12}, Lcom/android/server/pm/InstallRequest;->assertScanResultExists()V

    .line 1699
    .line 1700
    .line 1701
    sget-object v0, Lcom/android/server/pm/PackageManagerService;->EMPTY_INT_ARRAY:[I

    .line 1702
    .line 1703
    iput-object v0, v12, Lcom/android/server/pm/InstallRequest;->mFirstTimeBroadcastUserIds:[I

    .line 1704
    .line 1705
    iput-object v0, v12, Lcom/android/server/pm/InstallRequest;->mFirstTimeBroadcastInstantUserIds:[I

    .line 1706
    .line 1707
    iput-object v0, v12, Lcom/android/server/pm/InstallRequest;->mUpdateBroadcastUserIds:[I

    .line 1708
    .line 1709
    iput-object v0, v12, Lcom/android/server/pm/InstallRequest;->mUpdateBroadcastInstantUserIds:[I

    .line 1710
    .line 1711
    iget-object v0, v12, Lcom/android/server/pm/InstallRequest;->mOrigUsers:[I

    .line 1712
    .line 1713
    if-eqz v0, :cond_45

    .line 1714
    .line 1715
    array-length v0, v0

    .line 1716
    if-nez v0, :cond_44

    .line 1717
    .line 1718
    goto :goto_2d

    .line 1719
    :cond_44
    const/4 v6, 0x0

    .line 1720
    goto :goto_2e

    .line 1721
    :cond_45
    :goto_2d
    const/4 v6, 0x1

    .line 1722
    :goto_2e
    if-eqz v6, :cond_48

    .line 1723
    .line 1724
    iget-object v0, v12, Lcom/android/server/pm/InstallRequest;->mNewUsers:[I

    .line 1725
    .line 1726
    array-length v5, v0

    .line 1727
    const/4 v6, 0x0

    .line 1728
    :goto_2f
    if-ge v6, v5, :cond_47

    .line 1729
    .line 1730
    aget v7, v0, v6

    .line 1731
    .line 1732
    iget-object v9, v12, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    .line 1733
    .line 1734
    iget-object v9, v9, Lcom/android/server/pm/ScanResult;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    .line 1735
    .line 1736
    invoke-interface {v9, v7}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    .line 1737
    .line 1738
    .line 1739
    move-result-object v9

    .line 1740
    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    .line 1741
    .line 1742
    .line 1743
    move-result v9

    .line 1744
    if-eqz v9, :cond_46

    .line 1745
    .line 1746
    iget-object v9, v12, Lcom/android/server/pm/InstallRequest;->mFirstTimeBroadcastInstantUserIds:[I

    .line 1747
    .line 1748
    invoke-static {v9, v7}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    .line 1749
    .line 1750
    .line 1751
    move-result-object v7

    .line 1752
    iput-object v7, v12, Lcom/android/server/pm/InstallRequest;->mFirstTimeBroadcastInstantUserIds:[I

    .line 1753
    .line 1754
    :goto_30
    const/4 v7, 0x1

    .line 1755
    goto :goto_31

    .line 1756
    :cond_46
    iget-object v9, v12, Lcom/android/server/pm/InstallRequest;->mFirstTimeBroadcastUserIds:[I

    .line 1757
    .line 1758
    invoke-static {v9, v7}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    .line 1759
    .line 1760
    .line 1761
    move-result-object v7

    .line 1762
    iput-object v7, v12, Lcom/android/server/pm/InstallRequest;->mFirstTimeBroadcastUserIds:[I

    .line 1763
    .line 1764
    goto :goto_30

    .line 1765
    :goto_31
    add-int/2addr v6, v7

    .line 1766
    goto :goto_2f

    .line 1767
    :cond_47
    const/4 v7, 0x1

    .line 1768
    goto :goto_35

    .line 1769
    :cond_48
    const/4 v7, 0x1

    .line 1770
    iget-object v0, v12, Lcom/android/server/pm/InstallRequest;->mNewUsers:[I

    .line 1771
    .line 1772
    array-length v5, v0

    .line 1773
    const/4 v6, 0x0

    .line 1774
    :goto_32
    if-ge v6, v5, :cond_4c

    .line 1775
    .line 1776
    aget v9, v0, v6

    .line 1777
    .line 1778
    iget-object v10, v12, Lcom/android/server/pm/InstallRequest;->mOrigUsers:[I

    .line 1779
    .line 1780
    invoke-static {v10, v9}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    .line 1781
    .line 1782
    .line 1783
    move-result v10

    .line 1784
    xor-int/2addr v10, v7

    .line 1785
    iget-object v7, v12, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    .line 1786
    .line 1787
    iget-object v7, v7, Lcom/android/server/pm/ScanResult;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    .line 1788
    .line 1789
    invoke-interface {v7, v9}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    .line 1790
    .line 1791
    .line 1792
    move-result-object v7

    .line 1793
    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    .line 1794
    .line 1795
    .line 1796
    move-result v7

    .line 1797
    if-eqz v10, :cond_4a

    .line 1798
    .line 1799
    if-eqz v7, :cond_49

    .line 1800
    .line 1801
    iget-object v7, v12, Lcom/android/server/pm/InstallRequest;->mFirstTimeBroadcastInstantUserIds:[I

    .line 1802
    .line 1803
    invoke-static {v7, v9}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    .line 1804
    .line 1805
    .line 1806
    move-result-object v7

    .line 1807
    iput-object v7, v12, Lcom/android/server/pm/InstallRequest;->mFirstTimeBroadcastInstantUserIds:[I

    .line 1808
    .line 1809
    :goto_33
    const/4 v7, 0x1

    .line 1810
    goto :goto_34

    .line 1811
    :cond_49
    iget-object v7, v12, Lcom/android/server/pm/InstallRequest;->mFirstTimeBroadcastUserIds:[I

    .line 1812
    .line 1813
    invoke-static {v7, v9}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    .line 1814
    .line 1815
    .line 1816
    move-result-object v7

    .line 1817
    iput-object v7, v12, Lcom/android/server/pm/InstallRequest;->mFirstTimeBroadcastUserIds:[I

    .line 1818
    .line 1819
    goto :goto_33

    .line 1820
    :cond_4a
    if-eqz v7, :cond_4b

    .line 1821
    .line 1822
    iget-object v7, v12, Lcom/android/server/pm/InstallRequest;->mUpdateBroadcastInstantUserIds:[I

    .line 1823
    .line 1824
    invoke-static {v7, v9}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    .line 1825
    .line 1826
    .line 1827
    move-result-object v7

    .line 1828
    iput-object v7, v12, Lcom/android/server/pm/InstallRequest;->mUpdateBroadcastInstantUserIds:[I

    .line 1829
    .line 1830
    goto :goto_33

    .line 1831
    :cond_4b
    iget-object v7, v12, Lcom/android/server/pm/InstallRequest;->mUpdateBroadcastUserIds:[I

    .line 1832
    .line 1833
    invoke-static {v7, v9}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    .line 1834
    .line 1835
    .line 1836
    move-result-object v7

    .line 1837
    iput-object v7, v12, Lcom/android/server/pm/InstallRequest;->mUpdateBroadcastUserIds:[I

    .line 1838
    .line 1839
    goto :goto_33

    .line 1840
    :goto_34
    add-int/2addr v6, v7

    .line 1841
    goto :goto_32

    .line 1842
    :cond_4c
    :goto_35
    const/4 v0, 0x2

    .line 1843
    const/4 v5, 0x0

    .line 1844
    invoke-virtual {v4, v0, v5}, Lcom/android/server/pm/PackageSetting;->setBoolean(IZ)V

    .line 1845
    .line 1846
    .line 1847
    invoke-virtual {v4}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 1848
    .line 1849
    .line 1850
    goto :goto_36

    .line 1851
    :cond_4d
    const/4 v7, 0x1

    .line 1852
    :goto_36
    iget v0, v12, Lcom/android/server/pm/InstallRequest;->mReturnCode:I

    .line 1853
    .line 1854
    if-ne v0, v7, :cond_4e

    .line 1855
    .line 1856
    :try_start_9
    invoke-static {}, Landroid/content/pm/ASKSManager;->getASKSManager()Landroid/content/pm/IASKSManager;

    .line 1857
    .line 1858
    .line 1859
    move-result-object v0

    .line 1860
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getBaseApkPath()Ljava/lang/String;

    .line 1861
    .line 1862
    .line 1863
    move-result-object v2

    .line 1864
    iget-object v5, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 1865
    .line 1866
    iget v6, v12, Lcom/android/server/pm/InstallRequest;->mUserId:I

    .line 1867
    .line 1868
    invoke-virtual {v5, v6}, Lcom/android/server/pm/PackageManagerService;->resolveUserIds(I)[I

    .line 1869
    .line 1870
    .line 1871
    move-result-object v5

    .line 1872
    const/4 v6, 0x0

    .line 1873
    aget v5, v5, v6

    .line 1874
    .line 1875
    invoke-interface {v0, v3, v2, v5}, Landroid/content/pm/IASKSManager;->postASKSsetup(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    .line 1876
    .line 1877
    .line 1878
    goto :goto_37

    .line 1879
    :catch_4
    move-exception v0

    .line 1880
    const-string v2, "PackageManager"

    .line 1881
    .line 1882
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1883
    .line 1884
    const-string v6, "Exception during postASKSsetup() : "

    .line 1885
    .line 1886
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1887
    .line 1888
    .line 1889
    invoke-static {v0, v5, v2}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1890
    .line 1891
    .line 1892
    :goto_37
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 1893
    .line 1894
    iget-object v2, v12, Lcom/android/server/pm/InstallRequest;->mArchivedPackage:Landroid/content/pm/ArchivedPackageParcel;

    .line 1895
    .line 1896
    iget-object v5, v12, Lcom/android/server/pm/InstallRequest;->mResponsibleInstallerTitles:Landroid/util/SparseArray;

    .line 1897
    .line 1898
    iget-object v6, v12, Lcom/android/server/pm/InstallRequest;->mNewUsers:[I

    .line 1899
    .line 1900
    invoke-virtual {v0, v4, v2, v5, v6}, Lcom/android/server/pm/PackageManagerService;->markPackageAsArchivedIfNeeded(Lcom/android/server/pm/PackageSetting;Landroid/content/pm/ArchivedPackageParcel;Landroid/util/SparseArray;[I)V

    .line 1901
    .line 1902
    .line 1903
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 1904
    .line 1905
    iget-object v2, v12, Lcom/android/server/pm/InstallRequest;->mNewUsers:[I

    .line 1906
    .line 1907
    invoke-virtual {v0, v4, v2}, Lcom/android/server/pm/PackageManagerService;->updateSequenceNumberLP(Lcom/android/server/pm/PackageSetting;[I)V

    .line 1908
    .line 1909
    .line 1910
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 1911
    .line 1912
    invoke-virtual {v0, v3}, Lcom/android/server/pm/PackageManagerService;->updateInstantAppInstallerLocked(Ljava/lang/String;)V

    .line 1913
    .line 1914
    .line 1915
    const/4 v2, 0x0

    .line 1916
    iput-object v2, v4, Lcom/android/server/pm/PackageSetting;->mSplitNames:[Ljava/lang/String;

    .line 1917
    .line 1918
    invoke-virtual {v4}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 1919
    .line 1920
    .line 1921
    iput-object v2, v4, Lcom/android/server/pm/PackageSetting;->mSplitRevisionCodes:[I

    .line 1922
    .line 1923
    invoke-virtual {v4}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 1924
    .line 1925
    .line 1926
    :cond_4e
    iget-object v0, v12, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    .line 1927
    .line 1928
    if-eqz v0, :cond_4f

    .line 1929
    .line 1930
    const/4 v2, 0x4

    .line 1931
    invoke-virtual {v0, v2}, Lcom/android/server/pm/PackageMetrics;->onStepFinished(I)V

    .line 1932
    .line 1933
    .line 1934
    :cond_4f
    move v9, v7

    .line 1935
    move-object/from16 v10, v28

    .line 1936
    .line 1937
    goto/16 :goto_0

    .line 1938
    .line 1939
    :goto_38
    :try_start_a
    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 1940
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 1941
    .line 1942
    throw v0

    .line 1943
    :cond_50
    invoke-static {}, Landroid/app/ApplicationPackageManager;->invalidateGetPackagesForUidCache()V

    .line 1944
    .line 1945
    .line 1946
    return-void
.end method

.method public final commitReconciledScanResultLocked(Lcom/android/server/pm/ReconciledPackage;[I)Lcom/android/server/pm/pkg/AndroidPackage;
    .locals 37

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/4 v3, 0x0

    .line 6
    iget-object v4, v1, Lcom/android/server/pm/ReconciledPackage;->mInstallRequest:Lcom/android/server/pm/InstallRequest;

    .line 7
    .line 8
    iget-object v5, v4, Lcom/android/server/pm/InstallRequest;->mParsedPackage:Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 9
    .line 10
    if-eqz v5, :cond_0

    .line 11
    .line 12
    const-string v6, "android"

    .line 13
    .line 14
    invoke-interface {v5}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v7

    .line 18
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v6

    .line 22
    if-eqz v6, :cond_0

    .line 23
    .line 24
    iget-object v6, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 25
    .line 26
    iget v6, v6, Lcom/android/server/pm/PackageManagerService;->mSdkVersion:I

    .line 27
    .line 28
    invoke-interface {v5, v6}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setVersionCode(I)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 29
    .line 30
    .line 31
    move-result-object v6

    .line 32
    invoke-interface {v6, v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setVersionCodeMajor(I)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 33
    .line 34
    .line 35
    :cond_0
    iget v6, v4, Lcom/android/server/pm/InstallRequest;->mScanFlags:I

    .line 36
    .line 37
    invoke-virtual {v4}, Lcom/android/server/pm/InstallRequest;->assertScanResultExists()V

    .line 38
    .line 39
    .line 40
    iget-object v7, v4, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    .line 41
    .line 42
    iget-object v7, v7, Lcom/android/server/pm/ScanResult;->mRequest:Lcom/android/server/pm/ScanRequest;

    .line 43
    .line 44
    iget-object v7, v7, Lcom/android/server/pm/ScanRequest;->mOldPkgSetting:Lcom/android/server/pm/PackageSetting;

    .line 45
    .line 46
    invoke-virtual {v4}, Lcom/android/server/pm/InstallRequest;->assertScanResultExists()V

    .line 47
    .line 48
    .line 49
    iget-object v8, v4, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    .line 50
    .line 51
    iget-object v8, v8, Lcom/android/server/pm/ScanResult;->mRequest:Lcom/android/server/pm/ScanRequest;

    .line 52
    .line 53
    iget-object v8, v8, Lcom/android/server/pm/ScanRequest;->mOriginalPkgSetting:Lcom/android/server/pm/PackageSetting;

    .line 54
    .line 55
    invoke-virtual {v4}, Lcom/android/server/pm/InstallRequest;->assertScanResultExists()V

    .line 56
    .line 57
    .line 58
    iget-object v9, v4, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    .line 59
    .line 60
    iget-object v9, v9, Lcom/android/server/pm/ScanResult;->mRequest:Lcom/android/server/pm/ScanRequest;

    .line 61
    .line 62
    iget-object v9, v9, Lcom/android/server/pm/ScanRequest;->mRealPkgName:Ljava/lang/String;

    .line 63
    .line 64
    invoke-virtual {v4}, Lcom/android/server/pm/InstallRequest;->assertScanResultExists()V

    .line 65
    .line 66
    .line 67
    iget-object v10, v4, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    .line 68
    .line 69
    iget-object v10, v10, Lcom/android/server/pm/ScanResult;->mRequest:Lcom/android/server/pm/ScanRequest;

    .line 70
    .line 71
    iget-object v10, v10, Lcom/android/server/pm/ScanRequest;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    .line 72
    .line 73
    const/4 v11, 0x1

    .line 74
    if-eqz v10, :cond_1

    .line 75
    .line 76
    iget-object v10, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 77
    .line 78
    iget-object v10, v10, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 79
    .line 80
    invoke-virtual {v4}, Lcom/android/server/pm/InstallRequest;->assertScanResultExists()V

    .line 81
    .line 82
    .line 83
    iget-object v12, v4, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    .line 84
    .line 85
    iget-object v12, v12, Lcom/android/server/pm/ScanResult;->mRequest:Lcom/android/server/pm/ScanRequest;

    .line 86
    .line 87
    iget-object v12, v12, Lcom/android/server/pm/ScanRequest;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    .line 88
    .line 89
    invoke-virtual {v10, v12}, Lcom/android/server/pm/Settings;->getSharedUserSettingLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/SharedUserSetting;

    .line 90
    .line 91
    .line 92
    move-result-object v10

    .line 93
    iget-object v12, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 94
    .line 95
    iget-object v12, v12, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 96
    .line 97
    invoke-virtual {v4}, Lcom/android/server/pm/InstallRequest;->getScannedPackageSetting()Lcom/android/server/pm/PackageSetting;

    .line 98
    .line 99
    .line 100
    move-result-object v13

    .line 101
    invoke-virtual {v12, v13}, Lcom/android/server/pm/Settings;->getSharedUserSettingLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/SharedUserSetting;

    .line 102
    .line 103
    .line 104
    move-result-object v12

    .line 105
    if-eqz v10, :cond_1

    .line 106
    .line 107
    if-eq v10, v12, :cond_1

    .line 108
    .line 109
    invoke-virtual {v4}, Lcom/android/server/pm/InstallRequest;->assertScanResultExists()V

    .line 110
    .line 111
    .line 112
    iget-object v12, v4, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    .line 113
    .line 114
    iget-object v12, v12, Lcom/android/server/pm/ScanResult;->mRequest:Lcom/android/server/pm/ScanRequest;

    .line 115
    .line 116
    iget-object v12, v12, Lcom/android/server/pm/ScanRequest;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    .line 117
    .line 118
    invoke-virtual {v10, v12}, Lcom/android/server/pm/SharedUserSetting;->removePackage(Lcom/android/server/pm/PackageSetting;)V

    .line 119
    .line 120
    .line 121
    iget-object v12, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 122
    .line 123
    iget-object v12, v12, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 124
    .line 125
    invoke-virtual {v12, v10, v3}, Lcom/android/server/pm/Settings;->checkAndPruneSharedUserLPw(Lcom/android/server/pm/SharedUserSetting;Z)Z

    .line 126
    .line 127
    .line 128
    move-result v12

    .line 129
    if-eqz v12, :cond_1

    .line 130
    .line 131
    iget v10, v10, Lcom/android/server/pm/SharedUserSetting;->mAppId:I

    .line 132
    .line 133
    iget-object v12, v4, Lcom/android/server/pm/InstallRequest;->mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

    .line 134
    .line 135
    if-eqz v12, :cond_1

    .line 136
    .line 137
    iput v10, v12, Lcom/android/server/pm/PackageRemovedInfo;->mUid:I

    .line 138
    .line 139
    iput-boolean v11, v12, Lcom/android/server/pm/PackageRemovedInfo;->mIsAppIdRemoved:Z

    .line 140
    .line 141
    :cond_1
    invoke-virtual {v4}, Lcom/android/server/pm/InstallRequest;->assertScanResultExists()V

    .line 142
    .line 143
    .line 144
    iget-object v10, v4, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    .line 145
    .line 146
    iget-boolean v10, v10, Lcom/android/server/pm/ScanResult;->mExistingSettingCopied:Z

    .line 147
    .line 148
    if-eqz v10, :cond_3

    .line 149
    .line 150
    invoke-virtual {v4}, Lcom/android/server/pm/InstallRequest;->assertScanResultExists()V

    .line 151
    .line 152
    .line 153
    iget-object v8, v4, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    .line 154
    .line 155
    iget-object v8, v8, Lcom/android/server/pm/ScanResult;->mRequest:Lcom/android/server/pm/ScanRequest;

    .line 156
    .line 157
    iget-object v8, v8, Lcom/android/server/pm/ScanRequest;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    .line 158
    .line 159
    invoke-virtual {v4}, Lcom/android/server/pm/InstallRequest;->getScannedPackageSetting()Lcom/android/server/pm/PackageSetting;

    .line 160
    .line 161
    .line 162
    move-result-object v10

    .line 163
    invoke-virtual {v8, v10, v3}, Lcom/android/server/pm/PackageSetting;->copyPackageSetting(Lcom/android/server/pm/PackageSetting;Z)V

    .line 164
    .line 165
    .line 166
    iget-object v10, v10, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    .line 167
    .line 168
    if-eqz v10, :cond_2

    .line 169
    .line 170
    invoke-interface {v10}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 171
    .line 172
    .line 173
    move-result-object v10

    .line 174
    goto :goto_0

    .line 175
    :cond_2
    const/4 v10, 0x0

    .line 176
    :goto_0
    invoke-virtual {v8, v10}, Lcom/android/server/pm/PackageSetting;->updateMimeGroups(Ljava/util/Set;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v8}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 180
    .line 181
    .line 182
    goto :goto_2

    .line 183
    :cond_3
    invoke-virtual {v4}, Lcom/android/server/pm/InstallRequest;->getScannedPackageSetting()Lcom/android/server/pm/PackageSetting;

    .line 184
    .line 185
    .line 186
    move-result-object v10

    .line 187
    if-eqz v8, :cond_4

    .line 188
    .line 189
    iget-object v13, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 190
    .line 191
    iget-object v13, v13, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 192
    .line 193
    invoke-virtual {v10}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    .line 194
    .line 195
    .line 196
    move-result v14

    .line 197
    invoke-static {v5, v14}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getRealPackageOrNull(Lcom/android/server/pm/pkg/AndroidPackage;Z)Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v14

    .line 201
    iget-object v15, v8, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    .line 202
    .line 203
    iget-object v13, v13, Lcom/android/server/pm/Settings;->mRenamedPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 204
    .line 205
    invoke-virtual {v13, v14, v15}, Lcom/android/server/utils/WatchedArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object v13

    .line 209
    check-cast v13, Ljava/lang/String;

    .line 210
    .line 211
    iget-object v13, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 212
    .line 213
    iget-object v13, v13, Lcom/android/server/pm/PackageManagerService;->mTransferredPackages:Landroid/util/ArraySet;

    .line 214
    .line 215
    iget-object v8, v8, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    .line 216
    .line 217
    invoke-virtual {v13, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 218
    .line 219
    .line 220
    goto :goto_1

    .line 221
    :cond_4
    iget-object v8, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 222
    .line 223
    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 224
    .line 225
    invoke-interface {v5}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v13

    .line 229
    iget-object v8, v8, Lcom/android/server/pm/Settings;->mRenamedPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 230
    .line 231
    invoke-virtual {v8, v13}, Lcom/android/server/utils/WatchedArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    :goto_1
    move-object v8, v10

    .line 235
    :goto_2
    iget-object v10, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 236
    .line 237
    iget-object v10, v10, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 238
    .line 239
    invoke-virtual {v10, v8}, Lcom/android/server/pm/Settings;->getSharedUserSettingLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/SharedUserSetting;

    .line 240
    .line 241
    .line 242
    move-result-object v10

    .line 243
    if-eqz v10, :cond_9

    .line 244
    .line 245
    invoke-virtual {v10, v8}, Lcom/android/server/pm/SharedUserSetting;->addPackage(Lcom/android/server/pm/PackageSetting;)V

    .line 246
    .line 247
    .line 248
    invoke-interface {v5}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->isLeavingSharedUser()Z

    .line 249
    .line 250
    .line 251
    move-result v13

    .line 252
    if-eqz v13, :cond_9

    .line 253
    .line 254
    sget-boolean v13, Landroid/os/Build;->IS_USERDEBUG:Z

    .line 255
    .line 256
    const/4 v14, 0x2

    .line 257
    if-nez v13, :cond_6

    .line 258
    .line 259
    :cond_5
    :goto_3
    move v13, v11

    .line 260
    goto :goto_4

    .line 261
    :cond_6
    const-string/jumbo v13, "persist.debug.pm.shared_uid_migration_strategy"

    .line 262
    .line 263
    .line 264
    invoke-static {v13, v11}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 265
    .line 266
    .line 267
    move-result v13

    .line 268
    if-gt v13, v14, :cond_5

    .line 269
    .line 270
    if-ge v13, v11, :cond_7

    .line 271
    .line 272
    goto :goto_3

    .line 273
    :cond_7
    :goto_4
    if-lt v13, v14, :cond_8

    .line 274
    .line 275
    move v13, v11

    .line 276
    goto :goto_5

    .line 277
    :cond_8
    move v13, v3

    .line 278
    :goto_5
    if-eqz v13, :cond_9

    .line 279
    .line 280
    invoke-virtual {v10}, Lcom/android/server/pm/SharedUserSetting;->isSingleUser()Z

    .line 281
    .line 282
    .line 283
    move-result v13

    .line 284
    if-eqz v13, :cond_9

    .line 285
    .line 286
    iget-object v13, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 287
    .line 288
    iget-object v13, v13, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 289
    .line 290
    invoke-virtual {v13, v10}, Lcom/android/server/pm/Settings;->convertSharedUserSettingsLPw(Lcom/android/server/pm/SharedUserSetting;)V

    .line 291
    .line 292
    .line 293
    :cond_9
    iget-object v13, v4, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    .line 294
    .line 295
    if-eqz v13, :cond_a

    .line 296
    .line 297
    iget-boolean v13, v13, Lcom/android/server/pm/InstallArgs;->mForceQueryableOverride:Z

    .line 298
    .line 299
    if-eqz v13, :cond_a

    .line 300
    .line 301
    const/4 v13, 0x4

    .line 302
    invoke-virtual {v8, v13, v11}, Lcom/android/server/pm/PackageSetting;->setBoolean(IZ)V

    .line 303
    .line 304
    .line 305
    invoke-virtual {v8}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 306
    .line 307
    .line 308
    :cond_a
    invoke-virtual {v4}, Lcom/android/server/pm/InstallRequest;->getInstallSource()Lcom/android/server/pm/InstallSource;

    .line 309
    .line 310
    .line 311
    move-result-object v13

    .line 312
    const/high16 v14, 0x4000000

    .line 313
    .line 314
    and-int/2addr v14, v6

    .line 315
    if-eqz v14, :cond_b

    .line 316
    .line 317
    move v14, v11

    .line 318
    goto :goto_6

    .line 319
    :cond_b
    move v14, v3

    .line 320
    :goto_6
    if-eqz v7, :cond_c

    .line 321
    .line 322
    move v15, v11

    .line 323
    goto :goto_7

    .line 324
    :cond_c
    move v15, v3

    .line 325
    :goto_7
    if-eqz v15, :cond_d

    .line 326
    .line 327
    iget-object v3, v7, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    .line 328
    .line 329
    iget-object v3, v3, Lcom/android/server/pm/InstallSource;->mUpdateOwnerPackageName:Ljava/lang/String;

    .line 330
    .line 331
    goto :goto_8

    .line 332
    :cond_d
    const/4 v3, 0x0

    .line 333
    :goto_8
    if-nez v14, :cond_f

    .line 334
    .line 335
    invoke-virtual {v8}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    .line 336
    .line 337
    .line 338
    move-result v16

    .line 339
    if-nez v16, :cond_e

    .line 340
    .line 341
    goto :goto_9

    .line 342
    :cond_e
    iget-object v12, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 343
    .line 344
    iget-object v12, v12, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 345
    .line 346
    invoke-virtual {v12}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSystemConfig()Lcom/android/server/SystemConfig;

    .line 347
    .line 348
    .line 349
    move-result-object v12

    .line 350
    invoke-interface {v5}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object v11

    .line 354
    iget-object v12, v12, Lcom/android/server/SystemConfig;->mUpdateOwnersForSystemApps:Landroid/util/ArrayMap;

    .line 355
    .line 356
    invoke-virtual {v12, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    .line 358
    .line 359
    move-result-object v11

    .line 360
    check-cast v11, Ljava/lang/String;

    .line 361
    .line 362
    goto :goto_a

    .line 363
    :cond_f
    :goto_9
    const/4 v11, 0x0

    .line 364
    :goto_a
    iget-object v12, v0, Lcom/android/server/pm/InstallPackageHelper;->mUpdateOwnershipHelper:Lcom/android/server/pm/UpdateOwnershipHelper;

    .line 365
    .line 366
    invoke-interface {v5}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    .line 367
    .line 368
    .line 369
    move-result-object v2

    .line 370
    iget-object v12, v12, Lcom/android/server/pm/UpdateOwnershipHelper;->mUpdateOwnerOptOutsToOwners:Landroid/util/ArrayMap;

    .line 371
    .line 372
    invoke-virtual {v12, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 373
    .line 374
    .line 375
    move-result v2

    .line 376
    if-eqz v3, :cond_10

    .line 377
    .line 378
    const/4 v12, 0x1

    .line 379
    goto :goto_b

    .line 380
    :cond_10
    const/4 v12, 0x0

    .line 381
    :goto_b
    const/high16 v19, 0x2000000

    .line 382
    .line 383
    if-eqz v13, :cond_22

    .line 384
    .line 385
    iget-object v11, v13, Lcom/android/server/pm/InstallSource;->mInitiatingPackageName:Ljava/lang/String;

    .line 386
    .line 387
    invoke-static {v11}, Lcom/android/server/pm/PackageManagerServiceUtils;->isInstalledByAdb(Ljava/lang/String;)Z

    .line 388
    .line 389
    .line 390
    move-result v11

    .line 391
    if-nez v11, :cond_13

    .line 392
    .line 393
    iget-object v11, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 394
    .line 395
    iget-object v11, v11, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 396
    .line 397
    move-object/from16 v21, v10

    .line 398
    .line 399
    iget-object v10, v13, Lcom/android/server/pm/InstallSource;->mInitiatingPackageName:Ljava/lang/String;

    .line 400
    .line 401
    invoke-virtual {v11, v10}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 402
    .line 403
    .line 404
    move-result-object v10

    .line 405
    if-eqz v10, :cond_11

    .line 406
    .line 407
    iget-object v10, v10, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    .line 408
    .line 409
    iget-object v11, v13, Lcom/android/server/pm/InstallSource;->mInitiatingPackageSignatures:Lcom/android/server/pm/PackageSignatures;

    .line 410
    .line 411
    if-ne v10, v11, :cond_12

    .line 412
    .line 413
    :cond_11
    move/from16 v36, v2

    .line 414
    .line 415
    move-object/from16 v32, v5

    .line 416
    .line 417
    move/from16 v33, v6

    .line 418
    .line 419
    move-object/from16 v34, v8

    .line 420
    .line 421
    move-object/from16 v20, v9

    .line 422
    .line 423
    :goto_c
    move/from16 v35, v12

    .line 424
    .line 425
    goto :goto_d

    .line 426
    :cond_12
    iget-boolean v11, v13, Lcom/android/server/pm/InstallSource;->mIsOrphaned:Z

    .line 427
    .line 428
    iget-boolean v1, v13, Lcom/android/server/pm/InstallSource;->mIsInitiatingPackageUninstalled:Z

    .line 429
    .line 430
    move-object/from16 v20, v9

    .line 431
    .line 432
    iget-object v9, v13, Lcom/android/server/pm/InstallSource;->mInitiatingPackageName:Ljava/lang/String;

    .line 433
    .line 434
    move-object/from16 v32, v5

    .line 435
    .line 436
    iget-object v5, v13, Lcom/android/server/pm/InstallSource;->mOriginatingPackageName:Ljava/lang/String;

    .line 437
    .line 438
    move/from16 v33, v6

    .line 439
    .line 440
    iget-object v6, v13, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    .line 441
    .line 442
    move-object/from16 v34, v8

    .line 443
    .line 444
    iget v8, v13, Lcom/android/server/pm/InstallSource;->mInstallerPackageUid:I

    .line 445
    .line 446
    move/from16 v35, v12

    .line 447
    .line 448
    iget-object v12, v13, Lcom/android/server/pm/InstallSource;->mUpdateOwnerPackageName:Ljava/lang/String;

    .line 449
    .line 450
    move/from16 v36, v2

    .line 451
    .line 452
    iget-object v2, v13, Lcom/android/server/pm/InstallSource;->mInstallerAttributionTag:Ljava/lang/String;

    .line 453
    .line 454
    iget v13, v13, Lcom/android/server/pm/InstallSource;->mPackageSource:I

    .line 455
    .line 456
    move/from16 v22, v8

    .line 457
    .line 458
    move/from16 v23, v13

    .line 459
    .line 460
    move-object/from16 v24, v10

    .line 461
    .line 462
    move-object/from16 v25, v9

    .line 463
    .line 464
    move-object/from16 v26, v5

    .line 465
    .line 466
    move-object/from16 v27, v6

    .line 467
    .line 468
    move-object/from16 v28, v12

    .line 469
    .line 470
    move-object/from16 v29, v2

    .line 471
    .line 472
    move/from16 v30, v11

    .line 473
    .line 474
    move/from16 v31, v1

    .line 475
    .line 476
    invoke-static/range {v22 .. v31}, Lcom/android/server/pm/InstallSource;->createInternal(IILcom/android/server/pm/PackageSignatures;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/android/server/pm/InstallSource;

    .line 477
    .line 478
    .line 479
    move-result-object v13

    .line 480
    goto :goto_d

    .line 481
    :cond_13
    move/from16 v36, v2

    .line 482
    .line 483
    move-object/from16 v32, v5

    .line 484
    .line 485
    move/from16 v33, v6

    .line 486
    .line 487
    move-object/from16 v34, v8

    .line 488
    .line 489
    move-object/from16 v20, v9

    .line 490
    .line 491
    move-object/from16 v21, v10

    .line 492
    .line 493
    goto :goto_c

    .line 494
    :goto_d
    if-nez v14, :cond_21

    .line 495
    .line 496
    iget v1, v13, Lcom/android/server/pm/InstallSource;->mInstallerPackageUid:I

    .line 497
    .line 498
    const/4 v2, -0x1

    .line 499
    if-eq v1, v2, :cond_14

    .line 500
    .line 501
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 502
    .line 503
    .line 504
    move-result v1

    .line 505
    goto :goto_e

    .line 506
    :cond_14
    iget v1, v4, Lcom/android/server/pm/InstallRequest;->mUserId:I

    .line 507
    .line 508
    :goto_e
    if-eqz v15, :cond_16

    .line 509
    .line 510
    if-ltz v1, :cond_15

    .line 511
    .line 512
    invoke-virtual {v7, v1}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    .line 513
    .line 514
    .line 515
    move-result v1

    .line 516
    if-eqz v1, :cond_16

    .line 517
    .line 518
    goto :goto_f

    .line 519
    :cond_15
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getNotInstalledUserIds()[I

    .line 520
    .line 521
    .line 522
    move-result-object v1

    .line 523
    array-length v1, v1

    .line 524
    invoke-static {}, Landroid/os/UserManager;->isHeadlessSystemUserMode()Z

    .line 525
    .line 526
    .line 527
    move-result v2

    .line 528
    if-gt v1, v2, :cond_16

    .line 529
    .line 530
    :goto_f
    const/4 v1, 0x1

    .line 531
    goto :goto_10

    .line 532
    :cond_16
    const/4 v1, 0x0

    .line 533
    :goto_10
    invoke-virtual {v4}, Lcom/android/server/pm/InstallRequest;->getInstallFlags()I

    .line 534
    .line 535
    .line 536
    move-result v2

    .line 537
    and-int v2, v2, v19

    .line 538
    .line 539
    if-eqz v2, :cond_17

    .line 540
    .line 541
    const/4 v2, 0x1

    .line 542
    goto :goto_11

    .line 543
    :cond_17
    const/4 v2, 0x0

    .line 544
    :goto_11
    iget-object v5, v13, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    .line 545
    .line 546
    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 547
    .line 548
    .line 549
    move-result v3

    .line 550
    iget-object v5, v0, Lcom/android/server/pm/InstallPackageHelper;->mUpdateOwnershipHelper:Lcom/android/server/pm/UpdateOwnershipHelper;

    .line 551
    .line 552
    iget-object v6, v13, Lcom/android/server/pm/InstallSource;->mUpdateOwnerPackageName:Ljava/lang/String;

    .line 553
    .line 554
    if-nez v6, :cond_18

    .line 555
    .line 556
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 557
    .line 558
    .line 559
    :goto_12
    const/4 v5, 0x0

    .line 560
    goto :goto_14

    .line 561
    :cond_18
    iget-object v8, v5, Lcom/android/server/pm/UpdateOwnershipHelper;->mLock:Ljava/lang/Object;

    .line 562
    .line 563
    monitor-enter v8

    .line 564
    :try_start_0
    iget-object v9, v5, Lcom/android/server/pm/UpdateOwnershipHelper;->mUpdateOwnerOptOutsToOwners:Landroid/util/ArrayMap;

    .line 565
    .line 566
    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    .line 567
    .line 568
    .line 569
    move-result v9

    .line 570
    const/4 v10, 0x1

    .line 571
    sub-int/2addr v9, v10

    .line 572
    :goto_13
    if-ltz v9, :cond_1a

    .line 573
    .line 574
    iget-object v10, v5, Lcom/android/server/pm/UpdateOwnershipHelper;->mUpdateOwnerOptOutsToOwners:Landroid/util/ArrayMap;

    .line 575
    .line 576
    invoke-virtual {v10, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 577
    .line 578
    .line 579
    move-result-object v10

    .line 580
    check-cast v10, Landroid/util/ArraySet;

    .line 581
    .line 582
    invoke-virtual {v10, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 583
    .line 584
    .line 585
    move-result v10

    .line 586
    if-eqz v10, :cond_19

    .line 587
    .line 588
    monitor-exit v8

    .line 589
    const/4 v5, 0x1

    .line 590
    goto :goto_14

    .line 591
    :catchall_0
    move-exception v0

    .line 592
    goto :goto_19

    .line 593
    :cond_19
    const/4 v10, -0x1

    .line 594
    add-int/2addr v9, v10

    .line 595
    goto :goto_13

    .line 596
    :cond_1a
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 597
    goto :goto_12

    .line 598
    :goto_14
    if-nez v1, :cond_1f

    .line 599
    .line 600
    if-eqz v2, :cond_1b

    .line 601
    .line 602
    if-nez v36, :cond_1b

    .line 603
    .line 604
    if-eqz v5, :cond_1c

    .line 605
    .line 606
    :cond_1b
    const/4 v1, 0x0

    .line 607
    goto :goto_18

    .line 608
    :cond_1c
    if-nez v35, :cond_1e

    .line 609
    .line 610
    if-nez v15, :cond_1d

    .line 611
    .line 612
    goto :goto_16

    .line 613
    :cond_1d
    :goto_15
    const/4 v1, 0x0

    .line 614
    goto :goto_17

    .line 615
    :cond_1e
    :goto_16
    if-eqz v35, :cond_21

    .line 616
    .line 617
    if-nez v3, :cond_21

    .line 618
    .line 619
    goto :goto_15

    .line 620
    :goto_17
    invoke-virtual {v13, v1}, Lcom/android/server/pm/InstallSource;->setUpdateOwnerPackageName(Ljava/lang/String;)Lcom/android/server/pm/InstallSource;

    .line 621
    .line 622
    .line 623
    move-result-object v13

    .line 624
    goto :goto_1a

    .line 625
    :goto_18
    invoke-virtual {v13, v1}, Lcom/android/server/pm/InstallSource;->setUpdateOwnerPackageName(Ljava/lang/String;)Lcom/android/server/pm/InstallSource;

    .line 626
    .line 627
    .line 628
    move-result-object v13

    .line 629
    goto :goto_1a

    .line 630
    :cond_1f
    const/4 v1, 0x0

    .line 631
    if-eqz v3, :cond_20

    .line 632
    .line 633
    if-nez v35, :cond_21

    .line 634
    .line 635
    :cond_20
    invoke-virtual {v13, v1}, Lcom/android/server/pm/InstallSource;->setUpdateOwnerPackageName(Ljava/lang/String;)Lcom/android/server/pm/InstallSource;

    .line 636
    .line 637
    .line 638
    move-result-object v13

    .line 639
    goto :goto_1a

    .line 640
    :goto_19
    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 641
    throw v0

    .line 642
    :cond_21
    :goto_1a
    invoke-virtual/range {v34 .. v34}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 643
    .line 644
    .line 645
    invoke-static {v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 646
    .line 647
    .line 648
    move-object/from16 v8, v34

    .line 649
    .line 650
    iput-object v13, v8, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    .line 651
    .line 652
    invoke-virtual {v8}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 653
    .line 654
    .line 655
    goto :goto_1d

    .line 656
    :cond_22
    move-object/from16 v32, v5

    .line 657
    .line 658
    move/from16 v33, v6

    .line 659
    .line 660
    move-object/from16 v20, v9

    .line 661
    .line 662
    move-object/from16 v21, v10

    .line 663
    .line 664
    move/from16 v35, v12

    .line 665
    .line 666
    invoke-virtual {v8}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    .line 667
    .line 668
    .line 669
    move-result v1

    .line 670
    if-eqz v1, :cond_26

    .line 671
    .line 672
    if-eqz v35, :cond_23

    .line 673
    .line 674
    invoke-static {v3, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 675
    .line 676
    .line 677
    move-result v1

    .line 678
    if-eqz v1, :cond_23

    .line 679
    .line 680
    const/4 v1, 0x1

    .line 681
    goto :goto_1b

    .line 682
    :cond_23
    const/4 v1, 0x0

    .line 683
    :goto_1b
    if-eqz v15, :cond_25

    .line 684
    .line 685
    if-eqz v1, :cond_24

    .line 686
    .line 687
    goto :goto_1c

    .line 688
    :cond_24
    const/4 v1, 0x0

    .line 689
    invoke-virtual {v8, v1}, Lcom/android/server/pm/PackageSetting;->setUpdateOwnerPackage(Ljava/lang/String;)V

    .line 690
    .line 691
    .line 692
    goto :goto_1d

    .line 693
    :cond_25
    :goto_1c
    invoke-virtual {v8, v11}, Lcom/android/server/pm/PackageSetting;->setUpdateOwnerPackage(Ljava/lang/String;)V

    .line 694
    .line 695
    .line 696
    :cond_26
    :goto_1d
    const/high16 v1, 0x800000

    .line 697
    .line 698
    and-int v1, v33, v1

    .line 699
    .line 700
    if-eqz v1, :cond_28

    .line 701
    .line 702
    and-int v1, v33, v19

    .line 703
    .line 704
    if-eqz v1, :cond_27

    .line 705
    .line 706
    const/4 v1, 0x1

    .line 707
    goto :goto_1e

    .line 708
    :cond_27
    const/4 v1, 0x0

    .line 709
    :goto_1e
    iget-object v2, v8, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    .line 710
    .line 711
    const/4 v3, 0x1

    .line 712
    xor-int/2addr v1, v3

    .line 713
    iput-boolean v1, v2, Lcom/android/server/pm/pkg/PackageStateUnserialized;->apkInUpdatedApex:Z

    .line 714
    .line 715
    iget-object v1, v2, Lcom/android/server/pm/pkg/PackageStateUnserialized;->mPackageSetting:Lcom/android/server/pm/PackageSetting;

    .line 716
    .line 717
    invoke-virtual {v1}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 718
    .line 719
    .line 720
    :cond_28
    iget-object v1, v8, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    .line 721
    .line 722
    iget-object v2, v4, Lcom/android/server/pm/InstallRequest;->mApexModuleName:Ljava/lang/String;

    .line 723
    .line 724
    iput-object v2, v1, Lcom/android/server/pm/pkg/PackageStateUnserialized;->mApexModuleName:Ljava/lang/String;

    .line 725
    .line 726
    iget-object v1, v1, Lcom/android/server/pm/pkg/PackageStateUnserialized;->mPackageSetting:Lcom/android/server/pm/PackageSetting;

    .line 727
    .line 728
    invoke-virtual {v1}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 729
    .line 730
    .line 731
    iget v1, v8, Lcom/android/server/pm/PackageSetting;->mAppId:I

    .line 732
    .line 733
    move-object/from16 v2, v32

    .line 734
    .line 735
    invoke-interface {v2, v1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setUid(I)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 736
    .line 737
    .line 738
    invoke-interface {v2}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->hideAsFinal()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 739
    .line 740
    .line 741
    move-result-object v1

    .line 742
    iget-object v2, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 743
    .line 744
    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 745
    .line 746
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 747
    .line 748
    .line 749
    iget-object v3, v8, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    .line 750
    .line 751
    invoke-virtual {v2, v3}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 752
    .line 753
    .line 754
    move-result-object v3

    .line 755
    if-nez v3, :cond_29

    .line 756
    .line 757
    goto :goto_21

    .line 758
    :cond_29
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    .line 759
    .line 760
    .line 761
    move-result-object v3

    .line 762
    const/4 v5, 0x0

    .line 763
    invoke-static {v3, v5, v5}, Lcom/android/server/pm/Settings;->getUsers(Lcom/android/server/pm/UserManagerService;ZZ)Ljava/util/List;

    .line 764
    .line 765
    .line 766
    move-result-object v3

    .line 767
    if-nez v3, :cond_2a

    .line 768
    .line 769
    goto :goto_21

    .line 770
    :cond_2a
    check-cast v3, Ljava/util/ArrayList;

    .line 771
    .line 772
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 773
    .line 774
    .line 775
    move-result-object v3

    .line 776
    :cond_2b
    :goto_1f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 777
    .line 778
    .line 779
    move-result v5

    .line 780
    if-eqz v5, :cond_2d

    .line 781
    .line 782
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 783
    .line 784
    .line 785
    move-result-object v5

    .line 786
    check-cast v5, Landroid/content/pm/UserInfo;

    .line 787
    .line 788
    if-nez v7, :cond_2c

    .line 789
    .line 790
    sget-object v6, Lcom/android/server/pm/pkg/PackageUserState;->DEFAULT:Lcom/android/server/pm/pkg/PackageUserState;

    .line 791
    .line 792
    goto :goto_20

    .line 793
    :cond_2c
    iget v6, v5, Landroid/content/pm/UserInfo;->id:I

    .line 794
    .line 795
    invoke-virtual {v7, v6}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    .line 796
    .line 797
    .line 798
    move-result-object v6

    .line 799
    :goto_20
    iget v9, v5, Landroid/content/pm/UserInfo;->id:I

    .line 800
    .line 801
    invoke-virtual {v8, v9}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    .line 802
    .line 803
    .line 804
    move-result-object v9

    .line 805
    invoke-virtual {v6, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 806
    .line 807
    .line 808
    move-result v6

    .line 809
    if-nez v6, :cond_2b

    .line 810
    .line 811
    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    .line 812
    .line 813
    const/4 v6, 0x0

    .line 814
    invoke-virtual {v2, v5, v6}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(IZ)V

    .line 815
    .line 816
    .line 817
    goto :goto_1f

    .line 818
    :cond_2d
    :goto_21
    if-eqz v20, :cond_2e

    .line 819
    .line 820
    iget-object v2, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 821
    .line 822
    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mTransferredPackages:Landroid/util/ArraySet;

    .line 823
    .line 824
    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 825
    .line 826
    .line 827
    move-result-object v3

    .line 828
    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 829
    .line 830
    .line 831
    :cond_2e
    move-object/from16 v2, p1

    .line 832
    .line 833
    iget-object v3, v2, Lcom/android/server/pm/ReconciledPackage;->mCollectedSharedLibraryInfos:Ljava/util/ArrayList;

    .line 834
    .line 835
    if-nez v3, :cond_2f

    .line 836
    .line 837
    if-eqz v7, :cond_30

    .line 838
    .line 839
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getSharedLibraryDependencies()Ljava/util/List;

    .line 840
    .line 841
    .line 842
    move-result-object v3

    .line 843
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 844
    .line 845
    .line 846
    move-result v3

    .line 847
    if-nez v3, :cond_30

    .line 848
    .line 849
    :cond_2f
    iget-object v14, v0, Lcom/android/server/pm/InstallPackageHelper;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesImpl;

    .line 850
    .line 851
    iget-object v3, v2, Lcom/android/server/pm/ReconciledPackage;->mCollectedSharedLibraryInfos:Ljava/util/ArrayList;

    .line 852
    .line 853
    iget-object v5, v14, Lcom/android/server/pm/SharedLibrariesImpl;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 854
    .line 855
    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 856
    .line 857
    sget-boolean v6, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 858
    .line 859
    monitor-enter v5

    .line 860
    const/16 v17, 0x0

    .line 861
    .line 862
    const/16 v18, 0x0

    .line 863
    .line 864
    move-object v15, v1

    .line 865
    move-object/from16 v16, v8

    .line 866
    .line 867
    move-object/from16 v19, v3

    .line 868
    .line 869
    move-object/from16 v20, p2

    .line 870
    .line 871
    :try_start_2
    invoke-virtual/range {v14 .. v20}, Lcom/android/server/pm/SharedLibrariesImpl;->executeSharedLibrariesUpdateLPw(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Ljava/util/ArrayList;[I)V

    .line 872
    .line 873
    .line 874
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 875
    :cond_30
    iget-object v3, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 876
    .line 877
    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 878
    .line 879
    iget-object v3, v3, Lcom/android/server/pm/Settings;->mKeySetManagerService:Lcom/android/server/pm/KeySetManagerService;

    .line 880
    .line 881
    iget-boolean v5, v2, Lcom/android/server/pm/ReconciledPackage;->mRemoveAppKeySetData:Z

    .line 882
    .line 883
    if-eqz v5, :cond_31

    .line 884
    .line 885
    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 886
    .line 887
    .line 888
    move-result-object v5

    .line 889
    invoke-virtual {v3, v5}, Lcom/android/server/pm/KeySetManagerService;->removeAppKeySetDataLPw(Ljava/lang/String;)V

    .line 890
    .line 891
    .line 892
    :cond_31
    iget-boolean v3, v2, Lcom/android/server/pm/ReconciledPackage;->mSharedUserSignaturesChanged:Z

    .line 893
    .line 894
    if-eqz v3, :cond_32

    .line 895
    .line 896
    if-eqz v21, :cond_32

    .line 897
    .line 898
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 899
    .line 900
    move-object/from16 v5, v21

    .line 901
    .line 902
    iput-object v3, v5, Lcom/android/server/pm/SharedUserSetting;->signaturesChanged:Ljava/lang/Boolean;

    .line 903
    .line 904
    iget-object v3, v5, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    .line 905
    .line 906
    iget-object v5, v2, Lcom/android/server/pm/ReconciledPackage;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 907
    .line 908
    iput-object v5, v3, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 909
    .line 910
    :cond_32
    iget-object v3, v2, Lcom/android/server/pm/ReconciledPackage;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 911
    .line 912
    iget-object v5, v8, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    .line 913
    .line 914
    iput-object v3, v5, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 915
    .line 916
    invoke-virtual {v8}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 917
    .line 918
    .line 919
    iget v3, v4, Lcom/android/server/pm/InstallRequest;->mUserId:I

    .line 920
    .line 921
    invoke-virtual {v0, v1, v8, v7, v2}, Lcom/android/server/pm/InstallPackageHelper;->commitPackageSettings(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/ReconciledPackage;)V

    .line 922
    .line 923
    .line 924
    invoke-virtual {v8, v3}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    .line 925
    .line 926
    .line 927
    move-result v2

    .line 928
    if-eqz v2, :cond_33

    .line 929
    .line 930
    iget-object v2, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 931
    .line 932
    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mInstantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

    .line 933
    .line 934
    iget v4, v8, Lcom/android/server/pm/PackageSetting;->mAppId:I

    .line 935
    .line 936
    invoke-virtual {v2, v3, v4}, Lcom/android/server/pm/InstantAppRegistry;->addInstantApp(II)V

    .line 937
    .line 938
    .line 939
    :cond_33
    iget-object v2, v8, Lcom/android/server/pm/PackageSetting;->mPathString:Ljava/lang/String;

    .line 940
    .line 941
    invoke-static {v2}, Landroid/os/incremental/IncrementalManager;->isIncrementalPath(Ljava/lang/String;)Z

    .line 942
    .line 943
    .line 944
    move-result v2

    .line 945
    if-nez v2, :cond_34

    .line 946
    .line 947
    iget v2, v8, Lcom/android/server/pm/PackageSetting;->mLoadingProgress:F

    .line 948
    .line 949
    const/high16 v3, 0x3f800000    # 1.0f

    .line 950
    .line 951
    cmpg-float v2, v2, v3

    .line 952
    .line 953
    if-gez v2, :cond_34

    .line 954
    .line 955
    iput v3, v8, Lcom/android/server/pm/PackageSetting;->mLoadingProgress:F

    .line 956
    .line 957
    invoke-virtual {v8}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 958
    .line 959
    .line 960
    :cond_34
    invoke-static {v8}, Lcom/android/server/pm/UpdateOwnershipHelper;->hasValidOwnershipDenyList(Lcom/android/server/pm/PackageSetting;)Z

    .line 961
    .line 962
    .line 963
    move-result v2

    .line 964
    if-eqz v2, :cond_35

    .line 965
    .line 966
    iget-object v2, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 967
    .line 968
    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    .line 969
    .line 970
    new-instance v3, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda4;

    .line 971
    .line 972
    const/4 v4, 0x0

    .line 973
    invoke-direct {v3, v0, v8, v4}, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/pm/InstallPackageHelper;Ljava/lang/Object;I)V

    .line 974
    .line 975
    .line 976
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 977
    .line 978
    .line 979
    :cond_35
    return-object v1

    .line 980
    :catchall_1
    move-exception v0

    .line 981
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 982
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 983
    .line 984
    throw v0
.end method

.method public final disableStubPackage(Lcom/android/server/pm/DeletePackageAction;Lcom/android/server/pm/PackageSetting;[I)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 4
    .line 5
    iget-object p2, p2, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {p0, p2}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    if-eqz p0, :cond_2

    .line 12
    .line 13
    iget-object p1, p1, Lcom/android/server/pm/DeletePackageAction;->mUser:Landroid/os/UserHandle;

    .line 14
    .line 15
    const/4 p2, -0x1

    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    move p1, p2

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    :goto_0
    const-string v0, "android"

    .line 25
    .line 26
    const/4 v1, 0x2

    .line 27
    if-ne p1, p2, :cond_1

    .line 28
    .line 29
    array-length p1, p3

    .line 30
    const/4 p2, 0x0

    .line 31
    :goto_1
    if-ge p2, p1, :cond_2

    .line 32
    .line 33
    aget v2, p3, p2

    .line 34
    .line 35
    invoke-virtual {p0, v1, v2, v0}, Lcom/android/server/pm/PackageSetting;->setEnabled(IILjava/lang/String;)V

    .line 36
    .line 37
    .line 38
    add-int/lit8 p2, p2, 0x1

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    if-ltz p1, :cond_2

    .line 42
    .line 43
    invoke-virtual {p0, v1, p1, v0}, Lcom/android/server/pm/PackageSetting;->setEnabled(IILjava/lang/String;)V

    .line 44
    .line 45
    .line 46
    :cond_2
    return-void
.end method

.method public final doRenameLI(Lcom/android/server/pm/InstallRequest;Lcom/android/internal/pm/parsing/pkg/ParsedPackage;)V
    .locals 7

    .line 1
    const-string v0, "PackageManager"

    .line 2
    .line 3
    iget v1, p1, Lcom/android/server/pm/InstallRequest;->mReturnCode:I

    .line 4
    .line 5
    iget-object v2, p1, Lcom/android/server/pm/InstallRequest;->mReturnMsg:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->isInstallMove()Z

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    const/4 v4, 0x0

    .line 12
    iget-object v5, p0, Lcom/android/server/pm/InstallPackageHelper;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    .line 13
    .line 14
    const/4 v6, 0x1

    .line 15
    if-eqz v3, :cond_4

    .line 16
    .line 17
    if-ne v1, v6, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    iget-object p0, p1, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    .line 21
    .line 22
    if-eqz p0, :cond_1

    .line 23
    .line 24
    iget-object p1, p0, Lcom/android/server/pm/InstallArgs;->mMoveInfo:Lcom/android/server/pm/MoveInfo;

    .line 25
    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    iget-object p1, p1, Lcom/android/server/pm/MoveInfo;->mToUuid:Ljava/lang/String;

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    move-object p1, v4

    .line 32
    :goto_0
    if-eqz p0, :cond_2

    .line 33
    .line 34
    iget-object p2, p0, Lcom/android/server/pm/InstallArgs;->mMoveInfo:Lcom/android/server/pm/MoveInfo;

    .line 35
    .line 36
    if-eqz p2, :cond_2

    .line 37
    .line 38
    iget-object p2, p2, Lcom/android/server/pm/MoveInfo;->mPackageName:Ljava/lang/String;

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_2
    move-object p2, v4

    .line 42
    :goto_1
    if-eqz p0, :cond_3

    .line 43
    .line 44
    iget-object p0, p0, Lcom/android/server/pm/InstallArgs;->mMoveInfo:Lcom/android/server/pm/MoveInfo;

    .line 45
    .line 46
    if-eqz p0, :cond_3

    .line 47
    .line 48
    iget-object v4, p0, Lcom/android/server/pm/MoveInfo;->mFromCodePath:Ljava/lang/String;

    .line 49
    .line 50
    :cond_3
    invoke-virtual {v5, p1, p2, v4}, Lcom/android/server/pm/RemovePackageHelper;->cleanUpForMoveInstall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    new-instance p0, Lcom/android/server/pm/PrepareFailure;

    .line 54
    .line 55
    invoke-direct {p0, v1, v2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw p0

    .line 59
    :cond_4
    if-ne v1, v6, :cond_a

    .line 60
    .line 61
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getInstallFlags()I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getCodeFile()Ljava/io/File;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    const/high16 v3, 0x200000

    .line 70
    .line 71
    and-int/2addr v1, v3

    .line 72
    if-eqz v1, :cond_5

    .line 73
    .line 74
    invoke-static {v4}, Landroid/os/Environment;->getDataAppDirectory(Ljava/lang/String;)Ljava/io/File;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    goto :goto_2

    .line 79
    :cond_5
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    :goto_2
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getCodeFile()Ljava/io/File;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-interface {p2}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    invoke-static {v1, v3}, Lcom/android/server/pm/PackageManagerServiceUtils;->getNextCodePath(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 96
    .line 97
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mIncrementalManager:Landroid/os/incremental/IncrementalManager;

    .line 98
    .line 99
    if-eqz v3, :cond_6

    .line 100
    .line 101
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    invoke-static {v3}, Landroid/os/incremental/IncrementalManager;->isIncrementalPath(Ljava/lang/String;)Z

    .line 106
    .line 107
    .line 108
    move-result v3

    .line 109
    if-eqz v3, :cond_6

    .line 110
    .line 111
    goto :goto_3

    .line 112
    :cond_6
    const/4 v6, 0x0

    .line 113
    :goto_3
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    const/16 v4, 0x1f9

    .line 118
    .line 119
    invoke-static {v3, v4}, Lcom/android/server/pm/PackageManagerServiceUtils;->makeDirRecursive(Ljava/io/File;I)V

    .line 120
    .line 121
    .line 122
    if-eqz v6, :cond_7

    .line 123
    .line 124
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mIncrementalManager:Landroid/os/incremental/IncrementalManager;

    .line 125
    .line 126
    invoke-virtual {p0, v2, v1}, Landroid/os/incremental/IncrementalManager;->linkCodePath(Ljava/io/File;Ljava/io/File;)V

    .line 127
    .line 128
    .line 129
    goto :goto_4

    .line 130
    :catch_0
    move-exception p0

    .line 131
    goto :goto_6

    .line 132
    :cond_7
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p0

    .line 136
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v3

    .line 140
    invoke-static {p0, v3}, Landroid/system/Os;->rename(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    .line 142
    .line 143
    :goto_4
    const/16 p0, -0x14

    .line 144
    .line 145
    if-nez v6, :cond_9

    .line 146
    .line 147
    invoke-static {v1}, Landroid/os/SELinux;->restoreconRecursive(Ljava/io/File;)Z

    .line 148
    .line 149
    .line 150
    move-result v3

    .line 151
    if-eqz v3, :cond_8

    .line 152
    .line 153
    goto :goto_5

    .line 154
    :cond_8
    const-string p1, "Failed to restorecon"

    .line 155
    .line 156
    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    .line 158
    .line 159
    new-instance p2, Lcom/android/server/pm/PrepareFailure;

    .line 160
    .line 161
    invoke-direct {p2, p0, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 162
    .line 163
    .line 164
    throw p2

    .line 165
    :cond_9
    :goto_5
    invoke-virtual {p1, v1}, Lcom/android/server/pm/InstallRequest;->setCodeFile(Ljava/io/File;)V

    .line 166
    .line 167
    .line 168
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    invoke-interface {p2, p1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setPath(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 173
    .line 174
    .line 175
    invoke-interface {p2}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getBaseApkPath()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object p0

    .line 179
    invoke-static {v2, v1, p0}, Landroid/os/FileUtils;->rewriteAfterRename(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object p0

    .line 183
    invoke-interface {p2, p0}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setBaseApkPath(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 184
    .line 185
    .line 186
    invoke-interface {p2}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getSplitCodePaths()[Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object p0

    .line 190
    invoke-static {v2, v1, p0}, Landroid/os/FileUtils;->rewriteAfterRename(Ljava/io/File;Ljava/io/File;[Ljava/lang/String;)[Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object p0

    .line 194
    invoke-interface {p2, p0}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setSplitCodePaths([Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 195
    .line 196
    .line 197
    return-void

    .line 198
    :catch_1
    move-exception p1

    .line 199
    new-instance p2, Ljava/lang/StringBuilder;

    .line 200
    .line 201
    const-string v2, "Failed to get path: "

    .line 202
    .line 203
    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object p2

    .line 213
    invoke-static {v0, p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 214
    .line 215
    .line 216
    new-instance p1, Lcom/android/server/pm/PrepareFailure;

    .line 217
    .line 218
    invoke-static {v1, v2}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object p2

    .line 222
    invoke-direct {p1, p0, p2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 223
    .line 224
    .line 225
    throw p1

    .line 226
    :goto_6
    const-string p1, "Failed to rename"

    .line 227
    .line 228
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 229
    .line 230
    .line 231
    new-instance p0, Lcom/android/server/pm/PrepareFailure;

    .line 232
    .line 233
    const/4 p2, -0x4

    .line 234
    invoke-direct {p0, p2, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 235
    .line 236
    .line 237
    throw p0

    .line 238
    :cond_a
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getCodeFile()Ljava/io/File;

    .line 239
    .line 240
    .line 241
    move-result-object p0

    .line 242
    invoke-virtual {v5, p0}, Lcom/android/server/pm/RemovePackageHelper;->removeCodePath(Ljava/io/File;)V

    .line 243
    .line 244
    .line 245
    new-instance p0, Lcom/android/server/pm/PrepareFailure;

    .line 246
    .line 247
    invoke-direct {p0, v1, v2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 248
    .line 249
    .line 250
    throw p0
.end method

.method public final doesSignatureMatchForPermissions(Ljava/lang/String;Lcom/android/internal/pm/parsing/pkg/ParsedPackage;I)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

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
    iget-object v1, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 9
    .line 10
    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 11
    .line 12
    invoke-virtual {v1, p1}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iget-object v2, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 17
    .line 18
    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 19
    .line 20
    iget-object v3, v2, Lcom/android/server/pm/Settings;->mKeySetManagerService:Lcom/android/server/pm/KeySetManagerService;

    .line 21
    .line 22
    invoke-virtual {v2, v1}, Lcom/android/server/pm/Settings;->getSharedUserSettingLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/SharedUserSetting;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 27
    if-nez v1, :cond_0

    .line 28
    .line 29
    sget-object v0, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iget-object v0, v1, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    .line 33
    .line 34
    iget-object v0, v0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 35
    .line 36
    :goto_0
    invoke-interface {p2}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-eqz p1, :cond_1

    .line 45
    .line 46
    invoke-virtual {v3, v1, v2, p3}, Lcom/android/server/pm/KeySetManagerService;->shouldCheckUpgradeKeySetLocked(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/SharedUserSetting;I)Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-eqz p1, :cond_1

    .line 51
    .line 52
    invoke-virtual {v3, v1, p2}, Lcom/android/server/pm/KeySetManagerService;->checkUpgradeKeySetLocked(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/pkg/AndroidPackage;)Z

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    return p0

    .line 57
    :cond_1
    invoke-interface {p2}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    const/4 p3, 0x4

    .line 62
    invoke-virtual {v0, p1, p3}, Landroid/content/pm/SigningDetails;->checkCapability(Landroid/content/pm/SigningDetails;I)Z

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    const/4 v2, 0x1

    .line 67
    if-eqz p1, :cond_2

    .line 68
    .line 69
    return v2

    .line 70
    :cond_2
    invoke-interface {p2}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-virtual {p1, v0, p3}, Landroid/content/pm/SigningDetails;->checkCapability(Landroid/content/pm/SigningDetails;I)Z

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    if-eqz p1, :cond_3

    .line 79
    .line 80
    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 81
    .line 82
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 83
    .line 84
    monitor-enter p0

    .line 85
    :try_start_1
    invoke-interface {p2}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    iget-object p2, v1, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    .line 90
    .line 91
    iput-object p1, p2, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 92
    .line 93
    invoke-virtual {v1}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 94
    .line 95
    .line 96
    monitor-exit p0

    .line 97
    return v2

    .line 98
    :catchall_0
    move-exception p1

    .line 99
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    sget-boolean p0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 101
    .line 102
    throw p1

    .line 103
    :cond_3
    const/4 p0, 0x0

    .line 104
    return p0

    .line 105
    :catchall_1
    move-exception p0

    .line 106
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 107
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 108
    .line 109
    throw p0
.end method

.method public final executePostCommitStepsLIF(Ljava/util/List;)V
    .locals 40

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    new-instance v3, Landroid/util/ArraySet;

    .line 4
    .line 5
    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 6
    .line 7
    .line 8
    move-object/from16 v0, p1

    .line 9
    .line 10
    check-cast v0, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v4

    .line 16
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_62

    .line 21
    .line 22
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lcom/android/server/pm/ReconciledPackage;

    .line 27
    .line 28
    iget-object v6, v0, Lcom/android/server/pm/ReconciledPackage;->mInstallRequest:Lcom/android/server/pm/InstallRequest;

    .line 29
    .line 30
    invoke-virtual {v6}, Lcom/android/server/pm/InstallRequest;->getScannedPackageSetting()Lcom/android/server/pm/PackageSetting;

    .line 31
    .line 32
    .line 33
    move-result-object v7

    .line 34
    iget-object v14, v7, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    .line 35
    .line 36
    iget-object v8, v7, Lcom/android/server/pm/PackageSetting;->mPathString:Ljava/lang/String;

    .line 37
    .line 38
    iget-object v9, v7, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 39
    .line 40
    iget-object v10, v1, Lcom/android/server/pm/InstallPackageHelper;->mIncrementalManager:Landroid/os/incremental/IncrementalManager;

    .line 41
    .line 42
    if-eqz v10, :cond_1

    .line 43
    .line 44
    invoke-static {v8}, Landroid/os/incremental/IncrementalManager;->isIncrementalPath(Ljava/lang/String;)Z

    .line 45
    .line 46
    .line 47
    move-result v10

    .line 48
    if-eqz v10, :cond_1

    .line 49
    .line 50
    iget-object v10, v1, Lcom/android/server/pm/InstallPackageHelper;->mIncrementalManager:Landroid/os/incremental/IncrementalManager;

    .line 51
    .line 52
    invoke-virtual {v10, v8}, Landroid/os/incremental/IncrementalManager;->openStorage(Ljava/lang/String;)Landroid/os/incremental/IncrementalStorage;

    .line 53
    .line 54
    .line 55
    move-result-object v8

    .line 56
    if-eqz v8, :cond_0

    .line 57
    .line 58
    invoke-virtual {v3, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 63
    .line 64
    const-string v1, "Install: null storage for incremental package "

    .line 65
    .line 66
    invoke-static {v1, v14}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    throw v0

    .line 74
    :cond_1
    :goto_1
    iget-object v8, v1, Lcom/android/server/pm/InstallPackageHelper;->mAppDataHelper:Lcom/android/server/pm/AppDataHelper;

    .line 75
    .line 76
    iget-object v10, v6, Lcom/android/server/pm/InstallRequest;->mNewUsers:[I

    .line 77
    .line 78
    invoke-virtual {v8, v7, v10}, Lcom/android/server/pm/AppDataHelper;->prepareAppDataPostCommitLIF(Lcom/android/server/pm/PackageSetting;[I)V

    .line 79
    .line 80
    .line 81
    iget-boolean v8, v6, Lcom/android/server/pm/InstallRequest;->mClearCodeCache:Z

    .line 82
    .line 83
    const/4 v15, -0x1

    .line 84
    if-eqz v8, :cond_2

    .line 85
    .line 86
    iget-object v8, v1, Lcom/android/server/pm/InstallPackageHelper;->mAppDataHelper:Lcom/android/server/pm/AppDataHelper;

    .line 87
    .line 88
    iget-object v7, v7, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 89
    .line 90
    const/16 v10, 0x27

    .line 91
    .line 92
    invoke-virtual {v8, v7, v15, v10}, Lcom/android/server/pm/AppDataHelper;->clearAppDataLIF(Lcom/android/server/pm/pkg/AndroidPackage;II)V

    .line 93
    .line 94
    .line 95
    :cond_2
    iget-boolean v7, v6, Lcom/android/server/pm/InstallRequest;->mReplace:Z

    .line 96
    .line 97
    if-eqz v7, :cond_3

    .line 98
    .line 99
    if-eqz v9, :cond_3

    .line 100
    .line 101
    iget-object v7, v1, Lcom/android/server/pm/InstallPackageHelper;->mDexManager:Lcom/android/server/pm/dex/DexManager;

    .line 102
    .line 103
    invoke-interface {v9}, Lcom/android/server/pm/pkg/AndroidPackage;->getBaseApkPath()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v8

    .line 107
    invoke-interface {v9}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitCodePaths()[Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v9

    .line 111
    invoke-virtual {v7, v9, v14, v8}, Lcom/android/server/pm/dex/DexManager;->notifyPackageUpdated([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    :cond_3
    iget-boolean v7, v6, Lcom/android/server/pm/InstallRequest;->mSpqrProfileGenerated:Z

    .line 115
    .line 116
    const/4 v13, 0x5

    .line 117
    const/4 v12, 0x0

    .line 118
    const/16 v16, 0x800

    .line 119
    .line 120
    const/4 v11, 0x2

    .line 121
    const/4 v10, 0x3

    .line 122
    if-eqz v7, :cond_7

    .line 123
    .line 124
    invoke-virtual {v6}, Lcom/android/server/pm/InstallRequest;->getInstallReason()I

    .line 125
    .line 126
    .line 127
    move-result v7

    .line 128
    if-eq v7, v11, :cond_5

    .line 129
    .line 130
    invoke-virtual {v6}, Lcom/android/server/pm/InstallRequest;->getInstallReason()I

    .line 131
    .line 132
    .line 133
    move-result v7

    .line 134
    if-ne v7, v10, :cond_4

    .line 135
    .line 136
    goto :goto_2

    .line 137
    :cond_4
    const/4 v7, 0x0

    .line 138
    goto :goto_3

    .line 139
    :cond_5
    :goto_2
    const/4 v7, 0x1

    .line 140
    :goto_3
    new-instance v17, Lcom/android/server/pm/dex/DexoptOptions;

    .line 141
    .line 142
    const-string/jumbo v18, "speed-profile"

    .line 143
    .line 144
    .line 145
    if-eqz v7, :cond_6

    .line 146
    .line 147
    move/from16 v7, v16

    .line 148
    .line 149
    goto :goto_4

    .line 150
    :cond_6
    const/4 v7, 0x0

    .line 151
    :goto_4
    or-int/lit16 v7, v7, 0x405

    .line 152
    .line 153
    const/16 v9, 0x15

    .line 154
    .line 155
    const/16 v19, 0x0

    .line 156
    .line 157
    move-object/from16 v8, v17

    .line 158
    .line 159
    move v15, v10

    .line 160
    move v10, v7

    .line 161
    move v7, v11

    .line 162
    move-object v11, v14

    .line 163
    move-object/from16 v12, v18

    .line 164
    .line 165
    move v5, v13

    .line 166
    move-object/from16 v13, v19

    .line 167
    .line 168
    invoke-direct/range {v8 .. v13}, Lcom/android/server/pm/dex/DexoptOptions;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    move-object/from16 v2, v17

    .line 172
    .line 173
    goto/16 :goto_c

    .line 174
    .line 175
    :cond_7
    move v15, v10

    .line 176
    move v7, v11

    .line 177
    move v5, v13

    .line 178
    iget-object v8, v1, Lcom/android/server/pm/InstallPackageHelper;->mDexManager:Lcom/android/server/pm/dex/DexManager;

    .line 179
    .line 180
    invoke-virtual {v6}, Lcom/android/server/pm/InstallRequest;->getScannedPackageSetting()Lcom/android/server/pm/PackageSetting;

    .line 181
    .line 182
    .line 183
    move-result-object v9

    .line 184
    iget-object v10, v9, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    .line 185
    .line 186
    invoke-virtual {v6}, Lcom/android/server/pm/InstallRequest;->getInstallReason()I

    .line 187
    .line 188
    .line 189
    move-result v11

    .line 190
    if-eq v11, v7, :cond_9

    .line 191
    .line 192
    invoke-virtual {v6}, Lcom/android/server/pm/InstallRequest;->getInstallReason()I

    .line 193
    .line 194
    .line 195
    move-result v11

    .line 196
    if-ne v11, v15, :cond_8

    .line 197
    .line 198
    goto :goto_5

    .line 199
    :cond_8
    const/4 v11, 0x0

    .line 200
    goto :goto_6

    .line 201
    :cond_9
    :goto_5
    move/from16 v11, v16

    .line 202
    .line 203
    :goto_6
    or-int/lit16 v11, v11, 0x405

    .line 204
    .line 205
    iget-object v12, v6, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    .line 206
    .line 207
    if-nez v12, :cond_a

    .line 208
    .line 209
    const/4 v12, 0x0

    .line 210
    goto :goto_7

    .line 211
    :cond_a
    iget v12, v12, Lcom/android/server/pm/InstallArgs;->mInstallScenario:I

    .line 212
    .line 213
    :goto_7
    iget-object v13, v8, Lcom/android/server/pm/dex/DexManager;->mBatteryManager:Landroid/os/BatteryManager;

    .line 214
    .line 215
    if-nez v13, :cond_b

    .line 216
    .line 217
    iget-object v13, v8, Lcom/android/server/pm/dex/DexManager;->mContext:Landroid/content/Context;

    .line 218
    .line 219
    if-eqz v13, :cond_b

    .line 220
    .line 221
    const-class v5, Landroid/os/BatteryManager;

    .line 222
    .line 223
    invoke-virtual {v13, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object v5

    .line 227
    check-cast v5, Landroid/os/BatteryManager;

    .line 228
    .line 229
    iput-object v5, v8, Lcom/android/server/pm/dex/DexManager;->mBatteryManager:Landroid/os/BatteryManager;

    .line 230
    .line 231
    :cond_b
    iget-object v5, v8, Lcom/android/server/pm/dex/DexManager;->mBatteryManager:Landroid/os/BatteryManager;

    .line 232
    .line 233
    const/4 v13, 0x4

    .line 234
    const/4 v7, 0x6

    .line 235
    if-eqz v5, :cond_c

    .line 236
    .line 237
    invoke-virtual {v5, v7}, Landroid/os/BatteryManager;->getIntProperty(I)I

    .line 238
    .line 239
    .line 240
    move-result v2

    .line 241
    if-ne v2, v15, :cond_c

    .line 242
    .line 243
    invoke-virtual {v5, v13}, Landroid/os/BatteryManager;->getIntProperty(I)I

    .line 244
    .line 245
    .line 246
    move-result v2

    .line 247
    iget v5, v8, Lcom/android/server/pm/dex/DexManager;->mCriticalBatteryLevel:I

    .line 248
    .line 249
    if-le v2, v5, :cond_d

    .line 250
    .line 251
    :cond_c
    iget-object v2, v8, Lcom/android/server/pm/dex/DexManager;->mPowerManager:Landroid/os/PowerManager;

    .line 252
    .line 253
    if-eqz v2, :cond_e

    .line 254
    .line 255
    invoke-virtual {v2}, Landroid/os/PowerManager;->getCurrentThermalStatus()I

    .line 256
    .line 257
    .line 258
    move-result v2

    .line 259
    if-lt v2, v15, :cond_e

    .line 260
    .line 261
    :cond_d
    const/4 v2, 0x1

    .line 262
    goto :goto_8

    .line 263
    :cond_e
    const/4 v2, 0x0

    .line 264
    :goto_8
    if-eqz v12, :cond_13

    .line 265
    .line 266
    const/4 v5, 0x1

    .line 267
    if-eq v12, v5, :cond_14

    .line 268
    .line 269
    const/4 v5, 0x2

    .line 270
    if-eq v12, v5, :cond_11

    .line 271
    .line 272
    if-ne v12, v15, :cond_10

    .line 273
    .line 274
    if-eqz v2, :cond_f

    .line 275
    .line 276
    const/16 v13, 0x8

    .line 277
    .line 278
    goto :goto_9

    .line 279
    :cond_f
    move v13, v7

    .line 280
    goto :goto_9

    .line 281
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 282
    .line 283
    const-string v1, "Invalid installation scenario"

    .line 284
    .line 285
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    throw v0

    .line 289
    :cond_11
    if-eqz v2, :cond_12

    .line 290
    .line 291
    const/4 v13, 0x7

    .line 292
    goto :goto_9

    .line 293
    :cond_12
    const/4 v13, 0x5

    .line 294
    goto :goto_9

    .line 295
    :cond_13
    move v13, v15

    .line 296
    :cond_14
    :goto_9
    iget-object v2, v9, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 297
    .line 298
    new-instance v5, Lcom/android/server/pm/dex/DexoptOptions;

    .line 299
    .line 300
    invoke-direct {v5, v13, v11, v10}, Lcom/android/server/pm/dex/DexoptOptions;-><init>(IILjava/lang/String;)V

    .line 301
    .line 302
    .line 303
    iget-object v7, v6, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    .line 304
    .line 305
    if-eqz v7, :cond_15

    .line 306
    .line 307
    iget-object v12, v7, Lcom/android/server/pm/InstallArgs;->mDexoptCompilerFilter:Ljava/lang/String;

    .line 308
    .line 309
    goto :goto_a

    .line 310
    :cond_15
    const/4 v12, 0x0

    .line 311
    :goto_a
    if-eqz v12, :cond_17

    .line 312
    .line 313
    if-eqz v7, :cond_16

    .line 314
    .line 315
    iget-object v12, v7, Lcom/android/server/pm/InstallArgs;->mDexoptCompilerFilter:Ljava/lang/String;

    .line 316
    .line 317
    move-object/from16 v24, v12

    .line 318
    .line 319
    goto :goto_b

    .line 320
    :cond_16
    const/16 v24, 0x0

    .line 321
    .line 322
    :goto_b
    new-instance v2, Lcom/android/server/pm/dex/DexoptOptions;

    .line 323
    .line 324
    const/16 v25, 0x0

    .line 325
    .line 326
    move-object/from16 v20, v2

    .line 327
    .line 328
    move/from16 v21, v13

    .line 329
    .line 330
    move/from16 v22, v11

    .line 331
    .line 332
    move-object/from16 v23, v10

    .line 333
    .line 334
    invoke-direct/range {v20 .. v25}, Lcom/android/server/pm/dex/DexoptOptions;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    .line 336
    .line 337
    goto :goto_c

    .line 338
    :cond_17
    if-eqz v2, :cond_18

    .line 339
    .line 340
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->isDebuggable()Z

    .line 341
    .line 342
    .line 343
    move-result v2

    .line 344
    if-eqz v2, :cond_18

    .line 345
    .line 346
    const-string/jumbo v24, "skip"

    .line 347
    .line 348
    .line 349
    new-instance v2, Lcom/android/server/pm/dex/DexoptOptions;

    .line 350
    .line 351
    const/16 v25, 0x0

    .line 352
    .line 353
    move-object/from16 v20, v2

    .line 354
    .line 355
    move/from16 v21, v13

    .line 356
    .line 357
    move/from16 v22, v11

    .line 358
    .line 359
    move-object/from16 v23, v10

    .line 360
    .line 361
    invoke-direct/range {v20 .. v25}, Lcom/android/server/pm/dex/DexoptOptions;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    .line 363
    .line 364
    goto :goto_c

    .line 365
    :cond_18
    move-object v2, v5

    .line 366
    :goto_c
    iget-object v5, v1, Lcom/android/server/pm/InstallPackageHelper;->mContext:Landroid/content/Context;

    .line 367
    .line 368
    iget v7, v6, Lcom/android/server/pm/InstallRequest;->mScanFlags:I

    .line 369
    .line 370
    const/high16 v8, 0x4000000

    .line 371
    .line 372
    and-int v9, v7, v8

    .line 373
    .line 374
    if-eqz v9, :cond_19

    .line 375
    .line 376
    const/4 v9, 0x1

    .line 377
    goto :goto_d

    .line 378
    :cond_19
    const/4 v9, 0x0

    .line 379
    :goto_d
    and-int/lit16 v7, v7, 0x2000

    .line 380
    .line 381
    if-eqz v7, :cond_1a

    .line 382
    .line 383
    const/4 v7, 0x1

    .line 384
    goto :goto_e

    .line 385
    :cond_1a
    const/4 v7, 0x0

    .line 386
    :goto_e
    invoke-virtual {v6}, Lcom/android/server/pm/InstallRequest;->getScannedPackageSetting()Lcom/android/server/pm/PackageSetting;

    .line 387
    .line 388
    .line 389
    move-result-object v10

    .line 390
    iget-object v11, v10, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    .line 391
    .line 392
    iget-object v12, v10, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 393
    .line 394
    iget-object v10, v10, Lcom/android/server/pm/PackageSetting;->mPathString:Ljava/lang/String;

    .line 395
    .line 396
    invoke-static {v10}, Landroid/os/incremental/IncrementalManager;->isIncrementalPath(Ljava/lang/String;)Z

    .line 397
    .line 398
    .line 399
    move-result v10

    .line 400
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->recoverabilityDetection()Z

    .line 401
    .line 402
    .line 403
    move-result v13

    .line 404
    if-eqz v13, :cond_1c

    .line 405
    .line 406
    iget-object v13, v6, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    .line 407
    .line 408
    if-eqz v13, :cond_1c

    .line 409
    .line 410
    iget v13, v13, Lcom/android/server/pm/InstallArgs;->mInstallReason:I

    .line 411
    .line 412
    const/4 v15, 0x5

    .line 413
    if-ne v13, v15, :cond_1c

    .line 414
    .line 415
    invoke-virtual {v6}, Lcom/android/server/pm/InstallRequest;->getInstallSource()Lcom/android/server/pm/InstallSource;

    .line 416
    .line 417
    .line 418
    move-result-object v13

    .line 419
    iget-object v13, v13, Lcom/android/server/pm/InstallSource;->mInitiatingPackageName:Ljava/lang/String;

    .line 420
    .line 421
    const-string v15, "android"

    .line 422
    .line 423
    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 424
    .line 425
    .line 426
    move-result v13

    .line 427
    if-nez v13, :cond_1b

    .line 428
    .line 429
    goto :goto_f

    .line 430
    :cond_1b
    const/4 v13, 0x0

    .line 431
    goto :goto_10

    .line 432
    :cond_1c
    :goto_f
    const/4 v13, 0x1

    .line 433
    :goto_10
    sget-boolean v15, Lcom/android/server/apphibernation/AppHibernationService;->sIsServiceEnabled:Z

    .line 434
    .line 435
    const-string v8, "PackageManager"

    .line 436
    .line 437
    if-eqz v15, :cond_1d

    .line 438
    .line 439
    const-class v15, Lcom/android/server/apphibernation/AppHibernationService$LocalService;

    .line 440
    .line 441
    invoke-static {v15}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 442
    .line 443
    .line 444
    move-result-object v15

    .line 445
    check-cast v15, Lcom/android/server/apphibernation/AppHibernationService$LocalService;

    .line 446
    .line 447
    iget-object v15, v15, Lcom/android/server/apphibernation/AppHibernationService$LocalService;->mService:Lcom/android/server/apphibernation/AppHibernationService;

    .line 448
    .line 449
    invoke-virtual {v15, v11}, Lcom/android/server/apphibernation/AppHibernationService;->isHibernatingGlobally(Ljava/lang/String;)Z

    .line 450
    .line 451
    .line 452
    move-result v15

    .line 453
    move-object/from16 v22, v4

    .line 454
    .line 455
    if-eqz v15, :cond_1e

    .line 456
    .line 457
    new-instance v4, Ljava/lang/StringBuilder;

    .line 458
    .line 459
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 460
    .line 461
    .line 462
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    .line 464
    .line 465
    const-string v11, ", hibernated during installation"

    .line 466
    .line 467
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    .line 469
    .line 470
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 471
    .line 472
    .line 473
    move-result-object v4

    .line 474
    invoke-static {v8, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    .line 476
    .line 477
    goto :goto_11

    .line 478
    :cond_1d
    move-object/from16 v22, v4

    .line 479
    .line 480
    const/4 v15, 0x0

    .line 481
    :cond_1e
    :goto_11
    invoke-virtual {v6}, Lcom/android/server/pm/InstallRequest;->getInstallFlags()I

    .line 482
    .line 483
    .line 484
    move-result v4

    .line 485
    const/high16 v11, 0x4000000

    .line 486
    .line 487
    and-int/2addr v4, v11

    .line 488
    if-eqz v4, :cond_1f

    .line 489
    .line 490
    const/4 v4, 0x1

    .line 491
    goto :goto_12

    .line 492
    :cond_1f
    const/4 v4, 0x0

    .line 493
    :goto_12
    iget v11, v2, Lcom/android/server/pm/dex/DexoptOptions;->mCompilationReason:I

    .line 494
    .line 495
    move-object/from16 v21, v2

    .line 496
    .line 497
    const/4 v2, 0x3

    .line 498
    if-ne v11, v2, :cond_20

    .line 499
    .line 500
    const-string/jumbo v2, "persist.sys.app_install_boost"

    .line 501
    .line 502
    .line 503
    const/4 v11, 0x0

    .line 504
    invoke-static {v2, v11}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 505
    .line 506
    .line 507
    move-result v2

    .line 508
    if-eqz v2, :cond_20

    .line 509
    .line 510
    const/4 v2, 0x1

    .line 511
    goto :goto_13

    .line 512
    :cond_20
    const/4 v2, 0x0

    .line 513
    :goto_13
    if-eqz v2, :cond_21

    .line 514
    .line 515
    const-string v11, "System is busy state and dexopt skipped!"

    .line 516
    .line 517
    invoke-static {v8, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    .line 519
    .line 520
    :cond_21
    if-eqz v7, :cond_22

    .line 521
    .line 522
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 523
    .line 524
    .line 525
    move-result-object v5

    .line 526
    const-string v7, "instant_app_dexopt_enabled"

    .line 527
    .line 528
    const/4 v11, 0x0

    .line 529
    invoke-static {v5, v7, v11}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 530
    .line 531
    .line 532
    move-result v5

    .line 533
    if-eqz v5, :cond_23

    .line 534
    .line 535
    :cond_22
    if-eqz v12, :cond_23

    .line 536
    .line 537
    if-nez v10, :cond_23

    .line 538
    .line 539
    if-nez v15, :cond_23

    .line 540
    .line 541
    if-nez v4, :cond_23

    .line 542
    .line 543
    if-nez v2, :cond_23

    .line 544
    .line 545
    if-nez v9, :cond_23

    .line 546
    .line 547
    if-eqz v13, :cond_23

    .line 548
    .line 549
    const/4 v5, 0x1

    .line 550
    goto :goto_14

    .line 551
    :cond_23
    const/4 v5, 0x0

    .line 552
    :goto_14
    if-eqz v4, :cond_24

    .line 553
    .line 554
    const-string v2, "Skip dexopt by request"

    .line 555
    .line 556
    invoke-static {v8, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    .line 558
    .line 559
    goto :goto_15

    .line 560
    :cond_24
    if-nez v5, :cond_25

    .line 561
    .line 562
    const-string v2, "Skip dexopt"

    .line 563
    .line 564
    invoke-static {v8, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    .line 566
    .line 567
    :cond_25
    :goto_15
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->SYSFW_APP_SPEG:Z

    .line 568
    .line 569
    if-eqz v2, :cond_5a

    .line 570
    .line 571
    sget-boolean v2, Lcom/android/server/pm/SpegService;->SPEG_DISABLE_LAUNCH:Z

    .line 572
    .line 573
    if-nez v2, :cond_5a

    .line 574
    .line 575
    iget-object v2, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 576
    .line 577
    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSpeg:Lcom/android/server/pm/SpegService;

    .line 578
    .line 579
    if-eqz v2, :cond_5a

    .line 580
    .line 581
    const/4 v7, 0x1

    .line 582
    xor-int/lit8 v8, v5, 0x1

    .line 583
    .line 584
    iget-object v7, v2, Lcom/android/server/pm/SpegService;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 585
    .line 586
    const-string v9, "SPEG"

    .line 587
    .line 588
    if-nez v7, :cond_26

    .line 589
    .line 590
    const-string v0, "Feature is disabled due to service is not inited"

    .line 591
    .line 592
    invoke-static {v9, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    .line 594
    .line 595
    goto/16 :goto_34

    .line 596
    .line 597
    :cond_26
    iget-object v7, v0, Lcom/android/server/pm/ReconciledPackage;->mInstallRequest:Lcom/android/server/pm/InstallRequest;

    .line 598
    .line 599
    iget-boolean v10, v7, Lcom/android/server/pm/InstallRequest;->mReplace:Z

    .line 600
    .line 601
    if-eqz v10, :cond_27

    .line 602
    .line 603
    const-string v0, "Feature is disabled for existing app"

    .line 604
    .line 605
    invoke-static {v9, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    .line 607
    .line 608
    goto/16 :goto_34

    .line 609
    .line 610
    :cond_27
    sget-boolean v10, Lcom/android/server/pm/SpegService;->FORCE_SPEG:Z

    .line 611
    .line 612
    if-eqz v10, :cond_28

    .line 613
    .line 614
    goto/16 :goto_1c

    .line 615
    .line 616
    :cond_28
    if-eqz v8, :cond_29

    .line 617
    .line 618
    const-string v0, "Feature is disabled due to dexopt skipped"

    .line 619
    .line 620
    invoke-static {v9, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    .line 622
    .line 623
    goto/16 :goto_34

    .line 624
    .line 625
    :cond_29
    const-string/jumbo v8, "sys.dexopt.ctrl"

    .line 626
    .line 627
    .line 628
    const/4 v10, 0x0

    .line 629
    invoke-static {v8, v10}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 630
    .line 631
    .line 632
    move-result v8

    .line 633
    if-eqz v8, :cond_2a

    .line 634
    .line 635
    const-string v0, "Feature is disabled by high temperature"

    .line 636
    .line 637
    invoke-static {v9, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    .line 639
    .line 640
    goto/16 :goto_34

    .line 641
    .line 642
    :cond_2a
    invoke-virtual {v7}, Lcom/android/server/pm/InstallRequest;->getScannedPackageSetting()Lcom/android/server/pm/PackageSetting;

    .line 643
    .line 644
    .line 645
    move-result-object v8

    .line 646
    iget-object v8, v8, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 647
    .line 648
    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getMetaData()Landroid/os/Bundle;

    .line 649
    .line 650
    .line 651
    move-result-object v10

    .line 652
    if-eqz v10, :cond_2b

    .line 653
    .line 654
    const-string v12, "com.samsung.android.speg.disabled"

    .line 655
    .line 656
    const/4 v13, 0x0

    .line 657
    invoke-virtual {v10, v12, v13}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 658
    .line 659
    .line 660
    move-result v10

    .line 661
    if-eqz v10, :cond_2b

    .line 662
    .line 663
    const-string v0, "Feature is disabled in app manifest"

    .line 664
    .line 665
    invoke-static {v9, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    .line 667
    .line 668
    goto/16 :goto_34

    .line 669
    .line 670
    :cond_2b
    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 671
    .line 672
    .line 673
    move-result-object v10

    .line 674
    iget-object v12, v2, Lcom/android/server/pm/SpegService;->mPrevInstalledPkg:Ljava/lang/String;

    .line 675
    .line 676
    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 677
    .line 678
    .line 679
    move-result v12

    .line 680
    if-eqz v12, :cond_2c

    .line 681
    .line 682
    const-string v0, "Feature is disabled for reinstalled apps"

    .line 683
    .line 684
    invoke-static {v9, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    .line 686
    .line 687
    const/4 v12, 0x0

    .line 688
    iput-object v12, v2, Lcom/android/server/pm/SpegService;->mPrevInstalledPkg:Ljava/lang/String;

    .line 689
    .line 690
    goto/16 :goto_34

    .line 691
    .line 692
    :cond_2c
    const/4 v12, 0x0

    .line 693
    invoke-virtual {v7}, Lcom/android/server/pm/InstallRequest;->getScannedPackageSetting()Lcom/android/server/pm/PackageSetting;

    .line 694
    .line 695
    .line 696
    move-result-object v13

    .line 697
    invoke-virtual {v13}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    .line 698
    .line 699
    .line 700
    move-result v15

    .line 701
    if-nez v15, :cond_2d

    .line 702
    .line 703
    invoke-virtual {v13}, Lcom/android/server/pm/PackageSetting;->isSystemExt()Z

    .line 704
    .line 705
    .line 706
    move-result v15

    .line 707
    if-nez v15, :cond_2d

    .line 708
    .line 709
    invoke-virtual {v13}, Lcom/android/server/pm/PackageSetting;->isVendor()Z

    .line 710
    .line 711
    .line 712
    move-result v15

    .line 713
    if-nez v15, :cond_2d

    .line 714
    .line 715
    invoke-virtual {v13}, Lcom/android/server/pm/PackageSetting;->isOem()Z

    .line 716
    .line 717
    .line 718
    move-result v15

    .line 719
    if-nez v15, :cond_2d

    .line 720
    .line 721
    invoke-virtual {v13}, Lcom/android/server/pm/PackageSetting;->isOdm()Z

    .line 722
    .line 723
    .line 724
    move-result v15

    .line 725
    if-nez v15, :cond_2d

    .line 726
    .line 727
    invoke-virtual {v13}, Lcom/android/server/pm/PackageSetting;->isPrivileged()Z

    .line 728
    .line 729
    .line 730
    move-result v13

    .line 731
    if-nez v13, :cond_2d

    .line 732
    .line 733
    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->isSignedWithPlatformKey()Z

    .line 734
    .line 735
    .line 736
    move-result v13

    .line 737
    if-eqz v13, :cond_2e

    .line 738
    .line 739
    :cond_2d
    move-object/from16 v17, v3

    .line 740
    .line 741
    move/from16 v25, v5

    .line 742
    .line 743
    move-object/from16 v39, v6

    .line 744
    .line 745
    const/4 v5, 0x0

    .line 746
    goto/16 :goto_33

    .line 747
    .line 748
    :cond_2e
    invoke-virtual {v2, v10}, Lcom/android/server/ProfileService;->isPackageBlockListed(Ljava/lang/String;)Z

    .line 749
    .line 750
    .line 751
    move-result v13

    .line 752
    if-eqz v13, :cond_2f

    .line 753
    .line 754
    const-string v0, "Feature is disabled for package "

    .line 755
    .line 756
    invoke-virtual {v0, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 757
    .line 758
    .line 759
    move-result-object v0

    .line 760
    invoke-static {v9, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    .line 762
    .line 763
    goto/16 :goto_34

    .line 764
    .line 765
    :cond_2f
    const-class v13, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    .line 766
    .line 767
    invoke-static {v13}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 768
    .line 769
    .line 770
    move-result-object v13

    .line 771
    check-cast v13, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    .line 772
    .line 773
    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    .line 774
    .line 775
    .line 776
    move-result-object v15

    .line 777
    new-instance v12, Ljava/lang/StringBuilder;

    .line 778
    .line 779
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 780
    .line 781
    .line 782
    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 783
    .line 784
    .line 785
    move-result-object v4

    .line 786
    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 787
    .line 788
    .line 789
    const-string v4, "."

    .line 790
    .line 791
    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 792
    .line 793
    .line 794
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 795
    .line 796
    .line 797
    move-result-object v4

    .line 798
    const/4 v12, 0x0

    .line 799
    :goto_16
    invoke-interface {v15}, Ljava/util/List;->size()I

    .line 800
    .line 801
    .line 802
    move-result v11

    .line 803
    if-ge v12, v11, :cond_34

    .line 804
    .line 805
    invoke-interface {v15, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 806
    .line 807
    .line 808
    move-result-object v11

    .line 809
    check-cast v11, Lcom/android/internal/pm/pkg/component/ParsedPermission;

    .line 810
    .line 811
    if-nez v11, :cond_31

    .line 812
    .line 813
    move-object/from16 v25, v15

    .line 814
    .line 815
    :cond_30
    :goto_17
    const/4 v11, 0x1

    .line 816
    goto :goto_19

    .line 817
    :cond_31
    move-object/from16 v25, v15

    .line 818
    .line 819
    invoke-interface {v11}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getName()Ljava/lang/String;

    .line 820
    .line 821
    .line 822
    move-result-object v15

    .line 823
    invoke-virtual {v15, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 824
    .line 825
    .line 826
    move-result v15

    .line 827
    if-eqz v15, :cond_32

    .line 828
    .line 829
    :goto_18
    goto :goto_17

    .line 830
    :cond_32
    invoke-interface {v11}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getName()Ljava/lang/String;

    .line 831
    .line 832
    .line 833
    move-result-object v11

    .line 834
    iget-object v15, v13, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    .line 835
    .line 836
    iget-object v15, v15, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionManagerServiceImpl:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    .line 837
    .line 838
    invoke-interface {v15, v11}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->getPermissionTEMP(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    .line 839
    .line 840
    .line 841
    move-result-object v11

    .line 842
    if-nez v11, :cond_33

    .line 843
    .line 844
    goto :goto_18

    .line 845
    :cond_33
    iget-object v11, v11, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 846
    .line 847
    iget v11, v11, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 848
    .line 849
    and-int/lit8 v11, v11, 0x10

    .line 850
    .line 851
    if-eqz v11, :cond_30

    .line 852
    .line 853
    const-string v0, "Feature is disabled for privileged apps"

    .line 854
    .line 855
    invoke-static {v9, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    .line 857
    .line 858
    goto/16 :goto_34

    .line 859
    .line 860
    :goto_19
    add-int/2addr v12, v11

    .line 861
    move-object/from16 v15, v25

    .line 862
    .line 863
    goto :goto_16

    .line 864
    :cond_34
    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getUsesPermissions()Ljava/util/List;

    .line 865
    .line 866
    .line 867
    move-result-object v4

    .line 868
    const/4 v11, 0x0

    .line 869
    :goto_1a
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 870
    .line 871
    .line 872
    move-result v12

    .line 873
    if-ge v11, v12, :cond_36

    .line 874
    .line 875
    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 876
    .line 877
    .line 878
    move-result-object v12

    .line 879
    check-cast v12, Lcom/android/internal/pm/pkg/component/ParsedUsesPermission;

    .line 880
    .line 881
    invoke-interface {v12}, Lcom/android/internal/pm/pkg/component/ParsedUsesPermission;->getName()Ljava/lang/String;

    .line 882
    .line 883
    .line 884
    move-result-object v12

    .line 885
    const-string v13, "com.samsung.android.knox.permission"

    .line 886
    .line 887
    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 888
    .line 889
    .line 890
    move-result v12

    .line 891
    if-eqz v12, :cond_35

    .line 892
    .line 893
    const-string v0, "Feature is disabled for apps with specific uses-permission"

    .line 894
    .line 895
    invoke-static {v9, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    .line 897
    .line 898
    goto/16 :goto_34

    .line 899
    .line 900
    :cond_35
    const/4 v12, 0x1

    .line 901
    add-int/2addr v11, v12

    .line 902
    goto :goto_1a

    .line 903
    :cond_36
    iget-object v4, v2, Lcom/android/server/pm/SpegService;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 904
    .line 905
    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    .line 906
    .line 907
    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    .line 908
    .line 909
    .line 910
    move-result v11

    .line 911
    iget-object v4, v4, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    .line 912
    .line 913
    const-string v12, "android.permission.SET_WALLPAPER"

    .line 914
    .line 915
    const/4 v13, 0x0

    .line 916
    invoke-virtual {v4, v11, v12, v13}, Lcom/android/server/pm/permission/PermissionManagerService;->checkUidPermission(ILjava/lang/String;I)I

    .line 917
    .line 918
    .line 919
    move-result v4

    .line 920
    if-nez v4, :cond_37

    .line 921
    .line 922
    const-string v0, "Feature is disabled due to SET_WALLPAPER permission"

    .line 923
    .line 924
    invoke-static {v9, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    .line 926
    .line 927
    goto/16 :goto_34

    .line 928
    .line 929
    :cond_37
    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getBaseApkPath()Ljava/lang/String;

    .line 930
    .line 931
    .line 932
    move-result-object v4

    .line 933
    const/4 v11, 0x5

    .line 934
    invoke-virtual {v2, v11, v4}, Lcom/android/server/ProfileService;->apkHasNumOfDexFiles(ILjava/lang/String;)Z

    .line 935
    .line 936
    .line 937
    move-result v12

    .line 938
    const-string v11, "Feature is disabled for "

    .line 939
    .line 940
    if-eqz v12, :cond_38

    .line 941
    .line 942
    const-string v0, " as it has more than 4 dex files"

    .line 943
    .line 944
    invoke-static {v11, v10, v0, v9}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 945
    .line 946
    .line 947
    goto/16 :goto_34

    .line 948
    .line 949
    :cond_38
    const-string v12, "com.sec.android.easyMover"

    .line 950
    .line 951
    invoke-virtual {v7}, Lcom/android/server/pm/InstallRequest;->getInstallerPackageName()Ljava/lang/String;

    .line 952
    .line 953
    .line 954
    move-result-object v7

    .line 955
    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 956
    .line 957
    .line 958
    move-result v7

    .line 959
    if-eqz v7, :cond_39

    .line 960
    .line 961
    const-string v0, "Feature is disabled for smart switch installer"

    .line 962
    .line 963
    invoke-static {v9, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    .line 965
    .line 966
    goto/16 :goto_34

    .line 967
    .line 968
    :cond_39
    iget-boolean v7, v2, Lcom/android/server/pm/SpegService;->mBlockSpegInstallation:Z

    .line 969
    .line 970
    if-eqz v7, :cond_3a

    .line 971
    .line 972
    const-string v0, "Feature is disabled until SmartSwitch is finished"

    .line 973
    .line 974
    invoke-static {v9, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    .line 976
    .line 977
    goto/16 :goto_34

    .line 978
    .line 979
    :cond_3a
    iget-boolean v7, v2, Lcom/android/server/pm/SpegService;->mSetupWizardFinished:Z

    .line 980
    .line 981
    if-nez v7, :cond_3b

    .line 982
    .line 983
    const-string v0, "Feature is disabled until setup wizard is finished"

    .line 984
    .line 985
    invoke-static {v9, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    .line 987
    .line 988
    goto/16 :goto_34

    .line 989
    .line 990
    :cond_3b
    iget-object v7, v2, Lcom/android/server/pm/SpegService;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 991
    .line 992
    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mDefaultAppProvider:Lcom/android/server/pm/DefaultAppProvider;

    .line 993
    .line 994
    const/4 v12, 0x0

    .line 995
    invoke-virtual {v7, v12}, Lcom/android/server/pm/DefaultAppProvider;->getDefaultHome(I)Ljava/lang/String;

    .line 996
    .line 997
    .line 998
    move-result-object v7

    .line 999
    if-eqz v7, :cond_3c

    .line 1000
    .line 1001
    const-string v12, "com.sec.android.app.kidshome"

    .line 1002
    .line 1003
    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1004
    .line 1005
    .line 1006
    move-result v7

    .line 1007
    if-eqz v7, :cond_3c

    .line 1008
    .line 1009
    const-string v0, " due to KidsHome"

    .line 1010
    .line 1011
    invoke-static {v11, v10, v0, v9}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1012
    .line 1013
    .line 1014
    goto/16 :goto_34

    .line 1015
    .line 1016
    :cond_3c
    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getSharedUserId()Ljava/lang/String;

    .line 1017
    .line 1018
    .line 1019
    move-result-object v7

    .line 1020
    if-eqz v7, :cond_3d

    .line 1021
    .line 1022
    const-string v0, "Feature is disabled for shared package"

    .line 1023
    .line 1024
    invoke-static {v9, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1025
    .line 1026
    .line 1027
    goto/16 :goto_34

    .line 1028
    .line 1029
    :cond_3d
    invoke-static {v9, v4}, Lcom/android/server/ProfileService;->checkSafeToCreateProfile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1030
    .line 1031
    .line 1032
    move-result v4

    .line 1033
    if-nez v4, :cond_3e

    .line 1034
    .line 1035
    goto/16 :goto_34

    .line 1036
    .line 1037
    :cond_3e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1038
    .line 1039
    .line 1040
    move-result-wide v7

    .line 1041
    iget-boolean v4, v2, Lcom/android/server/pm/SpegService;->mBlockContinualSpeg:Z

    .line 1042
    .line 1043
    if-eqz v4, :cond_40

    .line 1044
    .line 1045
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 1046
    .line 1047
    iget-wide v10, v2, Lcom/android/server/pm/SpegService;->mSpegBlockStartTime:J

    .line 1048
    .line 1049
    sub-long v10, v7, v10

    .line 1050
    .line 1051
    invoke-virtual {v4, v10, v11}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    .line 1052
    .line 1053
    .line 1054
    move-result-wide v10

    .line 1055
    long-to-int v4, v10

    .line 1056
    const/16 v10, 0x28

    .line 1057
    .line 1058
    if-ge v4, v10, :cond_3f

    .line 1059
    .line 1060
    const-string v0, "Disable SPEG due to continuous installation, blockedDuration: "

    .line 1061
    .line 1062
    const-string v2, " minutes"

    .line 1063
    .line 1064
    invoke-static {v4, v0, v2, v9}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1065
    .line 1066
    .line 1067
    const-string v0, "Feature is disabled because of continual launches limit"

    .line 1068
    .line 1069
    invoke-static {v9, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    .line 1071
    .line 1072
    goto/16 :goto_34

    .line 1073
    .line 1074
    :cond_3f
    const/4 v4, 0x0

    .line 1075
    iput-boolean v4, v2, Lcom/android/server/pm/SpegService;->mBlockContinualSpeg:Z

    .line 1076
    .line 1077
    iput v4, v2, Lcom/android/server/pm/SpegService;->mSpegLaunchesCount:I

    .line 1078
    .line 1079
    const-wide/16 v10, -0x1

    .line 1080
    .line 1081
    iput-wide v10, v2, Lcom/android/server/pm/SpegService;->mSpegBlockStartTime:J

    .line 1082
    .line 1083
    :cond_40
    iget v4, v2, Lcom/android/server/pm/SpegService;->mSpegLaunchesCount:I

    .line 1084
    .line 1085
    const/4 v10, 0x1

    .line 1086
    add-int/2addr v4, v10

    .line 1087
    const/4 v11, 0x5

    .line 1088
    if-lt v4, v11, :cond_42

    .line 1089
    .line 1090
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 1091
    .line 1092
    iget-wide v11, v2, Lcom/android/server/pm/SpegService;->mSpegFirstLaunchTime:J

    .line 1093
    .line 1094
    sub-long v11, v7, v11

    .line 1095
    .line 1096
    invoke-virtual {v4, v11, v12}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    .line 1097
    .line 1098
    .line 1099
    move-result-wide v11

    .line 1100
    long-to-int v4, v11

    .line 1101
    const/16 v11, 0xa

    .line 1102
    .line 1103
    if-ge v4, v11, :cond_41

    .line 1104
    .line 1105
    iput-boolean v10, v2, Lcom/android/server/pm/SpegService;->mBlockContinualSpeg:Z

    .line 1106
    .line 1107
    iput-wide v7, v2, Lcom/android/server/pm/SpegService;->mSpegBlockStartTime:J

    .line 1108
    .line 1109
    const/4 v11, 0x0

    .line 1110
    goto :goto_1b

    .line 1111
    :cond_41
    const/4 v11, 0x0

    .line 1112
    iput v11, v2, Lcom/android/server/pm/SpegService;->mSpegLaunchesCount:I

    .line 1113
    .line 1114
    goto :goto_1b

    .line 1115
    :cond_42
    const/4 v11, 0x0

    .line 1116
    if-le v4, v10, :cond_43

    .line 1117
    .line 1118
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 1119
    .line 1120
    iget-wide v12, v2, Lcom/android/server/pm/SpegService;->mSpegPrevLaunchTime:J

    .line 1121
    .line 1122
    sub-long v12, v7, v12

    .line 1123
    .line 1124
    invoke-virtual {v4, v12, v13}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    .line 1125
    .line 1126
    .line 1127
    move-result-wide v12

    .line 1128
    long-to-int v4, v12

    .line 1129
    const/4 v10, 0x3

    .line 1130
    if-le v4, v10, :cond_43

    .line 1131
    .line 1132
    iput v11, v2, Lcom/android/server/pm/SpegService;->mSpegLaunchesCount:I

    .line 1133
    .line 1134
    :cond_43
    :goto_1b
    iget v4, v2, Lcom/android/server/pm/SpegService;->mSpegLaunchesCount:I

    .line 1135
    .line 1136
    if-nez v4, :cond_44

    .line 1137
    .line 1138
    iput-wide v7, v2, Lcom/android/server/pm/SpegService;->mSpegFirstLaunchTime:J

    .line 1139
    .line 1140
    const-string v4, "Continual launches limit is reset"

    .line 1141
    .line 1142
    invoke-static {v9, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1143
    .line 1144
    .line 1145
    :cond_44
    iput-wide v7, v2, Lcom/android/server/pm/SpegService;->mSpegPrevLaunchTime:J

    .line 1146
    .line 1147
    iget v4, v2, Lcom/android/server/pm/SpegService;->mSpegLaunchesCount:I

    .line 1148
    .line 1149
    const/4 v7, 0x1

    .line 1150
    add-int/2addr v4, v7

    .line 1151
    iput v4, v2, Lcom/android/server/pm/SpegService;->mSpegLaunchesCount:I

    .line 1152
    .line 1153
    :goto_1c
    iget-object v2, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 1154
    .line 1155
    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSpeg:Lcom/android/server/pm/SpegService;

    .line 1156
    .line 1157
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1158
    .line 1159
    .line 1160
    const-string v4, "Failed to disable network connection for uid "

    .line 1161
    .line 1162
    const-string v7, "Package manager doesn\'t know the package: "

    .line 1163
    .line 1164
    const-string v8, "SPEG"

    .line 1165
    .line 1166
    const-string v9, "Started, SPEG v2.3.1"

    .line 1167
    .line 1168
    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1169
    .line 1170
    .line 1171
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 1172
    .line 1173
    .line 1174
    move-result-object v27

    .line 1175
    if-nez v27, :cond_45

    .line 1176
    .line 1177
    iget-object v0, v2, Lcom/android/server/ProfileService;->TAG:Ljava/lang/String;

    .line 1178
    .line 1179
    const-string v2, "Activity manager doesn\'t exist"

    .line 1180
    .line 1181
    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1182
    .line 1183
    .line 1184
    :goto_1d
    move-object/from16 v17, v3

    .line 1185
    .line 1186
    move/from16 v25, v5

    .line 1187
    .line 1188
    move-object/from16 v39, v6

    .line 1189
    .line 1190
    move-object/from16 v38, v14

    .line 1191
    .line 1192
    const/4 v5, 0x0

    .line 1193
    const/4 v11, 0x0

    .line 1194
    goto/16 :goto_2f

    .line 1195
    .line 1196
    :cond_45
    const-string/jumbo v8, "network_management"

    .line 1197
    .line 1198
    .line 1199
    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 1200
    .line 1201
    .line 1202
    move-result-object v8

    .line 1203
    invoke-static {v8}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    .line 1204
    .line 1205
    .line 1206
    move-result-object v8

    .line 1207
    if-nez v8, :cond_46

    .line 1208
    .line 1209
    const-string v0, "SPEG"

    .line 1210
    .line 1211
    const-string v2, "Network manager is not found"

    .line 1212
    .line 1213
    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1214
    .line 1215
    .line 1216
    goto :goto_1d

    .line 1217
    :cond_46
    iget-object v9, v0, Lcom/android/server/pm/ReconciledPackage;->mInstallRequest:Lcom/android/server/pm/InstallRequest;

    .line 1218
    .line 1219
    invoke-virtual {v9}, Lcom/android/server/pm/InstallRequest;->getScannedPackageSetting()Lcom/android/server/pm/PackageSetting;

    .line 1220
    .line 1221
    .line 1222
    move-result-object v0

    .line 1223
    iget-object v0, v0, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 1224
    .line 1225
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 1226
    .line 1227
    .line 1228
    move-result-object v10

    .line 1229
    iget-object v11, v2, Lcom/android/server/pm/SpegService;->mContext:Landroid/content/Context;

    .line 1230
    .line 1231
    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 1232
    .line 1233
    .line 1234
    move-result-object v11

    .line 1235
    invoke-virtual {v11, v10}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1236
    .line 1237
    .line 1238
    move-result-object v11

    .line 1239
    if-eqz v11, :cond_47

    .line 1240
    .line 1241
    const-string v12, "android.intent.category.LAUNCHER"

    .line 1242
    .line 1243
    invoke-virtual {v11, v12}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    .line 1244
    .line 1245
    .line 1246
    move-result v12

    .line 1247
    if-eqz v12, :cond_47

    .line 1248
    .line 1249
    invoke-virtual {v11}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 1250
    .line 1251
    .line 1252
    move-result-object v12

    .line 1253
    const-string v13, "android.intent.action.MAIN"

    .line 1254
    .line 1255
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1256
    .line 1257
    .line 1258
    move-result v12

    .line 1259
    if-nez v12, :cond_48

    .line 1260
    .line 1261
    :cond_47
    move-object/from16 v17, v3

    .line 1262
    .line 1263
    move/from16 v25, v5

    .line 1264
    .line 1265
    move-object/from16 v39, v6

    .line 1266
    .line 1267
    move-object/from16 v38, v14

    .line 1268
    .line 1269
    const/4 v5, 0x0

    .line 1270
    goto/16 :goto_2e

    .line 1271
    .line 1272
    :cond_48
    invoke-virtual {v11}, Landroid/content/Intent;->getType()Ljava/lang/String;

    .line 1273
    .line 1274
    .line 1275
    move-result-object v31

    .line 1276
    const/high16 v12, 0x40000000    # 2.0f

    .line 1277
    .line 1278
    invoke-virtual {v11, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1279
    .line 1280
    .line 1281
    const/high16 v12, 0x10000000

    .line 1282
    .line 1283
    invoke-virtual {v11, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1284
    .line 1285
    .line 1286
    const/high16 v12, 0x40000

    .line 1287
    .line 1288
    invoke-virtual {v11, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1289
    .line 1290
    .line 1291
    iget-object v12, v2, Lcom/android/server/pm/SpegService;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 1292
    .line 1293
    iget-object v12, v12, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 1294
    .line 1295
    sget-boolean v13, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 1296
    .line 1297
    monitor-enter v12

    .line 1298
    :try_start_0
    iget-object v13, v2, Lcom/android/server/pm/SpegService;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 1299
    .line 1300
    iget-object v13, v13, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 1301
    .line 1302
    iget-object v13, v13, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 1303
    .line 1304
    iget-object v13, v13, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    .line 1305
    .line 1306
    invoke-virtual {v13, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1307
    .line 1308
    .line 1309
    move-result-object v13

    .line 1310
    check-cast v13, Lcom/android/server/pm/PackageSetting;

    .line 1311
    .line 1312
    if-nez v13, :cond_49

    .line 1313
    .line 1314
    const-string v0, "SPEG"

    .line 1315
    .line 1316
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1317
    .line 1318
    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1319
    .line 1320
    .line 1321
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1322
    .line 1323
    .line 1324
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1325
    .line 1326
    .line 1327
    move-result-object v2

    .line 1328
    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1329
    .line 1330
    .line 1331
    monitor-exit v12

    .line 1332
    goto/16 :goto_1d

    .line 1333
    .line 1334
    :catchall_0
    move-exception v0

    .line 1335
    goto/16 :goto_2d

    .line 1336
    .line 1337
    :cond_49
    iget v7, v13, Lcom/android/server/pm/PackageSetting;->mAppId:I

    .line 1338
    .line 1339
    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1340
    invoke-virtual {v2, v7}, Lcom/android/server/pm/SpegService;->checkAppId(I)Z

    .line 1341
    .line 1342
    .line 1343
    move-result v12

    .line 1344
    if-nez v12, :cond_4a

    .line 1345
    .line 1346
    const-string v0, "SPEG"

    .line 1347
    .line 1348
    const-string v2, "Skip feature because of non-regular application id: "

    .line 1349
    .line 1350
    invoke-static {v7, v2, v0}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 1351
    .line 1352
    .line 1353
    goto/16 :goto_1d

    .line 1354
    .line 1355
    :cond_4a
    iput-object v10, v2, Lcom/android/server/pm/SpegService;->mPrevInstalledPkg:Ljava/lang/String;

    .line 1356
    .line 1357
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    .line 1358
    .line 1359
    .line 1360
    move-result v7

    .line 1361
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    .line 1362
    .line 1363
    .line 1364
    move-result-object v12

    .line 1365
    invoke-virtual {v12, v10, v7}, Landroid/hardware/display/DisplayManagerGlobal;->createSpegVirtualDisplay(Ljava/lang/String;I)Landroid/hardware/display/VirtualDisplay;

    .line 1366
    .line 1367
    .line 1368
    move-result-object v12

    .line 1369
    if-nez v12, :cond_4b

    .line 1370
    .line 1371
    const-string v0, "SPEG"

    .line 1372
    .line 1373
    const-string v2, "VirtualDisplay is not created"

    .line 1374
    .line 1375
    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1376
    .line 1377
    .line 1378
    goto/16 :goto_1d

    .line 1379
    .line 1380
    :cond_4b
    invoke-virtual {v12}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    .line 1381
    .line 1382
    .line 1383
    move-result-object v13

    .line 1384
    invoke-virtual {v13}, Landroid/view/Display;->getDisplayId()I

    .line 1385
    .line 1386
    .line 1387
    move-result v13

    .line 1388
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    .line 1389
    .line 1390
    .line 1391
    move-result-object v15

    .line 1392
    invoke-virtual {v15, v13}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    .line 1393
    .line 1394
    .line 1395
    move-object/from16 v17, v3

    .line 1396
    .line 1397
    const/4 v3, 0x1

    .line 1398
    invoke-virtual {v15, v3}, Landroid/app/ActivityOptions;->setPendingIntentCreatorBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;

    .line 1399
    .line 1400
    .line 1401
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1402
    .line 1403
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1404
    .line 1405
    .line 1406
    move/from16 v25, v5

    .line 1407
    .line 1408
    const/4 v1, 0x0

    .line 1409
    invoke-static {v1, v10}, Landroid/os/Environment;->getDataProfilesDePackageDirectory(ILjava/lang/String;)Ljava/io/File;

    .line 1410
    .line 1411
    .line 1412
    move-result-object v5

    .line 1413
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1414
    .line 1415
    .line 1416
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    .line 1417
    .line 1418
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1419
    .line 1420
    .line 1421
    const/4 v1, 0x0

    .line 1422
    invoke-static {v1}, Landroid/content/pm/dex/ArtManager;->getProfileName(Ljava/lang/String;)Ljava/lang/String;

    .line 1423
    .line 1424
    .line 1425
    move-result-object v5

    .line 1426
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1427
    .line 1428
    .line 1429
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1430
    .line 1431
    .line 1432
    move-result-object v1

    .line 1433
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1434
    .line 1435
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1436
    .line 1437
    .line 1438
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    .line 1439
    .line 1440
    .line 1441
    move-result-object v5

    .line 1442
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1443
    .line 1444
    .line 1445
    const-string v5, "/base.speg"

    .line 1446
    .line 1447
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1448
    .line 1449
    .line 1450
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    .line 1451
    .line 1452
    .line 1453
    move-result v5

    .line 1454
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1455
    .line 1456
    .line 1457
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1458
    .line 1459
    .line 1460
    move-result-object v3

    .line 1461
    invoke-static {}, Landroid/os/Binder;->allowBlockingForCurrentThread()V

    .line 1462
    .line 1463
    .line 1464
    :try_start_1
    invoke-virtual {v9}, Lcom/android/server/pm/InstallRequest;->closeFreezer()V

    .line 1465
    .line 1466
    .line 1467
    const/4 v5, 0x0

    .line 1468
    iput-object v5, v9, Lcom/android/server/pm/InstallRequest;->mFreezer:Lcom/android/server/pm/PackageFreezer;

    .line 1469
    .line 1470
    invoke-virtual {v2, v7, v13, v10}, Lcom/android/server/pm/SpegService;->setSpegInOpeartion(IILjava/lang/String;)V

    .line 1471
    .line 1472
    .line 1473
    const/4 v5, 0x1

    .line 1474
    invoke-virtual {v2, v7, v3, v5}, Lcom/android/server/pm/SpegService;->createOrDeleteMarkerFiles(ILjava/lang/String;Z)Z

    .line 1475
    .line 1476
    .line 1477
    move-result v26
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 1478
    if-eqz v26, :cond_52

    .line 1479
    .line 1480
    :try_start_2
    invoke-interface {v8, v7, v5}, Landroid/os/INetworkManagementService;->spegRestrictNetworkConnection(IZ)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 1481
    .line 1482
    .line 1483
    :try_start_3
    invoke-virtual {v12}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    .line 1484
    .line 1485
    .line 1486
    move-result-object v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 1487
    move-object/from16 v38, v14

    .line 1488
    .line 1489
    const/4 v5, 0x1

    .line 1490
    :goto_1e
    :try_start_4
    invoke-virtual {v4}, Landroid/view/Display;->getState()I

    .line 1491
    .line 1492
    .line 1493
    move-result v14
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 1494
    move-object/from16 v39, v6

    .line 1495
    .line 1496
    const/4 v6, 0x2

    .line 1497
    if-eq v14, v6, :cond_4d

    .line 1498
    .line 1499
    const/16 v6, 0x18

    .line 1500
    .line 1501
    if-gt v5, v6, :cond_4c

    .line 1502
    .line 1503
    move v6, v13

    .line 1504
    int-to-long v13, v5

    .line 1505
    :try_start_5
    invoke-static {v13, v14}, Landroid/os/SystemClock;->sleep(J)V

    .line 1506
    .line 1507
    .line 1508
    const/4 v13, 0x1

    .line 1509
    add-int/2addr v5, v13

    .line 1510
    move v13, v6

    .line 1511
    move-object/from16 v6, v39

    .line 1512
    .line 1513
    goto :goto_1e

    .line 1514
    :catchall_1
    move-exception v0

    .line 1515
    :goto_1f
    move-object v1, v0

    .line 1516
    const/4 v4, -0x1

    .line 1517
    goto/16 :goto_29

    .line 1518
    .line 1519
    :catch_0
    move-exception v0

    .line 1520
    :goto_20
    const/4 v4, -0x1

    .line 1521
    goto/16 :goto_24

    .line 1522
    .line 1523
    :cond_4c
    move v6, v13

    .line 1524
    new-instance v0, Lcom/android/server/pm/Installer$InstallerException;

    .line 1525
    .line 1526
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1527
    .line 1528
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1529
    .line 1530
    .line 1531
    const-string v5, "Failed to wait state on for "

    .line 1532
    .line 1533
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1534
    .line 1535
    .line 1536
    invoke-virtual {v4}, Landroid/view/Display;->getName()Ljava/lang/String;

    .line 1537
    .line 1538
    .line 1539
    move-result-object v4

    .line 1540
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1541
    .line 1542
    .line 1543
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1544
    .line 1545
    .line 1546
    move-result-object v1

    .line 1547
    invoke-direct {v0, v1}, Lcom/android/server/pm/Installer$InstallerException;-><init>(Ljava/lang/String;)V

    .line 1548
    .line 1549
    .line 1550
    throw v0

    .line 1551
    :cond_4d
    move v6, v13

    .line 1552
    const-string v13, "SPEG"

    .line 1553
    .line 1554
    new-instance v14, Ljava/lang/StringBuilder;

    .line 1555
    .line 1556
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 1557
    .line 1558
    .line 1559
    invoke-virtual {v4}, Landroid/view/Display;->getName()Ljava/lang/String;

    .line 1560
    .line 1561
    .line 1562
    move-result-object v4

    .line 1563
    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1564
    .line 1565
    .line 1566
    const-string v4, " state is on at iteration "

    .line 1567
    .line 1568
    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1569
    .line 1570
    .line 1571
    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1572
    .line 1573
    .line 1574
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1575
    .line 1576
    .line 1577
    move-result-object v4

    .line 1578
    invoke-static {v13, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1579
    .line 1580
    .line 1581
    const-string v29, "com.samsung.speg"

    .line 1582
    .line 1583
    invoke-virtual {v15}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    .line 1584
    .line 1585
    .line 1586
    move-result-object v37

    .line 1587
    const/16 v33, 0x0

    .line 1588
    .line 1589
    const/16 v34, 0x0

    .line 1590
    .line 1591
    const/16 v35, 0x0

    .line 1592
    .line 1593
    const/16 v36, 0x0

    .line 1594
    .line 1595
    const/16 v28, 0x0

    .line 1596
    .line 1597
    const/16 v32, 0x0

    .line 1598
    .line 1599
    move-object/from16 v30, v11

    .line 1600
    .line 1601
    invoke-interface/range {v27 .. v37}, Landroid/app/IActivityManager;->startActivity(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;)I

    .line 1602
    .line 1603
    .line 1604
    move-result v4

    .line 1605
    invoke-static {v4}, Landroid/app/ActivityManager;->isStartResultSuccessful(I)Z

    .line 1606
    .line 1607
    .line 1608
    move-result v5

    .line 1609
    if-eqz v5, :cond_51

    .line 1610
    .line 1611
    const-wide/16 v4, 0x7d0

    .line 1612
    .line 1613
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 1614
    .line 1615
    .line 1616
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getProcessName()Ljava/lang/String;

    .line 1617
    .line 1618
    .line 1619
    move-result-object v4

    .line 1620
    invoke-virtual {v2, v7, v4}, Lcom/android/server/pm/SpegService;->getPidOf(ILjava/lang/String;)I

    .line 1621
    .line 1622
    .line 1623
    move-result v4
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1624
    const/4 v5, -0x1

    .line 1625
    if-eq v4, v5, :cond_50

    .line 1626
    .line 1627
    :try_start_6
    const-string v5, "SPEG"

    .line 1628
    .line 1629
    new-instance v11, Ljava/lang/StringBuilder;

    .line 1630
    .line 1631
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 1632
    .line 1633
    .line 1634
    const-string v13, "Send signal to dump profiles in app, pid="

    .line 1635
    .line 1636
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1637
    .line 1638
    .line 1639
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1640
    .line 1641
    .line 1642
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1643
    .line 1644
    .line 1645
    move-result-object v11

    .line 1646
    invoke-static {v5, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1647
    .line 1648
    .line 1649
    const/16 v5, 0xa

    .line 1650
    .line 1651
    invoke-static {v4, v5}, Landroid/os/Process;->sendSignal(II)V

    .line 1652
    .line 1653
    .line 1654
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getBaseApkPath()Ljava/lang/String;

    .line 1655
    .line 1656
    .line 1657
    move-result-object v0

    .line 1658
    invoke-virtual {v2, v7, v0, v1}, Lcom/android/server/pm/SpegService;->storePrimaryProf(ILjava/lang/String;Ljava/lang/String;)Z

    .line 1659
    .line 1660
    .line 1661
    move-result v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1662
    iget-object v0, v2, Lcom/android/server/pm/SpegService;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 1663
    .line 1664
    const-string v30, "SPEG"

    .line 1665
    .line 1666
    const/16 v31, 0xd

    .line 1667
    .line 1668
    const/16 v29, 0x0

    .line 1669
    .line 1670
    move-object/from16 v27, v0

    .line 1671
    .line 1672
    move-object/from16 v28, v10

    .line 1673
    .line 1674
    move-object/from16 v32, v9

    .line 1675
    .line 1676
    invoke-virtual/range {v27 .. v32}, Lcom/android/server/pm/PackageManagerService;->freezePackage(Ljava/lang/String;ILjava/lang/String;ILcom/android/server/pm/InstallRequest;)Lcom/android/server/pm/PackageFreezer;

    .line 1677
    .line 1678
    .line 1679
    move-result-object v0

    .line 1680
    iput-object v0, v9, Lcom/android/server/pm/InstallRequest;->mFreezer:Lcom/android/server/pm/PackageFreezer;

    .line 1681
    .line 1682
    invoke-static {v4}, Lcom/android/server/pm/SpegService;->waitForProcessDeath(I)V

    .line 1683
    .line 1684
    .line 1685
    invoke-virtual {v12}, Landroid/hardware/display/VirtualDisplay;->release()V

    .line 1686
    .line 1687
    .line 1688
    iget-object v0, v2, Lcom/android/server/pm/SpegService;->mContext:Landroid/content/Context;

    .line 1689
    .line 1690
    const-class v4, Landroid/hardware/display/DisplayManager;

    .line 1691
    .line 1692
    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 1693
    .line 1694
    .line 1695
    move-result-object v0

    .line 1696
    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 1697
    .line 1698
    invoke-virtual {v0, v6}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    .line 1699
    .line 1700
    .line 1701
    move-result-object v0

    .line 1702
    if-eqz v0, :cond_4e

    .line 1703
    .line 1704
    const-string v0, "SPEG"

    .line 1705
    .line 1706
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1707
    .line 1708
    const-string v5, "Can\'t release "

    .line 1709
    .line 1710
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1711
    .line 1712
    .line 1713
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1714
    .line 1715
    .line 1716
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1717
    .line 1718
    .line 1719
    move-result-object v4

    .line 1720
    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1721
    .line 1722
    .line 1723
    :cond_4e
    const/4 v4, 0x0

    .line 1724
    invoke-virtual {v2, v7, v3, v4}, Lcom/android/server/pm/SpegService;->createOrDeleteMarkerFiles(ILjava/lang/String;Z)Z

    .line 1725
    .line 1726
    .line 1727
    move-result v0

    .line 1728
    if-nez v0, :cond_4f

    .line 1729
    .line 1730
    const-string v0, "SPEG"

    .line 1731
    .line 1732
    const-string v5, "SPEG can\'t delete "

    .line 1733
    .line 1734
    invoke-static {v5, v3, v0}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1735
    .line 1736
    .line 1737
    :cond_4f
    invoke-virtual {v2, v7, v10}, Lcom/android/server/pm/SpegService;->spegClearPackage(ILjava/lang/String;)V

    .line 1738
    .line 1739
    .line 1740
    :try_start_7
    invoke-interface {v8, v7, v4}, Landroid/os/INetworkManagementService;->spegRestrictNetworkConnection(IZ)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 1741
    .line 1742
    .line 1743
    goto :goto_21

    .line 1744
    :catch_1
    move-exception v0

    .line 1745
    move-object v3, v0

    .line 1746
    const-string v0, "SPEG"

    .line 1747
    .line 1748
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1749
    .line 1750
    const-string v5, "Failed to restore network connection for uid "

    .line 1751
    .line 1752
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1753
    .line 1754
    .line 1755
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1756
    .line 1757
    .line 1758
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1759
    .line 1760
    .line 1761
    move-result-object v4

    .line 1762
    invoke-static {v0, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1763
    .line 1764
    .line 1765
    :goto_21
    :try_start_8
    iget-object v0, v2, Lcom/android/server/pm/SpegService;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 1766
    .line 1767
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 1768
    .line 1769
    .line 1770
    move-result-object v3

    .line 1771
    const/4 v4, 0x0

    .line 1772
    const/4 v5, 0x1

    .line 1773
    invoke-virtual {v0, v4, v3, v10, v5}, Lcom/android/server/pm/PackageManagerService;->setPackageStoppedState(ILcom/android/server/pm/Computer;Ljava/lang/String;Z)V
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_2

    .line 1774
    .line 1775
    .line 1776
    :goto_22
    const/4 v3, -0x1

    .line 1777
    const/4 v4, 0x0

    .line 1778
    goto :goto_23

    .line 1779
    :catch_2
    move-exception v0

    .line 1780
    const-string v3, "SPEG"

    .line 1781
    .line 1782
    const-string v4, "Failed to set stopped state"

    .line 1783
    .line 1784
    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1785
    .line 1786
    .line 1787
    goto :goto_22

    .line 1788
    :goto_23
    invoke-virtual {v2, v3, v3, v4}, Lcom/android/server/pm/SpegService;->setSpegInOpeartion(IILjava/lang/String;)V

    .line 1789
    .line 1790
    .line 1791
    invoke-static {}, Landroid/os/Binder;->defaultBlockingForCurrentThread()V

    .line 1792
    .line 1793
    .line 1794
    goto/16 :goto_28

    .line 1795
    .line 1796
    :catchall_2
    move-exception v0

    .line 1797
    move-object v1, v0

    .line 1798
    goto/16 :goto_29

    .line 1799
    .line 1800
    :catch_3
    move-exception v0

    .line 1801
    goto/16 :goto_24

    .line 1802
    .line 1803
    :cond_50
    :try_start_9
    new-instance v0, Lcom/android/server/pm/Installer$InstallerException;

    .line 1804
    .line 1805
    const-string v1, "getPidOf failed"

    .line 1806
    .line 1807
    invoke-direct {v0, v1}, Lcom/android/server/pm/Installer$InstallerException;-><init>(Ljava/lang/String;)V

    .line 1808
    .line 1809
    .line 1810
    throw v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 1811
    :cond_51
    :try_start_a
    new-instance v0, Lcom/android/server/pm/Installer$InstallerException;

    .line 1812
    .line 1813
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1814
    .line 1815
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1816
    .line 1817
    .line 1818
    const-string v5, "Failed to start "

    .line 1819
    .line 1820
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1821
    .line 1822
    .line 1823
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1824
    .line 1825
    .line 1826
    const-string v5, ", res="

    .line 1827
    .line 1828
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1829
    .line 1830
    .line 1831
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1832
    .line 1833
    .line 1834
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1835
    .line 1836
    .line 1837
    move-result-object v1

    .line 1838
    invoke-direct {v0, v1}, Lcom/android/server/pm/Installer$InstallerException;-><init>(Ljava/lang/String;)V

    .line 1839
    .line 1840
    .line 1841
    throw v0

    .line 1842
    :catchall_3
    move-exception v0

    .line 1843
    move v6, v13

    .line 1844
    goto/16 :goto_1f

    .line 1845
    .line 1846
    :catch_4
    move-exception v0

    .line 1847
    move-object/from16 v39, v6

    .line 1848
    .line 1849
    move v6, v13

    .line 1850
    goto/16 :goto_20

    .line 1851
    .line 1852
    :catch_5
    move-exception v0

    .line 1853
    move-object/from16 v39, v6

    .line 1854
    .line 1855
    move v6, v13

    .line 1856
    move-object/from16 v38, v14

    .line 1857
    .line 1858
    goto/16 :goto_20

    .line 1859
    .line 1860
    :catch_6
    move-exception v0

    .line 1861
    move-object/from16 v39, v6

    .line 1862
    .line 1863
    move v6, v13

    .line 1864
    move-object/from16 v38, v14

    .line 1865
    .line 1866
    move-object v1, v0

    .line 1867
    new-instance v0, Lcom/android/server/pm/Installer$InstallerException;

    .line 1868
    .line 1869
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1870
    .line 1871
    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1872
    .line 1873
    .line 1874
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1875
    .line 1876
    .line 1877
    const-string v4, ": "

    .line 1878
    .line 1879
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1880
    .line 1881
    .line 1882
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 1883
    .line 1884
    .line 1885
    move-result-object v1

    .line 1886
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1887
    .line 1888
    .line 1889
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1890
    .line 1891
    .line 1892
    move-result-object v1

    .line 1893
    invoke-direct {v0, v1}, Lcom/android/server/pm/Installer$InstallerException;-><init>(Ljava/lang/String;)V

    .line 1894
    .line 1895
    .line 1896
    throw v0

    .line 1897
    :cond_52
    move-object/from16 v39, v6

    .line 1898
    .line 1899
    move v6, v13

    .line 1900
    move-object/from16 v38, v14

    .line 1901
    .line 1902
    new-instance v0, Lcom/android/server/pm/Installer$InstallerException;

    .line 1903
    .line 1904
    const-string v1, "createSpegMarkerFile failed"

    .line 1905
    .line 1906
    invoke-direct {v0, v1}, Lcom/android/server/pm/Installer$InstallerException;-><init>(Ljava/lang/String;)V

    .line 1907
    .line 1908
    .line 1909
    throw v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 1910
    :goto_24
    :try_start_b
    const-string v1, "SPEG"

    .line 1911
    .line 1912
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1913
    .line 1914
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1915
    .line 1916
    .line 1917
    const-string v11, "Cancel SPEG for "

    .line 1918
    .line 1919
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1920
    .line 1921
    .line 1922
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1923
    .line 1924
    .line 1925
    const-string v11, ": "

    .line 1926
    .line 1927
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1928
    .line 1929
    .line 1930
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 1931
    .line 1932
    .line 1933
    move-result-object v0

    .line 1934
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1935
    .line 1936
    .line 1937
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1938
    .line 1939
    .line 1940
    move-result-object v0

    .line 1941
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 1942
    .line 1943
    .line 1944
    iget-object v0, v2, Lcom/android/server/pm/SpegService;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 1945
    .line 1946
    const-string v30, "SPEG"

    .line 1947
    .line 1948
    const/16 v31, 0xd

    .line 1949
    .line 1950
    const/16 v29, 0x0

    .line 1951
    .line 1952
    move-object/from16 v27, v0

    .line 1953
    .line 1954
    move-object/from16 v28, v10

    .line 1955
    .line 1956
    move-object/from16 v32, v9

    .line 1957
    .line 1958
    invoke-virtual/range {v27 .. v32}, Lcom/android/server/pm/PackageManagerService;->freezePackage(Ljava/lang/String;ILjava/lang/String;ILcom/android/server/pm/InstallRequest;)Lcom/android/server/pm/PackageFreezer;

    .line 1959
    .line 1960
    .line 1961
    move-result-object v0

    .line 1962
    iput-object v0, v9, Lcom/android/server/pm/InstallRequest;->mFreezer:Lcom/android/server/pm/PackageFreezer;

    .line 1963
    .line 1964
    invoke-static {v4}, Lcom/android/server/pm/SpegService;->waitForProcessDeath(I)V

    .line 1965
    .line 1966
    .line 1967
    invoke-virtual {v12}, Landroid/hardware/display/VirtualDisplay;->release()V

    .line 1968
    .line 1969
    .line 1970
    iget-object v0, v2, Lcom/android/server/pm/SpegService;->mContext:Landroid/content/Context;

    .line 1971
    .line 1972
    const-class v1, Landroid/hardware/display/DisplayManager;

    .line 1973
    .line 1974
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 1975
    .line 1976
    .line 1977
    move-result-object v0

    .line 1978
    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 1979
    .line 1980
    invoke-virtual {v0, v6}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    .line 1981
    .line 1982
    .line 1983
    move-result-object v0

    .line 1984
    if-eqz v0, :cond_53

    .line 1985
    .line 1986
    const-string v0, "SPEG"

    .line 1987
    .line 1988
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1989
    .line 1990
    const-string v4, "Can\'t release "

    .line 1991
    .line 1992
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1993
    .line 1994
    .line 1995
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1996
    .line 1997
    .line 1998
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1999
    .line 2000
    .line 2001
    move-result-object v1

    .line 2002
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2003
    .line 2004
    .line 2005
    :cond_53
    const/4 v1, 0x0

    .line 2006
    invoke-virtual {v2, v7, v3, v1}, Lcom/android/server/pm/SpegService;->createOrDeleteMarkerFiles(ILjava/lang/String;Z)Z

    .line 2007
    .line 2008
    .line 2009
    move-result v0

    .line 2010
    if-nez v0, :cond_54

    .line 2011
    .line 2012
    const-string v0, "SPEG"

    .line 2013
    .line 2014
    const-string v4, "SPEG can\'t delete "

    .line 2015
    .line 2016
    invoke-static {v4, v3, v0}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2017
    .line 2018
    .line 2019
    :cond_54
    invoke-virtual {v2, v7, v10}, Lcom/android/server/pm/SpegService;->spegClearPackage(ILjava/lang/String;)V

    .line 2020
    .line 2021
    .line 2022
    :try_start_c
    invoke-interface {v8, v7, v1}, Landroid/os/INetworkManagementService;->spegRestrictNetworkConnection(IZ)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7

    .line 2023
    .line 2024
    .line 2025
    goto :goto_25

    .line 2026
    :catch_7
    move-exception v0

    .line 2027
    move-object v1, v0

    .line 2028
    const-string v0, "SPEG"

    .line 2029
    .line 2030
    new-instance v3, Ljava/lang/StringBuilder;

    .line 2031
    .line 2032
    const-string v4, "Failed to restore network connection for uid "

    .line 2033
    .line 2034
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2035
    .line 2036
    .line 2037
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2038
    .line 2039
    .line 2040
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2041
    .line 2042
    .line 2043
    move-result-object v3

    .line 2044
    invoke-static {v0, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2045
    .line 2046
    .line 2047
    :goto_25
    :try_start_d
    iget-object v0, v2, Lcom/android/server/pm/SpegService;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 2048
    .line 2049
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 2050
    .line 2051
    .line 2052
    move-result-object v1

    .line 2053
    const/4 v3, 0x0

    .line 2054
    const/4 v4, 0x1

    .line 2055
    invoke-virtual {v0, v3, v1, v10, v4}, Lcom/android/server/pm/PackageManagerService;->setPackageStoppedState(ILcom/android/server/pm/Computer;Ljava/lang/String;Z)V
    :try_end_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_d} :catch_8

    .line 2056
    .line 2057
    .line 2058
    :goto_26
    const/4 v1, -0x1

    .line 2059
    const/4 v3, 0x0

    .line 2060
    goto :goto_27

    .line 2061
    :catch_8
    move-exception v0

    .line 2062
    const-string v1, "SPEG"

    .line 2063
    .line 2064
    const-string v3, "Failed to set stopped state"

    .line 2065
    .line 2066
    invoke-static {v1, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2067
    .line 2068
    .line 2069
    goto :goto_26

    .line 2070
    :goto_27
    invoke-virtual {v2, v1, v1, v3}, Lcom/android/server/pm/SpegService;->setSpegInOpeartion(IILjava/lang/String;)V

    .line 2071
    .line 2072
    .line 2073
    invoke-static {}, Landroid/os/Binder;->defaultBlockingForCurrentThread()V

    .line 2074
    .line 2075
    .line 2076
    const/4 v1, 0x0

    .line 2077
    :goto_28
    const-string v0, "SPEG"

    .line 2078
    .line 2079
    const-string v2, "Finished"

    .line 2080
    .line 2081
    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2082
    .line 2083
    .line 2084
    move v11, v1

    .line 2085
    const/4 v5, 0x0

    .line 2086
    goto/16 :goto_2f

    .line 2087
    .line 2088
    :goto_29
    iget-object v0, v2, Lcom/android/server/pm/SpegService;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 2089
    .line 2090
    const-string v30, "SPEG"

    .line 2091
    .line 2092
    const/16 v31, 0xd

    .line 2093
    .line 2094
    const/16 v29, 0x0

    .line 2095
    .line 2096
    move-object/from16 v27, v0

    .line 2097
    .line 2098
    move-object/from16 v28, v10

    .line 2099
    .line 2100
    move-object/from16 v32, v9

    .line 2101
    .line 2102
    invoke-virtual/range {v27 .. v32}, Lcom/android/server/pm/PackageManagerService;->freezePackage(Ljava/lang/String;ILjava/lang/String;ILcom/android/server/pm/InstallRequest;)Lcom/android/server/pm/PackageFreezer;

    .line 2103
    .line 2104
    .line 2105
    move-result-object v0

    .line 2106
    iput-object v0, v9, Lcom/android/server/pm/InstallRequest;->mFreezer:Lcom/android/server/pm/PackageFreezer;

    .line 2107
    .line 2108
    invoke-static {v4}, Lcom/android/server/pm/SpegService;->waitForProcessDeath(I)V

    .line 2109
    .line 2110
    .line 2111
    invoke-virtual {v12}, Landroid/hardware/display/VirtualDisplay;->release()V

    .line 2112
    .line 2113
    .line 2114
    iget-object v0, v2, Lcom/android/server/pm/SpegService;->mContext:Landroid/content/Context;

    .line 2115
    .line 2116
    const-class v4, Landroid/hardware/display/DisplayManager;

    .line 2117
    .line 2118
    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 2119
    .line 2120
    .line 2121
    move-result-object v0

    .line 2122
    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 2123
    .line 2124
    invoke-virtual {v0, v6}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    .line 2125
    .line 2126
    .line 2127
    move-result-object v0

    .line 2128
    if-eqz v0, :cond_55

    .line 2129
    .line 2130
    const-string v0, "SPEG"

    .line 2131
    .line 2132
    new-instance v4, Ljava/lang/StringBuilder;

    .line 2133
    .line 2134
    const-string v5, "Can\'t release "

    .line 2135
    .line 2136
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2137
    .line 2138
    .line 2139
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2140
    .line 2141
    .line 2142
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2143
    .line 2144
    .line 2145
    move-result-object v4

    .line 2146
    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2147
    .line 2148
    .line 2149
    :cond_55
    const/4 v4, 0x0

    .line 2150
    invoke-virtual {v2, v7, v3, v4}, Lcom/android/server/pm/SpegService;->createOrDeleteMarkerFiles(ILjava/lang/String;Z)Z

    .line 2151
    .line 2152
    .line 2153
    move-result v0

    .line 2154
    if-nez v0, :cond_56

    .line 2155
    .line 2156
    const-string v0, "SPEG"

    .line 2157
    .line 2158
    const-string v5, "SPEG can\'t delete "

    .line 2159
    .line 2160
    invoke-static {v5, v3, v0}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2161
    .line 2162
    .line 2163
    :cond_56
    invoke-virtual {v2, v7, v10}, Lcom/android/server/pm/SpegService;->spegClearPackage(ILjava/lang/String;)V

    .line 2164
    .line 2165
    .line 2166
    :try_start_e
    invoke-interface {v8, v7, v4}, Landroid/os/INetworkManagementService;->spegRestrictNetworkConnection(IZ)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_9

    .line 2167
    .line 2168
    .line 2169
    goto :goto_2a

    .line 2170
    :catch_9
    move-exception v0

    .line 2171
    move-object v3, v0

    .line 2172
    const-string v0, "SPEG"

    .line 2173
    .line 2174
    new-instance v4, Ljava/lang/StringBuilder;

    .line 2175
    .line 2176
    const-string v5, "Failed to restore network connection for uid "

    .line 2177
    .line 2178
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2179
    .line 2180
    .line 2181
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2182
    .line 2183
    .line 2184
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2185
    .line 2186
    .line 2187
    move-result-object v4

    .line 2188
    invoke-static {v0, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2189
    .line 2190
    .line 2191
    :goto_2a
    :try_start_f
    iget-object v0, v2, Lcom/android/server/pm/SpegService;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 2192
    .line 2193
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 2194
    .line 2195
    .line 2196
    move-result-object v3

    .line 2197
    const/4 v4, 0x1

    .line 2198
    const/4 v5, 0x0

    .line 2199
    invoke-virtual {v0, v5, v3, v10, v4}, Lcom/android/server/pm/PackageManagerService;->setPackageStoppedState(ILcom/android/server/pm/Computer;Ljava/lang/String;Z)V
    :try_end_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f .. :try_end_f} :catch_a

    .line 2200
    .line 2201
    .line 2202
    :goto_2b
    const/4 v3, -0x1

    .line 2203
    const/4 v4, 0x0

    .line 2204
    goto :goto_2c

    .line 2205
    :catch_a
    move-exception v0

    .line 2206
    const-string v3, "SPEG"

    .line 2207
    .line 2208
    const-string v4, "Failed to set stopped state"

    .line 2209
    .line 2210
    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2211
    .line 2212
    .line 2213
    goto :goto_2b

    .line 2214
    :goto_2c
    invoke-virtual {v2, v3, v3, v4}, Lcom/android/server/pm/SpegService;->setSpegInOpeartion(IILjava/lang/String;)V

    .line 2215
    .line 2216
    .line 2217
    invoke-static {}, Landroid/os/Binder;->defaultBlockingForCurrentThread()V

    .line 2218
    .line 2219
    .line 2220
    throw v1

    .line 2221
    :goto_2d
    :try_start_10
    monitor-exit v12
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 2222
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 2223
    .line 2224
    throw v0

    .line 2225
    :goto_2e
    const-string v0, "SPEG"

    .line 2226
    .line 2227
    new-instance v1, Ljava/lang/StringBuilder;

    .line 2228
    .line 2229
    const-string v2, "Package "

    .line 2230
    .line 2231
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2232
    .line 2233
    .line 2234
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2235
    .line 2236
    .line 2237
    const-string v2, " doesn\'t have launchable intent"

    .line 2238
    .line 2239
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2240
    .line 2241
    .line 2242
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2243
    .line 2244
    .line 2245
    move-result-object v1

    .line 2246
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2247
    .line 2248
    .line 2249
    move v11, v5

    .line 2250
    :goto_2f
    if-eqz v11, :cond_5b

    .line 2251
    .line 2252
    invoke-virtual/range {v39 .. v39}, Lcom/android/server/pm/InstallRequest;->getInstallReason()I

    .line 2253
    .line 2254
    .line 2255
    move-result v0

    .line 2256
    const/4 v1, 0x2

    .line 2257
    if-eq v0, v1, :cond_58

    .line 2258
    .line 2259
    invoke-virtual/range {v39 .. v39}, Lcom/android/server/pm/InstallRequest;->getInstallReason()I

    .line 2260
    .line 2261
    .line 2262
    move-result v0

    .line 2263
    const/4 v1, 0x3

    .line 2264
    if-ne v0, v1, :cond_57

    .line 2265
    .line 2266
    goto :goto_30

    .line 2267
    :cond_57
    move v0, v5

    .line 2268
    goto :goto_31

    .line 2269
    :cond_58
    :goto_30
    const/4 v0, 0x1

    .line 2270
    :goto_31
    new-instance v2, Lcom/android/server/pm/dex/DexoptOptions;

    .line 2271
    .line 2272
    const-string/jumbo v12, "speed-profile"

    .line 2273
    .line 2274
    .line 2275
    if-eqz v0, :cond_59

    .line 2276
    .line 2277
    move/from16 v0, v16

    .line 2278
    .line 2279
    goto :goto_32

    .line 2280
    :cond_59
    move v0, v5

    .line 2281
    :goto_32
    or-int/lit16 v10, v0, 0x405

    .line 2282
    .line 2283
    const/16 v9, 0x16

    .line 2284
    .line 2285
    const/4 v13, 0x0

    .line 2286
    move-object v8, v2

    .line 2287
    move-object/from16 v11, v38

    .line 2288
    .line 2289
    invoke-direct/range {v8 .. v13}, Lcom/android/server/pm/dex/DexoptOptions;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2290
    .line 2291
    .line 2292
    goto :goto_36

    .line 2293
    :goto_33
    const-string v0, "Feature is disabled for system apps"

    .line 2294
    .line 2295
    invoke-static {v9, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2296
    .line 2297
    .line 2298
    goto :goto_35

    .line 2299
    :cond_5a
    :goto_34
    move-object/from16 v17, v3

    .line 2300
    .line 2301
    move/from16 v25, v5

    .line 2302
    .line 2303
    move-object/from16 v39, v6

    .line 2304
    .line 2305
    const/4 v5, 0x0

    .line 2306
    :cond_5b
    :goto_35
    move-object/from16 v2, v21

    .line 2307
    .line 2308
    :goto_36
    move-object/from16 v1, p0

    .line 2309
    .line 2310
    if-eqz v25, :cond_61

    .line 2311
    .line 2312
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 2313
    .line 2314
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 2315
    .line 2316
    iget-object v3, v0, Lcom/android/server/pm/PackageManagerTracedLock;->mLock:Lcom/android/server/pm/PackageManagerTracedLock$RawLock;

    .line 2317
    .line 2318
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2319
    .line 2320
    .line 2321
    :try_start_11
    const-string v0, "dexopt"

    .line 2322
    .line 2323
    const-wide/32 v6, 0x40000

    .line 2324
    .line 2325
    .line 2326
    invoke-static {v6, v7, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2327
    .line 2328
    .line 2329
    invoke-virtual/range {v39 .. v39}, Lcom/android/server/pm/InstallRequest;->assertScanResultExists()V

    .line 2330
    .line 2331
    .line 2332
    move-object/from16 v4, v39

    .line 2333
    .line 2334
    iget-object v0, v4, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    .line 2335
    .line 2336
    iget-boolean v0, v0, Lcom/android/server/pm/ScanResult;->mExistingSettingCopied:Z

    .line 2337
    .line 2338
    if-eqz v0, :cond_5c

    .line 2339
    .line 2340
    invoke-virtual {v4}, Lcom/android/server/pm/InstallRequest;->assertScanResultExists()V

    .line 2341
    .line 2342
    .line 2343
    iget-object v0, v4, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    .line 2344
    .line 2345
    iget-object v0, v0, Lcom/android/server/pm/ScanResult;->mRequest:Lcom/android/server/pm/ScanRequest;

    .line 2346
    .line 2347
    iget-object v0, v0, Lcom/android/server/pm/ScanRequest;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    .line 2348
    .line 2349
    goto :goto_37

    .line 2350
    :cond_5c
    invoke-virtual {v4}, Lcom/android/server/pm/InstallRequest;->getScannedPackageSetting()Lcom/android/server/pm/PackageSetting;

    .line 2351
    .line 2352
    .line 2353
    move-result-object v0

    .line 2354
    :goto_37
    if-nez v0, :cond_5d

    .line 2355
    .line 2356
    invoke-virtual {v4}, Lcom/android/server/pm/InstallRequest;->getScannedPackageSetting()Lcom/android/server/pm/PackageSetting;

    .line 2357
    .line 2358
    .line 2359
    move-result-object v0

    .line 2360
    :cond_5d
    invoke-virtual {v4}, Lcom/android/server/pm/InstallRequest;->getScannedPackageSetting()Lcom/android/server/pm/PackageSetting;

    .line 2361
    .line 2362
    .line 2363
    move-result-object v8

    .line 2364
    iget-object v8, v8, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    .line 2365
    .line 2366
    iget-boolean v8, v8, Lcom/android/server/pm/pkg/PackageStateUnserialized;->updatedSystemApp:Z

    .line 2367
    .line 2368
    iget-object v0, v0, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    .line 2369
    .line 2370
    invoke-virtual {v0, v8}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->setUpdatedSystemApp(Z)V

    .line 2371
    .line 2372
    .line 2373
    invoke-virtual {v4}, Lcom/android/server/pm/InstallRequest;->getScannedPackageSetting()Lcom/android/server/pm/PackageSetting;

    .line 2374
    .line 2375
    .line 2376
    move-result-object v0

    .line 2377
    iget-object v0, v0, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    .line 2378
    .line 2379
    const-class v8, Lcom/android/server/pm/PackageManagerLocal;

    .line 2380
    .line 2381
    invoke-static {v8}, Lcom/android/server/LocalManagerRegistry;->getManager(Ljava/lang/Class;)Ljava/lang/Object;

    .line 2382
    .line 2383
    .line 2384
    move-result-object v8

    .line 2385
    check-cast v8, Lcom/android/server/pm/PackageManagerLocal;

    .line 2386
    .line 2387
    invoke-interface {v8}, Lcom/android/server/pm/PackageManagerLocal;->withFilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;

    .line 2388
    .line 2389
    .line 2390
    move-result-object v8
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    .line 2391
    :try_start_12
    invoke-virtual {v4}, Lcom/android/server/pm/InstallRequest;->getInstallFlags()I

    .line 2392
    .line 2393
    .line 2394
    move-result v9

    .line 2395
    const/high16 v10, 0x10000000

    .line 2396
    .line 2397
    and-int/2addr v9, v10

    .line 2398
    if-eqz v9, :cond_5e

    .line 2399
    .line 2400
    const/16 v5, 0x80

    .line 2401
    .line 2402
    :cond_5e
    invoke-virtual {v2, v5}, Lcom/android/server/pm/dex/DexoptOptions;->convertToDexoptParams(I)Lcom/android/server/art/model/DexoptParams;

    .line 2403
    .line 2404
    .line 2405
    move-result-object v2

    .line 2406
    invoke-static {}, Lcom/android/server/pm/DexOptHelper;->getArtManagerLocal()Lcom/android/server/art/ArtManagerLocal;

    .line 2407
    .line 2408
    .line 2409
    move-result-object v5

    .line 2410
    invoke-virtual {v5, v8, v0, v2}, Lcom/android/server/art/ArtManagerLocal;->dexoptPackage(Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;Ljava/lang/String;Lcom/android/server/art/model/DexoptParams;)Lcom/android/server/art/model/DexoptResult;

    .line 2411
    .line 2412
    .line 2413
    move-result-object v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    .line 2414
    if-eqz v8, :cond_5f

    .line 2415
    .line 2416
    :try_start_13
    invoke-interface {v8}, Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;->close()V

    .line 2417
    .line 2418
    .line 2419
    :cond_5f
    invoke-virtual {v4, v0}, Lcom/android/server/pm/InstallRequest;->onDexoptFinished(Lcom/android/server/art/model/DexoptResult;)V

    .line 2420
    .line 2421
    .line 2422
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    .line 2423
    .line 2424
    .line 2425
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2426
    .line 2427
    .line 2428
    goto :goto_3a

    .line 2429
    :catchall_4
    move-exception v0

    .line 2430
    goto :goto_39

    .line 2431
    :catchall_5
    move-exception v0

    .line 2432
    move-object v1, v0

    .line 2433
    if-eqz v8, :cond_60

    .line 2434
    .line 2435
    :try_start_14
    invoke-interface {v8}, Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;->close()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_6

    .line 2436
    .line 2437
    .line 2438
    goto :goto_38

    .line 2439
    :catchall_6
    move-exception v0

    .line 2440
    move-object v2, v0

    .line 2441
    :try_start_15
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 2442
    .line 2443
    .line 2444
    :cond_60
    :goto_38
    throw v1
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    .line 2445
    :goto_39
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2446
    .line 2447
    .line 2448
    throw v0

    .line 2449
    :cond_61
    :goto_3a
    move-object/from16 v3, v17

    .line 2450
    .line 2451
    move-object/from16 v4, v22

    .line 2452
    .line 2453
    goto/16 :goto_0

    .line 2454
    .line 2455
    :cond_62
    move-object/from16 v17, v3

    .line 2456
    .line 2457
    const/4 v5, 0x0

    .line 2458
    sget-boolean v0, Lcom/android/server/pm/PackageManagerServiceUtils;->DEBUG:Z

    .line 2459
    .line 2460
    const-string/jumbo v1, "native_lib_extract"

    .line 2461
    .line 2462
    .line 2463
    invoke-virtual/range {v17 .. v17}, Landroid/util/ArraySet;->isEmpty()Z

    .line 2464
    .line 2465
    .line 2466
    move-result v0

    .line 2467
    if-eqz v0, :cond_63

    .line 2468
    .line 2469
    goto :goto_3c

    .line 2470
    :cond_63
    :try_start_16
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    .line 2471
    .line 2472
    .line 2473
    move-result-object v0

    .line 2474
    invoke-virtual {v0, v1}, Lcom/android/server/Watchdog;->pauseWatchingCurrentThread(Ljava/lang/String;)V

    .line 2475
    .line 2476
    .line 2477
    :goto_3b
    invoke-virtual/range {v17 .. v17}, Landroid/util/ArraySet;->size()I

    .line 2478
    .line 2479
    .line 2480
    move-result v0

    .line 2481
    if-ge v5, v0, :cond_64

    .line 2482
    .line 2483
    move-object/from16 v2, v17

    .line 2484
    .line 2485
    invoke-virtual {v2, v5}, Landroid/util/ArraySet;->valueAtUnchecked(I)Ljava/lang/Object;

    .line 2486
    .line 2487
    .line 2488
    move-result-object v0

    .line 2489
    check-cast v0, Landroid/os/incremental/IncrementalStorage;

    .line 2490
    .line 2491
    invoke-virtual {v0}, Landroid/os/incremental/IncrementalStorage;->waitForNativeBinariesExtraction()Z
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_7

    .line 2492
    .line 2493
    .line 2494
    const/4 v3, 0x1

    .line 2495
    add-int/2addr v5, v3

    .line 2496
    move-object/from16 v17, v2

    .line 2497
    .line 2498
    goto :goto_3b

    .line 2499
    :catchall_7
    move-exception v0

    .line 2500
    goto :goto_3d

    .line 2501
    :cond_64
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    .line 2502
    .line 2503
    .line 2504
    move-result-object v0

    .line 2505
    invoke-virtual {v0, v1}, Lcom/android/server/Watchdog;->resumeWatchingCurrentThread(Ljava/lang/String;)V

    .line 2506
    .line 2507
    .line 2508
    :goto_3c
    return-void

    .line 2509
    :goto_3d
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    .line 2510
    .line 2511
    .line 2512
    move-result-object v2

    .line 2513
    invoke-virtual {v2, v1}, Lcom/android/server/Watchdog;->resumeWatchingCurrentThread(Ljava/lang/String;)V

    .line 2514
    .line 2515
    .line 2516
    throw v0
.end method

.method public final getOriginalPackageLocked(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;
    .locals 8

    .line 1
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getOriginalPackages()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    const/4 v0, 0x0

    .line 10
    if-eqz p2, :cond_0

    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_0
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getOriginalPackages()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    invoke-static {p2}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    add-int/lit8 p2, p2, -0x1

    .line 22
    .line 23
    :goto_0
    if-ltz p2, :cond_5

    .line 24
    .line 25
    iget-object v1, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 26
    .line 27
    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 28
    .line 29
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getOriginalPackages()Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    check-cast v3, Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {v2, v3}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    if-eqz v2, :cond_4

    .line 44
    .line 45
    iget v3, v2, Lcom/android/server/pm/SettingBase;->mPkgFlags:I

    .line 46
    .line 47
    and-int/lit8 v3, v3, 0x1

    .line 48
    .line 49
    const-string v4, "PackageManager"

    .line 50
    .line 51
    const-string v5, " to "

    .line 52
    .line 53
    const-string v6, "Unable to update from "

    .line 54
    .line 55
    if-nez v3, :cond_1

    .line 56
    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    iget-object v2, v2, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    .line 63
    .line 64
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string v2, ": old package not in system partition"

    .line 78
    .line 79
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-static {v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    goto/16 :goto_1

    .line 90
    .line 91
    :cond_1
    iget-object v3, v2, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    .line 92
    .line 93
    iget-object v7, v1, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 94
    .line 95
    iget-object v7, v7, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    .line 96
    .line 97
    invoke-virtual {v7, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    if-eqz v3, :cond_2

    .line 102
    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    iget-object v2, v2, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    .line 109
    .line 110
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    const-string v2, ": old package still exists"

    .line 124
    .line 125
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    invoke-static {v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_2
    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 137
    .line 138
    invoke-virtual {v1, v2}, Lcom/android/server/pm/Settings;->getSharedUserSettingLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/SharedUserSetting;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    if-eqz v3, :cond_3

    .line 143
    .line 144
    invoke-virtual {v1, v2}, Lcom/android/server/pm/Settings;->getSharedUserSettingLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/SharedUserSetting;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    iget-object v1, v1, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    .line 149
    .line 150
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSharedUserId()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v3

    .line 154
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    move-result v3

    .line 158
    if-nez v3, :cond_3

    .line 159
    .line 160
    new-instance v3, Ljava/lang/StringBuilder;

    .line 161
    .line 162
    const-string v6, "Unable to migrate data from "

    .line 163
    .line 164
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    iget-object v2, v2, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    .line 168
    .line 169
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v2

    .line 179
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    const-string v2, ": old shared user settings name "

    .line 183
    .line 184
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    const-string v1, " differs from "

    .line 191
    .line 192
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSharedUserId()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    invoke-static {v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    .line 208
    .line 209
    goto :goto_1

    .line 210
    :cond_3
    return-object v2

    .line 211
    :cond_4
    :goto_1
    add-int/lit8 p2, p2, -0x1

    .line 212
    .line 213
    goto/16 :goto_0

    .line 214
    .line 215
    :cond_5
    return-object v0
.end method

.method public final initPackageLI(Ljava/io/File;II)Lcom/android/server/pm/pkg/AndroidPackage;
    .locals 10

    .line 1
    const-wide/32 v0, 0x40000

    .line 2
    .line 3
    .line 4
    const-string/jumbo v2, "parsePackage"

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 11
    .line 12
    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 13
    .line 14
    iget-object v3, v2, Lcom/android/server/pm/PackageManagerServiceInjector;->mScanningPackageParserProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Producer;

    .line 15
    .line 16
    iget-object v4, v2, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    .line 17
    .line 18
    invoke-interface {v3, v4, v2}, Lcom/android/server/pm/PackageManagerServiceInjector$Producer;->produce(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Lcom/android/internal/pm/parsing/PackageParser2;
    :try_end_0
    .catch Lcom/android/internal/pm/parsing/PackageParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    :try_start_1
    invoke-virtual {v2, p1, p2, v3}, Lcom/android/internal/pm/parsing/PackageParser2;->parsePackage(Ljava/io/File;IZ)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 26
    .line 27
    .line 28
    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 29
    :try_start_2
    invoke-virtual {v2}, Lcom/android/internal/pm/parsing/PackageParser2;->close()V
    :try_end_2
    .catch Lcom/android/internal/pm/parsing/PackageParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 30
    .line 31
    .line 32
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 33
    .line 34
    .line 35
    new-instance v8, Landroid/os/UserHandle;

    .line 36
    .line 37
    invoke-direct {v8, v3}, Landroid/os/UserHandle;-><init>(I)V

    .line 38
    .line 39
    .line 40
    const/4 v9, 0x0

    .line 41
    move-object v4, p0

    .line 42
    move v6, p2

    .line 43
    move v7, p3

    .line 44
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/pm/InstallPackageHelper;->addForInitLI(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;IILandroid/os/UserHandle;Lcom/android/server/pm/ApexManager$ActiveApexInfo;)Lcom/android/server/pm/pkg/AndroidPackage;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    return-object p0

    .line 49
    :catchall_0
    move-exception p0

    .line 50
    goto :goto_2

    .line 51
    :catch_0
    move-exception p0

    .line 52
    goto :goto_1

    .line 53
    :catchall_1
    move-exception p0

    .line 54
    if-eqz v2, :cond_0

    .line 55
    .line 56
    :try_start_3
    invoke-virtual {v2}, Lcom/android/internal/pm/parsing/PackageParser2;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :catchall_2
    move-exception p1

    .line 61
    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 62
    .line 63
    .line 64
    :cond_0
    :goto_0
    throw p0
    :try_end_4
    .catch Lcom/android/internal/pm/parsing/PackageParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 65
    :goto_1
    :try_start_5
    new-instance p1, Lcom/android/server/pm/PackageManagerException;

    .line 66
    .line 67
    iget p2, p0, Lcom/android/internal/pm/parsing/PackageParserException;->error:I

    .line 68
    .line 69
    invoke-virtual {p0}, Lcom/android/internal/pm/parsing/PackageParserException;->getMessage()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p3

    .line 73
    invoke-direct {p1, p2, p3, p0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 74
    .line 75
    .line 76
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 77
    :goto_2
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 78
    .line 79
    .line 80
    throw p0
.end method

.method public final initPackageTracedLI(Ljava/io/File;II)Lcom/android/server/pm/pkg/AndroidPackage;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "scanPackage ["

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, "]"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-wide/32 v1, 0x40000

    .line 26
    .line 27
    .line 28
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 29
    .line 30
    .line 31
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/InstallPackageHelper;->initPackageLI(Ljava/io/File;II)Lcom/android/server/pm/pkg/AndroidPackage;

    .line 32
    .line 33
    .line 34
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 36
    .line 37
    .line 38
    return-object p0

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 41
    .line 42
    .line 43
    throw p0
.end method

.method public final installExistingPackageAsUser(Ljava/lang/String;IIILandroid/content/IntentSender;)Landroid/util/Pair;
    .locals 27

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v9, p1

    .line 4
    .line 5
    move/from16 v15, p2

    .line 6
    .line 7
    move/from16 v8, p3

    .line 8
    .line 9
    move/from16 v10, p4

    .line 10
    .line 11
    move-object/from16 v11, p5

    .line 12
    .line 13
    const/4 v14, 0x1

    .line 14
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 15
    .line 16
    .line 17
    move-result v13

    .line 18
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    const-string v2, "android.permission.INSTALL_PACKAGES"

    .line 21
    .line 22
    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mContext:Landroid/content/Context;

    .line 29
    .line 30
    const-string v2, "com.android.permission.INSTALL_EXISTING_PACKAGES"

    .line 31
    .line 32
    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    .line 40
    .line 41
    const-string v1, "Neither user "

    .line 42
    .line 43
    const-string v2, " nor current process has android.permission.INSTALL_PACKAGES."

    .line 44
    .line 45
    invoke-static {v13, v1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw v0

    .line 53
    :cond_1
    :goto_0
    const/16 v0, 0x7d0

    .line 54
    .line 55
    const/16 v12, -0x6f

    .line 56
    .line 57
    if-ne v13, v0, :cond_2

    .line 58
    .line 59
    invoke-static {}, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->isInMaintenanceModeFromProperty()Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_2

    .line 64
    .line 65
    const/16 v0, 0x4d

    .line 66
    .line 67
    if-eq v15, v0, :cond_2

    .line 68
    .line 69
    const-string v0, "PackageManager"

    .line 70
    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    const-string v2, "Not allowed to install-existing on user "

    .line 74
    .line 75
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-static {v0, v11}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    return-object v0

    .line 97
    :cond_2
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 98
    .line 99
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 100
    .line 101
    .line 102
    move-result-object v7

    .line 103
    const-string v0, "installExistingPackage for user "

    .line 104
    .line 105
    invoke-static {v15, v0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    const/4 v6, 0x1

    .line 110
    const/4 v0, 0x1

    .line 111
    move-object v2, v7

    .line 112
    move v4, v13

    .line 113
    move/from16 v5, p2

    .line 114
    .line 115
    move-object/from16 v18, v7

    .line 116
    .line 117
    move v7, v0

    .line 118
    invoke-interface/range {v2 .. v7}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(Ljava/lang/String;IIZZ)V

    .line 119
    .line 120
    .line 121
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 122
    .line 123
    const-string/jumbo v2, "no_install_apps"

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0, v15, v2}, Lcom/android/server/pm/PackageManagerService;->isUserRestricted(ILjava/lang/String;)Z

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    if-eqz v0, :cond_3

    .line 131
    .line 132
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    invoke-static {v0, v11}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    return-object v0

    .line 141
    :cond_3
    sget-object v0, Lcom/android/server/pm/PersonaServiceHelper;->ALLOWED_BLUETOOTH_TARGET:Ljava/util/List;

    .line 142
    .line 143
    invoke-static {v13, v15}, Lcom/android/server/pm/PersonaServiceHelper;->isCallerApprovedToInstall(II)Z

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    const/4 v2, -0x1

    .line 148
    if-nez v0, :cond_4

    .line 149
    .line 150
    const-string v0, "PackageManager"

    .line 151
    .line 152
    new-instance v1, Ljava/lang/StringBuilder;

    .line 153
    .line 154
    const-string v3, "installExistingPackageAsUser the app with uid "

    .line 155
    .line 156
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    const-string v3, " is not installed via approved installer"

    .line 163
    .line 164
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    .line 173
    .line 174
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    invoke-static {v0, v11}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    return-object v0

    .line 183
    :cond_4
    const-string v0, "PackageManager"

    .line 184
    .line 185
    new-instance v3, Ljava/lang/StringBuilder;

    .line 186
    .line 187
    const-string/jumbo v4, "verifying app can be installed or not for user - "

    .line 188
    .line 189
    .line 190
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v3

    .line 200
    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    .line 202
    .line 203
    const-string v0, "application_policy"

    .line 204
    .line 205
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    invoke-static {v0}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/application/IApplicationPolicy;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    const/16 v3, -0x6e

    .line 214
    .line 215
    if-eqz v0, :cond_6

    .line 216
    .line 217
    iget-object v4, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 218
    .line 219
    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 220
    .line 221
    sget-boolean v5, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 222
    .line 223
    monitor-enter v4

    .line 224
    :try_start_0
    iget-object v5, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 225
    .line 226
    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 227
    .line 228
    iget-object v5, v5, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 229
    .line 230
    iget-object v5, v5, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    .line 231
    .line 232
    invoke-virtual {v5, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object v5

    .line 236
    check-cast v5, Lcom/android/server/pm/PackageSetting;

    .line 237
    .line 238
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    if-eqz v5, :cond_6

    .line 240
    .line 241
    :try_start_1
    iget-object v4, v5, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 242
    .line 243
    if-eqz v4, :cond_6

    .line 244
    .line 245
    new-instance v4, Ljava/util/ArrayList;

    .line 246
    .line 247
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 248
    .line 249
    .line 250
    iget-object v6, v5, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 251
    .line 252
    invoke-interface {v6}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getSigningDetails()Landroid/content/pm/SigningDetails;

    .line 253
    .line 254
    .line 255
    move-result-object v6

    .line 256
    invoke-virtual {v6}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    .line 257
    .line 258
    .line 259
    move-result-object v6

    .line 260
    new-instance v7, Ljava/util/ArrayList;

    .line 261
    .line 262
    iget-object v5, v5, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 263
    .line 264
    invoke-interface {v5}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getRequestedPermissions()Ljava/util/Set;

    .line 265
    .line 266
    .line 267
    move-result-object v5

    .line 268
    invoke-direct {v7, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 269
    .line 270
    .line 271
    if-eqz v6, :cond_5

    .line 272
    .line 273
    array-length v5, v6

    .line 274
    const/4 v12, 0x0

    .line 275
    :goto_1
    if-ge v12, v5, :cond_5

    .line 276
    .line 277
    aget-object v17, v6, v12

    .line 278
    .line 279
    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v2

    .line 283
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    .line 285
    .line 286
    add-int/2addr v12, v14

    .line 287
    const/4 v2, -0x1

    .line 288
    goto :goto_1

    .line 289
    :cond_5
    invoke-interface {v0, v9, v4, v7, v15}, Lcom/samsung/android/knox/application/IApplicationPolicy;->isApplicationInstallationEnabled(Ljava/lang/String;Ljava/util/List;Ljava/util/List;I)Z

    .line 290
    .line 291
    .line 292
    move-result v0

    .line 293
    if-nez v0, :cond_6

    .line 294
    .line 295
    const-string v0, "PackageManager"

    .line 296
    .line 297
    const-string v2, "This app installation is not allowed"

    .line 298
    .line 299
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    .line 301
    .line 302
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 303
    .line 304
    .line 305
    move-result-object v0

    .line 306
    invoke-static {v0, v11}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 307
    .line 308
    .line 309
    move-result-object v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 310
    return-object v0

    .line 311
    :catchall_0
    move-exception v0

    .line 312
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 313
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 314
    .line 315
    throw v0

    .line 316
    :catch_0
    :cond_6
    const-string/jumbo v0, "restriction_policy"

    .line 317
    .line 318
    .line 319
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 320
    .line 321
    .line 322
    move-result-object v0

    .line 323
    invoke-static {v0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 324
    .line 325
    .line 326
    move-result-object v0

    .line 327
    const/4 v2, -0x3

    .line 328
    if-eqz v0, :cond_a

    .line 329
    .line 330
    :try_start_3
    invoke-interface {v0, v15, v14}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isNewAdminInstallationEnabledAsUser(IZ)Z

    .line 331
    .line 332
    .line 333
    move-result v4

    .line 334
    if-nez v4, :cond_a

    .line 335
    .line 336
    iget-object v4, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 337
    .line 338
    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 339
    .line 340
    sget-boolean v5, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 341
    .line 342
    monitor-enter v4
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    .line 343
    :try_start_4
    iget-object v5, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 344
    .line 345
    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 346
    .line 347
    iget-object v5, v5, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 348
    .line 349
    iget-object v5, v5, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    .line 350
    .line 351
    invoke-virtual {v5, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    .line 353
    .line 354
    move-result-object v5

    .line 355
    check-cast v5, Lcom/android/server/pm/PackageSetting;

    .line 356
    .line 357
    if-nez v5, :cond_7

    .line 358
    .line 359
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 360
    .line 361
    .line 362
    move-result-object v0

    .line 363
    invoke-static {v0, v11}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 364
    .line 365
    .line 366
    move-result-object v0

    .line 367
    monitor-exit v4

    .line 368
    return-object v0

    .line 369
    :catchall_1
    move-exception v0

    .line 370
    goto :goto_2

    .line 371
    :cond_7
    iget-object v5, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 372
    .line 373
    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 374
    .line 375
    iget-object v5, v5, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 376
    .line 377
    iget-object v5, v5, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    .line 378
    .line 379
    invoke-virtual {v5, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    .line 381
    .line 382
    move-result-object v5

    .line 383
    check-cast v5, Lcom/android/server/pm/PackageSetting;

    .line 384
    .line 385
    iget-object v5, v5, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 386
    .line 387
    invoke-static {v5}, Lcom/android/server/pm/InstallPackageHelper;->isAdminApplication(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    .line 388
    .line 389
    .line 390
    move-result v5

    .line 391
    if-eqz v5, :cond_9

    .line 392
    .line 393
    invoke-interface {v0, v15, v9}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->checkPackageSource(ILjava/lang/String;)Z

    .line 394
    .line 395
    .line 396
    move-result v0

    .line 397
    if-nez v0, :cond_8

    .line 398
    .line 399
    const-string v0, "PackageManager"

    .line 400
    .line 401
    const-string v5, "This admin app installation is not allowed"

    .line 402
    .line 403
    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    .line 405
    .line 406
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 407
    .line 408
    .line 409
    move-result-object v0

    .line 410
    invoke-static {v0, v11}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 411
    .line 412
    .line 413
    move-result-object v0

    .line 414
    monitor-exit v4

    .line 415
    return-object v0

    .line 416
    :cond_8
    const-string v0, "PackageManager"

    .line 417
    .line 418
    const-string v5, "This admin app installation is allowed"

    .line 419
    .line 420
    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    .line 422
    .line 423
    :cond_9
    monitor-exit v4

    .line 424
    goto :goto_3

    .line 425
    :goto_2
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 426
    :try_start_5
    sget-boolean v4, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 427
    .line 428
    throw v0
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    .line 429
    :catch_1
    :cond_a
    :goto_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 430
    .line 431
    .line 432
    move-result-wide v19

    .line 433
    and-int/lit16 v0, v8, 0x800

    .line 434
    .line 435
    if-eqz v0, :cond_b

    .line 436
    .line 437
    move v0, v14

    .line 438
    goto :goto_4

    .line 439
    :cond_b
    const/4 v0, 0x0

    .line 440
    :goto_4
    and-int/lit16 v4, v8, 0x4000

    .line 441
    .line 442
    if-eqz v4, :cond_c

    .line 443
    .line 444
    move v12, v14

    .line 445
    goto :goto_5

    .line 446
    :cond_c
    const/4 v12, 0x0

    .line 447
    :goto_5
    :try_start_6
    iget-object v4, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 448
    .line 449
    invoke-virtual {v4, v15, v9}, Lcom/android/server/pm/PackageManagerService;->isPackageDeviceAdmin(ILjava/lang/String;)Z

    .line 450
    .line 451
    .line 452
    move-result v4

    .line 453
    iget-object v5, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 454
    .line 455
    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mProtectedPackages:Lcom/android/server/pm/ProtectedPackages;

    .line 456
    .line 457
    if-eqz v5, :cond_d

    .line 458
    .line 459
    invoke-virtual {v5, v15, v9}, Lcom/android/server/pm/ProtectedPackages;->isPackageStateProtected(ILjava/lang/String;)Z

    .line 460
    .line 461
    .line 462
    move-result v5

    .line 463
    if-eqz v5, :cond_d

    .line 464
    .line 465
    move v5, v14

    .line 466
    goto :goto_6

    .line 467
    :catchall_2
    move-exception v0

    .line 468
    goto/16 :goto_1e

    .line 469
    .line 470
    :cond_d
    const/4 v5, 0x0

    .line 471
    :goto_6
    iget-object v6, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 472
    .line 473
    iget-object v7, v6, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 474
    .line 475
    sget-boolean v6, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 476
    .line 477
    monitor-enter v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 478
    :try_start_7
    iget-object v6, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 479
    .line 480
    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 481
    .line 482
    .line 483
    move-result-object v6

    .line 484
    iget-object v3, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 485
    .line 486
    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 487
    .line 488
    invoke-virtual {v3, v9}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 489
    .line 490
    .line 491
    move-result-object v3

    .line 492
    if-eqz v3, :cond_e

    .line 493
    .line 494
    iget-object v14, v3, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 495
    .line 496
    if-nez v14, :cond_f

    .line 497
    .line 498
    :cond_e
    move-object/from16 v17, v7

    .line 499
    .line 500
    goto/16 :goto_1c

    .line 501
    .line 502
    :cond_f
    if-eqz v0, :cond_11

    .line 503
    .line 504
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    .line 505
    .line 506
    .line 507
    move-result v14

    .line 508
    if-nez v14, :cond_10

    .line 509
    .line 510
    iget-object v14, v3, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    .line 511
    .line 512
    iget-boolean v14, v14, Lcom/android/server/pm/pkg/PackageStateUnserialized;->updatedSystemApp:Z

    .line 513
    .line 514
    if-nez v14, :cond_10

    .line 515
    .line 516
    if-nez v4, :cond_10

    .line 517
    .line 518
    if-eqz v5, :cond_11

    .line 519
    .line 520
    goto :goto_8

    .line 521
    :goto_7
    move-object/from16 v17, v7

    .line 522
    .line 523
    goto/16 :goto_1d

    .line 524
    .line 525
    :cond_10
    :goto_8
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 526
    .line 527
    .line 528
    move-result-object v0

    .line 529
    invoke-static {v0, v11}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 530
    .line 531
    .line 532
    move-result-object v0

    .line 533
    monitor-exit v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 534
    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 535
    .line 536
    .line 537
    return-object v0

    .line 538
    :catchall_3
    move-exception v0

    .line 539
    goto :goto_7

    .line 540
    :cond_11
    :try_start_8
    iget-object v4, v3, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 541
    .line 542
    if-nez v4, :cond_12

    .line 543
    .line 544
    :goto_9
    const/4 v4, 0x0

    .line 545
    goto :goto_a

    .line 546
    :cond_12
    const/4 v5, -0x1

    .line 547
    invoke-virtual {v3, v5}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    .line 548
    .line 549
    .line 550
    move-result-object v24

    .line 551
    const-wide/16 v22, 0x80

    .line 552
    .line 553
    const/16 v25, -0x1

    .line 554
    .line 555
    move-object/from16 v21, v4

    .line 556
    .line 557
    move-object/from16 v26, v3

    .line 558
    .line 559
    invoke-static/range {v21 .. v26}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateApplicationInfo(Lcom/android/server/pm/pkg/AndroidPackage;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ApplicationInfo;

    .line 560
    .line 561
    .line 562
    move-result-object v4

    .line 563
    if-nez v4, :cond_13

    .line 564
    .line 565
    goto :goto_9

    .line 566
    :cond_13
    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 567
    .line 568
    :goto_a
    if-eqz v15, :cond_15

    .line 569
    .line 570
    if-nez v4, :cond_14

    .line 571
    .line 572
    goto :goto_b

    .line 573
    :cond_14
    const-string v5, "com.samsung.android.multiuser.install_only_owner"

    .line 574
    .line 575
    invoke-static {v4, v5}, Lcom/samsung/android/server/pm/MetaDataHelper;->isMetaDataInBundle(Landroid/os/Bundle;Ljava/lang/String;)Z

    .line 576
    .line 577
    .line 578
    move-result v4

    .line 579
    if-eqz v4, :cond_15

    .line 580
    .line 581
    const/4 v4, 0x1

    .line 582
    goto :goto_c

    .line 583
    :cond_15
    :goto_b
    const/4 v4, 0x0

    .line 584
    :goto_c
    if-eqz v4, :cond_19

    .line 585
    .line 586
    if-eqz v4, :cond_18

    .line 587
    .line 588
    const/4 v1, 0x1

    .line 589
    if-eq v4, v1, :cond_17

    .line 590
    .line 591
    const/4 v0, 0x2

    .line 592
    if-eq v4, v0, :cond_16

    .line 593
    .line 594
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 595
    .line 596
    .line 597
    move-result-object v0

    .line 598
    goto :goto_d

    .line 599
    :cond_16
    const-string v0, "INSTALL_NOT_ALLOWED_UNINSTALL_FOR_GUEST"

    .line 600
    .line 601
    goto :goto_d

    .line 602
    :cond_17
    const-string v0, "INSTALL_NOT_ALLOWED_INSTALL_ONLY_OWNER"

    .line 603
    .line 604
    goto :goto_d

    .line 605
    :cond_18
    const-string v0, "INSTALL_ALLOWD"

    .line 606
    .line 607
    :goto_d
    new-instance v1, Ljava/lang/StringBuilder;

    .line 608
    .line 609
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 610
    .line 611
    .line 612
    const-string v2, "Install failed. Not allowed to install due to "

    .line 613
    .line 614
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 615
    .line 616
    .line 617
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 618
    .line 619
    .line 620
    const-string v0, " of Package "

    .line 621
    .line 622
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 623
    .line 624
    .line 625
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 626
    .line 627
    .line 628
    const-string v0, " for User "

    .line 629
    .line 630
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 631
    .line 632
    .line 633
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 634
    .line 635
    .line 636
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 637
    .line 638
    .line 639
    move-result-object v0

    .line 640
    const-string v1, "PackageManager"

    .line 641
    .line 642
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    .line 644
    .line 645
    const/16 v1, -0x6e

    .line 646
    .line 647
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 648
    .line 649
    .line 650
    move-result-object v0

    .line 651
    invoke-static {v0, v11}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 652
    .line 653
    .line 654
    move-result-object v0

    .line 655
    monitor-exit v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 656
    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 657
    .line 658
    .line 659
    return-object v0

    .line 660
    :cond_19
    :try_start_9
    invoke-static {v3}, Lcom/android/server/pm/PersonaServiceHelper;->getAppMetaData(Lcom/android/server/pm/PackageSetting;)Landroid/os/Bundle;

    .line 661
    .line 662
    .line 663
    move-result-object v4

    .line 664
    if-nez v4, :cond_1a

    .line 665
    .line 666
    const/4 v4, 0x0

    .line 667
    goto :goto_e

    .line 668
    :cond_1a
    iget-object v5, v3, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    .line 669
    .line 670
    invoke-static {v15, v5, v4}, Lcom/android/server/pm/PersonaServiceHelper;->isDisallowedAppForKnox(ILjava/lang/String;Landroid/os/Bundle;)Z

    .line 671
    .line 672
    .line 673
    move-result v4

    .line 674
    :goto_e
    if-eqz v4, :cond_1b

    .line 675
    .line 676
    const-string v0, "This app installation is not allowed"

    .line 677
    .line 678
    const-string v1, "PackageManager"

    .line 679
    .line 680
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    .line 682
    .line 683
    const/16 v1, -0x6e

    .line 684
    .line 685
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 686
    .line 687
    .line 688
    move-result-object v0

    .line 689
    invoke-static {v0, v11}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 690
    .line 691
    .line 692
    move-result-object v0

    .line 693
    monitor-exit v7
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 694
    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 695
    .line 696
    .line 697
    return-object v0

    .line 698
    :cond_1b
    :try_start_a
    invoke-static {v13}, Landroid/os/UserHandle;->getUserId(I)I

    .line 699
    .line 700
    .line 701
    move-result v4

    .line 702
    invoke-interface {v6, v13, v4}, Lcom/android/server/pm/Computer;->canViewInstantApps(II)Z

    .line 703
    .line 704
    .line 705
    move-result v4

    .line 706
    if-nez v4, :cond_1e

    .line 707
    .line 708
    iget-object v4, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 709
    .line 710
    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 711
    .line 712
    invoke-virtual {v4}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    .line 713
    .line 714
    .line 715
    move-result-object v4

    .line 716
    array-length v5, v4

    .line 717
    const/4 v6, 0x0

    .line 718
    const/16 v17, 0x0

    .line 719
    .line 720
    :goto_f
    if-ge v6, v5, :cond_1d

    .line 721
    .line 722
    aget v14, v4, v6

    .line 723
    .line 724
    invoke-virtual {v3, v14}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    .line 725
    .line 726
    .line 727
    move-result v14

    .line 728
    const/16 v17, 0x1

    .line 729
    .line 730
    xor-int/lit8 v14, v14, 0x1

    .line 731
    .line 732
    if-eqz v14, :cond_1c

    .line 733
    .line 734
    move/from16 v17, v14

    .line 735
    .line 736
    goto :goto_10

    .line 737
    :cond_1c
    add-int/lit8 v6, v6, 0x1

    .line 738
    .line 739
    move/from16 v17, v14

    .line 740
    .line 741
    goto :goto_f

    .line 742
    :cond_1d
    :goto_10
    if-nez v17, :cond_1e

    .line 743
    .line 744
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 745
    .line 746
    .line 747
    move-result-object v0

    .line 748
    invoke-static {v0, v11}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 749
    .line 750
    .line 751
    move-result-object v0

    .line 752
    monitor-exit v7
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 753
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 754
    .line 755
    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 756
    .line 757
    .line 758
    return-object v0

    .line 759
    :cond_1e
    :try_start_b
    invoke-virtual {v3, v15}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    .line 760
    .line 761
    .line 762
    move-result v2

    .line 763
    if-nez v2, :cond_22

    .line 764
    .line 765
    const/4 v14, 0x1

    .line 766
    invoke-virtual {v3, v15, v14}, Lcom/android/server/pm/PackageSetting;->setInstalled(IZ)V

    .line 767
    .line 768
    .line 769
    invoke-virtual {v3, v15}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 770
    .line 771
    .line 772
    move-result-object v2

    .line 773
    const/16 v4, 0x8

    .line 774
    .line 775
    const/4 v5, 0x0

    .line 776
    invoke-virtual {v2, v4, v5}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setBoolean$1(IZ)V

    .line 777
    .line 778
    .line 779
    invoke-virtual {v2}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged$4()V

    .line 780
    .line 781
    .line 782
    invoke-virtual {v3}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 783
    .line 784
    .line 785
    invoke-virtual {v3, v15}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 786
    .line 787
    .line 788
    move-result-object v2

    .line 789
    iput v10, v2, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mInstallReason:I

    .line 790
    .line 791
    const-class v4, Landroid/content/pm/PackageManager$InstallReason;

    .line 792
    .line 793
    const/4 v5, 0x0

    .line 794
    invoke-static {v4, v5, v10}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 795
    .line 796
    .line 797
    invoke-virtual {v2}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged$4()V

    .line 798
    .line 799
    .line 800
    invoke-virtual {v3}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 801
    .line 802
    .line 803
    const/4 v2, 0x0

    .line 804
    invoke-virtual {v3, v2, v15}, Lcom/android/server/pm/PackageSetting;->setUninstallReason(II)V

    .line 805
    .line 806
    .line 807
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 808
    .line 809
    .line 810
    move-result-wide v4

    .line 811
    invoke-virtual {v3, v15, v4, v5}, Lcom/android/server/pm/PackageSetting;->setFirstInstallTime(IJ)V

    .line 812
    .line 813
    .line 814
    iget-object v2, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 815
    .line 816
    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    .line 817
    .line 818
    iget-object v2, v2, Lcom/android/server/pm/PackageInstallerService;->mPackageArchiver:Lcom/android/server/pm/PackageArchiver;

    .line 819
    .line 820
    invoke-virtual {v2, v3, v15}, Lcom/android/server/pm/PackageArchiver;->clearArchiveState(Lcom/android/server/pm/PackageSetting;I)V

    .line 821
    .line 822
    .line 823
    iget-object v2, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 824
    .line 825
    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 826
    .line 827
    const/4 v10, 0x0

    .line 828
    invoke-virtual {v2, v15, v10}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(IZ)V

    .line 829
    .line 830
    .line 831
    iget-object v2, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 832
    .line 833
    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 834
    .line 835
    invoke-virtual {v2, v3}, Lcom/android/server/pm/Settings;->writeKernelMappingLPr(Lcom/android/server/pm/PackageSetting;)V

    .line 836
    .line 837
    .line 838
    iget-object v2, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 839
    .line 840
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 841
    .line 842
    .line 843
    iget-object v2, v3, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 844
    .line 845
    if-nez v2, :cond_1f

    .line 846
    .line 847
    :goto_11
    move v5, v10

    .line 848
    goto :goto_12

    .line 849
    :cond_1f
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getMetaData()Landroid/os/Bundle;

    .line 850
    .line 851
    .line 852
    move-result-object v2

    .line 853
    if-nez v2, :cond_20

    .line 854
    .line 855
    goto :goto_11

    .line 856
    :cond_20
    const-string v4, "com.samsung.android.hasZippedOverlays"

    .line 857
    .line 858
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 859
    .line 860
    .line 861
    move-result v5

    .line 862
    :goto_12
    if-eqz v5, :cond_21

    .line 863
    .line 864
    const-string v2, "PackageManager"

    .line 865
    .line 866
    new-instance v4, Ljava/lang/StringBuilder;

    .line 867
    .line 868
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 869
    .line 870
    .line 871
    const-string v5, "Already existing APK optimized package "

    .line 872
    .line 873
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 874
    .line 875
    .line 876
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 877
    .line 878
    .line 879
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 880
    .line 881
    .line 882
    move-result-object v4

    .line 883
    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    .line 885
    .line 886
    iget-object v2, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 887
    .line 888
    sget-object v5, Lcom/android/server/pm/PackageManagerService$InstallLocaleOverlaysType;->PACKAGE_INSTALL:Lcom/android/server/pm/PackageManagerService$InstallLocaleOverlaysType;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 889
    .line 890
    const/4 v4, -0x1

    .line 891
    const/4 v6, 0x0

    .line 892
    move-object v10, v3

    .line 893
    move v3, v4

    .line 894
    move v4, v6

    .line 895
    move/from16 v6, p2

    .line 896
    .line 897
    move-object/from16 v17, v7

    .line 898
    .line 899
    move-object/from16 v7, p1

    .line 900
    .line 901
    :try_start_c
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/PackageManagerService;->updateLocaleOverlaysForPackage(IILcom/android/server/pm/PackageManagerService$InstallLocaleOverlaysType;ILjava/lang/String;)V

    .line 902
    .line 903
    .line 904
    goto :goto_13

    .line 905
    :cond_21
    move-object v10, v3

    .line 906
    move-object/from16 v17, v7

    .line 907
    .line 908
    :goto_13
    move v2, v14

    .line 909
    goto :goto_14

    .line 910
    :cond_22
    move-object v10, v3

    .line 911
    move-object/from16 v17, v7

    .line 912
    .line 913
    const/4 v14, 0x1

    .line 914
    if-eqz v12, :cond_23

    .line 915
    .line 916
    invoke-virtual {v10, v15}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    .line 917
    .line 918
    .line 919
    move-result v2

    .line 920
    if-eqz v2, :cond_23

    .line 921
    .line 922
    goto :goto_13

    .line 923
    :catchall_4
    move-exception v0

    .line 924
    goto/16 :goto_1d

    .line 925
    .line 926
    :cond_23
    const/4 v2, 0x0

    .line 927
    :goto_14
    iget-object v3, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 928
    .line 929
    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 930
    .line 931
    invoke-static {v3, v10, v15, v0, v12}, Lcom/android/server/pm/ScanPackageUtils;->setInstantAppForUser(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageSetting;IZZ)V

    .line 932
    .line 933
    .line 934
    monitor-exit v17
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 935
    :try_start_d
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 936
    .line 937
    if-eqz v2, :cond_2a

    .line 938
    .line 939
    iget-object v0, v10, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    .line 940
    .line 941
    iget-object v0, v0, Lcom/android/server/pm/InstallSource;->mUpdateOwnerPackageName:Ljava/lang/String;

    .line 942
    .line 943
    iget-object v2, v1, Lcom/android/server/pm/InstallPackageHelper;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 944
    .line 945
    const-class v3, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 946
    .line 947
    iget-object v2, v2, Lcom/android/server/pm/PackageManagerServiceInjector;->mGetLocalServiceProducer:Lcom/android/server/pm/PackageManagerServiceInjector$ServiceProducer;

    .line 948
    .line 949
    invoke-interface {v2, v3}, Lcom/android/server/pm/PackageManagerServiceInjector$ServiceProducer;->produce(Ljava/lang/Class;)Ljava/lang/Object;

    .line 950
    .line 951
    .line 952
    move-result-object v2

    .line 953
    check-cast v2, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 954
    .line 955
    if-eqz v2, :cond_24

    .line 956
    .line 957
    invoke-virtual {v2, v15}, Landroid/app/admin/DevicePolicyManagerInternal;->isUserOrganizationManaged(I)Z

    .line 958
    .line 959
    .line 960
    move-result v2

    .line 961
    if-eqz v2, :cond_24

    .line 962
    .line 963
    move v2, v14

    .line 964
    move-object/from16 v3, v18

    .line 965
    .line 966
    goto :goto_15

    .line 967
    :cond_24
    move-object/from16 v3, v18

    .line 968
    .line 969
    const/4 v2, 0x0

    .line 970
    :goto_15
    invoke-interface {v3, v13, v0}, Lcom/android/server/pm/Computer;->isCallerSameApp(ILjava/lang/String;)Z

    .line 971
    .line 972
    .line 973
    move-result v0

    .line 974
    if-nez v0, :cond_26

    .line 975
    .line 976
    invoke-virtual {v10}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    .line 977
    .line 978
    .line 979
    move-result v0

    .line 980
    if-eqz v0, :cond_25

    .line 981
    .line 982
    if-nez v2, :cond_26

    .line 983
    .line 984
    :cond_25
    const/4 v0, 0x0

    .line 985
    goto :goto_16

    .line 986
    :cond_26
    const/4 v0, 0x0

    .line 987
    goto :goto_17

    .line 988
    :goto_16
    invoke-virtual {v10, v0}, Lcom/android/server/pm/PackageSetting;->setUpdateOwnerPackage(Ljava/lang/String;)V

    .line 989
    .line 990
    .line 991
    :goto_17
    iget-object v2, v10, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 992
    .line 993
    if-eqz v2, :cond_28

    .line 994
    .line 995
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 996
    .line 997
    .line 998
    move-result-object v2

    .line 999
    const/high16 v3, 0x400000

    .line 1000
    .line 1001
    and-int/2addr v3, v8

    .line 1002
    if-eqz v3, :cond_27

    .line 1003
    .line 1004
    new-instance v2, Ljava/util/ArrayList;

    .line 1005
    .line 1006
    iget-object v3, v10, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 1007
    .line 1008
    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getRequestedPermissions()Ljava/util/Set;

    .line 1009
    .line 1010
    .line 1011
    move-result-object v3

    .line 1012
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1013
    .line 1014
    .line 1015
    new-instance v3, Ljava/util/ArrayList;

    .line 1016
    .line 1017
    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1018
    .line 1019
    .line 1020
    move-object v2, v3

    .line 1021
    :cond_27
    iget-object v3, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 1022
    .line 1023
    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    .line 1024
    .line 1025
    iget-object v4, v10, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 1026
    .line 1027
    new-instance v5, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;

    .line 1028
    .line 1029
    new-instance v6, Landroid/util/ArrayMap;

    .line 1030
    .line 1031
    invoke-direct {v6}, Landroid/util/ArrayMap;-><init>()V

    .line 1032
    .line 1033
    .line 1034
    const/4 v7, 0x3

    .line 1035
    invoke-direct {v5, v6, v2, v7}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;-><init>(Landroid/util/ArrayMap;Ljava/util/List;I)V

    .line 1036
    .line 1037
    .line 1038
    invoke-virtual {v3, v4, v5, v15}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->onPackageInstalled(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;I)V

    .line 1039
    .line 1040
    .line 1041
    iget-object v2, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 1042
    .line 1043
    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 1044
    .line 1045
    iget-object v3, v2, Lcom/android/server/pm/PackageManagerTracedLock;->mLock:Lcom/android/server/pm/PackageManagerTracedLock$RawLock;

    .line 1046
    .line 1047
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 1048
    .line 1049
    .line 1050
    :try_start_e
    iget-object v3, v1, Lcom/android/server/pm/InstallPackageHelper;->mAppDataHelper:Lcom/android/server/pm/AppDataHelper;

    .line 1051
    .line 1052
    filled-new-array/range {p2 .. p2}, [I

    .line 1053
    .line 1054
    .line 1055
    move-result-object v4

    .line 1056
    invoke-virtual {v3, v10, v4}, Lcom/android/server/pm/AppDataHelper;->prepareAppDataPostCommitLIF(Lcom/android/server/pm/PackageSetting;[I)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    .line 1057
    .line 1058
    .line 1059
    :try_start_f
    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 1060
    .line 1061
    .line 1062
    goto :goto_19

    .line 1063
    :catchall_5
    move-exception v0

    .line 1064
    move-object v1, v0

    .line 1065
    :try_start_10
    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    .line 1066
    .line 1067
    .line 1068
    goto :goto_18

    .line 1069
    :catchall_6
    move-exception v0

    .line 1070
    move-object v2, v0

    .line 1071
    :try_start_11
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 1072
    .line 1073
    .line 1074
    :goto_18
    throw v1

    .line 1075
    :cond_28
    :goto_19
    iget-object v2, v10, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 1076
    .line 1077
    if-nez v2, :cond_29

    .line 1078
    .line 1079
    move v7, v14

    .line 1080
    goto :goto_1a

    .line 1081
    :cond_29
    const/4 v7, 0x0

    .line 1082
    :goto_1a
    iget-object v2, v1, Lcom/android/server/pm/InstallPackageHelper;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    .line 1083
    .line 1084
    iget-object v3, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 1085
    .line 1086
    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 1087
    .line 1088
    .line 1089
    move-result-object v3

    .line 1090
    iget-object v4, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 1091
    .line 1092
    iget-object v8, v4, Lcom/android/server/pm/PackageManagerService;->mAppPredictionServicePackage:Ljava/lang/String;

    .line 1093
    .line 1094
    move-object/from16 v4, p1

    .line 1095
    .line 1096
    move-object v5, v10

    .line 1097
    move/from16 v6, p2

    .line 1098
    .line 1099
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/pm/BroadcastHelper;->sendPackageAddedForUser(Lcom/android/server/pm/Computer;Ljava/lang/String;Lcom/android/server/pm/pkg/PackageStateInternal;IZLjava/lang/String;)V

    .line 1100
    .line 1101
    .line 1102
    iget-object v2, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 1103
    .line 1104
    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 1105
    .line 1106
    monitor-enter v2
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    .line 1107
    :try_start_12
    iget-object v3, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 1108
    .line 1109
    filled-new-array/range {p2 .. p2}, [I

    .line 1110
    .line 1111
    .line 1112
    move-result-object v4

    .line 1113
    invoke-virtual {v3, v10, v4}, Lcom/android/server/pm/PackageManagerService;->updateSequenceNumberLP(Lcom/android/server/pm/PackageSetting;[I)V

    .line 1114
    .line 1115
    .line 1116
    monitor-exit v2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    .line 1117
    :try_start_13
    new-instance v2, Lcom/android/server/pm/InstallRequest;

    .line 1118
    .line 1119
    iget-object v12, v10, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 1120
    .line 1121
    filled-new-array/range {p2 .. p2}, [I

    .line 1122
    .line 1123
    .line 1124
    move-result-object v3

    .line 1125
    new-instance v4, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda1;

    .line 1126
    .line 1127
    invoke-direct {v4, v1, v9, v15, v11}, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/InstallPackageHelper;Ljava/lang/String;ILandroid/content/IntentSender;)V

    .line 1128
    .line 1129
    .line 1130
    iget v5, v10, Lcom/android/server/pm/PackageSetting;->mAppId:I

    .line 1131
    .line 1132
    invoke-virtual {v10}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    .line 1133
    .line 1134
    .line 1135
    move-result v17

    .line 1136
    move-object v10, v2

    .line 1137
    move/from16 v11, p2

    .line 1138
    .line 1139
    move v6, v13

    .line 1140
    move-object v13, v3

    .line 1141
    move v3, v14

    .line 1142
    move-object v14, v4

    .line 1143
    move v4, v15

    .line 1144
    move v15, v5

    .line 1145
    move/from16 v16, v6

    .line 1146
    .line 1147
    invoke-direct/range {v10 .. v17}, Lcom/android/server/pm/InstallRequest;-><init>(ILcom/android/server/pm/pkg/AndroidPackage;[ILcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda1;IIZ)V

    .line 1148
    .line 1149
    .line 1150
    invoke-virtual {v1, v2}, Lcom/android/server/pm/InstallPackageHelper;->restoreAndPostInstall(Lcom/android/server/pm/InstallRequest;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    .line 1151
    .line 1152
    .line 1153
    move-object v11, v0

    .line 1154
    goto :goto_1b

    .line 1155
    :catchall_7
    move-exception v0

    .line 1156
    :try_start_14
    monitor-exit v2
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    .line 1157
    :try_start_15
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 1158
    .line 1159
    throw v0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    .line 1160
    :cond_2a
    move v3, v14

    .line 1161
    move v4, v15

    .line 1162
    :goto_1b
    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1163
    .line 1164
    .line 1165
    sget-object v0, Lcom/android/server/pm/PersonaServiceHelper;->ALLOWED_BLUETOOTH_TARGET:Ljava/util/List;

    .line 1166
    .line 1167
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 1168
    .line 1169
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1170
    .line 1171
    .line 1172
    sget-object v0, Lcom/android/server/pm/PackageManagerService;->sPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    .line 1173
    .line 1174
    if-eqz v0, :cond_2c

    .line 1175
    .line 1176
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 1177
    .line 1178
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1179
    .line 1180
    .line 1181
    sget-object v0, Lcom/android/server/pm/PackageManagerService;->sPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    .line 1182
    .line 1183
    invoke-virtual {v0}, Lcom/android/server/pm/PersonaManagerService;->getSeparationConfigfromCache()Landroid/os/Bundle;

    .line 1184
    .line 1185
    .line 1186
    move-result-object v0

    .line 1187
    if-eqz v0, :cond_2c

    .line 1188
    .line 1189
    if-eqz v4, :cond_2b

    .line 1190
    .line 1191
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 1192
    .line 1193
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1194
    .line 1195
    .line 1196
    sget-object v0, Lcom/android/server/pm/PackageManagerService;->sPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    .line 1197
    .line 1198
    invoke-virtual {v0}, Lcom/android/server/pm/PersonaManagerService;->getAppSeparationId()I

    .line 1199
    .line 1200
    .line 1201
    move-result v0

    .line 1202
    if-ne v4, v0, :cond_2c

    .line 1203
    .line 1204
    :cond_2b
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 1205
    .line 1206
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1207
    .line 1208
    .line 1209
    sget-object v0, Lcom/android/server/pm/PackageManagerService;->sPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    .line 1210
    .line 1211
    invoke-virtual {v0, v9}, Lcom/android/server/pm/PersonaManagerService;->isAppSeparationApp(Ljava/lang/String;)Z

    .line 1212
    .line 1213
    .line 1214
    move-result v0

    .line 1215
    if-eqz v0, :cond_2c

    .line 1216
    .line 1217
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 1218
    .line 1219
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1220
    .line 1221
    .line 1222
    sget-object v0, Lcom/android/server/pm/PackageManagerService;->sPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    .line 1223
    .line 1224
    invoke-virtual {v0, v9}, Lcom/android/server/pm/PersonaManagerService;->processAppSeparationInstallation(Ljava/lang/String;)V

    .line 1225
    .line 1226
    .line 1227
    :cond_2c
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1228
    .line 1229
    .line 1230
    move-result-object v0

    .line 1231
    invoke-static {v0, v11}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 1232
    .line 1233
    .line 1234
    move-result-object v0

    .line 1235
    return-object v0

    .line 1236
    :goto_1c
    :try_start_16
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1237
    .line 1238
    .line 1239
    move-result-object v0

    .line 1240
    invoke-static {v0, v11}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 1241
    .line 1242
    .line 1243
    move-result-object v0

    .line 1244
    monitor-exit v17
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    .line 1245
    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1246
    .line 1247
    .line 1248
    return-object v0

    .line 1249
    :goto_1d
    :try_start_17
    monitor-exit v17
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_4

    .line 1250
    :try_start_18
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 1251
    .line 1252
    throw v0
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_2

    .line 1253
    :goto_1e
    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1254
    .line 1255
    .line 1256
    throw v0
.end method

.method public final installPackageFromSystemLIF(Ljava/lang/String;[I[IZ)V
    .locals 11

    .line 1
    const/4 v0, 0x1

    .line 2
    const-string/jumbo v1, "updateAllSharedLibrariesLPw failed: "

    .line 3
    .line 4
    .line 5
    new-instance v2, Ljava/io/File;

    .line 6
    .line 7
    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 11
    .line 12
    iget v3, p1, Lcom/android/server/pm/PackageManagerService;->mDefParseFlags:I

    .line 13
    .line 14
    or-int/lit8 v3, v3, 0x11

    .line 15
    .line 16
    invoke-virtual {p1, v2}, Lcom/android/server/pm/PackageManagerService;->getSystemPackageScanFlags(Ljava/io/File;)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    invoke-virtual {p0, v2, v3, p1}, Lcom/android/server/pm/InstallPackageHelper;->initPackageTracedLI(Ljava/io/File;II)Lcom/android/server/pm/pkg/AndroidPackage;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iget-object v2, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 25
    .line 26
    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 27
    .line 28
    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 29
    .line 30
    monitor-enter v2

    .line 31
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 32
    .line 33
    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 34
    .line 35
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    invoke-virtual {v3, v4}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 40
    .line 41
    .line 42
    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    :try_start_1
    iget-object v4, p0, Lcom/android/server/pm/InstallPackageHelper;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesImpl;

    .line 44
    .line 45
    iget-object v3, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 46
    .line 47
    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 48
    .line 49
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 50
    .line 51
    .line 52
    move-result-object v9

    .line 53
    const/4 v7, 0x0

    .line 54
    const/4 v8, 0x0

    .line 55
    move-object v5, p1

    .line 56
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/pm/SharedLibrariesImpl;->updateSharedLibraries(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Ljava/util/Map;)V
    :try_end_1
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :catchall_0
    move-exception p0

    .line 61
    goto/16 :goto_6

    .line 62
    .line 63
    :catch_0
    move-exception v3

    .line 64
    :try_start_2
    const-string v4, "PackageManager"

    .line 65
    .line 66
    new-instance v5, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-static {v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    :goto_0
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 86
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 87
    .line 88
    iget-object v1, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 89
    .line 90
    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 91
    .line 92
    monitor-enter v1

    .line 93
    :try_start_3
    iget-object v2, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 94
    .line 95
    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 96
    .line 97
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    invoke-virtual {v2, v3}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    const/4 v3, 0x0

    .line 106
    if-eqz p3, :cond_0

    .line 107
    .line 108
    move v4, v0

    .line 109
    goto :goto_1

    .line 110
    :cond_0
    move v4, v3

    .line 111
    :goto_1
    if-eqz v4, :cond_4

    .line 112
    .line 113
    array-length v5, p2

    .line 114
    move v6, v3

    .line 115
    move v7, v6

    .line 116
    :goto_2
    if-ge v6, v5, :cond_3

    .line 117
    .line 118
    aget v8, p2, v6

    .line 119
    .line 120
    invoke-static {p3, v8}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    .line 121
    .line 122
    .line 123
    move-result v9

    .line 124
    invoke-virtual {v2, v8}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    .line 125
    .line 126
    .line 127
    move-result v10

    .line 128
    if-eq v9, v10, :cond_1

    .line 129
    .line 130
    move v7, v0

    .line 131
    :cond_1
    invoke-virtual {v2, v8, v9}, Lcom/android/server/pm/PackageSetting;->setInstalled(IZ)V

    .line 132
    .line 133
    .line 134
    if-eqz v9, :cond_2

    .line 135
    .line 136
    invoke-virtual {v2, v3, v8}, Lcom/android/server/pm/PackageSetting;->setUninstallReason(II)V

    .line 137
    .line 138
    .line 139
    goto :goto_3

    .line 140
    :catchall_1
    move-exception p0

    .line 141
    goto :goto_5

    .line 142
    :cond_2
    :goto_3
    add-int/2addr v6, v0

    .line 143
    goto :goto_2

    .line 144
    :cond_3
    iget-object p3, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 145
    .line 146
    iget-object p3, p3, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 147
    .line 148
    invoke-virtual {p3, v3}, Lcom/android/server/pm/Settings;->writeAllUsersPackageRestrictionsLPr(Z)V

    .line 149
    .line 150
    .line 151
    if-eqz v7, :cond_4

    .line 152
    .line 153
    iget-object p3, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 154
    .line 155
    iget-object p3, p3, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 156
    .line 157
    invoke-virtual {p3, v2}, Lcom/android/server/pm/Settings;->writeKernelMappingLPr(Lcom/android/server/pm/PackageSetting;)V

    .line 158
    .line 159
    .line 160
    :cond_4
    iget-object p3, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 161
    .line 162
    iget-object p3, p3, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    .line 163
    .line 164
    sget-object v2, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;->DEFAULT:Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;

    .line 165
    .line 166
    const/4 v5, -0x1

    .line 167
    invoke-virtual {p3, p1, v2, v5}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->onPackageInstalled(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;I)V

    .line 168
    .line 169
    .line 170
    array-length p3, p2

    .line 171
    move v2, v3

    .line 172
    :goto_4
    if-ge v2, p3, :cond_6

    .line 173
    .line 174
    aget v5, p2, v2

    .line 175
    .line 176
    if-eqz v4, :cond_5

    .line 177
    .line 178
    iget-object v6, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 179
    .line 180
    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 181
    .line 182
    iget-object v6, v6, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    .line 183
    .line 184
    invoke-virtual {v6, v5}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->writeStateForUserAsync(I)V

    .line 185
    .line 186
    .line 187
    :cond_5
    add-int/2addr v2, v0

    .line 188
    goto :goto_4

    .line 189
    :cond_6
    if-eqz p4, :cond_7

    .line 190
    .line 191
    iget-object p2, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 192
    .line 193
    invoke-virtual {p2, v3}, Lcom/android/server/pm/PackageManagerService;->writeSettingsLPrTEMP(Z)V

    .line 194
    .line 195
    .line 196
    :cond_7
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 197
    sget-boolean p2, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 198
    .line 199
    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mAppDataHelper:Lcom/android/server/pm/AppDataHelper;

    .line 200
    .line 201
    invoke-virtual {p0, p1}, Lcom/android/server/pm/AppDataHelper;->prepareAppDataAfterInstallLIF(Lcom/android/server/pm/pkg/AndroidPackage;)V

    .line 202
    .line 203
    .line 204
    return-void

    .line 205
    :goto_5
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 206
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 207
    .line 208
    throw p0

    .line 209
    :goto_6
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 210
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 211
    .line 212
    throw p0
.end method

.method public final installPackagesFromDir(Ljava/io/File;IILcom/android/internal/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;Lcom/android/server/pm/ApexManager$ActiveApexInfo;)V
    .locals 22

    move-object/from16 v7, p0

    const/4 v8, 0x1

    .line 1
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No files in app dir "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v9, p1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    move-object/from16 v9, p1

    .line 4
    new-instance v10, Lcom/android/server/pm/ParallelPackageParser;

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    invoke-direct {v10, v1, v2}, Lcom/android/server/pm/ParallelPackageParser;-><init>(Lcom/android/internal/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;)V

    .line 5
    array-length v1, v0

    const/4 v11, 0x0

    move v2, v11

    move v3, v2

    :goto_0
    const/high16 v12, 0x10000

    if-ge v2, v1, :cond_6

    aget-object v4, v0, v2

    .line 6
    invoke-static {v4}, Landroid/content/pm/parsing/ApkLiteParseUtils;->isApkFile(Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_2

    :cond_1
    :goto_1
    move/from16 v13, p2

    goto/16 :goto_3

    .line 7
    :cond_2
    :goto_2
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/pm/PackageInstallerService;->isStageName(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const/high16 v5, 0x1000000

    and-int v5, p3, v5

    if-eqz v5, :cond_3

    .line 8
    new-instance v5, Lcom/android/server/pm/parsing/PackageCacher;

    iget-object v6, v7, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 9
    iget-object v13, v6, Lcom/android/server/pm/PackageManagerService;->mCacheDir:Ljava/io/File;

    .line 10
    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mPackageParserCallback:Lcom/android/server/pm/PackageManagerService$3;

    invoke-direct {v5, v13, v6}, Lcom/android/server/pm/parsing/PackageCacher;-><init>(Ljava/io/File;Lcom/android/internal/pm/parsing/PackageParser2$Callback;)V

    .line 11
    const-string v6, "PackageManager"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Dropping cache of "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v6, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    invoke-virtual {v5, v4}, Lcom/android/server/pm/parsing/PackageCacher;->cleanCachedResult(Ljava/io/File;)V

    :cond_3
    and-int v5, p3, v12

    if-eqz v5, :cond_5

    .line 13
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, v7, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mCustomInjector:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;

    .line 14
    iget-object v6, v5, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 15
    iget-object v12, v5, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mPmService:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mSkippingApksProducer:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

    invoke-virtual {v5, v12, v6}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/server/pm/install/SkippingApks;

    .line 16
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ".apk"

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 18
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_5

    .line 20
    iget-object v5, v5, Lcom/samsung/android/server/pm/install/SkippingApks;->mSkippingApkList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 21
    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    goto/16 :goto_1

    .line 22
    :cond_5
    iget-object v5, v10, Lcom/android/server/pm/ParallelPackageParser;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v6, Lcom/android/server/pm/ParallelPackageParser$$ExternalSyntheticLambda0;

    move/from16 v13, p2

    invoke-direct {v6, v10, v4, v13}, Lcom/android/server/pm/ParallelPackageParser$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/ParallelPackageParser;Ljava/io/File;I)V

    invoke-interface {v5, v6}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    add-int/2addr v3, v8

    :goto_3
    add-int/2addr v2, v8

    goto/16 :goto_0

    :cond_6
    move/from16 v13, p2

    move v14, v3

    :goto_4
    if-lez v14, :cond_16

    .line 23
    invoke-virtual {v10}, Lcom/android/server/pm/ParallelPackageParser;->take()Lcom/android/server/pm/ParallelPackageParser$ParseResult;

    move-result-object v15

    .line 24
    iget-object v0, v15, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->throwable:Ljava/lang/Throwable;

    if-nez v0, :cond_f

    const-wide/32 v4, 0x40000

    .line 25
    :try_start_0
    iget-object v0, v15, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->parsedPackage:Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    if-eqz v0, :cond_e

    .line 26
    invoke-interface {v0}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 27
    iget-object v2, v7, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v2
    :try_end_0
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 28
    :try_start_1
    iget-object v3, v7, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v3, v1}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 29
    iget-object v6, v7, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    iget-object v3, v3, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    if-nez v3, :cond_7

    goto :goto_5

    .line 31
    :cond_7
    invoke-interface {v3}, Lcom/android/server/pm/pkg/AndroidPackage;->getMetaData()Landroid/os/Bundle;

    move-result-object v3

    if-nez v3, :cond_8

    goto :goto_5

    .line 32
    :cond_8
    const-string v6, "com.samsung.android.hasZippedOverlays"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    goto :goto_6

    :catchall_0
    move-exception v0

    goto/16 :goto_9

    :cond_9
    :goto_5
    move v3, v11

    .line 33
    :goto_6
    invoke-interface {v0}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_a

    move v0, v11

    goto :goto_7

    .line 34
    :cond_a
    const-string v6, "com.samsung.android.hasZippedOverlays"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_7
    if-eqz v3, :cond_b

    if-nez v0, :cond_b

    .line 35
    iget-object v3, v7, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 36
    sget-object v19, Lcom/android/server/pm/PackageManagerService$InstallLocaleOverlaysType;->REMOVE_PACKAGE_OVERLAYS:Lcom/android/server/pm/PackageManagerService$InstallLocaleOverlaysType;

    const/16 v18, 0x0

    const/16 v20, -0x1

    const/16 v17, -0x1

    move-object/from16 v16, v3

    move-object/from16 v21, v1

    .line 37
    invoke-virtual/range {v16 .. v21}, Lcom/android/server/pm/PackageManagerService;->updateLocaleOverlaysForPackage(IILcom/android/server/pm/PackageManagerService$InstallLocaleOverlaysType;ILjava/lang/String;)V

    .line 38
    :cond_b
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iget-object v6, v7, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 39
    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mAppInstallDir:Ljava/io/File;

    .line 40
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    .line 41
    sget v6, Landroid/os/Build$VERSION;->DEVICE_INITIAL_SDK_INT:I

    const/16 v12, 0x23

    if-lt v6, v12, :cond_c

    if-eqz v0, :cond_c

    .line 42
    const-string v0, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Package installation skipped "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    :goto_8
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    const/high16 v2, 0x10000

    goto/16 :goto_12

    :cond_c
    const/16 v12, 0x22

    if-gt v6, v12, :cond_d

    if-eqz v0, :cond_d

    if-nez v3, :cond_d

    .line 45
    :try_start_2
    const-string v0, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Package installation skipped "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    monitor-exit v2

    goto :goto_8

    .line 47
    :cond_d
    monitor-exit v2

    goto :goto_a

    :goto_9
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw v0

    :catchall_1
    move-exception v0

    move-wide/from16 v16, v4

    goto :goto_c

    :catch_0
    move-exception v0

    move-wide/from16 v16, v4

    const/4 v12, 0x5

    goto :goto_b

    .line 48
    :cond_e
    :goto_a
    const-string v0, "addForInitLI"

    invoke-static {v4, v5, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 49
    iget-object v2, v15, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->parsedPackage:Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, v11}, Landroid/os/UserHandle;-><init>(I)V
    :try_end_3
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object/from16 v1, p0

    move/from16 v3, p2

    move-wide/from16 v16, v4

    move/from16 v4, p3

    move-object v5, v0

    const/4 v12, 0x5

    move-object/from16 v6, p6

    :try_start_4
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/InstallPackageHelper;->addForInitLI(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;IILandroid/os/UserHandle;Lcom/android/server/pm/ApexManager$ActiveApexInfo;)Lcom/android/server/pm/pkg/AndroidPackage;
    :try_end_4
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 50
    invoke-static/range {v16 .. v17}, Landroid/os/Trace;->traceEnd(J)V

    const/4 v0, 0x0

    move v1, v8

    goto :goto_d

    :catchall_2
    move-exception v0

    goto :goto_c

    :catch_1
    move-exception v0

    .line 51
    :goto_b
    :try_start_5
    iget v1, v0, Lcom/android/server/pm/PackageManagerException;->error:I

    .line 52
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to scan "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v15, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->scanFile:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 53
    invoke-static {v12, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 54
    invoke-static/range {v16 .. v17}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_d

    :goto_c
    invoke-static/range {v16 .. v17}, Landroid/os/Trace;->traceEnd(J)V

    .line 55
    throw v0

    :cond_f
    const/4 v12, 0x5

    .line 56
    instance-of v1, v0, Lcom/android/server/pm/PackageManagerException;

    if-eqz v1, :cond_15

    .line 57
    check-cast v0, Lcom/android/server/pm/PackageManagerException;

    .line 58
    iget v1, v0, Lcom/android/server/pm/PackageManagerException;->error:I

    .line 59
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to parse "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v15, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->scanFile:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 60
    invoke-static {v12, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    :goto_d
    const/high16 v2, 0x800000

    and-int v2, p3, v2

    if-eqz v2, :cond_12

    if-eq v1, v8, :cond_12

    .line 61
    iget-object v2, v7, Lcom/android/server/pm/InstallPackageHelper;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    check-cast v2, Lcom/android/server/pm/ApexManager$ApexManagerImpl;

    .line 62
    iget-object v4, v2, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mLock:Ljava/lang/Object;

    .line 63
    monitor-enter v4

    .line 64
    :try_start_6
    iget-object v5, v2, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mActiveApexInfosCache:Ljava/util/Set;

    check-cast v5, Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/ApexManager$ActiveApexInfo;

    .line 65
    iget-object v11, v6, Lcom/android/server/pm/ApexManager$ActiveApexInfo;->apexDirectory:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_10

    .line 66
    iget-object v11, v2, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mErrorWithApkInApex:Ljava/util/Map;

    iget-object v6, v6, Lcom/android/server/pm/ApexManager$ActiveApexInfo;->apexModuleName:Ljava/lang/String;

    check-cast v11, Landroid/util/ArrayMap;

    invoke-virtual {v11, v6, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    :catchall_3
    move-exception v0

    goto :goto_10

    :cond_10
    :goto_f
    const/4 v11, 0x0

    goto :goto_e

    .line 67
    :cond_11
    monitor-exit v4

    :cond_12
    const/high16 v2, 0x10000

    goto :goto_11

    :goto_10
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v0

    :goto_11
    and-int v0, p3, v2

    if-nez v0, :cond_14

    if-eq v1, v8, :cond_14

    .line 68
    iget-object v0, v15, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->parsedPackage:Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    if-eqz v0, :cond_13

    iget-object v1, v7, Lcom/android/server/pm/InstallPackageHelper;->mPreloadDuplicateApps:Lcom/samsung/android/server/pm/install/PreloadDuplicateApps;

    .line 69
    invoke-interface {v0}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 70
    iget-object v3, v1, Lcom/samsung/android/server/pm/install/PreloadDuplicateApps;->mLock:Ljava/lang/Object;

    .line 71
    monitor-enter v3

    .line 72
    :try_start_7
    iget-object v1, v1, Lcom/samsung/android/server/pm/install/PreloadDuplicateApps;->mDuplicateDataPackages:Ljava/util/Map;

    check-cast v1, Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    if-eqz v0, :cond_13

    .line 73
    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Duplicate package "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v15, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->parsedPackage:Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", but, It will be installed later"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    :catchall_4
    move-exception v0

    .line 74
    :try_start_8
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    throw v0

    .line 75
    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Deleting invalid package at "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v15, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->scanFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 76
    iget-object v0, v7, Lcom/android/server/pm/InstallPackageHelper;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    iget-object v1, v15, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->scanFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/RemovePackageHelper;->removeCodePath(Ljava/io/File;)V

    :cond_14
    :goto_12
    add-int/lit8 v14, v14, -0x1

    move v12, v2

    const/4 v11, 0x0

    goto/16 :goto_4

    .line 77
    :cond_15
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected exception occurred while parsing "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v15, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->scanFile:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_16
    return-void
.end method

.method public final installPackagesLI(Ljava/util/List;)V
    .locals 31

    .line 1
    move-object/from16 v9, p0

    .line 2
    .line 3
    const-wide/32 v10, 0x40000

    .line 4
    .line 5
    .line 6
    const/4 v12, 0x2

    .line 7
    const/4 v13, 0x1

    .line 8
    new-instance v0, Landroid/util/ArraySet;

    .line 9
    .line 10
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    .line 15
    .line 16
    .line 17
    new-instance v14, Landroid/util/ArrayMap;

    .line 18
    .line 19
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    invoke-direct {v14, v1}, Landroid/util/ArrayMap;-><init>(I)V

    .line 24
    .line 25
    .line 26
    new-instance v15, Landroid/util/ArrayMap;

    .line 27
    .line 28
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    invoke-direct {v15, v1}, Landroid/util/ArrayMap;-><init>(I)V

    .line 33
    .line 34
    .line 35
    new-instance v8, Landroid/util/ArrayMap;

    .line 36
    .line 37
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    invoke-direct {v8, v1}, Landroid/util/ArrayMap;-><init>(I)V

    .line 42
    .line 43
    .line 44
    invoke-static {}, Lcom/android/server/criticalevents/CriticalEventLog;->getInstance()Lcom/android/server/criticalevents/CriticalEventLog;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    new-instance v2, Lcom/android/server/criticalevents/nano/CriticalEventProto;

    .line 52
    .line 53
    invoke-direct {v2}, Lcom/android/server/criticalevents/nano/CriticalEventProto;-><init>()V

    .line 54
    .line 55
    .line 56
    new-instance v3, Lcom/android/server/criticalevents/nano/CriticalEventProto$InstallPackages;

    .line 57
    .line 58
    invoke-direct {v3}, Lcom/android/server/criticalevents/nano/CriticalEventProto$InstallPackages;-><init>()V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2, v3}, Lcom/android/server/criticalevents/nano/CriticalEventProto;->setInstallPackages(Lcom/android/server/criticalevents/nano/CriticalEventProto$InstallPackages;)Lcom/android/server/criticalevents/nano/CriticalEventProto;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, v2}, Lcom/android/server/criticalevents/CriticalEventLog;->log(Lcom/android/server/criticalevents/nano/CriticalEventProto;)V

    .line 65
    .line 66
    .line 67
    const/4 v7, 0x0

    .line 68
    :try_start_0
    const-string v1, "installPackagesLI"

    .line 69
    .line 70
    invoke-static {v10, v11, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 74
    .line 75
    .line 76
    move-result-object v16

    .line 77
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    .line 78
    .line 79
    .line 80
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    if-eqz v1, :cond_2c

    .line 82
    .line 83
    :try_start_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    move-object v4, v1

    .line 88
    check-cast v4, Lcom/android/server/pm/InstallRequest;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 89
    .line 90
    :try_start_2
    const-string/jumbo v1, "preparePackage"

    .line 91
    .line 92
    .line 93
    invoke-static {v10, v11, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 94
    .line 95
    .line 96
    iget-object v1, v4, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    .line 97
    .line 98
    if-eqz v1, :cond_0

    .line 99
    .line 100
    invoke-virtual {v1, v13}, Lcom/android/server/pm/PackageMetrics;->onStepStarted(I)V

    .line 101
    .line 102
    .line 103
    :cond_0
    invoke-virtual {v9, v4}, Lcom/android/server/pm/InstallPackageHelper;->preparePackageLI(Lcom/android/server/pm/InstallRequest;)V
    :try_end_2
    .catch Lcom/android/server/pm/PrepareFailure; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_e

    .line 104
    .line 105
    .line 106
    :try_start_3
    iget-object v1, v4, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    .line 107
    .line 108
    if-eqz v1, :cond_1

    .line 109
    .line 110
    invoke-virtual {v1, v13}, Lcom/android/server/pm/PackageMetrics;->onStepFinished(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_d

    .line 111
    .line 112
    .line 113
    :cond_1
    :try_start_4
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 114
    .line 115
    .line 116
    :try_start_5
    iget-object v3, v4, Lcom/android/server/pm/InstallRequest;->mParsedPackage:Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 117
    .line 118
    if-nez v3, :cond_6

    .line 119
    .line 120
    :try_start_6
    const-string v0, "Failed to obtain package to scan"

    .line 121
    .line 122
    const/16 v1, -0x74

    .line 123
    .line 124
    invoke-virtual {v4, v1, v0}, Lcom/android/server/pm/InstallRequest;->setError(ILjava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 125
    .line 126
    .line 127
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    if-eqz v1, :cond_3

    .line 136
    .line 137
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    check-cast v1, Lcom/android/server/pm/InstallRequest;

    .line 142
    .line 143
    iget-object v2, v1, Lcom/android/server/pm/InstallRequest;->mParsedPackage:Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 144
    .line 145
    if-eqz v2, :cond_2

    .line 146
    .line 147
    invoke-interface {v2}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 152
    .line 153
    invoke-interface {v8, v2, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    check-cast v2, Ljava/lang/Boolean;

    .line 158
    .line 159
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 160
    .line 161
    .line 162
    move-result v2

    .line 163
    if-eqz v2, :cond_2

    .line 164
    .line 165
    invoke-virtual {v9, v1}, Lcom/android/server/pm/InstallPackageHelper;->cleanUpAppIdCreation(Lcom/android/server/pm/InstallRequest;)V

    .line 166
    .line 167
    .line 168
    goto :goto_1

    .line 169
    :cond_3
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 174
    .line 175
    .line 176
    move-result v1

    .line 177
    if-eqz v1, :cond_5

    .line 178
    .line 179
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    check-cast v1, Lcom/android/server/pm/InstallRequest;

    .line 184
    .line 185
    invoke-virtual {v1}, Lcom/android/server/pm/InstallRequest;->closeFreezer()V

    .line 186
    .line 187
    .line 188
    iget v2, v1, Lcom/android/server/pm/InstallRequest;->mReturnCode:I

    .line 189
    .line 190
    if-ne v2, v13, :cond_4

    .line 191
    .line 192
    iput v7, v1, Lcom/android/server/pm/InstallRequest;->mReturnCode:I

    .line 193
    .line 194
    goto :goto_2

    .line 195
    :cond_5
    sget-object v0, Lcom/android/server/pm/PersonaServiceHelper;->ALLOWED_BLUETOOTH_TARGET:Ljava/util/List;

    .line 196
    .line 197
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 198
    .line 199
    .line 200
    return-void

    .line 201
    :catchall_0
    move-exception v0

    .line 202
    :goto_3
    move v14, v7

    .line 203
    move-object v12, v8

    .line 204
    const/4 v2, 0x4

    .line 205
    const/4 v13, 0x0

    .line 206
    goto/16 :goto_30

    .line 207
    .line 208
    :cond_6
    :try_start_7
    iput v13, v4, Lcom/android/server/pm/InstallRequest;->mReturnCode:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 209
    .line 210
    :try_start_8
    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v2

    .line 214
    invoke-virtual {v15, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 215
    .line 216
    .line 217
    :try_start_9
    iget-object v1, v4, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    .line 218
    .line 219
    if-eqz v1, :cond_7

    .line 220
    .line 221
    invoke-virtual {v1, v12}, Lcom/android/server/pm/PackageMetrics;->onStepStarted(I)V
    :try_end_9
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_b

    .line 222
    .line 223
    .line 224
    :cond_7
    :try_start_a
    iget-object v1, v4, Lcom/android/server/pm/InstallRequest;->mParsedPackage:Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 225
    .line 226
    iget v5, v4, Lcom/android/server/pm/InstallRequest;->mParseFlags:I

    .line 227
    .line 228
    iget v6, v4, Lcom/android/server/pm/InstallRequest;->mScanFlags:I
    :try_end_a
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 229
    .line 230
    :try_start_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 231
    .line 232
    .line 233
    move-result-wide v19

    .line 234
    invoke-virtual {v4}, Lcom/android/server/pm/InstallRequest;->getUser()Landroid/os/UserHandle;

    .line 235
    .line 236
    .line 237
    move-result-object v21
    :try_end_b
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 238
    :try_start_c
    iget-object v7, v4, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    .line 239
    .line 240
    if-nez v7, :cond_8

    .line 241
    .line 242
    const/16 v23, 0x0

    .line 243
    .line 244
    goto :goto_4

    .line 245
    :cond_8
    iget-object v7, v7, Lcom/android/server/pm/InstallArgs;->mAbiOverride:Ljava/lang/String;
    :try_end_c
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_a

    .line 246
    .line 247
    move-object/from16 v23, v7

    .line 248
    .line 249
    :goto_4
    :try_start_d
    const-string/jumbo v7, "scanPackage"

    .line 250
    .line 251
    .line 252
    invoke-static {v10, v11, v7}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_d
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_9

    .line 253
    .line 254
    .line 255
    move-object v7, v1

    .line 256
    move-object/from16 v1, p0

    .line 257
    .line 258
    move-object v13, v2

    .line 259
    move-object v2, v7

    .line 260
    move-object v7, v3

    .line 261
    move v3, v5

    .line 262
    move-object v5, v4

    .line 263
    move v4, v6

    .line 264
    move-object v12, v5

    .line 265
    move-wide/from16 v5, v19

    .line 266
    .line 267
    move-object/from16 v27, v7

    .line 268
    .line 269
    move-object/from16 v7, v21

    .line 270
    .line 271
    move-object/from16 v28, v8

    .line 272
    .line 273
    move-object/from16 v8, v23

    .line 274
    .line 275
    :try_start_e
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/pm/InstallPackageHelper;->scanPackageNewLI(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;IIJLandroid/os/UserHandle;Ljava/lang/String;)Lcom/android/server/pm/ScanResult;

    .line 276
    .line 277
    .line 278
    move-result-object v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    .line 279
    :try_start_f
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_f
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    .line 280
    .line 281
    .line 282
    :try_start_10
    iput-object v1, v12, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;
    :try_end_10
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_10 .. :try_end_10} :catch_0
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    .line 283
    .line 284
    :try_start_11
    iget-object v1, v12, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    .line 285
    .line 286
    if-eqz v1, :cond_9

    .line 287
    .line 288
    const/4 v2, 0x2

    .line 289
    invoke-virtual {v1, v2}, Lcom/android/server/pm/PackageMetrics;->onStepFinished(I)V
    :try_end_11
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_11 .. :try_end_11} :catch_0
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    .line 290
    .line 291
    .line 292
    goto :goto_7

    .line 293
    :goto_5
    move-object/from16 v8, v28

    .line 294
    .line 295
    :goto_6
    const/4 v7, 0x0

    .line 296
    goto/16 :goto_17

    .line 297
    .line 298
    :cond_9
    :goto_7
    :try_start_12
    invoke-virtual {v0, v13}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 299
    .line 300
    .line 301
    move-result v1
    :try_end_12
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_12 .. :try_end_12} :catch_0
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    .line 302
    if-nez v1, :cond_f

    .line 303
    .line 304
    :try_start_13
    new-instance v0, Ljava/lang/StringBuilder;

    .line 305
    .line 306
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 307
    .line 308
    .line 309
    const-string v1, "Duplicate package "

    .line 310
    .line 311
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    .line 313
    .line 314
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    .line 316
    .line 317
    const-string v1, " in multi-package install request."

    .line 318
    .line 319
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    .line 321
    .line 322
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v0

    .line 326
    const/4 v1, -0x5

    .line 327
    invoke-virtual {v12, v1, v0}, Lcom/android/server/pm/InstallRequest;->setError(ILjava/lang/String;)V
    :try_end_13
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_13 .. :try_end_13} :catch_0
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    .line 328
    .line 329
    .line 330
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 331
    .line 332
    .line 333
    move-result-object v0

    .line 334
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 335
    .line 336
    .line 337
    move-result v1

    .line 338
    if-eqz v1, :cond_c

    .line 339
    .line 340
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 341
    .line 342
    .line 343
    move-result-object v1

    .line 344
    check-cast v1, Lcom/android/server/pm/InstallRequest;

    .line 345
    .line 346
    iget-object v2, v1, Lcom/android/server/pm/InstallRequest;->mParsedPackage:Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 347
    .line 348
    if-eqz v2, :cond_a

    .line 349
    .line 350
    invoke-interface {v2}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object v2

    .line 354
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 355
    .line 356
    move-object/from16 v8, v28

    .line 357
    .line 358
    invoke-interface {v8, v2, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    .line 360
    .line 361
    move-result-object v2

    .line 362
    check-cast v2, Ljava/lang/Boolean;

    .line 363
    .line 364
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 365
    .line 366
    .line 367
    move-result v2

    .line 368
    if-eqz v2, :cond_b

    .line 369
    .line 370
    invoke-virtual {v9, v1}, Lcom/android/server/pm/InstallPackageHelper;->cleanUpAppIdCreation(Lcom/android/server/pm/InstallRequest;)V

    .line 371
    .line 372
    .line 373
    goto :goto_9

    .line 374
    :cond_a
    move-object/from16 v8, v28

    .line 375
    .line 376
    :cond_b
    :goto_9
    move-object/from16 v28, v8

    .line 377
    .line 378
    goto :goto_8

    .line 379
    :cond_c
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 380
    .line 381
    .line 382
    move-result-object v0

    .line 383
    :cond_d
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 384
    .line 385
    .line 386
    move-result v1

    .line 387
    if-eqz v1, :cond_e

    .line 388
    .line 389
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 390
    .line 391
    .line 392
    move-result-object v1

    .line 393
    check-cast v1, Lcom/android/server/pm/InstallRequest;

    .line 394
    .line 395
    invoke-virtual {v1}, Lcom/android/server/pm/InstallRequest;->closeFreezer()V

    .line 396
    .line 397
    .line 398
    iget v2, v1, Lcom/android/server/pm/InstallRequest;->mReturnCode:I

    .line 399
    .line 400
    const/4 v3, 0x1

    .line 401
    const/4 v7, 0x0

    .line 402
    if-ne v2, v3, :cond_d

    .line 403
    .line 404
    iput v7, v1, Lcom/android/server/pm/InstallRequest;->mReturnCode:I

    .line 405
    .line 406
    goto :goto_a

    .line 407
    :cond_e
    sget-object v0, Lcom/android/server/pm/PersonaServiceHelper;->ALLOWED_BLUETOOTH_TARGET:Ljava/util/List;

    .line 408
    .line 409
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 410
    .line 411
    .line 412
    return-void

    .line 413
    :catchall_1
    move-exception v0

    .line 414
    move-object/from16 v8, v28

    .line 415
    .line 416
    const/4 v7, 0x0

    .line 417
    goto/16 :goto_3

    .line 418
    .line 419
    :catch_0
    move-exception v0

    .line 420
    move-object/from16 v8, v28

    .line 421
    .line 422
    :goto_b
    const/4 v7, 0x0

    .line 423
    :goto_c
    const/4 v13, 0x0

    .line 424
    goto/16 :goto_19

    .line 425
    .line 426
    :cond_f
    move-object/from16 v8, v28

    .line 427
    .line 428
    const/4 v7, 0x0

    .line 429
    :try_start_14
    sget-object v1, Lcom/samsung/android/server/pm/install/PackageBlockListPolicy;->sIsRduDevice:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 430
    .line 431
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 432
    .line 433
    .line 434
    move-result v1
    :try_end_14
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_14 .. :try_end_14} :catch_1
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    .line 435
    if-eqz v1, :cond_12

    .line 436
    .line 437
    :try_start_15
    sget-object v1, Lcom/samsung/android/server/pm/install/PackageBlockListPolicy;->sLduBlocklist:Ljava/util/HashSet;

    .line 438
    .line 439
    if-nez v1, :cond_10

    .line 440
    .line 441
    const-string v1, "/system/etc/ldu_blocklist.xml"

    .line 442
    .line 443
    invoke-static {v1}, Lcom/samsung/android/server/pm/install/PmConfigParser;->parsePackages(Ljava/lang/String;)Ljava/util/List;

    .line 444
    .line 445
    .line 446
    move-result-object v1

    .line 447
    new-instance v2, Ljava/util/HashSet;

    .line 448
    .line 449
    invoke-direct {v2, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 450
    .line 451
    .line 452
    sput-object v2, Lcom/samsung/android/server/pm/install/PackageBlockListPolicy;->sLduBlocklist:Ljava/util/HashSet;

    .line 453
    .line 454
    :cond_10
    sget-object v1, Lcom/samsung/android/server/pm/install/PackageBlockListPolicy;->sLduBlocklist:Ljava/util/HashSet;

    .line 455
    .line 456
    invoke-virtual {v1, v13}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 457
    .line 458
    .line 459
    move-result v1

    .line 460
    if-nez v1, :cond_11

    .line 461
    .line 462
    goto :goto_d

    .line 463
    :cond_11
    const-string v0, "PackageManager"

    .line 464
    .line 465
    new-instance v1, Ljava/lang/StringBuilder;

    .line 466
    .line 467
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 468
    .line 469
    .line 470
    const-string v2, "This package ["

    .line 471
    .line 472
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    .line 474
    .line 475
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    .line 477
    .line 478
    const-string v2, "] is forbidden to install"

    .line 479
    .line 480
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    .line 482
    .line 483
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 484
    .line 485
    .line 486
    move-result-object v1

    .line 487
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    .line 489
    .line 490
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    .line 491
    .line 492
    new-instance v1, Ljava/lang/StringBuilder;

    .line 493
    .line 494
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 495
    .line 496
    .line 497
    const-string v2, "This package "

    .line 498
    .line 499
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    .line 501
    .line 502
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    .line 504
    .line 505
    const-string v2, " is forbidden to install"

    .line 506
    .line 507
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    .line 509
    .line 510
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 511
    .line 512
    .line 513
    move-result-object v1

    .line 514
    const/16 v2, -0x6e

    .line 515
    .line 516
    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 517
    .line 518
    .line 519
    throw v0
    :try_end_15
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_15 .. :try_end_15} :catch_1
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    .line 520
    :catch_1
    move-exception v0

    .line 521
    goto :goto_c

    .line 522
    :cond_12
    :goto_d
    :try_start_16
    invoke-virtual {v12}, Lcom/android/server/pm/InstallRequest;->assertScanResultExists()V

    .line 523
    .line 524
    .line 525
    iget-object v1, v12, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    .line 526
    .line 527
    iget-object v1, v1, Lcom/android/server/pm/ScanResult;->mRequest:Lcom/android/server/pm/ScanRequest;

    .line 528
    .line 529
    iget-object v1, v1, Lcom/android/server/pm/ScanRequest;->mOldPkg:Lcom/android/server/pm/pkg/AndroidPackage;
    :try_end_16
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_16 .. :try_end_16} :catch_1
    .catchall {:try_start_16 .. :try_end_16} :catchall_2

    .line 530
    .line 531
    move-object/from16 v2, v27

    .line 532
    .line 533
    :try_start_17
    invoke-static {v1, v2}, Lcom/android/server/pm/InstallPackageHelper;->checkNoAppStorageIsConsistent(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/AndroidPackage;)Z

    .line 534
    .line 535
    .line 536
    move-result v1
    :try_end_17
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_17 .. :try_end_17} :catch_1
    .catchall {:try_start_17 .. :try_end_17} :catchall_3

    .line 537
    if-nez v1, :cond_17

    .line 538
    .line 539
    :try_start_18
    const-string v0, "Update attempted to change value of android.internal.PROPERTY_NO_APP_DATA_STORAGE"

    .line 540
    .line 541
    const/4 v1, -0x7

    .line 542
    invoke-virtual {v12, v1, v0}, Lcom/android/server/pm/InstallRequest;->setError(ILjava/lang/String;)V
    :try_end_18
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_18 .. :try_end_18} :catch_1
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    .line 543
    .line 544
    .line 545
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 546
    .line 547
    .line 548
    move-result-object v0

    .line 549
    :cond_13
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 550
    .line 551
    .line 552
    move-result v1

    .line 553
    if-eqz v1, :cond_14

    .line 554
    .line 555
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 556
    .line 557
    .line 558
    move-result-object v1

    .line 559
    check-cast v1, Lcom/android/server/pm/InstallRequest;

    .line 560
    .line 561
    iget-object v2, v1, Lcom/android/server/pm/InstallRequest;->mParsedPackage:Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 562
    .line 563
    if-eqz v2, :cond_13

    .line 564
    .line 565
    invoke-interface {v2}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    .line 566
    .line 567
    .line 568
    move-result-object v2

    .line 569
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 570
    .line 571
    invoke-interface {v8, v2, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    .line 573
    .line 574
    move-result-object v2

    .line 575
    check-cast v2, Ljava/lang/Boolean;

    .line 576
    .line 577
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 578
    .line 579
    .line 580
    move-result v2

    .line 581
    if-eqz v2, :cond_13

    .line 582
    .line 583
    invoke-virtual {v9, v1}, Lcom/android/server/pm/InstallPackageHelper;->cleanUpAppIdCreation(Lcom/android/server/pm/InstallRequest;)V

    .line 584
    .line 585
    .line 586
    goto :goto_e

    .line 587
    :cond_14
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 588
    .line 589
    .line 590
    move-result-object v0

    .line 591
    :cond_15
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 592
    .line 593
    .line 594
    move-result v1

    .line 595
    if-eqz v1, :cond_16

    .line 596
    .line 597
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 598
    .line 599
    .line 600
    move-result-object v1

    .line 601
    check-cast v1, Lcom/android/server/pm/InstallRequest;

    .line 602
    .line 603
    invoke-virtual {v1}, Lcom/android/server/pm/InstallRequest;->closeFreezer()V

    .line 604
    .line 605
    .line 606
    iget v2, v1, Lcom/android/server/pm/InstallRequest;->mReturnCode:I

    .line 607
    .line 608
    const/4 v3, 0x1

    .line 609
    if-ne v2, v3, :cond_15

    .line 610
    .line 611
    iput v7, v1, Lcom/android/server/pm/InstallRequest;->mReturnCode:I

    .line 612
    .line 613
    goto :goto_f

    .line 614
    :cond_16
    sget-object v0, Lcom/android/server/pm/PersonaServiceHelper;->ALLOWED_BLUETOOTH_TARGET:Ljava/util/List;

    .line 615
    .line 616
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 617
    .line 618
    .line 619
    return-void

    .line 620
    :cond_17
    :try_start_19
    iget v1, v12, Lcom/android/server/pm/InstallRequest;->mScanFlags:I
    :try_end_19
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_19 .. :try_end_19} :catch_1
    .catchall {:try_start_19 .. :try_end_19} :catchall_2

    .line 621
    .line 622
    const/high16 v3, 0x4000000

    .line 623
    .line 624
    and-int/2addr v1, v3

    .line 625
    if-eqz v1, :cond_18

    .line 626
    .line 627
    const/4 v1, 0x1

    .line 628
    goto :goto_10

    .line 629
    :cond_18
    move v1, v7

    .line 630
    :goto_10
    :try_start_1a
    invoke-interface {v2}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->isSdkLibrary()Z

    .line 631
    .line 632
    .line 633
    move-result v3
    :try_end_1a
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_1a .. :try_end_1a} :catch_1
    .catchall {:try_start_1a .. :try_end_1a} :catchall_3

    .line 634
    if-nez v1, :cond_1a

    .line 635
    .line 636
    if-eqz v3, :cond_19

    .line 637
    .line 638
    :try_start_1b
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->disallowSdkLibsToBeApps()Z

    .line 639
    .line 640
    .line 641
    move-result v1

    .line 642
    if-eqz v1, :cond_19

    .line 643
    .line 644
    goto :goto_11

    .line 645
    :cond_19
    invoke-virtual {v9, v12}, Lcom/android/server/pm/InstallPackageHelper;->optimisticallyRegisterAppId(Lcom/android/server/pm/InstallRequest;)Z

    .line 646
    .line 647
    .line 648
    move-result v1

    .line 649
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 650
    .line 651
    .line 652
    move-result-object v1

    .line 653
    invoke-virtual {v8, v13, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1b
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_1b .. :try_end_1b} :catch_1
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    .line 654
    .line 655
    .line 656
    goto :goto_12

    .line 657
    :cond_1a
    :goto_11
    :try_start_1c
    invoke-virtual {v12}, Lcom/android/server/pm/InstallRequest;->getScannedPackageSetting()Lcom/android/server/pm/PackageSetting;

    .line 658
    .line 659
    .line 660
    move-result-object v1

    .line 661
    const/4 v3, -0x1

    .line 662
    invoke-virtual {v1, v3}, Lcom/android/server/pm/PackageSetting;->setAppId(I)V

    .line 663
    .line 664
    .line 665
    :goto_12
    iget-object v1, v9, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 666
    .line 667
    invoke-virtual {v1, v2}, Lcom/android/server/pm/PackageManagerService;->getSettingsVersionForPackage(Lcom/android/server/pm/pkg/AndroidPackage;)Lcom/android/server/pm/Settings$VersionInfo;

    .line 668
    .line 669
    .line 670
    move-result-object v1

    .line 671
    invoke-virtual {v14, v13, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1c
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_1c .. :try_end_1c} :catch_1
    .catchall {:try_start_1c .. :try_end_1c} :catchall_3

    .line 672
    .line 673
    .line 674
    :try_start_1d
    invoke-virtual {v12}, Lcom/android/server/pm/InstallRequest;->getInstallFlags()I

    .line 675
    .line 676
    .line 677
    move-result v1

    .line 678
    sget-object v2, Lcom/android/server/pm/PackageInstallerSession;->EMPTY_CHILD_SESSION_ARRAY:[I
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_2

    .line 679
    .line 680
    const/high16 v2, 0x8000000

    .line 681
    .line 682
    and-int/2addr v1, v2

    .line 683
    if-eqz v1, :cond_1c

    .line 684
    .line 685
    :try_start_1e
    iget-object v1, v9, Lcom/android/server/pm/InstallPackageHelper;->mContext:Landroid/content/Context;

    .line 686
    .line 687
    iget-object v2, v9, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 688
    .line 689
    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 690
    .line 691
    .line 692
    move-result-object v2

    .line 693
    invoke-virtual {v12}, Lcom/android/server/pm/InstallRequest;->getInstallSource()Lcom/android/server/pm/InstallSource;

    .line 694
    .line 695
    .line 696
    move-result-object v3
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_3

    .line 697
    :try_start_1f
    iget v4, v12, Lcom/android/server/pm/InstallRequest;->mUserId:I
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_2

    .line 698
    .line 699
    :try_start_20
    iget-object v5, v9, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 700
    .line 701
    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 702
    .line 703
    invoke-virtual {v5}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    .line 704
    .line 705
    .line 706
    move-result-object v5

    .line 707
    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/server/pm/PackageArchiver;->getResponsibleInstallerTitles(Landroid/content/Context;Lcom/android/server/pm/Computer;Lcom/android/server/pm/InstallSource;I[I)Landroid/util/SparseArray;

    .line 708
    .line 709
    .line 710
    move-result-object v1
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_3

    .line 711
    if-eqz v1, :cond_1d

    .line 712
    .line 713
    :try_start_21
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 714
    .line 715
    .line 716
    move-result v2

    .line 717
    if-nez v2, :cond_1b

    .line 718
    .line 719
    goto :goto_13

    .line 720
    :cond_1b
    iput-object v1, v12, Lcom/android/server/pm/InstallRequest;->mResponsibleInstallerTitles:Landroid/util/SparseArray;
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_0

    .line 721
    .line 722
    :cond_1c
    const/4 v13, 0x0

    .line 723
    goto :goto_18

    .line 724
    :cond_1d
    :goto_13
    :try_start_22
    const-string v0, "Failed to obtain the responsible installer info"
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_3

    .line 725
    .line 726
    :try_start_23
    new-instance v1, Lcom/android/server/pm/PackageManagerException;

    .line 727
    .line 728
    const/16 v2, -0x27

    .line 729
    .line 730
    invoke-direct {v1, v0, v2}, Lcom/android/server/pm/PackageManagerException;-><init>(Ljava/lang/String;I)V
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_2

    .line 731
    .line 732
    .line 733
    const/4 v13, 0x0

    .line 734
    :try_start_24
    invoke-virtual {v12, v13, v1}, Lcom/android/server/pm/InstallRequest;->setError(Ljava/lang/String;Lcom/android/server/pm/PackageManagerException;)V
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_c

    .line 735
    .line 736
    .line 737
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 738
    .line 739
    .line 740
    move-result-object v0

    .line 741
    :cond_1e
    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 742
    .line 743
    .line 744
    move-result v1

    .line 745
    if-eqz v1, :cond_1f

    .line 746
    .line 747
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 748
    .line 749
    .line 750
    move-result-object v1

    .line 751
    check-cast v1, Lcom/android/server/pm/InstallRequest;

    .line 752
    .line 753
    iget-object v2, v1, Lcom/android/server/pm/InstallRequest;->mParsedPackage:Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 754
    .line 755
    if-eqz v2, :cond_1e

    .line 756
    .line 757
    invoke-interface {v2}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    .line 758
    .line 759
    .line 760
    move-result-object v2

    .line 761
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 762
    .line 763
    invoke-interface {v8, v2, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 764
    .line 765
    .line 766
    move-result-object v2

    .line 767
    check-cast v2, Ljava/lang/Boolean;

    .line 768
    .line 769
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 770
    .line 771
    .line 772
    move-result v2

    .line 773
    if-eqz v2, :cond_1e

    .line 774
    .line 775
    invoke-virtual {v9, v1}, Lcom/android/server/pm/InstallPackageHelper;->cleanUpAppIdCreation(Lcom/android/server/pm/InstallRequest;)V

    .line 776
    .line 777
    .line 778
    goto :goto_14

    .line 779
    :cond_1f
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 780
    .line 781
    .line 782
    move-result-object v0

    .line 783
    :cond_20
    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 784
    .line 785
    .line 786
    move-result v1

    .line 787
    if-eqz v1, :cond_21

    .line 788
    .line 789
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 790
    .line 791
    .line 792
    move-result-object v1

    .line 793
    check-cast v1, Lcom/android/server/pm/InstallRequest;

    .line 794
    .line 795
    invoke-virtual {v1}, Lcom/android/server/pm/InstallRequest;->closeFreezer()V

    .line 796
    .line 797
    .line 798
    iget v2, v1, Lcom/android/server/pm/InstallRequest;->mReturnCode:I

    .line 799
    .line 800
    const/4 v3, 0x1

    .line 801
    if-ne v2, v3, :cond_20

    .line 802
    .line 803
    iput v7, v1, Lcom/android/server/pm/InstallRequest;->mReturnCode:I

    .line 804
    .line 805
    goto :goto_15

    .line 806
    :cond_21
    sget-object v0, Lcom/android/server/pm/PersonaServiceHelper;->ALLOWED_BLUETOOTH_TARGET:Ljava/util/List;

    .line 807
    .line 808
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 809
    .line 810
    .line 811
    return-void

    .line 812
    :goto_16
    move v14, v7

    .line 813
    move-object v12, v8

    .line 814
    const/4 v2, 0x4

    .line 815
    goto/16 :goto_30

    .line 816
    .line 817
    :catchall_2
    move-exception v0

    .line 818
    goto :goto_17

    .line 819
    :catchall_3
    move-exception v0

    .line 820
    :goto_17
    const/4 v13, 0x0

    .line 821
    goto :goto_16

    .line 822
    :goto_18
    const/4 v12, 0x2

    .line 823
    const/4 v13, 0x1

    .line 824
    goto/16 :goto_0

    .line 825
    .line 826
    :catchall_4
    move-exception v0

    .line 827
    move-object/from16 v8, v28

    .line 828
    .line 829
    const/4 v7, 0x0

    .line 830
    goto :goto_17

    .line 831
    :catchall_5
    move-exception v0

    .line 832
    goto/16 :goto_5

    .line 833
    .line 834
    :catchall_6
    move-exception v0

    .line 835
    goto/16 :goto_5

    .line 836
    .line 837
    :catchall_7
    move-exception v0

    .line 838
    move-object/from16 v8, v28

    .line 839
    .line 840
    goto/16 :goto_6

    .line 841
    .line 842
    :catchall_8
    move-exception v0

    .line 843
    move-object/from16 v8, v28

    .line 844
    .line 845
    const/4 v7, 0x0

    .line 846
    const/4 v13, 0x0

    .line 847
    move-object v1, v0

    .line 848
    :try_start_25
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 849
    .line 850
    .line 851
    throw v1
    :try_end_25
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_25 .. :try_end_25} :catch_2
    .catchall {:try_start_25 .. :try_end_25} :catchall_c

    .line 852
    :catch_2
    move-exception v0

    .line 853
    goto :goto_19

    .line 854
    :catch_3
    move-exception v0

    .line 855
    move-object v12, v4

    .line 856
    goto/16 :goto_b

    .line 857
    .line 858
    :catchall_9
    move-exception v0

    .line 859
    goto/16 :goto_6

    .line 860
    .line 861
    :catchall_a
    move-exception v0

    .line 862
    goto/16 :goto_6

    .line 863
    .line 864
    :catch_4
    move-exception v0

    .line 865
    move-object v12, v4

    .line 866
    goto/16 :goto_c

    .line 867
    .line 868
    :catchall_b
    move-exception v0

    .line 869
    goto :goto_17

    .line 870
    :goto_19
    :try_start_26
    const-string v1, "Scanning Failed."

    .line 871
    .line 872
    invoke-virtual {v12, v1, v0}, Lcom/android/server/pm/InstallRequest;->setError(Ljava/lang/String;Lcom/android/server/pm/PackageManagerException;)V
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_c

    .line 873
    .line 874
    .line 875
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 876
    .line 877
    .line 878
    move-result-object v0

    .line 879
    :cond_22
    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 880
    .line 881
    .line 882
    move-result v1

    .line 883
    if-eqz v1, :cond_23

    .line 884
    .line 885
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 886
    .line 887
    .line 888
    move-result-object v1

    .line 889
    check-cast v1, Lcom/android/server/pm/InstallRequest;

    .line 890
    .line 891
    iget-object v2, v1, Lcom/android/server/pm/InstallRequest;->mParsedPackage:Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 892
    .line 893
    if-eqz v2, :cond_22

    .line 894
    .line 895
    invoke-interface {v2}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    .line 896
    .line 897
    .line 898
    move-result-object v2

    .line 899
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 900
    .line 901
    invoke-interface {v8, v2, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 902
    .line 903
    .line 904
    move-result-object v2

    .line 905
    check-cast v2, Ljava/lang/Boolean;

    .line 906
    .line 907
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 908
    .line 909
    .line 910
    move-result v2

    .line 911
    if-eqz v2, :cond_22

    .line 912
    .line 913
    invoke-virtual {v9, v1}, Lcom/android/server/pm/InstallPackageHelper;->cleanUpAppIdCreation(Lcom/android/server/pm/InstallRequest;)V

    .line 914
    .line 915
    .line 916
    goto :goto_1a

    .line 917
    :cond_23
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 918
    .line 919
    .line 920
    move-result-object v0

    .line 921
    :cond_24
    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 922
    .line 923
    .line 924
    move-result v1

    .line 925
    if-eqz v1, :cond_25

    .line 926
    .line 927
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 928
    .line 929
    .line 930
    move-result-object v1

    .line 931
    check-cast v1, Lcom/android/server/pm/InstallRequest;

    .line 932
    .line 933
    invoke-virtual {v1}, Lcom/android/server/pm/InstallRequest;->closeFreezer()V

    .line 934
    .line 935
    .line 936
    iget v2, v1, Lcom/android/server/pm/InstallRequest;->mReturnCode:I

    .line 937
    .line 938
    const/4 v3, 0x1

    .line 939
    if-ne v2, v3, :cond_24

    .line 940
    .line 941
    iput v7, v1, Lcom/android/server/pm/InstallRequest;->mReturnCode:I

    .line 942
    .line 943
    goto :goto_1b

    .line 944
    :cond_25
    sget-object v0, Lcom/android/server/pm/PersonaServiceHelper;->ALLOWED_BLUETOOTH_TARGET:Ljava/util/List;

    .line 945
    .line 946
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 947
    .line 948
    .line 949
    return-void

    .line 950
    :catchall_c
    move-exception v0

    .line 951
    goto/16 :goto_16

    .line 952
    .line 953
    :catchall_d
    move-exception v0

    .line 954
    goto/16 :goto_17

    .line 955
    .line 956
    :catchall_e
    move-exception v0

    .line 957
    move-object v12, v4

    .line 958
    const/4 v13, 0x0

    .line 959
    goto :goto_1e

    .line 960
    :catch_5
    move-exception v0

    .line 961
    move-object v12, v4

    .line 962
    const/4 v13, 0x0

    .line 963
    :try_start_27
    iget v1, v0, Lcom/android/server/pm/PackageManagerException;->error:I

    .line 964
    .line 965
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 966
    .line 967
    .line 968
    move-result-object v2

    .line 969
    invoke-virtual {v12, v1, v2}, Lcom/android/server/pm/InstallRequest;->setError(ILjava/lang/String;)V

    .line 970
    .line 971
    .line 972
    iget-object v1, v0, Lcom/android/server/pm/PrepareFailure;->mConflictingPackage:Ljava/lang/String;

    .line 973
    .line 974
    iput-object v1, v12, Lcom/android/server/pm/InstallRequest;->mOrigPackage:Ljava/lang/String;

    .line 975
    .line 976
    iget-object v0, v0, Lcom/android/server/pm/PrepareFailure;->mConflictingPermission:Ljava/lang/String;

    .line 977
    .line 978
    iput-object v0, v12, Lcom/android/server/pm/InstallRequest;->mOrigPermission:Ljava/lang/String;
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_f

    .line 979
    .line 980
    :try_start_28
    iget-object v0, v12, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    .line 981
    .line 982
    if-eqz v0, :cond_26

    .line 983
    .line 984
    const/4 v1, 0x1

    .line 985
    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageMetrics;->onStepFinished(I)V

    .line 986
    .line 987
    .line 988
    :cond_26
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_c

    .line 989
    .line 990
    .line 991
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 992
    .line 993
    .line 994
    move-result-object v0

    .line 995
    :cond_27
    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 996
    .line 997
    .line 998
    move-result v1

    .line 999
    if-eqz v1, :cond_28

    .line 1000
    .line 1001
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1002
    .line 1003
    .line 1004
    move-result-object v1

    .line 1005
    check-cast v1, Lcom/android/server/pm/InstallRequest;

    .line 1006
    .line 1007
    iget-object v2, v1, Lcom/android/server/pm/InstallRequest;->mParsedPackage:Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 1008
    .line 1009
    if-eqz v2, :cond_27

    .line 1010
    .line 1011
    invoke-interface {v2}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    .line 1012
    .line 1013
    .line 1014
    move-result-object v2

    .line 1015
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1016
    .line 1017
    invoke-interface {v8, v2, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1018
    .line 1019
    .line 1020
    move-result-object v2

    .line 1021
    check-cast v2, Ljava/lang/Boolean;

    .line 1022
    .line 1023
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1024
    .line 1025
    .line 1026
    move-result v2

    .line 1027
    if-eqz v2, :cond_27

    .line 1028
    .line 1029
    invoke-virtual {v9, v1}, Lcom/android/server/pm/InstallPackageHelper;->cleanUpAppIdCreation(Lcom/android/server/pm/InstallRequest;)V

    .line 1030
    .line 1031
    .line 1032
    goto :goto_1c

    .line 1033
    :cond_28
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1034
    .line 1035
    .line 1036
    move-result-object v0

    .line 1037
    :cond_29
    :goto_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1038
    .line 1039
    .line 1040
    move-result v1

    .line 1041
    if-eqz v1, :cond_2a

    .line 1042
    .line 1043
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1044
    .line 1045
    .line 1046
    move-result-object v1

    .line 1047
    check-cast v1, Lcom/android/server/pm/InstallRequest;

    .line 1048
    .line 1049
    invoke-virtual {v1}, Lcom/android/server/pm/InstallRequest;->closeFreezer()V

    .line 1050
    .line 1051
    .line 1052
    iget v2, v1, Lcom/android/server/pm/InstallRequest;->mReturnCode:I

    .line 1053
    .line 1054
    const/4 v3, 0x1

    .line 1055
    if-ne v2, v3, :cond_29

    .line 1056
    .line 1057
    iput v7, v1, Lcom/android/server/pm/InstallRequest;->mReturnCode:I

    .line 1058
    .line 1059
    goto :goto_1d

    .line 1060
    :cond_2a
    sget-object v0, Lcom/android/server/pm/PersonaServiceHelper;->ALLOWED_BLUETOOTH_TARGET:Ljava/util/List;

    .line 1061
    .line 1062
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 1063
    .line 1064
    .line 1065
    return-void

    .line 1066
    :catchall_f
    move-exception v0

    .line 1067
    :goto_1e
    :try_start_29
    iget-object v1, v12, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    .line 1068
    .line 1069
    if-eqz v1, :cond_2b

    .line 1070
    .line 1071
    const/4 v2, 0x1

    .line 1072
    invoke-virtual {v1, v2}, Lcom/android/server/pm/PackageMetrics;->onStepFinished(I)V

    .line 1073
    .line 1074
    .line 1075
    :cond_2b
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 1076
    .line 1077
    .line 1078
    throw v0

    .line 1079
    :cond_2c
    const/4 v13, 0x0

    .line 1080
    iget-object v0, v9, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 1081
    .line 1082
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 1083
    .line 1084
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 1085
    .line 1086
    monitor-enter v1
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_c

    .line 1087
    :try_start_2a
    const-string/jumbo v0, "reconcilePackages"

    .line 1088
    .line 1089
    .line 1090
    invoke-static {v10, v11, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1091
    .line 1092
    .line 1093
    iget-object v0, v9, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 1094
    .line 1095
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 1096
    .line 1097
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 1098
    .line 1099
    .line 1100
    move-result-object v3

    .line 1101
    iget-object v5, v9, Lcom/android/server/pm/InstallPackageHelper;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesImpl;

    .line 1102
    .line 1103
    iget-object v0, v9, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 1104
    .line 1105
    iget-object v12, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 1106
    .line 1107
    iget-object v6, v12, Lcom/android/server/pm/Settings;->mKeySetManagerService:Lcom/android/server/pm/KeySetManagerService;

    .line 1108
    .line 1109
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 1110
    .line 1111
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSystemConfig()Lcom/android/server/SystemConfig;

    .line 1112
    .line 1113
    .line 1114
    move-result-object v0
    :try_end_2a
    .catch Lcom/android/server/pm/ReconcileFailure; {:try_start_2a .. :try_end_2a} :catch_7
    .catchall {:try_start_2a .. :try_end_2a} :catchall_17

    .line 1115
    move-object/from16 v2, p1

    .line 1116
    .line 1117
    move-object v4, v14

    .line 1118
    move v14, v7

    .line 1119
    move-object v7, v12

    .line 1120
    move-object v12, v8

    .line 1121
    move-object v8, v0

    .line 1122
    :try_start_2b
    invoke-static/range {v2 .. v8}, Lcom/android/server/pm/ReconcilePackageUtils;->reconcilePackages(Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Lcom/android/server/pm/SharedLibrariesImpl;Lcom/android/server/pm/KeySetManagerService;Lcom/android/server/pm/Settings;Lcom/android/server/SystemConfig;)Ljava/util/List;

    .line 1123
    .line 1124
    .line 1125
    move-result-object v0
    :try_end_2b
    .catch Lcom/android/server/pm/ReconcileFailure; {:try_start_2b .. :try_end_2b} :catch_6
    .catchall {:try_start_2b .. :try_end_2b} :catchall_16

    .line 1126
    :try_start_2c
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 1127
    .line 1128
    .line 1129
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->improveInstallFreeze()Z

    .line 1130
    .line 1131
    .line 1132
    move-result v2
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_15

    .line 1133
    if-eqz v2, :cond_2e

    .line 1134
    .line 1135
    :try_start_2d
    move-object v2, v0

    .line 1136
    check-cast v2, Ljava/util/ArrayList;

    .line 1137
    .line 1138
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1139
    .line 1140
    .line 1141
    move-result-object v2

    .line 1142
    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1143
    .line 1144
    .line 1145
    move-result v3

    .line 1146
    if-eqz v3, :cond_2e

    .line 1147
    .line 1148
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1149
    .line 1150
    .line 1151
    move-result-object v3

    .line 1152
    check-cast v3, Lcom/android/server/pm/ReconciledPackage;

    .line 1153
    .line 1154
    iget-object v3, v3, Lcom/android/server/pm/ReconciledPackage;->mInstallRequest:Lcom/android/server/pm/InstallRequest;

    .line 1155
    .line 1156
    iget-object v4, v3, Lcom/android/server/pm/InstallRequest;->mParsedPackage:Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 1157
    .line 1158
    invoke-interface {v4}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    .line 1159
    .line 1160
    .line 1161
    move-result-object v19

    .line 1162
    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->getInstallFlags()I

    .line 1163
    .line 1164
    .line 1165
    move-result v4

    .line 1166
    and-int/lit16 v4, v4, 0x1000

    .line 1167
    .line 1168
    if-eqz v4, :cond_2d

    .line 1169
    .line 1170
    new-instance v4, Lcom/android/server/pm/PackageFreezer;

    .line 1171
    .line 1172
    iget-object v5, v9, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 1173
    .line 1174
    invoke-direct {v4, v5, v3}, Lcom/android/server/pm/PackageFreezer;-><init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/InstallRequest;)V

    .line 1175
    .line 1176
    .line 1177
    goto :goto_20

    .line 1178
    :cond_2d
    iget-object v4, v9, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 1179
    .line 1180
    const-string v21, "installPackageLI"

    .line 1181
    .line 1182
    const/16 v22, 0x10

    .line 1183
    .line 1184
    const/16 v20, -0x1

    .line 1185
    .line 1186
    move-object/from16 v18, v4

    .line 1187
    .line 1188
    move-object/from16 v23, v3

    .line 1189
    .line 1190
    invoke-virtual/range {v18 .. v23}, Lcom/android/server/pm/PackageManagerService;->freezePackage(Ljava/lang/String;ILjava/lang/String;ILcom/android/server/pm/InstallRequest;)Lcom/android/server/pm/PackageFreezer;

    .line 1191
    .line 1192
    .line 1193
    move-result-object v4

    .line 1194
    :goto_20
    iput-object v4, v3, Lcom/android/server/pm/InstallRequest;->mFreezer:Lcom/android/server/pm/PackageFreezer;
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_10

    .line 1195
    .line 1196
    goto :goto_1f

    .line 1197
    :goto_21
    move v7, v14

    .line 1198
    const/4 v2, 0x4

    .line 1199
    goto/16 :goto_2f

    .line 1200
    .line 1201
    :catchall_10
    move-exception v0

    .line 1202
    goto :goto_21

    .line 1203
    :cond_2e
    :try_start_2e
    const-string v2, "commitPackages"

    .line 1204
    .line 1205
    invoke-static {v10, v11, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1206
    .line 1207
    .line 1208
    iget-object v2, v9, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 1209
    .line 1210
    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 1211
    .line 1212
    invoke-virtual {v2}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    .line 1213
    .line 1214
    .line 1215
    move-result-object v2

    .line 1216
    invoke-virtual {v9, v0, v2}, Lcom/android/server/pm/InstallPackageHelper;->commitPackagesLocked(Ljava/util/List;[I)V
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_13

    .line 1217
    .line 1218
    .line 1219
    :try_start_2f
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 1220
    .line 1221
    .line 1222
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_12

    .line 1223
    :try_start_30
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 1224
    .line 1225
    invoke-virtual {v9, v0}, Lcom/android/server/pm/InstallPackageHelper;->executePostCommitStepsLIF(Ljava/util/List;)V
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_11

    .line 1226
    .line 1227
    .line 1228
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1229
    .line 1230
    .line 1231
    move-result-object v0

    .line 1232
    :goto_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1233
    .line 1234
    .line 1235
    move-result v1

    .line 1236
    if-eqz v1, :cond_33

    .line 1237
    .line 1238
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1239
    .line 1240
    .line 1241
    move-result-object v1

    .line 1242
    check-cast v1, Lcom/android/server/pm/InstallRequest;

    .line 1243
    .line 1244
    invoke-virtual {v1}, Lcom/android/server/pm/InstallRequest;->getDataLoaderType()I

    .line 1245
    .line 1246
    .line 1247
    move-result v2

    .line 1248
    const/4 v3, 0x2

    .line 1249
    if-eq v2, v3, :cond_2f

    .line 1250
    .line 1251
    goto :goto_22

    .line 1252
    :cond_2f
    iget-object v2, v1, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    .line 1253
    .line 1254
    if-nez v2, :cond_30

    .line 1255
    .line 1256
    move v7, v14

    .line 1257
    :goto_23
    const/4 v2, 0x4

    .line 1258
    goto :goto_24

    .line 1259
    :cond_30
    iget-object v2, v2, Lcom/android/server/pm/InstallArgs;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 1260
    .line 1261
    invoke-virtual {v2}, Landroid/content/pm/SigningDetails;->getSignatureSchemeVersion()I

    .line 1262
    .line 1263
    .line 1264
    move-result v7

    .line 1265
    goto :goto_23

    .line 1266
    :goto_24
    if-eq v7, v2, :cond_31

    .line 1267
    .line 1268
    goto :goto_22

    .line 1269
    :cond_31
    iget-object v3, v1, Lcom/android/server/pm/InstallRequest;->mPkg:Lcom/android/server/pm/pkg/AndroidPackage;

    .line 1270
    .line 1271
    invoke-interface {v3}, Lcom/android/server/pm/pkg/AndroidPackage;->getBaseApkPath()Ljava/lang/String;

    .line 1272
    .line 1273
    .line 1274
    move-result-object v3

    .line 1275
    iget-object v4, v1, Lcom/android/server/pm/InstallRequest;->mPkg:Lcom/android/server/pm/pkg/AndroidPackage;

    .line 1276
    .line 1277
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitCodePaths()[Ljava/lang/String;

    .line 1278
    .line 1279
    .line 1280
    move-result-object v4

    .line 1281
    iget-object v5, v1, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    .line 1282
    .line 1283
    if-nez v5, :cond_32

    .line 1284
    .line 1285
    move-object/from16 v25, v13

    .line 1286
    .line 1287
    goto :goto_25

    .line 1288
    :cond_32
    iget-object v5, v5, Lcom/android/server/pm/InstallArgs;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    .line 1289
    .line 1290
    iget-object v5, v5, Lcom/android/server/pm/OriginInfo;->mResolvedFile:Ljava/io/File;

    .line 1291
    .line 1292
    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    .line 1293
    .line 1294
    .line 1295
    move-result-object v5

    .line 1296
    move-object/from16 v25, v5

    .line 1297
    .line 1298
    :goto_25
    iget-object v5, v9, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 1299
    .line 1300
    iget v6, v5, Lcom/android/server/pm/PackageManagerService;->mPendingVerificationToken:I

    .line 1301
    .line 1302
    const/4 v7, 0x1

    .line 1303
    add-int/lit8 v8, v6, 0x1

    .line 1304
    .line 1305
    iput v8, v5, Lcom/android/server/pm/PackageManagerService;->mPendingVerificationToken:I

    .line 1306
    .line 1307
    invoke-static {v3, v4}, Lcom/android/server/pm/PackageManagerServiceUtils;->buildVerificationRootHashString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    .line 1308
    .line 1309
    .line 1310
    move-result-object v27

    .line 1311
    invoke-virtual {v1}, Lcom/android/server/pm/InstallRequest;->getDataLoaderType()I

    .line 1312
    .line 1313
    .line 1314
    move-result v28

    .line 1315
    invoke-virtual {v1}, Lcom/android/server/pm/InstallRequest;->getUser()Landroid/os/UserHandle;

    .line 1316
    .line 1317
    .line 1318
    move-result-object v29

    .line 1319
    iget-object v1, v9, Lcom/android/server/pm/InstallPackageHelper;->mContext:Landroid/content/Context;

    .line 1320
    .line 1321
    const/16 v26, 0x1

    .line 1322
    .line 1323
    move/from16 v24, v6

    .line 1324
    .line 1325
    move-object/from16 v30, v1

    .line 1326
    .line 1327
    invoke-static/range {v24 .. v30}, Lcom/android/server/pm/VerificationUtils;->broadcastPackageVerified(ILandroid/net/Uri;ILjava/lang/String;ILandroid/os/UserHandle;Landroid/content/Context;)V

    .line 1328
    .line 1329
    .line 1330
    goto :goto_22

    .line 1331
    :cond_33
    sget-object v0, Lcom/android/server/pm/PersonaServiceHelper;->ALLOWED_BLUETOOTH_TARGET:Ljava/util/List;

    .line 1332
    .line 1333
    iget-object v0, v9, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 1334
    .line 1335
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1336
    .line 1337
    .line 1338
    sget-object v0, Lcom/android/server/pm/PackageManagerService;->sPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    .line 1339
    .line 1340
    if-eqz v0, :cond_35

    .line 1341
    .line 1342
    iget-object v0, v9, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 1343
    .line 1344
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1345
    .line 1346
    .line 1347
    sget-object v0, Lcom/android/server/pm/PackageManagerService;->sPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    .line 1348
    .line 1349
    invoke-virtual {v0}, Lcom/android/server/pm/PersonaManagerService;->getSeparationConfigfromCache()Landroid/os/Bundle;

    .line 1350
    .line 1351
    .line 1352
    move-result-object v0

    .line 1353
    if-eqz v0, :cond_35

    .line 1354
    .line 1355
    invoke-virtual {v15}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    .line 1356
    .line 1357
    .line 1358
    move-result-object v0

    .line 1359
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 1360
    .line 1361
    .line 1362
    move-result-object v0

    .line 1363
    :cond_34
    :goto_26
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1364
    .line 1365
    .line 1366
    move-result v1

    .line 1367
    if-eqz v1, :cond_35

    .line 1368
    .line 1369
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1370
    .line 1371
    .line 1372
    move-result-object v1

    .line 1373
    check-cast v1, Ljava/util/Map$Entry;

    .line 1374
    .line 1375
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 1376
    .line 1377
    .line 1378
    move-result-object v2

    .line 1379
    check-cast v2, Ljava/lang/String;

    .line 1380
    .line 1381
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 1382
    .line 1383
    .line 1384
    move-result-object v1

    .line 1385
    check-cast v1, Lcom/android/server/pm/InstallRequest;

    .line 1386
    .line 1387
    iget v1, v1, Lcom/android/server/pm/InstallRequest;->mReturnCode:I

    .line 1388
    .line 1389
    const/4 v3, 0x1

    .line 1390
    if-ne v1, v3, :cond_34

    .line 1391
    .line 1392
    iget-object v1, v9, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 1393
    .line 1394
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1395
    .line 1396
    .line 1397
    sget-object v1, Lcom/android/server/pm/PackageManagerService;->sPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    .line 1398
    .line 1399
    invoke-virtual {v1, v2}, Lcom/android/server/pm/PersonaManagerService;->processAppSeparationInstallation(Ljava/lang/String;)V

    .line 1400
    .line 1401
    .line 1402
    goto :goto_26

    .line 1403
    :cond_35
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 1404
    .line 1405
    .line 1406
    return-void

    .line 1407
    :catchall_11
    move-exception v0

    .line 1408
    const/4 v2, 0x4

    .line 1409
    const/4 v7, 0x1

    .line 1410
    goto/16 :goto_30

    .line 1411
    .line 1412
    :catchall_12
    move-exception v0

    .line 1413
    const/4 v2, 0x4

    .line 1414
    const/4 v7, 0x1

    .line 1415
    goto/16 :goto_2f

    .line 1416
    .line 1417
    :catchall_13
    move-exception v0

    .line 1418
    const/4 v2, 0x4

    .line 1419
    :try_start_31
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 1420
    .line 1421
    .line 1422
    throw v0
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_14

    .line 1423
    :catchall_14
    move-exception v0

    .line 1424
    :goto_27
    move v7, v14

    .line 1425
    goto/16 :goto_2f

    .line 1426
    .line 1427
    :catchall_15
    move-exception v0

    .line 1428
    const/4 v2, 0x4

    .line 1429
    goto :goto_27

    .line 1430
    :catchall_16
    move-exception v0

    .line 1431
    :goto_28
    const/4 v2, 0x4

    .line 1432
    goto/16 :goto_2e

    .line 1433
    .line 1434
    :catch_6
    move-exception v0

    .line 1435
    :goto_29
    const/4 v2, 0x4

    .line 1436
    goto :goto_2a

    .line 1437
    :catchall_17
    move-exception v0

    .line 1438
    move v14, v7

    .line 1439
    move-object v12, v8

    .line 1440
    goto :goto_28

    .line 1441
    :catch_7
    move-exception v0

    .line 1442
    move v14, v7

    .line 1443
    move-object v12, v8

    .line 1444
    goto :goto_29

    .line 1445
    :goto_2a
    :try_start_32
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1446
    .line 1447
    .line 1448
    move-result-object v3

    .line 1449
    :goto_2b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 1450
    .line 1451
    .line 1452
    move-result v4

    .line 1453
    if-eqz v4, :cond_36

    .line 1454
    .line 1455
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1456
    .line 1457
    .line 1458
    move-result-object v4

    .line 1459
    check-cast v4, Lcom/android/server/pm/InstallRequest;

    .line 1460
    .line 1461
    const-string v5, "Reconciliation failed..."

    .line 1462
    .line 1463
    invoke-virtual {v4, v5, v0}, Lcom/android/server/pm/InstallRequest;->setError(Ljava/lang/String;Lcom/android/server/pm/PackageManagerException;)V
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_18

    .line 1464
    .line 1465
    .line 1466
    goto :goto_2b

    .line 1467
    :catchall_18
    move-exception v0

    .line 1468
    goto :goto_2e

    .line 1469
    :cond_36
    :try_start_33
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 1470
    .line 1471
    .line 1472
    monitor-exit v1
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_14

    .line 1473
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 1474
    .line 1475
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1476
    .line 1477
    .line 1478
    move-result-object v0

    .line 1479
    :cond_37
    :goto_2c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1480
    .line 1481
    .line 1482
    move-result v1

    .line 1483
    if-eqz v1, :cond_38

    .line 1484
    .line 1485
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1486
    .line 1487
    .line 1488
    move-result-object v1

    .line 1489
    check-cast v1, Lcom/android/server/pm/InstallRequest;

    .line 1490
    .line 1491
    iget-object v2, v1, Lcom/android/server/pm/InstallRequest;->mParsedPackage:Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 1492
    .line 1493
    if-eqz v2, :cond_37

    .line 1494
    .line 1495
    invoke-interface {v2}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    .line 1496
    .line 1497
    .line 1498
    move-result-object v2

    .line 1499
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1500
    .line 1501
    invoke-interface {v12, v2, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1502
    .line 1503
    .line 1504
    move-result-object v2

    .line 1505
    check-cast v2, Ljava/lang/Boolean;

    .line 1506
    .line 1507
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1508
    .line 1509
    .line 1510
    move-result v2

    .line 1511
    if-eqz v2, :cond_37

    .line 1512
    .line 1513
    invoke-virtual {v9, v1}, Lcom/android/server/pm/InstallPackageHelper;->cleanUpAppIdCreation(Lcom/android/server/pm/InstallRequest;)V

    .line 1514
    .line 1515
    .line 1516
    goto :goto_2c

    .line 1517
    :cond_38
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1518
    .line 1519
    .line 1520
    move-result-object v0

    .line 1521
    :cond_39
    :goto_2d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1522
    .line 1523
    .line 1524
    move-result v1

    .line 1525
    if-eqz v1, :cond_3a

    .line 1526
    .line 1527
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1528
    .line 1529
    .line 1530
    move-result-object v1

    .line 1531
    check-cast v1, Lcom/android/server/pm/InstallRequest;

    .line 1532
    .line 1533
    invoke-virtual {v1}, Lcom/android/server/pm/InstallRequest;->closeFreezer()V

    .line 1534
    .line 1535
    .line 1536
    iget v2, v1, Lcom/android/server/pm/InstallRequest;->mReturnCode:I

    .line 1537
    .line 1538
    const/4 v3, 0x1

    .line 1539
    if-ne v2, v3, :cond_39

    .line 1540
    .line 1541
    iput v14, v1, Lcom/android/server/pm/InstallRequest;->mReturnCode:I

    .line 1542
    .line 1543
    goto :goto_2d

    .line 1544
    :cond_3a
    sget-object v0, Lcom/android/server/pm/PersonaServiceHelper;->ALLOWED_BLUETOOTH_TARGET:Ljava/util/List;

    .line 1545
    .line 1546
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 1547
    .line 1548
    .line 1549
    return-void

    .line 1550
    :goto_2e
    :try_start_34
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 1551
    .line 1552
    .line 1553
    throw v0
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_14

    .line 1554
    :goto_2f
    :try_start_35
    monitor-exit v1
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_1a

    .line 1555
    :try_start_36
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 1556
    .line 1557
    throw v0
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_19

    .line 1558
    :catchall_19
    move-exception v0

    .line 1559
    goto :goto_30

    .line 1560
    :catchall_1a
    move-exception v0

    .line 1561
    goto :goto_2f

    .line 1562
    :goto_30
    if-eqz v7, :cond_3f

    .line 1563
    .line 1564
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1565
    .line 1566
    .line 1567
    move-result-object v1

    .line 1568
    :goto_31
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 1569
    .line 1570
    .line 1571
    move-result v3

    .line 1572
    if-eqz v3, :cond_43

    .line 1573
    .line 1574
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1575
    .line 1576
    .line 1577
    move-result-object v3

    .line 1578
    check-cast v3, Lcom/android/server/pm/InstallRequest;

    .line 1579
    .line 1580
    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->getDataLoaderType()I

    .line 1581
    .line 1582
    .line 1583
    move-result v4

    .line 1584
    const/4 v5, 0x2

    .line 1585
    if-eq v4, v5, :cond_3b

    .line 1586
    .line 1587
    goto :goto_31

    .line 1588
    :cond_3b
    iget-object v4, v3, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    .line 1589
    .line 1590
    if-nez v4, :cond_3c

    .line 1591
    .line 1592
    move v4, v14

    .line 1593
    goto :goto_32

    .line 1594
    :cond_3c
    iget-object v4, v4, Lcom/android/server/pm/InstallArgs;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 1595
    .line 1596
    invoke-virtual {v4}, Landroid/content/pm/SigningDetails;->getSignatureSchemeVersion()I

    .line 1597
    .line 1598
    .line 1599
    move-result v4

    .line 1600
    :goto_32
    if-eq v4, v2, :cond_3d

    .line 1601
    .line 1602
    goto :goto_31

    .line 1603
    :cond_3d
    iget-object v4, v3, Lcom/android/server/pm/InstallRequest;->mPkg:Lcom/android/server/pm/pkg/AndroidPackage;

    .line 1604
    .line 1605
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getBaseApkPath()Ljava/lang/String;

    .line 1606
    .line 1607
    .line 1608
    move-result-object v4

    .line 1609
    iget-object v6, v3, Lcom/android/server/pm/InstallRequest;->mPkg:Lcom/android/server/pm/pkg/AndroidPackage;

    .line 1610
    .line 1611
    invoke-interface {v6}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitCodePaths()[Ljava/lang/String;

    .line 1612
    .line 1613
    .line 1614
    move-result-object v6

    .line 1615
    iget-object v8, v3, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    .line 1616
    .line 1617
    if-nez v8, :cond_3e

    .line 1618
    .line 1619
    move-object/from16 v17, v13

    .line 1620
    .line 1621
    goto :goto_33

    .line 1622
    :cond_3e
    iget-object v8, v8, Lcom/android/server/pm/InstallArgs;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    .line 1623
    .line 1624
    iget-object v8, v8, Lcom/android/server/pm/OriginInfo;->mResolvedFile:Ljava/io/File;

    .line 1625
    .line 1626
    invoke-static {v8}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    .line 1627
    .line 1628
    .line 1629
    move-result-object v8

    .line 1630
    move-object/from16 v17, v8

    .line 1631
    .line 1632
    :goto_33
    iget-object v8, v9, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 1633
    .line 1634
    iget v12, v8, Lcom/android/server/pm/PackageManagerService;->mPendingVerificationToken:I

    .line 1635
    .line 1636
    const/16 v16, 0x1

    .line 1637
    .line 1638
    add-int/lit8 v2, v12, 0x1

    .line 1639
    .line 1640
    iput v2, v8, Lcom/android/server/pm/PackageManagerService;->mPendingVerificationToken:I

    .line 1641
    .line 1642
    invoke-static {v4, v6}, Lcom/android/server/pm/PackageManagerServiceUtils;->buildVerificationRootHashString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    .line 1643
    .line 1644
    .line 1645
    move-result-object v19

    .line 1646
    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->getDataLoaderType()I

    .line 1647
    .line 1648
    .line 1649
    move-result v20

    .line 1650
    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->getUser()Landroid/os/UserHandle;

    .line 1651
    .line 1652
    .line 1653
    move-result-object v21

    .line 1654
    iget-object v2, v9, Lcom/android/server/pm/InstallPackageHelper;->mContext:Landroid/content/Context;

    .line 1655
    .line 1656
    const/16 v18, 0x1

    .line 1657
    .line 1658
    move/from16 v16, v12

    .line 1659
    .line 1660
    move-object/from16 v22, v2

    .line 1661
    .line 1662
    invoke-static/range {v16 .. v22}, Lcom/android/server/pm/VerificationUtils;->broadcastPackageVerified(ILandroid/net/Uri;ILjava/lang/String;ILandroid/os/UserHandle;Landroid/content/Context;)V

    .line 1663
    .line 1664
    .line 1665
    const/4 v2, 0x4

    .line 1666
    goto :goto_31

    .line 1667
    :cond_3f
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1668
    .line 1669
    .line 1670
    move-result-object v1

    .line 1671
    :cond_40
    :goto_34
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 1672
    .line 1673
    .line 1674
    move-result v2

    .line 1675
    if-eqz v2, :cond_41

    .line 1676
    .line 1677
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1678
    .line 1679
    .line 1680
    move-result-object v2

    .line 1681
    check-cast v2, Lcom/android/server/pm/InstallRequest;

    .line 1682
    .line 1683
    iget-object v3, v2, Lcom/android/server/pm/InstallRequest;->mParsedPackage:Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 1684
    .line 1685
    if-eqz v3, :cond_40

    .line 1686
    .line 1687
    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    .line 1688
    .line 1689
    .line 1690
    move-result-object v3

    .line 1691
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1692
    .line 1693
    invoke-interface {v12, v3, v4}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1694
    .line 1695
    .line 1696
    move-result-object v3

    .line 1697
    check-cast v3, Ljava/lang/Boolean;

    .line 1698
    .line 1699
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1700
    .line 1701
    .line 1702
    move-result v3

    .line 1703
    if-eqz v3, :cond_40

    .line 1704
    .line 1705
    invoke-virtual {v9, v2}, Lcom/android/server/pm/InstallPackageHelper;->cleanUpAppIdCreation(Lcom/android/server/pm/InstallRequest;)V

    .line 1706
    .line 1707
    .line 1708
    goto :goto_34

    .line 1709
    :cond_41
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1710
    .line 1711
    .line 1712
    move-result-object v1

    .line 1713
    :cond_42
    :goto_35
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 1714
    .line 1715
    .line 1716
    move-result v2

    .line 1717
    if-eqz v2, :cond_43

    .line 1718
    .line 1719
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1720
    .line 1721
    .line 1722
    move-result-object v2

    .line 1723
    check-cast v2, Lcom/android/server/pm/InstallRequest;

    .line 1724
    .line 1725
    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->closeFreezer()V

    .line 1726
    .line 1727
    .line 1728
    iget v3, v2, Lcom/android/server/pm/InstallRequest;->mReturnCode:I

    .line 1729
    .line 1730
    const/4 v4, 0x1

    .line 1731
    if-ne v3, v4, :cond_42

    .line 1732
    .line 1733
    iput v14, v2, Lcom/android/server/pm/InstallRequest;->mReturnCode:I

    .line 1734
    .line 1735
    goto :goto_35

    .line 1736
    :cond_43
    sget-object v1, Lcom/android/server/pm/PersonaServiceHelper;->ALLOWED_BLUETOOTH_TARGET:Ljava/util/List;

    .line 1737
    .line 1738
    if-eqz v7, :cond_45

    .line 1739
    .line 1740
    iget-object v1, v9, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 1741
    .line 1742
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1743
    .line 1744
    .line 1745
    sget-object v1, Lcom/android/server/pm/PackageManagerService;->sPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    .line 1746
    .line 1747
    if-eqz v1, :cond_45

    .line 1748
    .line 1749
    iget-object v1, v9, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 1750
    .line 1751
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1752
    .line 1753
    .line 1754
    sget-object v1, Lcom/android/server/pm/PackageManagerService;->sPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    .line 1755
    .line 1756
    invoke-virtual {v1}, Lcom/android/server/pm/PersonaManagerService;->getSeparationConfigfromCache()Landroid/os/Bundle;

    .line 1757
    .line 1758
    .line 1759
    move-result-object v1

    .line 1760
    if-eqz v1, :cond_45

    .line 1761
    .line 1762
    invoke-virtual {v15}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    .line 1763
    .line 1764
    .line 1765
    move-result-object v1

    .line 1766
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 1767
    .line 1768
    .line 1769
    move-result-object v1

    .line 1770
    :cond_44
    :goto_36
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 1771
    .line 1772
    .line 1773
    move-result v2

    .line 1774
    if-eqz v2, :cond_45

    .line 1775
    .line 1776
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1777
    .line 1778
    .line 1779
    move-result-object v2

    .line 1780
    check-cast v2, Ljava/util/Map$Entry;

    .line 1781
    .line 1782
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 1783
    .line 1784
    .line 1785
    move-result-object v3

    .line 1786
    check-cast v3, Ljava/lang/String;

    .line 1787
    .line 1788
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 1789
    .line 1790
    .line 1791
    move-result-object v2

    .line 1792
    check-cast v2, Lcom/android/server/pm/InstallRequest;

    .line 1793
    .line 1794
    iget v2, v2, Lcom/android/server/pm/InstallRequest;->mReturnCode:I

    .line 1795
    .line 1796
    const/4 v4, 0x1

    .line 1797
    if-ne v2, v4, :cond_44

    .line 1798
    .line 1799
    iget-object v2, v9, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 1800
    .line 1801
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1802
    .line 1803
    .line 1804
    sget-object v2, Lcom/android/server/pm/PackageManagerService;->sPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    .line 1805
    .line 1806
    invoke-virtual {v2, v3}, Lcom/android/server/pm/PersonaManagerService;->processAppSeparationInstallation(Ljava/lang/String;)V

    .line 1807
    .line 1808
    .line 1809
    goto :goto_36

    .line 1810
    :cond_45
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 1811
    .line 1812
    .line 1813
    throw v0
.end method

.method public final installStubPackageLI(Lcom/android/server/pm/pkg/AndroidPackage;II)Lcom/android/server/pm/pkg/AndroidPackage;
    .locals 15

    .line 1
    move-object v1, p0

    .line 2
    const/4 v2, 0x1

    .line 3
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string v3, "PackageManager"

    .line 8
    .line 9
    new-instance v4, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v5, "Uncompressing system stub; pkg: "

    .line 12
    .line 13
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v5

    .line 20
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    :cond_0
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerServiceUtils;->getCompressedFiles(Ljava/lang/String;)[Ljava/io/File;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    const/4 v6, 0x0

    .line 43
    if-eqz v5, :cond_1

    .line 44
    .line 45
    array-length v5, v5

    .line 46
    if-lez v5, :cond_1

    .line 47
    .line 48
    move v5, v2

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    move v5, v6

    .line 51
    :goto_0
    const/4 v7, 0x0

    .line 52
    if-nez v5, :cond_2

    .line 53
    .line 54
    if-eqz v0, :cond_a

    .line 55
    .line 56
    const-string v0, "No files to decompress at: "

    .line 57
    .line 58
    const-string v2, "PackageManager"

    .line 59
    .line 60
    invoke-static {v0, v4, v2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    goto/16 :goto_8

    .line 64
    .line 65
    :cond_2
    invoke-static {v7}, Landroid/os/Environment;->getDataAppDirectory(Ljava/lang/String;)Ljava/io/File;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-static {v0, v3}, Lcom/android/server/pm/PackageManagerServiceUtils;->getNextCodePath(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    const-string v8, "Failed to decompress; pkg: "

    .line 74
    .line 75
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerServiceUtils;->getCompressedFiles(Ljava/lang/String;)[Ljava/io/File;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    const/16 v4, 0x1ed

    .line 80
    .line 81
    const/4 v9, 0x6

    .line 82
    :try_start_0
    invoke-static {v5, v4}, Lcom/android/server/pm/PackageManagerServiceUtils;->makeDirRecursive(Ljava/io/File;I)V

    .line 83
    .line 84
    .line 85
    array-length v4, v0
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_1

    .line 86
    move v11, v2

    .line 87
    move v10, v6

    .line 88
    :goto_1
    if-ge v10, v4, :cond_4

    .line 89
    .line 90
    :try_start_1
    aget-object v12, v0, v10

    .line 91
    .line 92
    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v13

    .line 96
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    .line 97
    .line 98
    .line 99
    move-result v14

    .line 100
    add-int/lit8 v14, v14, -0x3

    .line 101
    .line 102
    invoke-virtual {v13, v6, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v13

    .line 106
    new-instance v14, Ljava/io/File;

    .line 107
    .line 108
    invoke-direct {v14, v5, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-static {v12, v14}, Lcom/android/server/pm/PackageManagerServiceUtils;->decompressFile(Ljava/io/File;Ljava/io/File;)I

    .line 112
    .line 113
    .line 114
    move-result v11

    .line 115
    if-eq v11, v2, :cond_3

    .line 116
    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    const-string v4, ", file: "

    .line 129
    .line 130
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    invoke-static {v9, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0

    .line 141
    .line 142
    .line 143
    goto :goto_3

    .line 144
    :catch_0
    move-exception v0

    .line 145
    goto :goto_2

    .line 146
    :cond_3
    add-int/2addr v10, v2

    .line 147
    goto :goto_1

    .line 148
    :catch_1
    move-exception v0

    .line 149
    move v11, v2

    .line 150
    :goto_2
    const-string v4, ", err: "

    .line 151
    .line 152
    invoke-static {v8, v3, v4}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    move-result-object v4

    .line 156
    iget v0, v0, Landroid/system/ErrnoException;->errno:I

    .line 157
    .line 158
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    invoke-static {v9, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 166
    .line 167
    .line 168
    :cond_4
    :goto_3
    if-ne v11, v2, :cond_5

    .line 169
    .line 170
    const-string v0, "Failed to extract native libraries; pkg: "

    .line 171
    .line 172
    new-instance v4, Ljava/io/File;

    .line 173
    .line 174
    const-string v8, "lib"

    .line 175
    .line 176
    invoke-direct {v4, v5, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    :try_start_2
    invoke-static {v5}, Lcom/android/internal/content/NativeLibraryHelper$Handle;->create(Ljava/io/File;)Lcom/android/internal/content/NativeLibraryHelper$Handle;

    .line 180
    .line 181
    .line 182
    move-result-object v8
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 183
    :try_start_3
    invoke-static {v8, v4, v7, v6}, Lcom/android/internal/content/NativeLibraryHelper;->copyNativeBinariesWithOverride(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/io/File;Ljava/lang/String;Z)I

    .line 184
    .line 185
    .line 186
    move-result v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 187
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 188
    .line 189
    .line 190
    :goto_4
    move v11, v0

    .line 191
    goto :goto_6

    .line 192
    :catchall_0
    move-exception v0

    .line 193
    move-object v7, v8

    .line 194
    goto :goto_5

    .line 195
    :catchall_1
    move-exception v0

    .line 196
    goto :goto_5

    .line 197
    :catch_2
    move-object v8, v7

    .line 198
    :catch_3
    :try_start_4
    new-instance v4, Ljava/lang/StringBuilder;

    .line 199
    .line 200
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    invoke-static {v9, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 211
    .line 212
    .line 213
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 214
    .line 215
    .line 216
    const/16 v0, -0x6e

    .line 217
    .line 218
    goto :goto_4

    .line 219
    :goto_5
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 220
    .line 221
    .line 222
    throw v0

    .line 223
    :cond_5
    :goto_6
    if-ne v11, v2, :cond_8

    .line 224
    .line 225
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 226
    .line 227
    iget-boolean v0, v0, Lcom/android/server/pm/PackageManagerService;->mSystemReady:Z

    .line 228
    .line 229
    if-nez v0, :cond_7

    .line 230
    .line 231
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 232
    .line 233
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mReleaseOnSystemReady:Ljava/util/List;

    .line 234
    .line 235
    if-nez v2, :cond_6

    .line 236
    .line 237
    new-instance v2, Ljava/util/ArrayList;

    .line 238
    .line 239
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 240
    .line 241
    .line 242
    iput-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mReleaseOnSystemReady:Ljava/util/List;

    .line 243
    .line 244
    :cond_6
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 245
    .line 246
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mReleaseOnSystemReady:Ljava/util/List;

    .line 247
    .line 248
    check-cast v0, Ljava/util/ArrayList;

    .line 249
    .line 250
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    .line 252
    .line 253
    goto :goto_7

    .line 254
    :cond_7
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mContext:Landroid/content/Context;

    .line 255
    .line 256
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    invoke-static {v0, v5}, Lcom/android/internal/content/F2fsUtils;->releaseCompressedBlocks(Landroid/content/ContentResolver;Ljava/io/File;)V

    .line 261
    .line 262
    .line 263
    :goto_7
    move-object v7, v5

    .line 264
    goto :goto_8

    .line 265
    :cond_8
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    .line 266
    .line 267
    .line 268
    move-result v0

    .line 269
    if-nez v0, :cond_9

    .line 270
    .line 271
    goto :goto_8

    .line 272
    :cond_9
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    .line 273
    .line 274
    invoke-virtual {v0, v5}, Lcom/android/server/pm/RemovePackageHelper;->removeCodePath(Ljava/io/File;)V

    .line 275
    .line 276
    .line 277
    :cond_a
    :goto_8
    if-eqz v7, :cond_b

    .line 278
    .line 279
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 280
    .line 281
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 282
    .line 283
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 284
    .line 285
    monitor-enter v2

    .line 286
    :try_start_5
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 287
    .line 288
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 289
    .line 290
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v3

    .line 294
    invoke-virtual {v0, v3}, Lcom/android/server/pm/Settings;->disableSystemPackageLPw(Ljava/lang/String;)Z

    .line 295
    .line 296
    .line 297
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 298
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    .line 299
    .line 300
    move-object/from16 v3, p1

    .line 301
    .line 302
    invoke-virtual {v0, v3}, Lcom/android/server/pm/RemovePackageHelper;->removePackage(Lcom/android/server/pm/pkg/AndroidPackage;)V

    .line 303
    .line 304
    .line 305
    move/from16 v2, p2

    .line 306
    .line 307
    move/from16 v4, p3

    .line 308
    .line 309
    :try_start_6
    invoke-virtual {p0, v7, v2, v4}, Lcom/android/server/pm/InstallPackageHelper;->initPackageTracedLI(Ljava/io/File;II)Lcom/android/server/pm/pkg/AndroidPackage;

    .line 310
    .line 311
    .line 312
    move-result-object v0
    :try_end_6
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_6 .. :try_end_6} :catch_4

    .line 313
    return-object v0

    .line 314
    :catch_4
    move-exception v0

    .line 315
    move-object v2, v0

    .line 316
    const-string v0, "PackageManager"

    .line 317
    .line 318
    new-instance v4, Ljava/lang/StringBuilder;

    .line 319
    .line 320
    const-string v5, "Failed to install compressed system package:"

    .line 321
    .line 322
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 323
    .line 324
    .line 325
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v3

    .line 329
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    .line 331
    .line 332
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v3

    .line 336
    invoke-static {v0, v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 337
    .line 338
    .line 339
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    .line 340
    .line 341
    invoke-virtual {v0, v7}, Lcom/android/server/pm/RemovePackageHelper;->removeCodePath(Ljava/io/File;)V

    .line 342
    .line 343
    .line 344
    throw v2

    .line 345
    :catchall_2
    move-exception v0

    .line 346
    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 347
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 348
    .line 349
    throw v0

    .line 350
    :cond_b
    move-object/from16 v3, p1

    .line 351
    .line 352
    new-instance v0, Ljava/lang/StringBuilder;

    .line 353
    .line 354
    const-string v1, "Unable to decompress stub at "

    .line 355
    .line 356
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 357
    .line 358
    .line 359
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object v1

    .line 363
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    .line 365
    .line 366
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 367
    .line 368
    .line 369
    move-result-object v0

    .line 370
    new-instance v1, Lcom/android/server/pm/PackageManagerException;

    .line 371
    .line 372
    const/16 v2, -0xb

    .line 373
    .line 374
    invoke-direct {v1, v0, v2}, Lcom/android/server/pm/PackageManagerException;-><init>(Ljava/lang/String;I)V

    .line 375
    .line 376
    .line 377
    throw v1
.end method

.method public final optimisticallyRegisterAppId(Lcom/android/server/pm/InstallRequest;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->assertScanResultExists()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    .line 5
    .line 6
    iget-boolean v0, v0, Lcom/android/server/pm/ScanResult;->mExistingSettingCopied:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->assertScanResultExists()V

    .line 11
    .line 12
    .line 13
    iget-object p0, p1, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    const/4 p0, 0x0

    .line 19
    return p0

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 21
    .line 22
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 23
    .line 24
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 25
    .line 26
    monitor-enter v0

    .line 27
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 28
    .line 29
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getScannedPackageSetting()Lcom/android/server/pm/PackageSetting;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->assertScanResultExists()V

    .line 36
    .line 37
    .line 38
    iget-object p1, p1, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v1}, Lcom/android/server/pm/Settings;->registerAppIdLPw(Lcom/android/server/pm/PackageSetting;)Z

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    monitor-exit v0

    .line 48
    return p0

    .line 49
    :catchall_0
    move-exception p0

    .line 50
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 52
    .line 53
    throw p0
.end method

.method public final prepareInitialScanRequest(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;IILandroid/os/UserHandle;Ljava/lang/String;)Lcom/android/server/pm/ScanRequest;
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 3
    .line 4
    const-string v2, "Package "

    .line 5
    .line 6
    iget-object v3, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 7
    .line 8
    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 9
    .line 10
    sget-boolean v4, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 11
    .line 12
    monitor-enter v3

    .line 13
    :try_start_0
    iget-object v4, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 14
    .line 15
    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mPlatformPackage:Lcom/android/server/pm/pkg/AndroidPackage;

    .line 16
    .line 17
    invoke-static/range {p1 .. p1}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageLegacyUtils;->isSystem(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    .line 18
    .line 19
    .line 20
    move-result v5

    .line 21
    iget-object v6, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 22
    .line 23
    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 24
    .line 25
    invoke-static {v1, v5}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getRealPackageOrNull(Lcom/android/server/pm/pkg/AndroidPackage;Z)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v7

    .line 29
    invoke-virtual {v6, v7}, Lcom/android/server/pm/Settings;->getRenamedPackageLPr(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getOriginalPackages()Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object v7

    .line 37
    invoke-interface {v7, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v7

    .line 41
    const/4 v8, 0x0

    .line 42
    if-eqz v7, :cond_0

    .line 43
    .line 44
    invoke-static {v1, v5}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getRealPackageOrNull(Lcom/android/server/pm/pkg/AndroidPackage;Z)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    move-object v9, v5

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    move-object v9, v8

    .line 51
    :goto_0
    if-eqz v9, :cond_2

    .line 52
    .line 53
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getOriginalPackages()Ljava/util/List;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v5

    .line 61
    if-eqz v5, :cond_2

    .line 62
    .line 63
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    if-eqz v5, :cond_1

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_1
    invoke-interface {v1, v6}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setPackageName(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 75
    .line 76
    .line 77
    :cond_2
    :goto_1
    invoke-virtual {p0, v1, v6}, Lcom/android/server/pm/InstallPackageHelper;->getOriginalPackageLocked(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 78
    .line 79
    .line 80
    move-result-object v7

    .line 81
    iget-object v5, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 82
    .line 83
    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 84
    .line 85
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v6

    .line 89
    invoke-virtual {v5, v6}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    iget-object v6, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 94
    .line 95
    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mTransferredPackages:Landroid/util/ArraySet;

    .line 96
    .line 97
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v10

    .line 101
    invoke-virtual {v6, v10}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v6

    .line 105
    if-eqz v6, :cond_3

    .line 106
    .line 107
    const-string v6, "PackageManager"

    .line 108
    .line 109
    new-instance v10, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    invoke-direct {v10, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    const-string v2, " was transferred to another, but its .apk remains"

    .line 122
    .line 123
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    invoke-static {v6, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    .line 132
    .line 133
    goto :goto_2

    .line 134
    :catchall_0
    move-exception v0

    .line 135
    goto/16 :goto_9

    .line 136
    .line 137
    :cond_3
    :goto_2
    iget-object v2, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 138
    .line 139
    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 140
    .line 141
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v6

    .line 145
    invoke-virtual {v2, v6}, Lcom/android/server/pm/Settings;->getDisabledSystemPkgLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 146
    .line 147
    .line 148
    move-result-object v6

    .line 149
    const/4 v2, 0x0

    .line 150
    if-eqz v5, :cond_5

    .line 151
    .line 152
    invoke-virtual {v5}, Lcom/android/server/pm/PackageSetting;->hasSharedUser()Z

    .line 153
    .line 154
    .line 155
    move-result v10

    .line 156
    if-nez v10, :cond_4

    .line 157
    .line 158
    goto :goto_3

    .line 159
    :cond_4
    move v10, v2

    .line 160
    goto :goto_4

    .line 161
    :cond_5
    :goto_3
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->isLeavingSharedUser()Z

    .line 162
    .line 163
    .line 164
    move-result v10

    .line 165
    :goto_4
    const/4 v11, 0x1

    .line 166
    if-nez v10, :cond_6

    .line 167
    .line 168
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getSharedUserId()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v10

    .line 172
    if-eqz v10, :cond_6

    .line 173
    .line 174
    iget-object v10, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 175
    .line 176
    iget-object v10, v10, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 177
    .line 178
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getSharedUserId()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v12

    .line 182
    invoke-virtual {v10, v12, v11}, Lcom/android/server/pm/Settings;->getSharedUserLPw(Ljava/lang/String;Z)Lcom/android/server/pm/SharedUserSetting;

    .line 183
    .line 184
    .line 185
    move-result-object v10

    .line 186
    goto :goto_5

    .line 187
    :cond_6
    move-object v10, v8

    .line 188
    :goto_5
    if-eqz v5, :cond_7

    .line 189
    .line 190
    iget-object v0, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 191
    .line 192
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 193
    .line 194
    invoke-virtual {v0, v5}, Lcom/android/server/pm/Settings;->getSharedUserSettingLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/SharedUserSetting;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    move-object v12, v0

    .line 199
    goto :goto_6

    .line 200
    :cond_7
    move-object v12, v8

    .line 201
    :goto_6
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    if-eqz v4, :cond_8

    .line 203
    .line 204
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v3

    .line 212
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 213
    .line 214
    .line 215
    move-result v0

    .line 216
    if-eqz v0, :cond_8

    .line 217
    .line 218
    goto :goto_7

    .line 219
    :cond_8
    move v11, v2

    .line 220
    :goto_7
    new-instance v14, Lcom/android/server/pm/ScanRequest;

    .line 221
    .line 222
    if-nez v5, :cond_9

    .line 223
    .line 224
    move-object v3, v8

    .line 225
    goto :goto_8

    .line 226
    :cond_9
    iget-object v0, v5, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 227
    .line 228
    move-object v3, v0

    .line 229
    :goto_8
    move-object v0, v14

    .line 230
    move-object/from16 v1, p1

    .line 231
    .line 232
    move-object v2, v12

    .line 233
    move-object v4, v5

    .line 234
    move-object v5, v10

    .line 235
    move-object v8, v9

    .line 236
    move/from16 v9, p2

    .line 237
    .line 238
    move/from16 v10, p3

    .line 239
    .line 240
    move-object/from16 v12, p4

    .line 241
    .line 242
    move-object/from16 v13, p5

    .line 243
    .line 244
    invoke-direct/range {v0 .. v13}, Lcom/android/server/pm/ScanRequest;-><init>(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;Lcom/android/server/pm/SharedUserSetting;Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/SharedUserSetting;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;Ljava/lang/String;IIZLandroid/os/UserHandle;Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    return-object v14

    .line 248
    :goto_9
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 249
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 250
    .line 251
    throw v0
.end method

.method public final preparePackageLI(Lcom/android/server/pm/InstallRequest;)V
    .locals 45

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v12, p1

    .line 4
    .line 5
    iget-object v3, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 6
    .line 7
    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 8
    .line 9
    invoke-virtual {v3}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    .line 10
    .line 11
    .line 12
    move-result-object v9

    .line 13
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/InstallRequest;->getInstallFlags()I

    .line 14
    .line 15
    .line 16
    move-result v10

    .line 17
    const/16 v11, 0x8

    .line 18
    .line 19
    and-int/lit8 v3, v10, 0x8

    .line 20
    .line 21
    if-nez v3, :cond_1

    .line 22
    .line 23
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/InstallRequest;->getVolumeUuid()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    if-eqz v3, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v3, 0x0

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    :goto_0
    const/4 v3, 0x1

    .line 33
    :goto_1
    and-int/lit16 v4, v10, 0x800

    .line 34
    .line 35
    if-eqz v4, :cond_2

    .line 36
    .line 37
    const/4 v4, 0x1

    .line 38
    goto :goto_2

    .line 39
    :cond_2
    const/4 v4, 0x0

    .line 40
    :goto_2
    and-int/lit16 v5, v10, 0x4000

    .line 41
    .line 42
    if-eqz v5, :cond_3

    .line 43
    .line 44
    const/4 v5, 0x1

    .line 45
    goto :goto_3

    .line 46
    :cond_3
    const/4 v5, 0x0

    .line 47
    :goto_3
    const/high16 v15, 0x10000

    .line 48
    .line 49
    and-int v6, v10, v15

    .line 50
    .line 51
    if-eqz v6, :cond_4

    .line 52
    .line 53
    const/4 v6, 0x1

    .line 54
    goto :goto_4

    .line 55
    :cond_4
    const/4 v6, 0x0

    .line 56
    :goto_4
    const/high16 v16, 0x20000

    .line 57
    .line 58
    and-int v7, v10, v16

    .line 59
    .line 60
    if-eqz v7, :cond_5

    .line 61
    .line 62
    const/4 v7, 0x1

    .line 63
    goto :goto_5

    .line 64
    :cond_5
    const/4 v7, 0x0

    .line 65
    :goto_5
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/InstallRequest;->getInstallReason()I

    .line 66
    .line 67
    .line 68
    move-result v15

    .line 69
    const/4 v11, 0x5

    .line 70
    if-ne v15, v11, :cond_6

    .line 71
    .line 72
    const/4 v11, 0x1

    .line 73
    goto :goto_6

    .line 74
    :cond_6
    const/4 v11, 0x0

    .line 75
    :goto_6
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/InstallRequest;->isInstallMove()Z

    .line 76
    .line 77
    .line 78
    move-result v15

    .line 79
    if-eqz v15, :cond_7

    .line 80
    .line 81
    const/16 v15, 0x206

    .line 82
    .line 83
    goto :goto_7

    .line 84
    :cond_7
    const/4 v15, 0x6

    .line 85
    :goto_7
    and-int/lit16 v8, v10, 0x1000

    .line 86
    .line 87
    if-eqz v8, :cond_8

    .line 88
    .line 89
    or-int/lit16 v15, v15, 0x400

    .line 90
    .line 91
    :cond_8
    if-eqz v4, :cond_9

    .line 92
    .line 93
    or-int/lit16 v15, v15, 0x2000

    .line 94
    .line 95
    :cond_9
    if-eqz v5, :cond_a

    .line 96
    .line 97
    or-int/lit16 v15, v15, 0x4000

    .line 98
    .line 99
    :cond_a
    if-eqz v6, :cond_b

    .line 100
    .line 101
    const v5, 0x8000

    .line 102
    .line 103
    .line 104
    or-int/2addr v15, v5

    .line 105
    :cond_b
    if-eqz v7, :cond_c

    .line 106
    .line 107
    const/high16 v5, 0x4000000

    .line 108
    .line 109
    or-int/2addr v15, v5

    .line 110
    :cond_c
    new-instance v5, Ljava/io/File;

    .line 111
    .line 112
    if-eqz v7, :cond_d

    .line 113
    .line 114
    iget-object v6, v12, Lcom/android/server/pm/InstallRequest;->mApexInfo:Landroid/apex/ApexInfo;

    .line 115
    .line 116
    iget-object v6, v6, Landroid/apex/ApexInfo;->modulePath:Ljava/lang/String;

    .line 117
    .line 118
    goto :goto_8

    .line 119
    :cond_d
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/InstallRequest;->getCodePath()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v6

    .line 123
    :goto_8
    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    if-eqz v4, :cond_f

    .line 127
    .line 128
    if-nez v3, :cond_e

    .line 129
    .line 130
    goto :goto_9

    .line 131
    :cond_e
    const-string v1, "PackageManager"

    .line 132
    .line 133
    new-instance v2, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    const-string v4, "Incompatible ephemeral install; external="

    .line 136
    .line 137
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    .line 149
    .line 150
    new-instance v1, Lcom/android/server/pm/PrepareFailure;

    .line 151
    .line 152
    invoke-direct {v1}, Lcom/android/server/pm/PrepareFailure;-><init>()V

    .line 153
    .line 154
    .line 155
    throw v1

    .line 156
    :cond_f
    :goto_9
    iget-object v6, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 157
    .line 158
    iget v6, v6, Lcom/android/server/pm/PackageManagerService;->mDefParseFlags:I

    .line 159
    .line 160
    const v18, -0x7fffffc0

    .line 161
    .line 162
    .line 163
    or-int v6, v6, v18

    .line 164
    .line 165
    if-eqz v3, :cond_10

    .line 166
    .line 167
    const/16 v18, 0x8

    .line 168
    .line 169
    goto :goto_a

    .line 170
    :cond_10
    const/16 v18, 0x0

    .line 171
    .line 172
    :goto_a
    or-int v6, v6, v18

    .line 173
    .line 174
    const-string/jumbo v2, "parsePackage"

    .line 175
    .line 176
    .line 177
    const-wide/32 v13, 0x40000

    .line 178
    .line 179
    .line 180
    invoke-static {v13, v14, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 181
    .line 182
    .line 183
    :try_start_0
    iget-object v2, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 184
    .line 185
    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 186
    .line 187
    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerServiceInjector;->getPreparingPackageParser()Lcom/android/internal/pm/parsing/PackageParser2;

    .line 188
    .line 189
    .line 190
    move-result-object v2
    :try_end_0
    .catch Lcom/android/internal/pm/parsing/PackageParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 191
    :try_start_1
    iget-object v13, v12, Lcom/android/server/pm/InstallRequest;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    .line 192
    .line 193
    if-eqz v13, :cond_11

    .line 194
    .line 195
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/InstallRequest;->getInstallFlags()I

    .line 196
    .line 197
    .line 198
    move-result v13

    .line 199
    sget-object v21, Lcom/android/server/pm/PackageInstallerSession;->EMPTY_CHILD_SESSION_ARRAY:[I

    .line 200
    .line 201
    const/high16 v21, 0x8000000

    .line 202
    .line 203
    and-int v13, v13, v21

    .line 204
    .line 205
    if-eqz v13, :cond_11

    .line 206
    .line 207
    iget-object v5, v12, Lcom/android/server/pm/InstallRequest;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    .line 208
    .line 209
    invoke-virtual {v2, v5, v6}, Lcom/android/internal/pm/parsing/PackageParser2;->parsePackageFromPackageLite(Landroid/content/pm/parsing/PackageLite;I)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 210
    .line 211
    .line 212
    move-result-object v5

    .line 213
    iget-object v13, v12, Lcom/android/server/pm/InstallRequest;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    .line 214
    .line 215
    invoke-virtual {v13}, Landroid/content/pm/parsing/PackageLite;->getArchivedPackage()Landroid/content/pm/ArchivedPackageParcel;

    .line 216
    .line 217
    .line 218
    move-result-object v13

    .line 219
    move-object/from16 v31, v13

    .line 220
    .line 221
    move-object v13, v5

    .line 222
    goto :goto_b

    .line 223
    :catchall_0
    move-exception v0

    .line 224
    move-object v1, v0

    .line 225
    goto/16 :goto_72

    .line 226
    .line 227
    :cond_11
    const/4 v13, 0x0

    .line 228
    invoke-virtual {v2, v5, v6, v13}, Lcom/android/internal/pm/parsing/PackageParser2;->parsePackage(Ljava/io/File;IZ)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 229
    .line 230
    .line 231
    move-result-object v5

    .line 232
    invoke-static {v5}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->validatePackageDexMetadata(Lcom/android/server/pm/pkg/AndroidPackage;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 233
    .line 234
    .line 235
    move-object v13, v5

    .line 236
    const/16 v31, 0x0

    .line 237
    .line 238
    :goto_b
    if-eqz v2, :cond_12

    .line 239
    .line 240
    :try_start_2
    invoke-virtual {v2}, Lcom/android/internal/pm/parsing/PackageParser2;->close()V
    :try_end_2
    .catch Lcom/android/internal/pm/parsing/PackageParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 241
    .line 242
    .line 243
    :cond_12
    const-wide/32 v19, 0x40000

    .line 244
    .line 245
    .line 246
    goto :goto_c

    .line 247
    :catchall_1
    move-exception v0

    .line 248
    move-object v3, v0

    .line 249
    const-wide/32 v1, 0x40000

    .line 250
    .line 251
    .line 252
    goto/16 :goto_75

    .line 253
    .line 254
    :catch_0
    move-exception v0

    .line 255
    move-object v1, v0

    .line 256
    goto/16 :goto_74

    .line 257
    .line 258
    :goto_c
    invoke-static/range {v19 .. v20}, Landroid/os/Trace;->traceEnd(J)V

    .line 259
    .line 260
    .line 261
    invoke-interface {v13}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getMetaData()Landroid/os/Bundle;

    .line 262
    .line 263
    .line 264
    move-result-object v2

    .line 265
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/InstallRequest;->getUserId()I

    .line 266
    .line 267
    .line 268
    move-result v5

    .line 269
    new-instance v14, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda8;

    .line 270
    .line 271
    invoke-direct {v14, v1}, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/pm/InstallPackageHelper;)V

    .line 272
    .line 273
    .line 274
    invoke-static {v2, v5, v14}, Lcom/samsung/android/server/pm/install/MultiUserInstallPolicy;->checkIfInstallAllowed(Landroid/os/Bundle;ILcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda8;)I

    .line 275
    .line 276
    .line 277
    move-result v2

    .line 278
    if-nez v2, :cond_94

    .line 279
    .line 280
    const/high16 v2, 0x1000000

    .line 281
    .line 282
    and-int/2addr v2, v10

    .line 283
    if-eqz v2, :cond_13

    .line 284
    .line 285
    const/4 v2, 0x1

    .line 286
    goto :goto_d

    .line 287
    :cond_13
    const/4 v2, 0x0

    .line 288
    :goto_d
    if-nez v2, :cond_14

    .line 289
    .line 290
    invoke-interface {v13}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->isTestOnly()Z

    .line 291
    .line 292
    .line 293
    move-result v14

    .line 294
    if-eqz v14, :cond_14

    .line 295
    .line 296
    const/4 v2, 0x1

    .line 297
    :cond_14
    if-nez v2, :cond_16

    .line 298
    .line 299
    invoke-interface {v13}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getTargetSdkVersion()I

    .line 300
    .line 301
    .line 302
    move-result v2

    .line 303
    sget v14, Lcom/android/server/pm/PackageManagerService;->MIN_INSTALLABLE_TARGET_SDK:I

    .line 304
    .line 305
    if-lt v2, v14, :cond_15

    .line 306
    .line 307
    goto :goto_e

    .line 308
    :cond_15
    const-string v1, "PackageManager"

    .line 309
    .line 310
    new-instance v2, Ljava/lang/StringBuilder;

    .line 311
    .line 312
    const-string v3, "App "

    .line 313
    .line 314
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 315
    .line 316
    .line 317
    invoke-interface {v13}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v3

    .line 321
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    .line 323
    .line 324
    const-string v3, " targets deprecated sdk version"

    .line 325
    .line 326
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    .line 328
    .line 329
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v2

    .line 333
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    .line 335
    .line 336
    new-instance v1, Lcom/android/server/pm/PrepareFailure;

    .line 337
    .line 338
    const-string v2, "App package must target at least SDK version "

    .line 339
    .line 340
    const-string v3, ", but found "

    .line 341
    .line 342
    invoke-static {v14, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    .line 344
    .line 345
    move-result-object v2

    .line 346
    invoke-interface {v13}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getTargetSdkVersion()I

    .line 347
    .line 348
    .line 349
    move-result v3

    .line 350
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 351
    .line 352
    .line 353
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object v2

    .line 357
    const/16 v3, -0x1d

    .line 358
    .line 359
    invoke-direct {v1, v3, v2}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    .line 360
    .line 361
    .line 362
    throw v1

    .line 363
    :cond_16
    :goto_e
    const/16 v2, -0x74

    .line 364
    .line 365
    if-eqz v4, :cond_19

    .line 366
    .line 367
    invoke-interface {v13}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getTargetSdkVersion()I

    .line 368
    .line 369
    .line 370
    move-result v14

    .line 371
    const/16 v5, 0x1a

    .line 372
    .line 373
    if-lt v14, v5, :cond_18

    .line 374
    .line 375
    invoke-interface {v13}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getSharedUserId()Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v5

    .line 379
    if-nez v5, :cond_17

    .line 380
    .line 381
    goto :goto_f

    .line 382
    :cond_17
    const-string v1, "PackageManager"

    .line 383
    .line 384
    new-instance v3, Ljava/lang/StringBuilder;

    .line 385
    .line 386
    const-string v4, "Instant app package "

    .line 387
    .line 388
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 389
    .line 390
    .line 391
    invoke-interface {v13}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    .line 392
    .line 393
    .line 394
    move-result-object v4

    .line 395
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    .line 397
    .line 398
    const-string v4, " may not declare sharedUserId."

    .line 399
    .line 400
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    .line 402
    .line 403
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 404
    .line 405
    .line 406
    move-result-object v3

    .line 407
    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    .line 409
    .line 410
    new-instance v1, Lcom/android/server/pm/PrepareFailure;

    .line 411
    .line 412
    const-string v3, "Instant app package may not declare a sharedUserId"

    .line 413
    .line 414
    invoke-direct {v1, v2, v3}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    .line 415
    .line 416
    .line 417
    throw v1

    .line 418
    :cond_18
    const-string v1, "PackageManager"

    .line 419
    .line 420
    new-instance v3, Ljava/lang/StringBuilder;

    .line 421
    .line 422
    const-string v4, "Instant app package "

    .line 423
    .line 424
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 425
    .line 426
    .line 427
    invoke-interface {v13}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    .line 428
    .line 429
    .line 430
    move-result-object v4

    .line 431
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    .line 433
    .line 434
    const-string v4, " does not target at least O"

    .line 435
    .line 436
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    .line 438
    .line 439
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 440
    .line 441
    .line 442
    move-result-object v3

    .line 443
    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    .line 445
    .line 446
    new-instance v1, Lcom/android/server/pm/PrepareFailure;

    .line 447
    .line 448
    const-string v3, "Instant app package must target at least O"

    .line 449
    .line 450
    invoke-direct {v1, v2, v3}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    .line 451
    .line 452
    .line 453
    throw v1

    .line 454
    :cond_19
    :goto_f
    invoke-interface {v13}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->isStaticSharedLibrary()Z

    .line 455
    .line 456
    .line 457
    move-result v5

    .line 458
    const/16 v14, -0x13

    .line 459
    .line 460
    if-eqz v5, :cond_1b

    .line 461
    .line 462
    invoke-static {v13}, Lcom/android/server/pm/PackageManagerService;->renameStaticSharedLibraryPackage(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;)V

    .line 463
    .line 464
    .line 465
    if-nez v3, :cond_1a

    .line 466
    .line 467
    goto :goto_10

    .line 468
    :cond_1a
    const-string v1, "PackageManager"

    .line 469
    .line 470
    const-string v2, "Static shared libs can only be installed on internal storage."

    .line 471
    .line 472
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    .line 474
    .line 475
    new-instance v1, Lcom/android/server/pm/PrepareFailure;

    .line 476
    .line 477
    const-string v2, "Static shared libs can only be installed on internal storage."

    .line 478
    .line 479
    invoke-direct {v1, v14, v2}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    .line 480
    .line 481
    .line 482
    throw v1

    .line 483
    :cond_1b
    :goto_10
    invoke-interface {v13}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    .line 484
    .line 485
    .line 486
    move-result-object v5

    .line 487
    iput-object v5, v12, Lcom/android/server/pm/InstallRequest;->mName:Ljava/lang/String;

    .line 488
    .line 489
    sget-boolean v19, Lcom/samsung/android/rune/CoreRune;->SYSFW_APP_SPEG:Z

    .line 490
    .line 491
    if-eqz v19, :cond_1d

    .line 492
    .line 493
    const-string v14, "com.samsung.speg"

    .line 494
    .line 495
    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 496
    .line 497
    .line 498
    move-result v14

    .line 499
    if-nez v14, :cond_1c

    .line 500
    .line 501
    goto :goto_11

    .line 502
    :cond_1c
    new-instance v1, Lcom/android/server/pm/PrepareFailure;

    .line 503
    .line 504
    const/16 v2, -0x6a

    .line 505
    .line 506
    const-string v3, "Forbidden package name"

    .line 507
    .line 508
    invoke-direct {v1, v2, v3}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    .line 509
    .line 510
    .line 511
    throw v1

    .line 512
    :cond_1d
    :goto_11
    sget-object v14, Lcom/android/server/pm/PersonaServiceHelper;->ALLOWED_BLUETOOTH_TARGET:Ljava/util/List;

    .line 513
    .line 514
    invoke-interface {v13}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getMetaData()Landroid/os/Bundle;

    .line 515
    .line 516
    .line 517
    move-result-object v14

    .line 518
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/InstallRequest;->getUser()Landroid/os/UserHandle;

    .line 519
    .line 520
    .line 521
    move-result-object v19

    .line 522
    invoke-virtual/range {v19 .. v19}, Landroid/os/UserHandle;->getIdentifier()I

    .line 523
    .line 524
    .line 525
    move-result v2

    .line 526
    invoke-static {v2, v5, v14}, Lcom/android/server/pm/PersonaServiceHelper;->isDisallowedAppForKnox(ILjava/lang/String;Landroid/os/Bundle;)Z

    .line 527
    .line 528
    .line 529
    move-result v2

    .line 530
    if-nez v2, :cond_93

    .line 531
    .line 532
    invoke-interface {v13}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->isTestOnly()Z

    .line 533
    .line 534
    .line 535
    move-result v2

    .line 536
    if-eqz v2, :cond_1f

    .line 537
    .line 538
    and-int/lit8 v2, v10, 0x4

    .line 539
    .line 540
    if-eqz v2, :cond_1e

    .line 541
    .line 542
    goto :goto_12

    .line 543
    :cond_1e
    new-instance v1, Lcom/android/server/pm/PrepareFailure;

    .line 544
    .line 545
    const/16 v2, -0xf

    .line 546
    .line 547
    const-string v3, "Failed to install test-only apk. Did you forget to add -t?"

    .line 548
    .line 549
    invoke-direct {v1, v2, v3}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    .line 550
    .line 551
    .line 552
    throw v1

    .line 553
    :cond_1f
    :goto_12
    iget-object v2, v12, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    .line 554
    .line 555
    if-nez v2, :cond_20

    .line 556
    .line 557
    sget-object v14, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    .line 558
    .line 559
    :goto_13
    move/from16 v42, v6

    .line 560
    .line 561
    goto :goto_14

    .line 562
    :cond_20
    iget-object v14, v2, Lcom/android/server/pm/InstallArgs;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 563
    .line 564
    goto :goto_13

    .line 565
    :goto_14
    sget-object v6, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    .line 566
    .line 567
    if-eq v14, v6, :cond_22

    .line 568
    .line 569
    if-nez v2, :cond_21

    .line 570
    .line 571
    goto :goto_15

    .line 572
    :cond_21
    iget-object v6, v2, Lcom/android/server/pm/InstallArgs;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 573
    .line 574
    :goto_15
    invoke-interface {v13, v6}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setSigningDetails(Landroid/content/pm/SigningDetails;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 575
    .line 576
    .line 577
    goto :goto_16

    .line 578
    :cond_22
    invoke-static {}, Landroid/content/pm/parsing/result/ParseTypeImpl;->forDefaultParsing()Landroid/content/pm/parsing/result/ParseTypeImpl;

    .line 579
    .line 580
    .line 581
    move-result-object v2

    .line 582
    const/4 v6, 0x0

    .line 583
    invoke-static {v2, v13, v6}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->getSigningDetails(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/parsing/pkg/ParsedPackage;Z)Landroid/content/pm/parsing/result/ParseResult;

    .line 584
    .line 585
    .line 586
    move-result-object v2

    .line 587
    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    .line 588
    .line 589
    .line 590
    move-result v6

    .line 591
    if-nez v6, :cond_92

    .line 592
    .line 593
    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    .line 594
    .line 595
    .line 596
    move-result-object v2

    .line 597
    check-cast v2, Landroid/content/pm/SigningDetails;

    .line 598
    .line 599
    invoke-interface {v13, v2}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setSigningDetails(Landroid/content/pm/SigningDetails;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 600
    .line 601
    .line 602
    :goto_16
    const-string v2, "PackageManager"

    .line 603
    .line 604
    const-string/jumbo v6, "verifying app can be installed or not"

    .line 605
    .line 606
    .line 607
    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    .line 609
    .line 610
    const-string v2, "application_policy"

    .line 611
    .line 612
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 613
    .line 614
    .line 615
    move-result-object v2

    .line 616
    invoke-static {v2}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/application/IApplicationPolicy;

    .line 617
    .line 618
    .line 619
    move-result-object v2

    .line 620
    :try_start_3
    iget-object v6, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 621
    .line 622
    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 623
    .line 624
    iget-object v6, v6, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 625
    .line 626
    invoke-virtual {v6, v5}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 627
    .line 628
    .line 629
    move-result-object v6

    .line 630
    check-cast v6, Lcom/android/server/pm/PackageSetting;

    .line 631
    .line 632
    if-eqz v2, :cond_26

    .line 633
    .line 634
    new-instance v6, Ljava/util/ArrayList;

    .line 635
    .line 636
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 637
    .line 638
    .line 639
    invoke-interface {v13}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    .line 640
    .line 641
    .line 642
    move-result-object v14

    .line 643
    invoke-virtual {v14}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    .line 644
    .line 645
    .line 646
    move-result-object v14
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 647
    move/from16 v43, v8

    .line 648
    .line 649
    :try_start_4
    new-instance v8, Ljava/util/ArrayList;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2

    .line 650
    .line 651
    move/from16 v44, v7

    .line 652
    .line 653
    :try_start_5
    invoke-interface {v13}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getRequestedPermissions()Ljava/util/Set;

    .line 654
    .line 655
    .line 656
    move-result-object v7

    .line 657
    invoke-direct {v8, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 658
    .line 659
    .line 660
    if-eqz v14, :cond_23

    .line 661
    .line 662
    array-length v7, v14
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    .line 663
    move/from16 v28, v3

    .line 664
    .line 665
    const/4 v3, 0x0

    .line 666
    :goto_17
    if-ge v3, v7, :cond_24

    .line 667
    .line 668
    :try_start_6
    aget-object v19, v14, v3

    .line 669
    .line 670
    move/from16 v20, v7

    .line 671
    .line 672
    invoke-virtual/range {v19 .. v19}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    .line 673
    .line 674
    .line 675
    move-result-object v7

    .line 676
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 677
    .line 678
    .line 679
    const/4 v7, 0x1

    .line 680
    add-int/2addr v3, v7

    .line 681
    move/from16 v7, v20

    .line 682
    .line 683
    goto :goto_17

    .line 684
    :catch_1
    move/from16 v28, v3

    .line 685
    .line 686
    goto :goto_18

    .line 687
    :cond_23
    move/from16 v28, v3

    .line 688
    .line 689
    :cond_24
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/InstallRequest;->getUser()Landroid/os/UserHandle;

    .line 690
    .line 691
    .line 692
    move-result-object v3

    .line 693
    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    .line 694
    .line 695
    .line 696
    move-result v3

    .line 697
    invoke-interface {v2, v5, v6, v8, v3}, Lcom/samsung/android/knox/application/IApplicationPolicy;->isApplicationInstallationEnabled(Ljava/lang/String;Ljava/util/List;Ljava/util/List;I)Z

    .line 698
    .line 699
    .line 700
    move-result v2

    .line 701
    if-eqz v2, :cond_25

    .line 702
    .line 703
    goto :goto_18

    .line 704
    :cond_25
    const-string v2, "PackageManager"

    .line 705
    .line 706
    const-string v3, "This app installation is not allowed"

    .line 707
    .line 708
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    .line 710
    .line 711
    invoke-interface {v13}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    .line 712
    .line 713
    .line 714
    move-result-object v2

    .line 715
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/InstallRequest;->getUser()Landroid/os/UserHandle;

    .line 716
    .line 717
    .line 718
    move-result-object v3

    .line 719
    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    .line 720
    .line 721
    .line 722
    move-result v3

    .line 723
    const/4 v6, 0x0

    .line 724
    invoke-static {v3, v2, v6}, Lcom/android/server/pm/PmHook;->auditLogInstallFail(ILjava/lang/String;Z)V

    .line 725
    .line 726
    .line 727
    new-instance v2, Lcom/android/server/pm/PrepareFailure;

    .line 728
    .line 729
    const-string v3, "This app installation is not allowed"

    .line 730
    .line 731
    const/16 v6, -0x6e

    .line 732
    .line 733
    invoke-direct {v2, v6, v3}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    .line 734
    .line 735
    .line 736
    throw v2
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_4

    .line 737
    :catch_2
    move/from16 v28, v3

    .line 738
    .line 739
    move/from16 v44, v7

    .line 740
    .line 741
    goto :goto_18

    .line 742
    :catch_3
    :cond_26
    move/from16 v28, v3

    .line 743
    .line 744
    move/from16 v44, v7

    .line 745
    .line 746
    move/from16 v43, v8

    .line 747
    .line 748
    :catch_4
    :goto_18
    if-eqz v4, :cond_28

    .line 749
    .line 750
    invoke-interface {v13}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    .line 751
    .line 752
    .line 753
    move-result-object v2

    .line 754
    invoke-virtual {v2}, Landroid/content/pm/SigningDetails;->getSignatureSchemeVersion()I

    .line 755
    .line 756
    .line 757
    move-result v2

    .line 758
    const/4 v3, 0x2

    .line 759
    if-lt v2, v3, :cond_27

    .line 760
    .line 761
    goto :goto_19

    .line 762
    :cond_27
    const-string v1, "PackageManager"

    .line 763
    .line 764
    new-instance v2, Ljava/lang/StringBuilder;

    .line 765
    .line 766
    const-string v3, "Instant app package "

    .line 767
    .line 768
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 769
    .line 770
    .line 771
    invoke-interface {v13}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    .line 772
    .line 773
    .line 774
    move-result-object v3

    .line 775
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 776
    .line 777
    .line 778
    const-string v3, " is not signed with at least APK Signature Scheme v2"

    .line 779
    .line 780
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 781
    .line 782
    .line 783
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 784
    .line 785
    .line 786
    move-result-object v2

    .line 787
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    .line 789
    .line 790
    new-instance v1, Lcom/android/server/pm/PrepareFailure;

    .line 791
    .line 792
    const-string v2, "Instant app package must be signed with APK Signature Scheme v2 or greater"

    .line 793
    .line 794
    const/16 v3, -0x74

    .line 795
    .line 796
    invoke-direct {v1, v3, v2}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    .line 797
    .line 798
    .line 799
    throw v1

    .line 800
    :cond_28
    :goto_19
    and-int/lit16 v2, v10, 0x80

    .line 801
    .line 802
    if-eqz v2, :cond_29

    .line 803
    .line 804
    const/16 v41, 0x1

    .line 805
    .line 806
    goto :goto_1a

    .line 807
    :cond_29
    const/16 v41, 0x0

    .line 808
    .line 809
    :goto_1a
    :try_start_7
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/InstallRequest;->getInstallSource()Lcom/android/server/pm/InstallSource;

    .line 810
    .line 811
    .line 812
    move-result-object v2

    .line 813
    if-eqz v2, :cond_2a

    .line 814
    .line 815
    iget-object v2, v2, Lcom/android/server/pm/InstallSource;->mInitiatingPackageName:Ljava/lang/String;

    .line 816
    .line 817
    move-object/from16 v40, v2

    .line 818
    .line 819
    goto :goto_1b

    .line 820
    :catch_5
    move-exception v0

    .line 821
    move-object v2, v0

    .line 822
    goto :goto_1c

    .line 823
    :cond_2a
    const/16 v40, 0x0

    .line 824
    .line 825
    :goto_1b
    invoke-static {}, Landroid/content/pm/ASKSManager;->getASKSManager()Landroid/content/pm/IASKSManager;

    .line 826
    .line 827
    .line 828
    move-result-object v33

    .line 829
    invoke-interface {v13}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getBaseApkPath()Ljava/lang/String;

    .line 830
    .line 831
    .line 832
    move-result-object v35

    .line 833
    invoke-interface {v13}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getLongVersionCode()J

    .line 834
    .line 835
    .line 836
    move-result-wide v36

    .line 837
    invoke-interface {v13}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    .line 838
    .line 839
    .line 840
    move-result-object v2

    .line 841
    invoke-virtual {v2}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    .line 842
    .line 843
    .line 844
    move-result-object v38

    .line 845
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/InstallRequest;->getInstallerPackageName()Ljava/lang/String;

    .line 846
    .line 847
    .line 848
    move-result-object v39

    .line 849
    move-object/from16 v34, v5

    .line 850
    .line 851
    invoke-interface/range {v33 .. v41}, Landroid/content/pm/IASKSManager;->verifyASKStokenForPackage(Ljava/lang/String;Ljava/lang/String;J[Landroid/content/pm/Signature;Ljava/lang/String;Ljava/lang/String;Z)I

    .line 852
    .line 853
    .line 854
    move-result v2

    .line 855
    const/4 v3, -0x1

    .line 856
    if-ne v2, v3, :cond_2b

    .line 857
    .line 858
    goto :goto_1d

    .line 859
    :cond_2b
    invoke-virtual {v12, v2}, Lcom/android/server/pm/InstallRequest;->setReturnCode(I)V

    .line 860
    .line 861
    .line 862
    new-instance v3, Lcom/android/server/pm/PrepareFailure;

    .line 863
    .line 864
    invoke-static {v2}, Landroid/content/pm/ASKSManager;->getASKSerrorDetail(I)Ljava/lang/String;

    .line 865
    .line 866
    .line 867
    move-result-object v6

    .line 868
    invoke-direct {v3, v2, v6}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    .line 869
    .line 870
    .line 871
    throw v3
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_5

    .line 872
    :goto_1c
    const-string v3, "PackageManager"

    .line 873
    .line 874
    new-instance v6, Ljava/lang/StringBuilder;

    .line 875
    .line 876
    const-string v7, "RemoteException: "

    .line 877
    .line 878
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 879
    .line 880
    .line 881
    invoke-static {v2, v6, v3}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 882
    .line 883
    .line 884
    :goto_1d
    :try_start_8
    const-string v2, "com.sec.android.easyMover"

    .line 885
    .line 886
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 887
    .line 888
    .line 889
    move-result v2

    .line 890
    const-string v3, "com.android.vending"

    .line 891
    .line 892
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/InstallRequest;->getInstallerPackageName()Ljava/lang/String;

    .line 893
    .line 894
    .line 895
    move-result-object v6

    .line 896
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 897
    .line 898
    .line 899
    move-result v3

    .line 900
    if-nez v3, :cond_2d

    .line 901
    .line 902
    const-string v3, "com.sec.android.app.samsungapps"

    .line 903
    .line 904
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/InstallRequest;->getInstallerPackageName()Ljava/lang/String;

    .line 905
    .line 906
    .line 907
    move-result-object v6

    .line 908
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 909
    .line 910
    .line 911
    move-result v3

    .line 912
    if-eqz v3, :cond_2c

    .line 913
    .line 914
    goto :goto_1e

    .line 915
    :cond_2c
    const/4 v3, 0x0

    .line 916
    goto :goto_1f

    .line 917
    :catch_6
    move-exception v0

    .line 918
    move-object v2, v0

    .line 919
    goto :goto_20

    .line 920
    :cond_2d
    :goto_1e
    const/4 v3, 0x1

    .line 921
    :goto_1f
    if-eqz v2, :cond_2f

    .line 922
    .line 923
    if-eqz v3, :cond_2f

    .line 924
    .line 925
    iget-object v2, v1, Lcom/android/server/pm/InstallPackageHelper;->mContext:Landroid/content/Context;

    .line 926
    .line 927
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 928
    .line 929
    .line 930
    move-result-object v2

    .line 931
    const-string v3, "content://com.sec.android.easyMover.statusProvider/isOOBERunning"

    .line 932
    .line 933
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 934
    .line 935
    .line 936
    move-result-object v3

    .line 937
    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    .line 938
    .line 939
    .line 940
    move-result-object v2

    .line 941
    const-string v3, "TRUE"

    .line 942
    .line 943
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 944
    .line 945
    .line 946
    move-result v2

    .line 947
    if-eqz v2, :cond_2e

    .line 948
    .line 949
    const-string v2, "PackageManager"

    .line 950
    .line 951
    const-string v3, "This SmartSwitch installation is not allowed due to app is running in OOBE"

    .line 952
    .line 953
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    .line 955
    .line 956
    const/4 v2, 0x1

    .line 957
    goto :goto_22

    .line 958
    :cond_2e
    const-string v2, "PackageManager"

    .line 959
    .line 960
    const-string v3, "This SmartSwitch installation is allowed"

    .line 961
    .line 962
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    .line 963
    .line 964
    .line 965
    goto :goto_21

    .line 966
    :goto_20
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 967
    .line 968
    .line 969
    :cond_2f
    :goto_21
    const/4 v2, 0x0

    .line 970
    :goto_22
    if-nez v2, :cond_91

    .line 971
    .line 972
    iget-object v2, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 973
    .line 974
    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 975
    .line 976
    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 977
    .line 978
    monitor-enter v2

    .line 979
    :try_start_9
    iget-object v3, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 980
    .line 981
    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 982
    .line 983
    invoke-virtual {v3, v5}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 984
    .line 985
    .line 986
    move-result-object v3

    .line 987
    const/4 v6, 0x2

    .line 988
    and-int/lit8 v7, v10, 0x2

    .line 989
    .line 990
    if-eqz v7, :cond_39

    .line 991
    .line 992
    iget-object v6, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 993
    .line 994
    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 995
    .line 996
    invoke-virtual {v6, v5}, Lcom/android/server/pm/Settings;->getRenamedPackageLPr(Ljava/lang/String;)Ljava/lang/String;

    .line 997
    .line 998
    .line 999
    move-result-object v6

    .line 1000
    invoke-interface {v13}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getOriginalPackages()Ljava/util/List;

    .line 1001
    .line 1002
    .line 1003
    move-result-object v7

    .line 1004
    invoke-interface {v7, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 1005
    .line 1006
    .line 1007
    move-result v7

    .line 1008
    if-eqz v7, :cond_30

    .line 1009
    .line 1010
    iget-object v7, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 1011
    .line 1012
    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 1013
    .line 1014
    invoke-virtual {v7, v6}, Lcom/android/server/utils/WatchedArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 1015
    .line 1016
    .line 1017
    move-result v7

    .line 1018
    if-eqz v7, :cond_30

    .line 1019
    .line 1020
    invoke-interface {v13, v6}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setPackageName(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 1021
    .line 1022
    .line 1023
    invoke-interface {v13}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    .line 1024
    .line 1025
    .line 1026
    move-result-object v5

    .line 1027
    :goto_23
    const/4 v6, 0x1

    .line 1028
    goto :goto_24

    .line 1029
    :catchall_2
    move-exception v0

    .line 1030
    move-object v1, v0

    .line 1031
    goto/16 :goto_70

    .line 1032
    .line 1033
    :cond_30
    if-eqz v3, :cond_31

    .line 1034
    .line 1035
    goto :goto_23

    .line 1036
    :cond_31
    const/4 v6, 0x0

    .line 1037
    :goto_24
    if-eqz v6, :cond_37

    .line 1038
    .line 1039
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getTargetSdkVersion()I

    .line 1040
    .line 1041
    .line 1042
    move-result v7

    .line 1043
    invoke-interface {v13}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getTargetSdkVersion()I

    .line 1044
    .line 1045
    .line 1046
    move-result v14

    .line 1047
    const/16 v8, 0x16

    .line 1048
    .line 1049
    if-le v7, v8, :cond_33

    .line 1050
    .line 1051
    if-le v14, v8, :cond_32

    .line 1052
    .line 1053
    goto :goto_25

    .line 1054
    :cond_32
    new-instance v1, Lcom/android/server/pm/PrepareFailure;

    .line 1055
    .line 1056
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1057
    .line 1058
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1059
    .line 1060
    .line 1061
    const-string v4, "Package "

    .line 1062
    .line 1063
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1064
    .line 1065
    .line 1066
    invoke-interface {v13}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    .line 1067
    .line 1068
    .line 1069
    move-result-object v4

    .line 1070
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1071
    .line 1072
    .line 1073
    const-string v4, " new target SDK "

    .line 1074
    .line 1075
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1076
    .line 1077
    .line 1078
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1079
    .line 1080
    .line 1081
    const-string v4, " doesn\'t support runtime permissions but the old target SDK "

    .line 1082
    .line 1083
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1084
    .line 1085
    .line 1086
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1087
    .line 1088
    .line 1089
    const-string v4, " does."

    .line 1090
    .line 1091
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1092
    .line 1093
    .line 1094
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1095
    .line 1096
    .line 1097
    move-result-object v3

    .line 1098
    const/16 v4, -0x1a

    .line 1099
    .line 1100
    invoke-direct {v1, v4, v3}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    .line 1101
    .line 1102
    .line 1103
    throw v1

    .line 1104
    :cond_33
    :goto_25
    sget-boolean v7, Lcom/samsung/android/rune/CoreRune;->SYSUI_GRADLE_BUILD:Z

    .line 1105
    .line 1106
    if-eqz v7, :cond_34

    .line 1107
    .line 1108
    iget-object v7, v1, Lcom/android/server/pm/InstallPackageHelper;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 1109
    .line 1110
    const-class v8, Landroid/content/pm/PackageManagerInternal;

    .line 1111
    .line 1112
    iget-object v7, v7, Lcom/android/server/pm/PackageManagerServiceInjector;->mGetLocalServiceProducer:Lcom/android/server/pm/PackageManagerServiceInjector$ServiceProducer;

    .line 1113
    .line 1114
    invoke-interface {v7, v8}, Lcom/android/server/pm/PackageManagerServiceInjector$ServiceProducer;->produce(Ljava/lang/Class;)Ljava/lang/Object;

    .line 1115
    .line 1116
    .line 1117
    move-result-object v7

    .line 1118
    check-cast v7, Landroid/content/pm/PackageManagerInternal;

    .line 1119
    .line 1120
    invoke-virtual {v7}, Landroid/content/pm/PackageManagerInternal;->getSystemUiServiceComponent()Landroid/content/ComponentName;

    .line 1121
    .line 1122
    .line 1123
    move-result-object v7

    .line 1124
    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 1125
    .line 1126
    .line 1127
    move-result-object v7

    .line 1128
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1129
    .line 1130
    .line 1131
    move-result v7

    .line 1132
    if-eqz v7, :cond_34

    .line 1133
    .line 1134
    const/4 v7, 0x1

    .line 1135
    goto :goto_26

    .line 1136
    :cond_34
    const/4 v7, 0x0

    .line 1137
    :goto_26
    if-eqz v5, :cond_35

    .line 1138
    .line 1139
    const-string v8, "com.salab.issuetracker"

    .line 1140
    .line 1141
    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 1142
    .line 1143
    .line 1144
    move-result v8

    .line 1145
    if-eqz v8, :cond_35

    .line 1146
    .line 1147
    iget-object v8, v1, Lcom/android/server/pm/InstallPackageHelper;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 1148
    .line 1149
    const-class v14, Landroid/content/pm/PackageManagerInternal;

    .line 1150
    .line 1151
    iget-object v8, v8, Lcom/android/server/pm/PackageManagerServiceInjector;->mGetLocalServiceProducer:Lcom/android/server/pm/PackageManagerServiceInjector$ServiceProducer;

    .line 1152
    .line 1153
    invoke-interface {v8, v14}, Lcom/android/server/pm/PackageManagerServiceInjector$ServiceProducer;->produce(Ljava/lang/Class;)Ljava/lang/Object;

    .line 1154
    .line 1155
    .line 1156
    move-result-object v8

    .line 1157
    check-cast v8, Landroid/content/pm/PackageManagerInternal;

    .line 1158
    .line 1159
    invoke-virtual {v8, v5}, Landroid/content/pm/PackageManagerInternal;->isPlatformSigned(Ljava/lang/String;)Z

    .line 1160
    .line 1161
    .line 1162
    move-result v8

    .line 1163
    if-eqz v8, :cond_35

    .line 1164
    .line 1165
    const/4 v8, 0x1

    .line 1166
    goto :goto_27

    .line 1167
    :cond_35
    const/4 v8, 0x0

    .line 1168
    :goto_27
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->isPersistent()Z

    .line 1169
    .line 1170
    .line 1171
    move-result v14

    .line 1172
    if-eqz v14, :cond_37

    .line 1173
    .line 1174
    if-nez v7, :cond_37

    .line 1175
    .line 1176
    const/high16 v14, 0x200000

    .line 1177
    .line 1178
    and-int v7, v10, v14

    .line 1179
    .line 1180
    if-nez v7, :cond_38

    .line 1181
    .line 1182
    if-eqz v8, :cond_36

    .line 1183
    .line 1184
    goto :goto_28

    .line 1185
    :cond_36
    new-instance v1, Lcom/android/server/pm/PrepareFailure;

    .line 1186
    .line 1187
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1188
    .line 1189
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1190
    .line 1191
    .line 1192
    const-string v4, "Package "

    .line 1193
    .line 1194
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1195
    .line 1196
    .line 1197
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1198
    .line 1199
    .line 1200
    const-string v4, " is a persistent app. Persistent apps are not updateable."

    .line 1201
    .line 1202
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1203
    .line 1204
    .line 1205
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1206
    .line 1207
    .line 1208
    move-result-object v3

    .line 1209
    const/4 v4, -0x2

    .line 1210
    invoke-direct {v1, v4, v3}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    .line 1211
    .line 1212
    .line 1213
    throw v1

    .line 1214
    :cond_37
    const/high16 v14, 0x200000

    .line 1215
    .line 1216
    :cond_38
    :goto_28
    move v8, v6

    .line 1217
    goto :goto_29

    .line 1218
    :cond_39
    const/high16 v14, 0x200000

    .line 1219
    .line 1220
    const/4 v8, 0x0

    .line 1221
    :goto_29
    if-nez v3, :cond_3a

    .line 1222
    .line 1223
    invoke-interface {v13}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->isSdkLibrary()Z

    .line 1224
    .line 1225
    .line 1226
    move-result v6

    .line 1227
    if-eqz v6, :cond_3a

    .line 1228
    .line 1229
    iget-object v6, v1, Lcom/android/server/pm/InstallPackageHelper;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesImpl;

    .line 1230
    .line 1231
    invoke-interface {v13}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getSdkLibraryName()Ljava/lang/String;

    .line 1232
    .line 1233
    .line 1234
    move-result-object v7

    .line 1235
    invoke-virtual {v6, v7}, Lcom/android/server/pm/SharedLibrariesImpl;->getSharedLibraryInfos(Ljava/lang/String;)Lcom/android/server/utils/WatchedLongSparseArray;

    .line 1236
    .line 1237
    .line 1238
    move-result-object v6

    .line 1239
    if-eqz v6, :cond_3a

    .line 1240
    .line 1241
    iget-object v7, v6, Lcom/android/server/utils/WatchedLongSparseArray;->mStorage:Landroid/util/LongSparseArray;

    .line 1242
    .line 1243
    invoke-virtual {v7}, Landroid/util/LongSparseArray;->size()I

    .line 1244
    .line 1245
    .line 1246
    move-result v7

    .line 1247
    if-lez v7, :cond_3a

    .line 1248
    .line 1249
    iget-object v6, v6, Lcom/android/server/utils/WatchedLongSparseArray;->mStorage:Landroid/util/LongSparseArray;

    .line 1250
    .line 1251
    const/4 v7, 0x0

    .line 1252
    invoke-virtual {v6, v7}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    .line 1253
    .line 1254
    .line 1255
    move-result-object v6

    .line 1256
    check-cast v6, Landroid/content/pm/SharedLibraryInfo;

    .line 1257
    .line 1258
    iget-object v7, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 1259
    .line 1260
    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 1261
    .line 1262
    invoke-virtual {v6}, Landroid/content/pm/SharedLibraryInfo;->getPackageName()Ljava/lang/String;

    .line 1263
    .line 1264
    .line 1265
    move-result-object v6

    .line 1266
    invoke-virtual {v7, v6}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 1267
    .line 1268
    .line 1269
    move-result-object v6

    .line 1270
    goto :goto_2a

    .line 1271
    :cond_3a
    move-object v6, v3

    .line 1272
    :goto_2a
    invoke-interface {v13}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->isStaticSharedLibrary()Z

    .line 1273
    .line 1274
    .line 1275
    move-result v7

    .line 1276
    if-eqz v7, :cond_3b

    .line 1277
    .line 1278
    iget-object v7, v1, Lcom/android/server/pm/InstallPackageHelper;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesImpl;

    .line 1279
    .line 1280
    invoke-virtual {v7, v13}, Lcom/android/server/pm/SharedLibrariesImpl;->getLatestStaticSharedLibraVersion(Lcom/android/server/pm/pkg/AndroidPackage;)Landroid/content/pm/SharedLibraryInfo;

    .line 1281
    .line 1282
    .line 1283
    move-result-object v7

    .line 1284
    if-eqz v7, :cond_3b

    .line 1285
    .line 1286
    iget-object v6, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 1287
    .line 1288
    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 1289
    .line 1290
    invoke-virtual {v7}, Landroid/content/pm/SharedLibraryInfo;->getPackageName()Ljava/lang/String;

    .line 1291
    .line 1292
    .line 1293
    move-result-object v7

    .line 1294
    invoke-virtual {v6, v7}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 1295
    .line 1296
    .line 1297
    move-result-object v6

    .line 1298
    :cond_3b
    if-eqz v6, :cond_3c

    .line 1299
    .line 1300
    iget-object v14, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 1301
    .line 1302
    iget-object v14, v14, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 1303
    .line 1304
    iget-object v7, v14, Lcom/android/server/pm/Settings;->mKeySetManagerService:Lcom/android/server/pm/KeySetManagerService;

    .line 1305
    .line 1306
    invoke-virtual {v14, v6}, Lcom/android/server/pm/Settings;->getSharedUserSettingLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/SharedUserSetting;

    .line 1307
    .line 1308
    .line 1309
    move-result-object v14

    .line 1310
    invoke-virtual {v7, v6, v14, v15}, Lcom/android/server/pm/KeySetManagerService;->shouldCheckUpgradeKeySetLocked(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/SharedUserSetting;I)Z

    .line 1311
    .line 1312
    .line 1313
    move-result v19

    .line 1314
    if-eqz v19, :cond_3e

    .line 1315
    .line 1316
    invoke-virtual {v7, v6, v13}, Lcom/android/server/pm/KeySetManagerService;->checkUpgradeKeySetLocked(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/pkg/AndroidPackage;)Z

    .line 1317
    .line 1318
    .line 1319
    move-result v6

    .line 1320
    if-eqz v6, :cond_3d

    .line 1321
    .line 1322
    :cond_3c
    move/from16 v29, v4

    .line 1323
    .line 1324
    move/from16 v36, v10

    .line 1325
    .line 1326
    const/16 v35, -0x7

    .line 1327
    .line 1328
    goto/16 :goto_2d

    .line 1329
    .line 1330
    :cond_3d
    new-instance v1, Lcom/android/server/pm/PrepareFailure;

    .line 1331
    .line 1332
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1333
    .line 1334
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1335
    .line 1336
    .line 1337
    const-string v4, "Package "

    .line 1338
    .line 1339
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1340
    .line 1341
    .line 1342
    invoke-interface {v13}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    .line 1343
    .line 1344
    .line 1345
    move-result-object v4

    .line 1346
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1347
    .line 1348
    .line 1349
    const-string v4, " upgrade keys do not match the previously installed version"

    .line 1350
    .line 1351
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1352
    .line 1353
    .line 1354
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1355
    .line 1356
    .line 1357
    move-result-object v3

    .line 1358
    const/4 v4, -0x7

    .line 1359
    invoke-direct {v1, v4, v3}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    .line 1360
    .line 1361
    .line 1362
    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 1363
    :cond_3e
    move/from16 v36, v10

    .line 1364
    .line 1365
    const/16 v35, -0x7

    .line 1366
    .line 1367
    :try_start_a
    iget-object v10, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 1368
    .line 1369
    invoke-virtual {v10, v13}, Lcom/android/server/pm/PackageManagerService;->getSettingsVersionForPackage(Lcom/android/server/pm/pkg/AndroidPackage;)Lcom/android/server/pm/Settings$VersionInfo;

    .line 1370
    .line 1371
    .line 1372
    move-result-object v10

    .line 1373
    sget-boolean v19, Lcom/android/server/pm/ReconcilePackageUtils;->ALLOW_NON_PRELOADS_SYSTEM_SHAREDUIDS:Z

    .line 1374
    .line 1375
    iget v10, v10, Lcom/android/server/pm/Settings$VersionInfo;->databaseVersion:I

    .line 1376
    .line 1377
    move/from16 v29, v4

    .line 1378
    .line 1379
    const/4 v4, 0x2

    .line 1380
    if-ge v10, v4, :cond_3f

    .line 1381
    .line 1382
    const/16 v22, 0x1

    .line 1383
    .line 1384
    goto :goto_2b

    .line 1385
    :cond_3f
    const/16 v22, 0x0

    .line 1386
    .line 1387
    :goto_2b
    iget-object v4, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 1388
    .line 1389
    invoke-virtual {v4, v13}, Lcom/android/server/pm/PackageManagerService;->getSettingsVersionForPackage(Lcom/android/server/pm/pkg/AndroidPackage;)Lcom/android/server/pm/Settings$VersionInfo;

    .line 1390
    .line 1391
    .line 1392
    move-result-object v4

    .line 1393
    iget v4, v4, Lcom/android/server/pm/Settings$VersionInfo;->databaseVersion:I

    .line 1394
    .line 1395
    const/4 v10, 0x3

    .line 1396
    if-ge v4, v10, :cond_40

    .line 1397
    .line 1398
    const/16 v23, 0x1

    .line 1399
    .line 1400
    goto :goto_2c

    .line 1401
    :cond_40
    const/16 v23, 0x0

    .line 1402
    .line 1403
    :goto_2c
    invoke-interface {v13}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    .line 1404
    .line 1405
    .line 1406
    move-result-object v21

    .line 1407
    const/16 v20, 0x0

    .line 1408
    .line 1409
    move-object/from16 v18, v6

    .line 1410
    .line 1411
    move-object/from16 v19, v14

    .line 1412
    .line 1413
    move/from16 v24, v11

    .line 1414
    .line 1415
    invoke-static/range {v18 .. v24}, Lcom/android/server/pm/PackageManagerServiceUtils;->verifySignatures(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/SharedUserSetting;Lcom/android/server/pm/PackageSetting;Landroid/content/pm/SigningDetails;ZZZ)Z

    .line 1416
    .line 1417
    .line 1418
    move-result v4

    .line 1419
    if-eqz v4, :cond_41

    .line 1420
    .line 1421
    iget-object v4, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 1422
    .line 1423
    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 1424
    .line 1425
    monitor-enter v4
    :try_end_a
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_a .. :try_end_a} :catch_7
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 1426
    :try_start_b
    invoke-interface {v13}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    .line 1427
    .line 1428
    .line 1429
    move-result-object v6

    .line 1430
    invoke-virtual {v7, v6}, Lcom/android/server/pm/KeySetManagerService;->removeAppKeySetDataLPw(Ljava/lang/String;)V

    .line 1431
    .line 1432
    .line 1433
    monitor-exit v4

    .line 1434
    goto :goto_2d

    .line 1435
    :catchall_3
    move-exception v0

    .line 1436
    move-object v1, v0

    .line 1437
    monitor-exit v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 1438
    :try_start_c
    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 1439
    .line 1440
    throw v1
    :try_end_c
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_c .. :try_end_c} :catch_7
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 1441
    :catch_7
    move-exception v0

    .line 1442
    move-object v1, v0

    .line 1443
    :try_start_d
    new-instance v3, Lcom/android/server/pm/PrepareFailure;

    .line 1444
    .line 1445
    iget v4, v1, Lcom/android/server/pm/PackageManagerException;->error:I

    .line 1446
    .line 1447
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 1448
    .line 1449
    .line 1450
    move-result-object v1

    .line 1451
    invoke-direct {v3, v4, v1}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    .line 1452
    .line 1453
    .line 1454
    throw v3

    .line 1455
    :cond_41
    :goto_2d
    invoke-interface {v13}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getMetaData()Landroid/os/Bundle;

    .line 1456
    .line 1457
    .line 1458
    move-result-object v4

    .line 1459
    if-nez v4, :cond_42

    .line 1460
    .line 1461
    const/4 v4, 0x0

    .line 1462
    goto :goto_2e

    .line 1463
    :cond_42
    const-string v6, "com.samsung.android.hasZippedOverlays"

    .line 1464
    .line 1465
    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 1466
    .line 1467
    .line 1468
    move-result v4

    .line 1469
    :goto_2e
    if-eqz v3, :cond_46

    .line 1470
    .line 1471
    if-eqz v8, :cond_45

    .line 1472
    .line 1473
    iget-object v6, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 1474
    .line 1475
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1476
    .line 1477
    .line 1478
    iget-object v6, v3, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 1479
    .line 1480
    if-nez v6, :cond_43

    .line 1481
    .line 1482
    :goto_2f
    const/4 v6, 0x0

    .line 1483
    goto :goto_30

    .line 1484
    :cond_43
    invoke-interface {v6}, Lcom/android/server/pm/pkg/AndroidPackage;->getMetaData()Landroid/os/Bundle;

    .line 1485
    .line 1486
    .line 1487
    move-result-object v6

    .line 1488
    if-nez v6, :cond_44

    .line 1489
    .line 1490
    goto :goto_2f

    .line 1491
    :cond_44
    const-string v7, "com.samsung.android.hasZippedOverlays"

    .line 1492
    .line 1493
    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 1494
    .line 1495
    .line 1496
    move-result v6

    .line 1497
    :goto_30
    if-eqz v6, :cond_45

    .line 1498
    .line 1499
    if-nez v4, :cond_45

    .line 1500
    .line 1501
    iget-object v6, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 1502
    .line 1503
    sget-object v21, Lcom/android/server/pm/PackageManagerService$InstallLocaleOverlaysType;->REMOVE_PACKAGE_OVERLAYS:Lcom/android/server/pm/PackageManagerService$InstallLocaleOverlaysType;

    .line 1504
    .line 1505
    const/16 v20, 0x0

    .line 1506
    .line 1507
    const/16 v22, -0x1

    .line 1508
    .line 1509
    const/16 v19, -0x1

    .line 1510
    .line 1511
    move-object/from16 v18, v6

    .line 1512
    .line 1513
    move-object/from16 v23, v5

    .line 1514
    .line 1515
    invoke-virtual/range {v18 .. v23}, Lcom/android/server/pm/PackageManagerService;->updateLocaleOverlaysForPackage(IILcom/android/server/pm/PackageManagerService$InstallLocaleOverlaysType;ILjava/lang/String;)V

    .line 1516
    .line 1517
    .line 1518
    :cond_45
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    .line 1519
    .line 1520
    .line 1521
    move-result v6

    .line 1522
    invoke-virtual {v3, v9}, Lcom/android/server/pm/PackageSetting;->queryUsersInstalledOrHasData([I)[I

    .line 1523
    .line 1524
    .line 1525
    move-result-object v3

    .line 1526
    invoke-virtual {v12, v3}, Lcom/android/server/pm/InstallRequest;->setOriginUsers([I)V

    .line 1527
    .line 1528
    .line 1529
    goto :goto_31

    .line 1530
    :cond_46
    const/4 v6, 0x0

    .line 1531
    :goto_31
    if-nez v4, :cond_90

    .line 1532
    .line 1533
    invoke-interface {v13}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPermissionGroups()Ljava/util/List;

    .line 1534
    .line 1535
    .line 1536
    move-result-object v3

    .line 1537
    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    .line 1538
    .line 1539
    .line 1540
    move-result v3

    .line 1541
    const/4 v4, 0x0

    .line 1542
    :goto_32
    if-ge v4, v3, :cond_4b

    .line 1543
    .line 1544
    invoke-interface {v13}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPermissionGroups()Ljava/util/List;

    .line 1545
    .line 1546
    .line 1547
    move-result-object v14

    .line 1548
    invoke-interface {v14, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1549
    .line 1550
    .line 1551
    move-result-object v14

    .line 1552
    check-cast v14, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;

    .line 1553
    .line 1554
    iget-object v10, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 1555
    .line 1556
    invoke-interface {v14}, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;->getName()Ljava/lang/String;

    .line 1557
    .line 1558
    .line 1559
    move-result-object v7

    .line 1560
    iget-object v10, v10, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 1561
    .line 1562
    move-object/from16 v20, v9

    .line 1563
    .line 1564
    const-class v9, Landroid/permission/PermissionManager;

    .line 1565
    .line 1566
    invoke-virtual {v10, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 1567
    .line 1568
    .line 1569
    move-result-object v9

    .line 1570
    check-cast v9, Landroid/permission/PermissionManager;

    .line 1571
    .line 1572
    const/4 v10, 0x0

    .line 1573
    invoke-virtual {v9, v7, v10}, Landroid/permission/PermissionManager;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    .line 1574
    .line 1575
    .line 1576
    move-result-object v7

    .line 1577
    if-eqz v7, :cond_48

    .line 1578
    .line 1579
    invoke-interface {v13}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getTargetSdkVersion()I

    .line 1580
    .line 1581
    .line 1582
    move-result v9

    .line 1583
    const/16 v10, 0x1f

    .line 1584
    .line 1585
    if-lt v9, v10, :cond_47

    .line 1586
    .line 1587
    const/4 v9, 0x1

    .line 1588
    goto :goto_33

    .line 1589
    :cond_47
    const/4 v9, 0x0

    .line 1590
    :goto_33
    if-eqz v9, :cond_48

    .line 1591
    .line 1592
    iget-object v7, v7, Landroid/content/pm/PermissionGroupInfo;->packageName:Ljava/lang/String;

    .line 1593
    .line 1594
    if-nez v8, :cond_49

    .line 1595
    .line 1596
    invoke-interface {v13}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    .line 1597
    .line 1598
    .line 1599
    move-result-object v9

    .line 1600
    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1601
    .line 1602
    .line 1603
    move-result v9

    .line 1604
    if-nez v9, :cond_48

    .line 1605
    .line 1606
    goto :goto_35

    .line 1607
    :cond_48
    :goto_34
    const/4 v7, 0x1

    .line 1608
    goto :goto_36

    .line 1609
    :cond_49
    :goto_35
    invoke-virtual {v1, v7, v13, v15}, Lcom/android/server/pm/InstallPackageHelper;->doesSignatureMatchForPermissions(Ljava/lang/String;Lcom/android/internal/pm/parsing/pkg/ParsedPackage;I)Z

    .line 1610
    .line 1611
    .line 1612
    move-result v9

    .line 1613
    if-eqz v9, :cond_4a

    .line 1614
    .line 1615
    goto :goto_34

    .line 1616
    :cond_4a
    const-string v1, "146211400"

    .line 1617
    .line 1618
    const/4 v3, -0x1

    .line 1619
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1620
    .line 1621
    .line 1622
    move-result-object v3

    .line 1623
    invoke-interface {v13}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    .line 1624
    .line 1625
    .line 1626
    move-result-object v4

    .line 1627
    filled-new-array {v1, v3, v4}, [Ljava/lang/Object;

    .line 1628
    .line 1629
    .line 1630
    move-result-object v1

    .line 1631
    const v3, 0x534e4554

    .line 1632
    .line 1633
    .line 1634
    invoke-static {v3, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1635
    .line 1636
    .line 1637
    new-instance v1, Lcom/android/server/pm/PrepareFailure;

    .line 1638
    .line 1639
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1640
    .line 1641
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1642
    .line 1643
    .line 1644
    const-string v4, "Package "

    .line 1645
    .line 1646
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1647
    .line 1648
    .line 1649
    invoke-interface {v13}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    .line 1650
    .line 1651
    .line 1652
    move-result-object v4

    .line 1653
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1654
    .line 1655
    .line 1656
    const-string v4, " attempting to redeclare permission group "

    .line 1657
    .line 1658
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1659
    .line 1660
    .line 1661
    invoke-interface {v14}, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;->getName()Ljava/lang/String;

    .line 1662
    .line 1663
    .line 1664
    move-result-object v4

    .line 1665
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1666
    .line 1667
    .line 1668
    const-string v4, " already owned by "

    .line 1669
    .line 1670
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1671
    .line 1672
    .line 1673
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1674
    .line 1675
    .line 1676
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1677
    .line 1678
    .line 1679
    move-result-object v3

    .line 1680
    const/16 v4, -0x7e

    .line 1681
    .line 1682
    invoke-direct {v1, v4, v3}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    .line 1683
    .line 1684
    .line 1685
    throw v1

    .line 1686
    :goto_36
    add-int/2addr v4, v7

    .line 1687
    move-object/from16 v9, v20

    .line 1688
    .line 1689
    goto/16 :goto_32

    .line 1690
    .line 1691
    :cond_4b
    move-object/from16 v20, v9

    .line 1692
    .line 1693
    invoke-interface {v13}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPermissions()Ljava/util/List;

    .line 1694
    .line 1695
    .line 1696
    move-result-object v4

    .line 1697
    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    .line 1698
    .line 1699
    .line 1700
    move-result v4

    .line 1701
    const/4 v7, 0x1

    .line 1702
    sub-int/2addr v4, v7

    .line 1703
    :goto_37
    if-ltz v4, :cond_58

    .line 1704
    .line 1705
    invoke-interface {v13}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPermissions()Ljava/util/List;

    .line 1706
    .line 1707
    .line 1708
    move-result-object v7

    .line 1709
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1710
    .line 1711
    .line 1712
    move-result-object v7

    .line 1713
    check-cast v7, Lcom/android/internal/pm/pkg/component/ParsedPermission;

    .line 1714
    .line 1715
    iget-object v9, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 1716
    .line 1717
    iget-object v9, v9, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    .line 1718
    .line 1719
    invoke-interface {v7}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getName()Ljava/lang/String;

    .line 1720
    .line 1721
    .line 1722
    move-result-object v10

    .line 1723
    iget-object v9, v9, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    .line 1724
    .line 1725
    iget-object v9, v9, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionManagerServiceImpl:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    .line 1726
    .line 1727
    invoke-interface {v9, v10}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->getPermissionTEMP(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    .line 1728
    .line 1729
    .line 1730
    move-result-object v9

    .line 1731
    invoke-interface {v7}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getProtectionLevel()I

    .line 1732
    .line 1733
    .line 1734
    move-result v10

    .line 1735
    and-int/lit16 v10, v10, 0x1000

    .line 1736
    .line 1737
    if-eqz v10, :cond_4c

    .line 1738
    .line 1739
    if-nez v6, :cond_4c

    .line 1740
    .line 1741
    const-string v10, "PackageManager"

    .line 1742
    .line 1743
    new-instance v14, Ljava/lang/StringBuilder;

    .line 1744
    .line 1745
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 1746
    .line 1747
    .line 1748
    move/from16 v21, v11

    .line 1749
    .line 1750
    const-string v11, "Non-System package "

    .line 1751
    .line 1752
    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1753
    .line 1754
    .line 1755
    invoke-interface {v13}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    .line 1756
    .line 1757
    .line 1758
    move-result-object v11

    .line 1759
    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1760
    .line 1761
    .line 1762
    const-string v11, " attempting to delcare ephemeral permission "

    .line 1763
    .line 1764
    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1765
    .line 1766
    .line 1767
    invoke-interface {v7}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getName()Ljava/lang/String;

    .line 1768
    .line 1769
    .line 1770
    move-result-object v11

    .line 1771
    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1772
    .line 1773
    .line 1774
    const-string v11, "; Removing ephemeral."

    .line 1775
    .line 1776
    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1777
    .line 1778
    .line 1779
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1780
    .line 1781
    .line 1782
    move-result-object v11

    .line 1783
    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1784
    .line 1785
    .line 1786
    invoke-interface {v7}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getProtectionLevel()I

    .line 1787
    .line 1788
    .line 1789
    move-result v10

    .line 1790
    and-int/lit16 v10, v10, -0x1001

    .line 1791
    .line 1792
    invoke-static {v7, v10}, Lcom/android/internal/pm/pkg/component/ComponentMutateUtils;->setProtectionLevel(Lcom/android/internal/pm/pkg/component/ParsedPermission;I)V

    .line 1793
    .line 1794
    .line 1795
    goto :goto_38

    .line 1796
    :cond_4c
    move/from16 v21, v11

    .line 1797
    .line 1798
    :goto_38
    if-eqz v9, :cond_4f

    .line 1799
    .line 1800
    iget-object v10, v9, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 1801
    .line 1802
    iget-object v10, v10, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 1803
    .line 1804
    invoke-virtual {v1, v10, v13, v15}, Lcom/android/server/pm/InstallPackageHelper;->doesSignatureMatchForPermissions(Ljava/lang/String;Lcom/android/internal/pm/parsing/pkg/ParsedPackage;I)Z

    .line 1805
    .line 1806
    .line 1807
    move-result v11

    .line 1808
    if-nez v11, :cond_4e

    .line 1809
    .line 1810
    const-string v9, "android"

    .line 1811
    .line 1812
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1813
    .line 1814
    .line 1815
    move-result v9

    .line 1816
    if-eqz v9, :cond_4d

    .line 1817
    .line 1818
    const-string v9, "PackageManager"

    .line 1819
    .line 1820
    new-instance v10, Ljava/lang/StringBuilder;

    .line 1821
    .line 1822
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 1823
    .line 1824
    .line 1825
    const-string v11, "Package "

    .line 1826
    .line 1827
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1828
    .line 1829
    .line 1830
    invoke-interface {v13}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    .line 1831
    .line 1832
    .line 1833
    move-result-object v11

    .line 1834
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1835
    .line 1836
    .line 1837
    const-string v11, " attempting to redeclare system permission "

    .line 1838
    .line 1839
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1840
    .line 1841
    .line 1842
    invoke-interface {v7}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getName()Ljava/lang/String;

    .line 1843
    .line 1844
    .line 1845
    move-result-object v11

    .line 1846
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1847
    .line 1848
    .line 1849
    const-string v11, "; ignoring new declaration"

    .line 1850
    .line 1851
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1852
    .line 1853
    .line 1854
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1855
    .line 1856
    .line 1857
    move-result-object v10

    .line 1858
    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1859
    .line 1860
    .line 1861
    invoke-interface {v13, v4}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->removePermission(I)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 1862
    .line 1863
    .line 1864
    goto/16 :goto_39

    .line 1865
    .line 1866
    :cond_4d
    new-instance v1, Lcom/android/server/pm/PrepareFailure;

    .line 1867
    .line 1868
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1869
    .line 1870
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1871
    .line 1872
    .line 1873
    const-string v4, "Package "

    .line 1874
    .line 1875
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1876
    .line 1877
    .line 1878
    invoke-interface {v13}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    .line 1879
    .line 1880
    .line 1881
    move-result-object v4

    .line 1882
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1883
    .line 1884
    .line 1885
    const-string v4, " attempting to redeclare permission "

    .line 1886
    .line 1887
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1888
    .line 1889
    .line 1890
    invoke-interface {v7}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getName()Ljava/lang/String;

    .line 1891
    .line 1892
    .line 1893
    move-result-object v4

    .line 1894
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1895
    .line 1896
    .line 1897
    const-string v4, " already owned by "

    .line 1898
    .line 1899
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1900
    .line 1901
    .line 1902
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1903
    .line 1904
    .line 1905
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1906
    .line 1907
    .line 1908
    move-result-object v3

    .line 1909
    const/16 v4, -0x70

    .line 1910
    .line 1911
    invoke-direct {v1, v4, v3}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    .line 1912
    .line 1913
    .line 1914
    invoke-interface {v7}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getName()Ljava/lang/String;

    .line 1915
    .line 1916
    .line 1917
    move-result-object v3

    .line 1918
    invoke-virtual {v1, v3, v10}, Lcom/android/server/pm/PrepareFailure;->conflictsWithExistingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1919
    .line 1920
    .line 1921
    throw v1

    .line 1922
    :cond_4e
    const-string v10, "android"

    .line 1923
    .line 1924
    invoke-interface {v13}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    .line 1925
    .line 1926
    .line 1927
    move-result-object v11

    .line 1928
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1929
    .line 1930
    .line 1931
    move-result v10

    .line 1932
    if-nez v10, :cond_4f

    .line 1933
    .line 1934
    invoke-interface {v7}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getProtectionLevel()I

    .line 1935
    .line 1936
    .line 1937
    move-result v10

    .line 1938
    and-int/lit8 v10, v10, 0xf

    .line 1939
    .line 1940
    const/4 v11, 0x1

    .line 1941
    if-ne v10, v11, :cond_4f

    .line 1942
    .line 1943
    invoke-virtual {v9}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    .line 1944
    .line 1945
    .line 1946
    move-result v10

    .line 1947
    if-nez v10, :cond_4f

    .line 1948
    .line 1949
    const-string v10, "PackageManager"

    .line 1950
    .line 1951
    new-instance v11, Ljava/lang/StringBuilder;

    .line 1952
    .line 1953
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 1954
    .line 1955
    .line 1956
    const-string v14, "Package "

    .line 1957
    .line 1958
    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1959
    .line 1960
    .line 1961
    invoke-interface {v13}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    .line 1962
    .line 1963
    .line 1964
    move-result-object v14

    .line 1965
    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1966
    .line 1967
    .line 1968
    const-string v14, " trying to change a non-runtime permission "

    .line 1969
    .line 1970
    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1971
    .line 1972
    .line 1973
    invoke-interface {v7}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getName()Ljava/lang/String;

    .line 1974
    .line 1975
    .line 1976
    move-result-object v14

    .line 1977
    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1978
    .line 1979
    .line 1980
    const-string v14, " to runtime; keeping old protection level"

    .line 1981
    .line 1982
    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1983
    .line 1984
    .line 1985
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1986
    .line 1987
    .line 1988
    move-result-object v11

    .line 1989
    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1990
    .line 1991
    .line 1992
    iget-object v9, v9, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 1993
    .line 1994
    iget v9, v9, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 1995
    .line 1996
    invoke-static {v7, v9}, Lcom/android/internal/pm/pkg/component/ComponentMutateUtils;->setProtectionLevel(Lcom/android/internal/pm/pkg/component/ParsedPermission;I)V

    .line 1997
    .line 1998
    .line 1999
    :cond_4f
    :goto_39
    invoke-interface {v7}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getGroup()Ljava/lang/String;

    .line 2000
    .line 2001
    .line 2002
    move-result-object v9

    .line 2003
    if-eqz v9, :cond_57

    .line 2004
    .line 2005
    invoke-interface {v13}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getTargetSdkVersion()I

    .line 2006
    .line 2007
    .line 2008
    move-result v9

    .line 2009
    const/16 v10, 0x1f

    .line 2010
    .line 2011
    if-lt v9, v10, :cond_50

    .line 2012
    .line 2013
    const/4 v9, 0x1

    .line 2014
    goto :goto_3a

    .line 2015
    :cond_50
    const/4 v9, 0x0

    .line 2016
    :goto_3a
    if-eqz v9, :cond_56

    .line 2017
    .line 2018
    const/4 v9, 0x0

    .line 2019
    :goto_3b
    if-ge v9, v3, :cond_52

    .line 2020
    .line 2021
    invoke-interface {v13}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPermissionGroups()Ljava/util/List;

    .line 2022
    .line 2023
    .line 2024
    move-result-object v11

    .line 2025
    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 2026
    .line 2027
    .line 2028
    move-result-object v11

    .line 2029
    check-cast v11, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;

    .line 2030
    .line 2031
    invoke-interface {v11}, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;->getName()Ljava/lang/String;

    .line 2032
    .line 2033
    .line 2034
    move-result-object v11

    .line 2035
    invoke-interface {v7}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getGroup()Ljava/lang/String;

    .line 2036
    .line 2037
    .line 2038
    move-result-object v14

    .line 2039
    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2040
    .line 2041
    .line 2042
    move-result v11

    .line 2043
    if-eqz v11, :cond_51

    .line 2044
    .line 2045
    const/4 v9, 0x1

    .line 2046
    goto :goto_3c

    .line 2047
    :cond_51
    const/4 v11, 0x1

    .line 2048
    add-int/2addr v9, v11

    .line 2049
    goto :goto_3b

    .line 2050
    :cond_52
    const/4 v9, 0x0

    .line 2051
    :goto_3c
    if-nez v9, :cond_56

    .line 2052
    .line 2053
    iget-object v9, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 2054
    .line 2055
    invoke-interface {v7}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getGroup()Ljava/lang/String;

    .line 2056
    .line 2057
    .line 2058
    move-result-object v11

    .line 2059
    iget-object v9, v9, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 2060
    .line 2061
    const-class v14, Landroid/permission/PermissionManager;

    .line 2062
    .line 2063
    invoke-virtual {v9, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 2064
    .line 2065
    .line 2066
    move-result-object v9

    .line 2067
    check-cast v9, Landroid/permission/PermissionManager;

    .line 2068
    .line 2069
    const/4 v14, 0x0

    .line 2070
    invoke-virtual {v9, v11, v14}, Landroid/permission/PermissionManager;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    .line 2071
    .line 2072
    .line 2073
    move-result-object v9

    .line 2074
    const/16 v11, -0x7f

    .line 2075
    .line 2076
    if-eqz v9, :cond_55

    .line 2077
    .line 2078
    iget-object v9, v9, Landroid/content/pm/PermissionGroupInfo;->packageName:Ljava/lang/String;

    .line 2079
    .line 2080
    const-string v14, "android"

    .line 2081
    .line 2082
    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2083
    .line 2084
    .line 2085
    move-result v14

    .line 2086
    if-nez v14, :cond_53

    .line 2087
    .line 2088
    invoke-virtual {v1, v9, v13, v15}, Lcom/android/server/pm/InstallPackageHelper;->doesSignatureMatchForPermissions(Ljava/lang/String;Lcom/android/internal/pm/parsing/pkg/ParsedPackage;I)Z

    .line 2089
    .line 2090
    .line 2091
    move-result v14

    .line 2092
    if-eqz v14, :cond_54

    .line 2093
    .line 2094
    :cond_53
    const/4 v7, -0x1

    .line 2095
    const v9, 0x534e4554

    .line 2096
    .line 2097
    .line 2098
    goto/16 :goto_3e

    .line 2099
    .line 2100
    :cond_54
    const-string v1, "146211400"

    .line 2101
    .line 2102
    const/4 v3, -0x1

    .line 2103
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2104
    .line 2105
    .line 2106
    move-result-object v3

    .line 2107
    invoke-interface {v13}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    .line 2108
    .line 2109
    .line 2110
    move-result-object v4

    .line 2111
    filled-new-array {v1, v3, v4}, [Ljava/lang/Object;

    .line 2112
    .line 2113
    .line 2114
    move-result-object v1

    .line 2115
    const v3, 0x534e4554

    .line 2116
    .line 2117
    .line 2118
    invoke-static {v3, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2119
    .line 2120
    .line 2121
    new-instance v1, Lcom/android/server/pm/PrepareFailure;

    .line 2122
    .line 2123
    new-instance v3, Ljava/lang/StringBuilder;

    .line 2124
    .line 2125
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 2126
    .line 2127
    .line 2128
    const-string v4, "Package "

    .line 2129
    .line 2130
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2131
    .line 2132
    .line 2133
    invoke-interface {v13}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    .line 2134
    .line 2135
    .line 2136
    move-result-object v4

    .line 2137
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2138
    .line 2139
    .line 2140
    const-string v4, " attempting to declare permission "

    .line 2141
    .line 2142
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2143
    .line 2144
    .line 2145
    invoke-interface {v7}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getName()Ljava/lang/String;

    .line 2146
    .line 2147
    .line 2148
    move-result-object v4

    .line 2149
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2150
    .line 2151
    .line 2152
    const-string v4, " in group "

    .line 2153
    .line 2154
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2155
    .line 2156
    .line 2157
    invoke-interface {v7}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getGroup()Ljava/lang/String;

    .line 2158
    .line 2159
    .line 2160
    move-result-object v4

    .line 2161
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2162
    .line 2163
    .line 2164
    const-string v4, " owned by package "

    .line 2165
    .line 2166
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2167
    .line 2168
    .line 2169
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2170
    .line 2171
    .line 2172
    const-string v4, " with incompatible certificate"

    .line 2173
    .line 2174
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2175
    .line 2176
    .line 2177
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2178
    .line 2179
    .line 2180
    move-result-object v3

    .line 2181
    invoke-direct {v1, v11, v3}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    .line 2182
    .line 2183
    .line 2184
    throw v1

    .line 2185
    :cond_55
    const-string v1, "146211400"

    .line 2186
    .line 2187
    const/4 v3, -0x1

    .line 2188
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2189
    .line 2190
    .line 2191
    move-result-object v3

    .line 2192
    invoke-interface {v13}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    .line 2193
    .line 2194
    .line 2195
    move-result-object v4

    .line 2196
    filled-new-array {v1, v3, v4}, [Ljava/lang/Object;

    .line 2197
    .line 2198
    .line 2199
    move-result-object v1

    .line 2200
    const v9, 0x534e4554

    .line 2201
    .line 2202
    .line 2203
    invoke-static {v9, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2204
    .line 2205
    .line 2206
    new-instance v1, Lcom/android/server/pm/PrepareFailure;

    .line 2207
    .line 2208
    new-instance v3, Ljava/lang/StringBuilder;

    .line 2209
    .line 2210
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 2211
    .line 2212
    .line 2213
    const-string v4, "Package "

    .line 2214
    .line 2215
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2216
    .line 2217
    .line 2218
    invoke-interface {v13}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    .line 2219
    .line 2220
    .line 2221
    move-result-object v4

    .line 2222
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2223
    .line 2224
    .line 2225
    const-string v4, " attempting to declare permission "

    .line 2226
    .line 2227
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2228
    .line 2229
    .line 2230
    invoke-interface {v7}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getName()Ljava/lang/String;

    .line 2231
    .line 2232
    .line 2233
    move-result-object v4

    .line 2234
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2235
    .line 2236
    .line 2237
    const-string v4, " in non-existing group "

    .line 2238
    .line 2239
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2240
    .line 2241
    .line 2242
    invoke-interface {v7}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getGroup()Ljava/lang/String;

    .line 2243
    .line 2244
    .line 2245
    move-result-object v4

    .line 2246
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2247
    .line 2248
    .line 2249
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2250
    .line 2251
    .line 2252
    move-result-object v3

    .line 2253
    invoke-direct {v1, v11, v3}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    .line 2254
    .line 2255
    .line 2256
    throw v1

    .line 2257
    :cond_56
    const v9, 0x534e4554

    .line 2258
    .line 2259
    .line 2260
    :goto_3d
    const/4 v7, -0x1

    .line 2261
    goto :goto_3e

    .line 2262
    :cond_57
    const v9, 0x534e4554

    .line 2263
    .line 2264
    .line 2265
    const/16 v10, 0x1f

    .line 2266
    .line 2267
    goto :goto_3d

    .line 2268
    :goto_3e
    add-int/2addr v4, v7

    .line 2269
    move/from16 v11, v21

    .line 2270
    .line 2271
    goto/16 :goto_37

    .line 2272
    .line 2273
    :cond_58
    move/from16 v21, v11

    .line 2274
    .line 2275
    monitor-exit v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 2276
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 2277
    .line 2278
    if-eqz v8, :cond_59

    .line 2279
    .line 2280
    const-string v2, "application_policy"

    .line 2281
    .line 2282
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 2283
    .line 2284
    .line 2285
    move-result-object v2

    .line 2286
    invoke-static {v2}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/application/IApplicationPolicy;

    .line 2287
    .line 2288
    .line 2289
    move-result-object v2

    .line 2290
    if-eqz v2, :cond_59

    .line 2291
    .line 2292
    const/4 v3, 0x1

    .line 2293
    :try_start_e
    invoke-interface {v2, v5, v3}, Lcom/samsung/android/knox/application/IApplicationPolicy;->isPackageUpdateAllowed(Ljava/lang/String;Z)Z

    .line 2294
    .line 2295
    .line 2296
    move-result v2

    .line 2297
    if-nez v2, :cond_59

    .line 2298
    .line 2299
    const-string v2, "PackageManager"

    .line 2300
    .line 2301
    const-string v3, "This app replacing is not allowed by MDM policy"

    .line 2302
    .line 2303
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2304
    .line 2305
    .line 2306
    const/16 v2, -0x6e

    .line 2307
    .line 2308
    invoke-virtual {v12, v2}, Lcom/android/server/pm/InstallRequest;->setReturnCode(I)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_8

    .line 2309
    .line 2310
    .line 2311
    return-void

    .line 2312
    :catch_8
    const-string v2, "PackageManager"

    .line 2313
    .line 2314
    const-string v3, "MDM hidden api called from non system uid"

    .line 2315
    .line 2316
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2317
    .line 2318
    .line 2319
    :cond_59
    const-string/jumbo v2, "restriction_policy"

    .line 2320
    .line 2321
    .line 2322
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 2323
    .line 2324
    .line 2325
    move-result-object v2

    .line 2326
    invoke-static {v2}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 2327
    .line 2328
    .line 2329
    move-result-object v2

    .line 2330
    if-eqz v2, :cond_5b

    .line 2331
    .line 2332
    :try_start_f
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/InstallRequest;->getUser()Landroid/os/UserHandle;

    .line 2333
    .line 2334
    .line 2335
    move-result-object v3

    .line 2336
    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    .line 2337
    .line 2338
    .line 2339
    move-result v3

    .line 2340
    const/4 v4, 0x0

    .line 2341
    invoke-interface {v2, v3, v4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isNewAdminInstallationEnabledAsUser(IZ)Z

    .line 2342
    .line 2343
    .line 2344
    move-result v3

    .line 2345
    if-nez v3, :cond_5b

    .line 2346
    .line 2347
    invoke-static {v13}, Lcom/android/server/pm/InstallPackageHelper;->isAdminApplication(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    .line 2348
    .line 2349
    .line 2350
    move-result v3

    .line 2351
    if-eqz v3, :cond_5b

    .line 2352
    .line 2353
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/InstallRequest;->getUser()Landroid/os/UserHandle;

    .line 2354
    .line 2355
    .line 2356
    move-result-object v3

    .line 2357
    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    .line 2358
    .line 2359
    .line 2360
    move-result v3

    .line 2361
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/InstallRequest;->getInstallerPackageName()Ljava/lang/String;

    .line 2362
    .line 2363
    .line 2364
    move-result-object v4

    .line 2365
    invoke-interface {v2, v3, v4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->checkPackageSource(ILjava/lang/String;)Z

    .line 2366
    .line 2367
    .line 2368
    move-result v3

    .line 2369
    if-eqz v3, :cond_5a

    .line 2370
    .line 2371
    goto :goto_3f

    .line 2372
    :cond_5a
    const-string v3, "PackageManager"

    .line 2373
    .line 2374
    const-string v4, "This admin app installation is not allowed"

    .line 2375
    .line 2376
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2377
    .line 2378
    .line 2379
    iget-object v3, v1, Lcom/android/server/pm/InstallPackageHelper;->mContext:Landroid/content/Context;

    .line 2380
    .line 2381
    const v4, 0x1040cb9

    .line 2382
    .line 2383
    .line 2384
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 2385
    .line 2386
    .line 2387
    move-result-object v3

    .line 2388
    invoke-interface {v2, v3}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->showRestrictionToast(Ljava/lang/String;)V

    .line 2389
    .line 2390
    .line 2391
    new-instance v2, Lcom/android/server/pm/PrepareFailure;

    .line 2392
    .line 2393
    const-string v3, "Install fail, This admin app installation is not allowed"

    .line 2394
    .line 2395
    const/16 v4, -0x6e

    .line 2396
    .line 2397
    invoke-direct {v2, v4, v3}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    .line 2398
    .line 2399
    .line 2400
    throw v2
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_9

    .line 2401
    :catch_9
    :cond_5b
    :goto_3f
    if-eqz v6, :cond_5e

    .line 2402
    .line 2403
    if-nez v28, :cond_5d

    .line 2404
    .line 2405
    if-nez v29, :cond_5c

    .line 2406
    .line 2407
    goto :goto_40

    .line 2408
    :cond_5c
    new-instance v1, Lcom/android/server/pm/PrepareFailure;

    .line 2409
    .line 2410
    const-string v2, "Cannot update a system app with an instant app"

    .line 2411
    .line 2412
    const/16 v3, -0x74

    .line 2413
    .line 2414
    invoke-direct {v1, v3, v2}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    .line 2415
    .line 2416
    .line 2417
    throw v1

    .line 2418
    :cond_5d
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/InstallRequest;->getUser()Landroid/os/UserHandle;

    .line 2419
    .line 2420
    .line 2421
    move-result-object v1

    .line 2422
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    .line 2423
    .line 2424
    .line 2425
    move-result v1

    .line 2426
    invoke-interface {v13}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 2427
    .line 2428
    .line 2429
    move-result-object v2

    .line 2430
    const/4 v3, 0x1

    .line 2431
    invoke-static {v1, v2, v3}, Lcom/android/server/pm/PmHook;->auditLogInstallFail(ILjava/lang/String;Z)V

    .line 2432
    .line 2433
    .line 2434
    new-instance v1, Lcom/android/server/pm/PrepareFailure;

    .line 2435
    .line 2436
    const-string v2, "Cannot install updates to system apps on sdcard"

    .line 2437
    .line 2438
    const/16 v3, -0x13

    .line 2439
    .line 2440
    invoke-direct {v1, v3, v2}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    .line 2441
    .line 2442
    .line 2443
    throw v1

    .line 2444
    :cond_5e
    :goto_40
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/InstallRequest;->isInstallMove()Z

    .line 2445
    .line 2446
    .line 2447
    move-result v2

    .line 2448
    if-eqz v2, :cond_60

    .line 2449
    .line 2450
    or-int/lit16 v2, v15, 0x101

    .line 2451
    .line 2452
    iget-object v3, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 2453
    .line 2454
    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 2455
    .line 2456
    sget-boolean v4, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 2457
    .line 2458
    monitor-enter v3

    .line 2459
    :try_start_10
    iget-object v4, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 2460
    .line 2461
    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 2462
    .line 2463
    invoke-virtual {v4, v5}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 2464
    .line 2465
    .line 2466
    move-result-object v4

    .line 2467
    if-nez v4, :cond_5f

    .line 2468
    .line 2469
    new-instance v4, Ljava/lang/StringBuilder;

    .line 2470
    .line 2471
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 2472
    .line 2473
    .line 2474
    const-string v6, "Missing settings for moved package "

    .line 2475
    .line 2476
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2477
    .line 2478
    .line 2479
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2480
    .line 2481
    .line 2482
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2483
    .line 2484
    .line 2485
    move-result-object v4

    .line 2486
    const/4 v6, -0x3

    .line 2487
    invoke-static {v6, v4}, Lcom/android/server/pm/PackageManagerException;->ofInternalError(ILjava/lang/String;)Lcom/android/server/pm/PackageManagerException;

    .line 2488
    .line 2489
    .line 2490
    move-result-object v4

    .line 2491
    const/4 v9, 0x0

    .line 2492
    invoke-virtual {v12, v9, v4}, Lcom/android/server/pm/InstallRequest;->setError(Ljava/lang/String;Lcom/android/server/pm/PackageManagerException;)V

    .line 2493
    .line 2494
    .line 2495
    goto :goto_42

    .line 2496
    :goto_41
    move-object v1, v0

    .line 2497
    goto :goto_43

    .line 2498
    :catchall_4
    move-exception v0

    .line 2499
    goto :goto_41

    .line 2500
    :cond_5f
    const/4 v9, 0x0

    .line 2501
    invoke-virtual {v4}, Lcom/android/server/pm/PackageSetting;->getPrimaryCpuAbiLegacy()Ljava/lang/String;

    .line 2502
    .line 2503
    .line 2504
    move-result-object v6

    .line 2505
    invoke-interface {v13, v6}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setPrimaryCpuAbi(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 2506
    .line 2507
    .line 2508
    move-result-object v6

    .line 2509
    invoke-virtual {v4}, Lcom/android/server/pm/PackageSetting;->getSecondaryCpuAbiLegacy()Ljava/lang/String;

    .line 2510
    .line 2511
    .line 2512
    move-result-object v4

    .line 2513
    invoke-interface {v6, v4}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setSecondaryCpuAbi(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 2514
    .line 2515
    .line 2516
    :goto_42
    monitor-exit v3

    .line 2517
    move v10, v2

    .line 2518
    goto/16 :goto_4c

    .line 2519
    .line 2520
    :goto_43
    monitor-exit v3
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    .line 2521
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 2522
    .line 2523
    throw v1

    .line 2524
    :cond_60
    const/4 v2, 0x1

    .line 2525
    const/4 v9, 0x0

    .line 2526
    or-int/lit8 v3, v15, 0x1

    .line 2527
    .line 2528
    if-nez v44, :cond_67

    .line 2529
    .line 2530
    :try_start_11
    iget-object v2, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 2531
    .line 2532
    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 2533
    .line 2534
    sget-boolean v4, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 2535
    .line 2536
    monitor-enter v2
    :try_end_11
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_11 .. :try_end_11} :catch_a

    .line 2537
    :try_start_12
    iget-object v4, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 2538
    .line 2539
    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 2540
    .line 2541
    invoke-virtual {v4, v5}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 2542
    .line 2543
    .line 2544
    move-result-object v4

    .line 2545
    monitor-exit v2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    .line 2546
    if-eqz v4, :cond_61

    .line 2547
    .line 2548
    :try_start_13
    invoke-virtual {v4}, Lcom/android/server/pm/PackageSetting;->isUpdatedSystemApp()Z

    .line 2549
    .line 2550
    .line 2551
    move-result v2

    .line 2552
    if-eqz v2, :cond_61

    .line 2553
    .line 2554
    const/4 v2, 0x1

    .line 2555
    goto :goto_44

    .line 2556
    :catch_a
    move-exception v0

    .line 2557
    move-object v1, v0

    .line 2558
    goto/16 :goto_4a

    .line 2559
    .line 2560
    :cond_61
    const/4 v2, 0x0

    .line 2561
    :goto_44
    iget-object v7, v12, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    .line 2562
    .line 2563
    if-nez v7, :cond_62

    .line 2564
    .line 2565
    move-object v7, v9

    .line 2566
    goto :goto_45

    .line 2567
    :cond_62
    iget-object v7, v7, Lcom/android/server/pm/InstallArgs;->mAbiOverride:Ljava/lang/String;

    .line 2568
    .line 2569
    :goto_45
    sget-boolean v10, Lcom/android/server/pm/PackageManagerServiceUtils;->DEBUG:Z

    .line 2570
    .line 2571
    const-string v10, "-"

    .line 2572
    .line 2573
    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2574
    .line 2575
    .line 2576
    move-result v10

    .line 2577
    if-eqz v10, :cond_63

    .line 2578
    .line 2579
    move-object/from16 v29, v9

    .line 2580
    .line 2581
    goto :goto_46

    .line 2582
    :cond_63
    move-object/from16 v29, v7

    .line 2583
    .line 2584
    :goto_46
    if-eqz v4, :cond_64

    .line 2585
    .line 2586
    invoke-virtual {v4}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    .line 2587
    .line 2588
    .line 2589
    move-result v4

    .line 2590
    if-eqz v4, :cond_64

    .line 2591
    .line 2592
    const/4 v4, 0x1

    .line 2593
    goto :goto_47

    .line 2594
    :cond_64
    const/4 v4, 0x0

    .line 2595
    :goto_47
    iget-object v7, v1, Lcom/android/server/pm/InstallPackageHelper;->mPackageAbiHelper:Lcom/android/server/pm/PackageAbiHelper;

    .line 2596
    .line 2597
    if-nez v2, :cond_66

    .line 2598
    .line 2599
    if-eqz v4, :cond_65

    .line 2600
    .line 2601
    goto :goto_48

    .line 2602
    :cond_65
    const/16 v28, 0x0

    .line 2603
    .line 2604
    goto :goto_49

    .line 2605
    :cond_66
    :goto_48
    const/16 v28, 0x1

    .line 2606
    .line 2607
    :goto_49
    new-instance v2, Ljava/io/File;

    .line 2608
    .line 2609
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    .line 2610
    .line 2611
    .line 2612
    move-result-object v4

    .line 2613
    const-string v10, "app-lib"

    .line 2614
    .line 2615
    invoke-direct {v2, v4, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2616
    .line 2617
    .line 2618
    move-object/from16 v25, v7

    .line 2619
    .line 2620
    move-object/from16 v26, v13

    .line 2621
    .line 2622
    move/from16 v27, v6

    .line 2623
    .line 2624
    move-object/from16 v30, v2

    .line 2625
    .line 2626
    invoke-interface/range {v25 .. v30}, Lcom/android/server/pm/PackageAbiHelper;->derivePackageAbi(Lcom/android/server/pm/pkg/AndroidPackage;ZZLjava/lang/String;Ljava/io/File;)Landroid/util/Pair;

    .line 2627
    .line 2628
    .line 2629
    move-result-object v2

    .line 2630
    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 2631
    .line 2632
    check-cast v4, Lcom/android/server/pm/PackageAbiHelper$Abis;

    .line 2633
    .line 2634
    iget-object v6, v4, Lcom/android/server/pm/PackageAbiHelper$Abis;->primary:Ljava/lang/String;

    .line 2635
    .line 2636
    invoke-interface {v13, v6}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setPrimaryCpuAbi(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 2637
    .line 2638
    .line 2639
    move-result-object v6

    .line 2640
    iget-object v4, v4, Lcom/android/server/pm/PackageAbiHelper$Abis;->secondary:Ljava/lang/String;

    .line 2641
    .line 2642
    invoke-interface {v6, v4}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setSecondaryCpuAbi(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 2643
    .line 2644
    .line 2645
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 2646
    .line 2647
    check-cast v2, Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;

    .line 2648
    .line 2649
    invoke-virtual {v2, v13}, Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;->applyTo(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;)V
    :try_end_13
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_13 .. :try_end_13} :catch_a

    .line 2650
    .line 2651
    .line 2652
    goto :goto_4b

    .line 2653
    :catchall_5
    move-exception v0

    .line 2654
    move-object v1, v0

    .line 2655
    :try_start_14
    monitor-exit v2
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_5

    .line 2656
    :try_start_15
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 2657
    .line 2658
    throw v1
    :try_end_15
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_15 .. :try_end_15} :catch_a

    .line 2659
    :goto_4a
    const-string v2, "PackageManager"

    .line 2660
    .line 2661
    const-string v3, "Error deriving application ABI"

    .line 2662
    .line 2663
    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2664
    .line 2665
    .line 2666
    new-instance v2, Ljava/lang/StringBuilder;

    .line 2667
    .line 2668
    const-string v3, "Error deriving application ABI: "

    .line 2669
    .line 2670
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2671
    .line 2672
    .line 2673
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 2674
    .line 2675
    .line 2676
    move-result-object v1

    .line 2677
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2678
    .line 2679
    .line 2680
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2681
    .line 2682
    .line 2683
    move-result-object v1

    .line 2684
    new-instance v2, Lcom/android/server/pm/PrepareFailure;

    .line 2685
    .line 2686
    const/4 v3, -0x4

    .line 2687
    invoke-direct {v2, v1, v3}, Lcom/android/server/pm/PackageManagerException;-><init>(Ljava/lang/String;I)V

    .line 2688
    .line 2689
    .line 2690
    throw v2

    .line 2691
    :cond_67
    :goto_4b
    move v10, v3

    .line 2692
    :goto_4c
    const/4 v11, -0x5

    .line 2693
    if-nez v44, :cond_69

    .line 2694
    .line 2695
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/InstallRequest;->getInstallFlags()I

    .line 2696
    .line 2697
    .line 2698
    move-result v2

    .line 2699
    invoke-static {v2}, Lcom/android/server/pm/AsecInstallHelper;->installOnExternalAsec(I)Z

    .line 2700
    .line 2701
    .line 2702
    move-result v2

    .line 2703
    if-eqz v2, :cond_68

    .line 2704
    .line 2705
    iget-object v2, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 2706
    .line 2707
    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mCustomInjector:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;

    .line 2708
    .line 2709
    invoke-virtual {v2}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->getAsecInstallHelper()Lcom/android/server/pm/AsecInstallHelper;

    .line 2710
    .line 2711
    .line 2712
    move-result-object v2

    .line 2713
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2714
    .line 2715
    .line 2716
    invoke-static {v12, v13}, Lcom/android/server/pm/AsecInstallHelper;->doRenameAsec(Lcom/android/server/pm/InstallRequest;Lcom/android/internal/pm/parsing/pkg/ParsedPackage;)V

    .line 2717
    .line 2718
    .line 2719
    goto :goto_4d

    .line 2720
    :cond_68
    invoke-virtual {v1, v12, v13}, Lcom/android/server/pm/InstallPackageHelper;->doRenameLI(Lcom/android/server/pm/InstallRequest;Lcom/android/internal/pm/parsing/pkg/ParsedPackage;)V

    .line 2721
    .line 2722
    .line 2723
    :goto_4d
    :try_start_16
    invoke-static {v13}, Lcom/android/server/pm/InstallPackageHelper;->setUpFsVerity(Lcom/android/server/pm/pkg/AndroidPackage;)V
    :try_end_16
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_16 .. :try_end_16} :catch_b
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_b
    .catch Ljava/security/DigestException; {:try_start_16 .. :try_end_16} :catch_b
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_16 .. :try_end_16} :catch_b

    .line 2724
    .line 2725
    .line 2726
    goto :goto_4e

    .line 2727
    :catch_b
    move-exception v0

    .line 2728
    move-object v1, v0

    .line 2729
    new-instance v2, Ljava/lang/StringBuilder;

    .line 2730
    .line 2731
    const-string v3, "Failed to set up verity: "

    .line 2732
    .line 2733
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2734
    .line 2735
    .line 2736
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2737
    .line 2738
    .line 2739
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2740
    .line 2741
    .line 2742
    move-result-object v1

    .line 2743
    new-instance v2, Lcom/android/server/pm/PrepareFailure;

    .line 2744
    .line 2745
    invoke-direct {v2, v1, v11}, Lcom/android/server/pm/PackageManagerException;-><init>(Ljava/lang/String;I)V

    .line 2746
    .line 2747
    .line 2748
    throw v2

    .line 2749
    :cond_69
    iget-object v2, v12, Lcom/android/server/pm/InstallRequest;->mApexInfo:Landroid/apex/ApexInfo;

    .line 2750
    .line 2751
    iget-object v2, v2, Landroid/apex/ApexInfo;->modulePath:Ljava/lang/String;

    .line 2752
    .line 2753
    invoke-interface {v13, v2}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setPath(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 2754
    .line 2755
    .line 2756
    iget-object v2, v12, Lcom/android/server/pm/InstallRequest;->mApexInfo:Landroid/apex/ApexInfo;

    .line 2757
    .line 2758
    iget-object v2, v2, Landroid/apex/ApexInfo;->modulePath:Ljava/lang/String;

    .line 2759
    .line 2760
    invoke-interface {v13, v2}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setBaseApkPath(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 2761
    .line 2762
    .line 2763
    :goto_4e
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->improveInstallFreeze()Z

    .line 2764
    .line 2765
    .line 2766
    move-result v2

    .line 2767
    if-nez v2, :cond_6b

    .line 2768
    .line 2769
    if-eqz v43, :cond_6a

    .line 2770
    .line 2771
    new-instance v2, Lcom/android/server/pm/PackageFreezer;

    .line 2772
    .line 2773
    iget-object v3, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 2774
    .line 2775
    invoke-direct {v2, v3, v12}, Lcom/android/server/pm/PackageFreezer;-><init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/InstallRequest;)V

    .line 2776
    .line 2777
    .line 2778
    move/from16 v15, v35

    .line 2779
    .line 2780
    move/from16 v14, v42

    .line 2781
    .line 2782
    goto :goto_4f

    .line 2783
    :cond_6a
    iget-object v2, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 2784
    .line 2785
    const-string v6, "installPackageLI"

    .line 2786
    .line 2787
    const/16 v7, 0x10

    .line 2788
    .line 2789
    const/4 v4, -0x1

    .line 2790
    move-object v3, v5

    .line 2791
    move-object v5, v6

    .line 2792
    move/from16 v14, v42

    .line 2793
    .line 2794
    move v6, v7

    .line 2795
    move/from16 v15, v35

    .line 2796
    .line 2797
    move-object/from16 v7, p1

    .line 2798
    .line 2799
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/PackageManagerService;->freezePackage(Ljava/lang/String;ILjava/lang/String;ILcom/android/server/pm/InstallRequest;)Lcom/android/server/pm/PackageFreezer;

    .line 2800
    .line 2801
    .line 2802
    move-result-object v2

    .line 2803
    :goto_4f
    move-object v7, v2

    .line 2804
    goto :goto_50

    .line 2805
    :cond_6b
    move/from16 v15, v35

    .line 2806
    .line 2807
    move/from16 v14, v42

    .line 2808
    .line 2809
    move-object v7, v9

    .line 2810
    :goto_50
    if-eqz v8, :cond_8b

    .line 2811
    .line 2812
    :try_start_17
    invoke-interface {v13}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    .line 2813
    .line 2814
    .line 2815
    move-result-object v2

    .line 2816
    iget-object v3, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 2817
    .line 2818
    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 2819
    .line 2820
    sget-boolean v4, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 2821
    .line 2822
    monitor-enter v3
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_b

    .line 2823
    :try_start_18
    iget-object v4, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 2824
    .line 2825
    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 2826
    .line 2827
    invoke-virtual {v4, v2}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 2828
    .line 2829
    .line 2830
    move-result-object v4

    .line 2831
    monitor-exit v3
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_c

    .line 2832
    :try_start_19
    invoke-virtual {v4}, Lcom/android/server/pm/PackageSetting;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    .line 2833
    .line 2834
    .line 2835
    move-result-object v3

    .line 2836
    invoke-interface {v13}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->isStaticSharedLibrary()Z

    .line 2837
    .line 2838
    .line 2839
    move-result v5
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_b

    .line 2840
    if-eqz v5, :cond_6d

    .line 2841
    .line 2842
    if-eqz v3, :cond_6d

    .line 2843
    .line 2844
    and-int/lit8 v5, v36, 0x20

    .line 2845
    .line 2846
    if-eqz v5, :cond_6c

    .line 2847
    .line 2848
    goto :goto_52

    .line 2849
    :cond_6c
    :try_start_1a
    new-instance v1, Lcom/android/server/pm/PrepareFailure;

    .line 2850
    .line 2851
    const-string v2, "Packages declaring static-shared libs cannot be updated"

    .line 2852
    .line 2853
    invoke-direct {v1, v11, v2}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    .line 2854
    .line 2855
    .line 2856
    throw v1
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_6

    .line 2857
    :catchall_6
    move-exception v0

    .line 2858
    move-object v1, v0

    .line 2859
    move-object v14, v7

    .line 2860
    :goto_51
    const/4 v13, 0x1

    .line 2861
    goto/16 :goto_6f

    .line 2862
    .line 2863
    :cond_6d
    :goto_52
    and-int/lit16 v5, v10, 0x2000

    .line 2864
    .line 2865
    if-eqz v5, :cond_6e

    .line 2866
    .line 2867
    const/4 v5, 0x1

    .line 2868
    goto :goto_53

    .line 2869
    :cond_6e
    const/4 v5, 0x0

    .line 2870
    :goto_53
    :try_start_1b
    iget-object v6, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 2871
    .line 2872
    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 2873
    .line 2874
    monitor-enter v6
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_b

    .line 2875
    :try_start_1c
    iget-object v11, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 2876
    .line 2877
    iget-object v11, v11, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 2878
    .line 2879
    invoke-virtual {v11, v2}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 2880
    .line 2881
    .line 2882
    move-result-object v11

    .line 2883
    iget-object v9, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 2884
    .line 2885
    iget-object v9, v9, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 2886
    .line 2887
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2888
    .line 2889
    .line 2890
    if-nez v11, :cond_6f

    .line 2891
    .line 2892
    const/16 v32, 0x0

    .line 2893
    .line 2894
    goto :goto_54

    .line 2895
    :cond_6f
    iget-object v15, v11, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    .line 2896
    .line 2897
    invoke-virtual {v9, v15}, Lcom/android/server/pm/Settings;->getDisabledSystemPkgLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 2898
    .line 2899
    .line 2900
    move-result-object v9

    .line 2901
    move-object/from16 v32, v9

    .line 2902
    .line 2903
    :goto_54
    iget-object v9, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 2904
    .line 2905
    iget-object v9, v9, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 2906
    .line 2907
    invoke-virtual {v9, v11}, Lcom/android/server/pm/Settings;->getSharedUserSettingLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/SharedUserSetting;

    .line 2908
    .line 2909
    .line 2910
    move-result-object v9

    .line 2911
    iget-object v1, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 2912
    .line 2913
    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 2914
    .line 2915
    iget-object v1, v1, Lcom/android/server/pm/Settings;->mKeySetManagerService:Lcom/android/server/pm/KeySetManagerService;

    .line 2916
    .line 2917
    invoke-virtual {v1, v11, v9, v10}, Lcom/android/server/pm/KeySetManagerService;->shouldCheckUpgradeKeySetLocked(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/SharedUserSetting;I)Z

    .line 2918
    .line 2919
    .line 2920
    move-result v9
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_9

    .line 2921
    if-eqz v9, :cond_71

    .line 2922
    .line 2923
    :try_start_1d
    invoke-virtual {v1, v11, v13}, Lcom/android/server/pm/KeySetManagerService;->checkUpgradeKeySetLocked(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/pkg/AndroidPackage;)Z

    .line 2924
    .line 2925
    .line 2926
    move-result v1

    .line 2927
    if-eqz v1, :cond_70

    .line 2928
    .line 2929
    goto :goto_55

    .line 2930
    :cond_70
    new-instance v1, Lcom/android/server/pm/PrepareFailure;

    .line 2931
    .line 2932
    new-instance v3, Ljava/lang/StringBuilder;

    .line 2933
    .line 2934
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 2935
    .line 2936
    .line 2937
    const-string v4, "New package not signed by keys specified by upgrade-keysets: "

    .line 2938
    .line 2939
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2940
    .line 2941
    .line 2942
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2943
    .line 2944
    .line 2945
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2946
    .line 2947
    .line 2948
    move-result-object v2

    .line 2949
    const/4 v3, -0x7

    .line 2950
    invoke-direct {v1, v3, v2}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    .line 2951
    .line 2952
    .line 2953
    throw v1
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_7

    .line 2954
    :catchall_7
    move-exception v0

    .line 2955
    move-object v1, v0

    .line 2956
    move-object/from16 v17, v7

    .line 2957
    .line 2958
    goto/16 :goto_69

    .line 2959
    .line 2960
    :cond_71
    :try_start_1e
    invoke-interface {v13}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    .line 2961
    .line 2962
    .line 2963
    move-result-object v1

    .line 2964
    invoke-virtual {v4}, Lcom/android/server/pm/PackageSetting;->getSigningDetails()Landroid/content/pm/SigningDetails;

    .line 2965
    .line 2966
    .line 2967
    move-result-object v9

    .line 2968
    const/4 v15, 0x1

    .line 2969
    invoke-virtual {v1, v9, v15}, Landroid/content/pm/SigningDetails;->checkCapability(Landroid/content/pm/SigningDetails;I)Z

    .line 2970
    .line 2971
    .line 2972
    move-result v18
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_9

    .line 2973
    if-nez v18, :cond_73

    .line 2974
    .line 2975
    const/16 v15, 0x8

    .line 2976
    .line 2977
    :try_start_1f
    invoke-virtual {v9, v1, v15}, Landroid/content/pm/SigningDetails;->checkCapability(Landroid/content/pm/SigningDetails;I)Z

    .line 2978
    .line 2979
    .line 2980
    move-result v15

    .line 2981
    if-nez v15, :cond_73

    .line 2982
    .line 2983
    if-eqz v21, :cond_72

    .line 2984
    .line 2985
    invoke-virtual {v9, v1}, Landroid/content/pm/SigningDetails;->hasAncestorOrSelf(Landroid/content/pm/SigningDetails;)Z

    .line 2986
    .line 2987
    .line 2988
    move-result v1

    .line 2989
    if-eqz v1, :cond_72

    .line 2990
    .line 2991
    goto :goto_55

    .line 2992
    :cond_72
    new-instance v1, Lcom/android/server/pm/PrepareFailure;

    .line 2993
    .line 2994
    new-instance v3, Ljava/lang/StringBuilder;

    .line 2995
    .line 2996
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 2997
    .line 2998
    .line 2999
    const-string v4, "New package has a different signature: "

    .line 3000
    .line 3001
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3002
    .line 3003
    .line 3004
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3005
    .line 3006
    .line 3007
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3008
    .line 3009
    .line 3010
    move-result-object v2

    .line 3011
    const/4 v3, -0x7

    .line 3012
    invoke-direct {v1, v3, v2}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    .line 3013
    .line 3014
    .line 3015
    throw v1
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_7

    .line 3016
    :cond_73
    :goto_55
    :try_start_20
    invoke-virtual {v4}, Lcom/android/server/pm/PackageSetting;->getRestrictUpdateHash()[B

    .line 3017
    .line 3018
    .line 3019
    move-result-object v1

    .line 3020
    if-eqz v1, :cond_77

    .line 3021
    .line 3022
    invoke-virtual {v4}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    .line 3023
    .line 3024
    .line 3025
    move-result v1
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_9

    .line 3026
    if-eqz v1, :cond_77

    .line 3027
    .line 3028
    :try_start_21
    const-string v1, "SHA-512"

    .line 3029
    .line 3030
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 3031
    .line 3032
    .line 3033
    move-result-object v1

    .line 3034
    new-instance v9, Ljava/io/File;

    .line 3035
    .line 3036
    invoke-interface {v13}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getBaseApkPath()Ljava/lang/String;

    .line 3037
    .line 3038
    .line 3039
    move-result-object v15

    .line 3040
    invoke-direct {v9, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3041
    .line 3042
    .line 3043
    invoke-static {v1, v9}, Lcom/android/server/pm/InstallPackageHelper;->updateDigest(Ljava/security/MessageDigest;Ljava/io/File;)V

    .line 3044
    .line 3045
    .line 3046
    invoke-interface {v13}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getSplitCodePaths()[Ljava/lang/String;

    .line 3047
    .line 3048
    .line 3049
    move-result-object v9

    .line 3050
    invoke-static {v9}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    .line 3051
    .line 3052
    .line 3053
    move-result v9

    .line 3054
    if-nez v9, :cond_74

    .line 3055
    .line 3056
    invoke-interface {v13}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getSplitCodePaths()[Ljava/lang/String;

    .line 3057
    .line 3058
    .line 3059
    move-result-object v9

    .line 3060
    array-length v15, v9
    :try_end_21
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_21 .. :try_end_21} :catch_c
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_c
    .catchall {:try_start_21 .. :try_end_21} :catchall_9

    .line 3061
    move-object/from16 v17, v7

    .line 3062
    .line 3063
    const/4 v7, 0x0

    .line 3064
    :goto_56
    if-ge v7, v15, :cond_75

    .line 3065
    .line 3066
    move/from16 v18, v15

    .line 3067
    .line 3068
    :try_start_22
    aget-object v15, v9, v7

    .line 3069
    .line 3070
    move-object/from16 p0, v9

    .line 3071
    .line 3072
    new-instance v9, Ljava/io/File;

    .line 3073
    .line 3074
    invoke-direct {v9, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3075
    .line 3076
    .line 3077
    invoke-static {v1, v9}, Lcom/android/server/pm/InstallPackageHelper;->updateDigest(Ljava/security/MessageDigest;Ljava/io/File;)V

    .line 3078
    .line 3079
    .line 3080
    const/4 v9, 0x1

    .line 3081
    add-int/2addr v7, v9

    .line 3082
    move-object/from16 v9, p0

    .line 3083
    .line 3084
    move/from16 v15, v18

    .line 3085
    .line 3086
    goto :goto_56

    .line 3087
    :catchall_8
    move-exception v0

    .line 3088
    :goto_57
    move-object v1, v0

    .line 3089
    goto/16 :goto_69

    .line 3090
    .line 3091
    :catchall_9
    move-exception v0

    .line 3092
    move-object/from16 v17, v7

    .line 3093
    .line 3094
    goto :goto_57

    .line 3095
    :catch_c
    move-object/from16 v17, v7

    .line 3096
    .line 3097
    goto :goto_58

    .line 3098
    :cond_74
    move-object/from16 v17, v7

    .line 3099
    .line 3100
    :cond_75
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    .line 3101
    .line 3102
    .line 3103
    move-result-object v1
    :try_end_22
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_22 .. :try_end_22} :catch_d
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_22} :catch_d
    .catchall {:try_start_22 .. :try_end_22} :catchall_8

    .line 3104
    :try_start_23
    invoke-virtual {v4}, Lcom/android/server/pm/PackageSetting;->getRestrictUpdateHash()[B

    .line 3105
    .line 3106
    .line 3107
    move-result-object v7

    .line 3108
    invoke-static {v7, v1}, Ljava/util/Arrays;->equals([B[B)Z

    .line 3109
    .line 3110
    .line 3111
    move-result v1

    .line 3112
    if-eqz v1, :cond_76

    .line 3113
    .line 3114
    invoke-virtual {v4}, Lcom/android/server/pm/PackageSetting;->getRestrictUpdateHash()[B

    .line 3115
    .line 3116
    .line 3117
    move-result-object v1

    .line 3118
    invoke-interface {v13, v1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setRestrictUpdateHash([B)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 3119
    .line 3120
    .line 3121
    goto :goto_59

    .line 3122
    :cond_76
    new-instance v1, Lcom/android/server/pm/PrepareFailure;

    .line 3123
    .line 3124
    new-instance v3, Ljava/lang/StringBuilder;

    .line 3125
    .line 3126
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 3127
    .line 3128
    .line 3129
    const-string v4, "New package fails restrict-update check: "

    .line 3130
    .line 3131
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3132
    .line 3133
    .line 3134
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3135
    .line 3136
    .line 3137
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3138
    .line 3139
    .line 3140
    move-result-object v2

    .line 3141
    const/4 v3, -0x2

    .line 3142
    invoke-direct {v1, v3, v2}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    .line 3143
    .line 3144
    .line 3145
    throw v1

    .line 3146
    :catch_d
    :goto_58
    new-instance v1, Lcom/android/server/pm/PrepareFailure;

    .line 3147
    .line 3148
    new-instance v3, Ljava/lang/StringBuilder;

    .line 3149
    .line 3150
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 3151
    .line 3152
    .line 3153
    const-string v4, "Could not compute hash: "

    .line 3154
    .line 3155
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3156
    .line 3157
    .line 3158
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3159
    .line 3160
    .line 3161
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3162
    .line 3163
    .line 3164
    move-result-object v2

    .line 3165
    const/4 v3, -0x2

    .line 3166
    invoke-direct {v1, v3, v2}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    .line 3167
    .line 3168
    .line 3169
    throw v1

    .line 3170
    :cond_77
    move-object/from16 v17, v7

    .line 3171
    .line 3172
    :goto_59
    if-eqz v3, :cond_7a

    .line 3173
    .line 3174
    invoke-interface {v3}, Lcom/android/server/pm/pkg/AndroidPackage;->getSharedUserId()Ljava/lang/String;

    .line 3175
    .line 3176
    .line 3177
    move-result-object v1

    .line 3178
    if-eqz v1, :cond_78

    .line 3179
    .line 3180
    invoke-interface {v3}, Lcom/android/server/pm/pkg/AndroidPackage;->getSharedUserId()Ljava/lang/String;

    .line 3181
    .line 3182
    .line 3183
    move-result-object v1

    .line 3184
    goto :goto_5a

    .line 3185
    :cond_78
    const-string v1, "<nothing>"

    .line 3186
    .line 3187
    :goto_5a
    invoke-interface {v13}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getSharedUserId()Ljava/lang/String;

    .line 3188
    .line 3189
    .line 3190
    move-result-object v7

    .line 3191
    if-eqz v7, :cond_79

    .line 3192
    .line 3193
    invoke-interface {v13}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getSharedUserId()Ljava/lang/String;

    .line 3194
    .line 3195
    .line 3196
    move-result-object v7

    .line 3197
    goto :goto_5b

    .line 3198
    :cond_79
    const-string v7, "<nothing>"

    .line 3199
    .line 3200
    :goto_5b
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3201
    .line 3202
    .line 3203
    move-result v9

    .line 3204
    const/16 v15, -0x18

    .line 3205
    .line 3206
    if-eqz v9, :cond_7c

    .line 3207
    .line 3208
    invoke-interface {v3}, Lcom/android/server/pm/pkg/AndroidPackage;->isLeavingSharedUser()Z

    .line 3209
    .line 3210
    .line 3211
    move-result v1

    .line 3212
    if-eqz v1, :cond_7a

    .line 3213
    .line 3214
    invoke-interface {v13}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->isLeavingSharedUser()Z

    .line 3215
    .line 3216
    .line 3217
    move-result v1

    .line 3218
    if-eqz v1, :cond_7b

    .line 3219
    .line 3220
    :cond_7a
    move-object/from16 v1, v20

    .line 3221
    .line 3222
    const/4 v3, 0x1

    .line 3223
    goto :goto_5c

    .line 3224
    :cond_7b
    new-instance v1, Lcom/android/server/pm/PrepareFailure;

    .line 3225
    .line 3226
    new-instance v2, Ljava/lang/StringBuilder;

    .line 3227
    .line 3228
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 3229
    .line 3230
    .line 3231
    const-string v3, "Package "

    .line 3232
    .line 3233
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3234
    .line 3235
    .line 3236
    invoke-interface {v13}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    .line 3237
    .line 3238
    .line 3239
    move-result-object v3

    .line 3240
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3241
    .line 3242
    .line 3243
    const-string v3, " attempting to rejoin "

    .line 3244
    .line 3245
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3246
    .line 3247
    .line 3248
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3249
    .line 3250
    .line 3251
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3252
    .line 3253
    .line 3254
    move-result-object v2

    .line 3255
    invoke-direct {v1, v15, v2}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    .line 3256
    .line 3257
    .line 3258
    throw v1

    .line 3259
    :cond_7c
    new-instance v2, Lcom/android/server/pm/PrepareFailure;

    .line 3260
    .line 3261
    new-instance v3, Ljava/lang/StringBuilder;

    .line 3262
    .line 3263
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 3264
    .line 3265
    .line 3266
    const-string v4, "Package "

    .line 3267
    .line 3268
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3269
    .line 3270
    .line 3271
    invoke-interface {v13}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    .line 3272
    .line 3273
    .line 3274
    move-result-object v4

    .line 3275
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3276
    .line 3277
    .line 3278
    const-string v4, " shared user changed from "

    .line 3279
    .line 3280
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3281
    .line 3282
    .line 3283
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3284
    .line 3285
    .line 3286
    const-string v1, " to "

    .line 3287
    .line 3288
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3289
    .line 3290
    .line 3291
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3292
    .line 3293
    .line 3294
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3295
    .line 3296
    .line 3297
    move-result-object v1

    .line 3298
    invoke-direct {v2, v15, v1}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    .line 3299
    .line 3300
    .line 3301
    throw v2

    .line 3302
    :goto_5c
    invoke-virtual {v11, v1, v3}, Lcom/android/server/pm/PackageSetting;->queryInstalledUsers([IZ)[I

    .line 3303
    .line 3304
    .line 3305
    move-result-object v7

    .line 3306
    const/4 v15, 0x0

    .line 3307
    invoke-virtual {v11, v1, v15}, Lcom/android/server/pm/PackageSetting;->queryInstalledUsers([IZ)[I

    .line 3308
    .line 3309
    .line 3310
    move-result-object v3

    .line 3311
    if-eqz v5, :cond_80

    .line 3312
    .line 3313
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/InstallRequest;->getUserId()I

    .line 3314
    .line 3315
    .line 3316
    move-result v5

    .line 3317
    const/4 v9, -0x1

    .line 3318
    if-ne v5, v9, :cond_7e

    .line 3319
    .line 3320
    array-length v5, v1

    .line 3321
    move v9, v15

    .line 3322
    :goto_5d
    if-ge v9, v5, :cond_80

    .line 3323
    .line 3324
    aget v15, v1, v9

    .line 3325
    .line 3326
    invoke-virtual {v11, v15}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    .line 3327
    .line 3328
    .line 3329
    move-result v18

    .line 3330
    if-eqz v18, :cond_7d

    .line 3331
    .line 3332
    const/16 v18, 0x1

    .line 3333
    .line 3334
    add-int/lit8 v9, v9, 0x1

    .line 3335
    .line 3336
    const/4 v15, 0x0

    .line 3337
    goto :goto_5d

    .line 3338
    :cond_7d
    const-string v1, "PackageManager"

    .line 3339
    .line 3340
    new-instance v3, Ljava/lang/StringBuilder;

    .line 3341
    .line 3342
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 3343
    .line 3344
    .line 3345
    const-string v4, "Can\'t replace full app with instant app: "

    .line 3346
    .line 3347
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3348
    .line 3349
    .line 3350
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3351
    .line 3352
    .line 3353
    const-string v2, " for user: "

    .line 3354
    .line 3355
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3356
    .line 3357
    .line 3358
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3359
    .line 3360
    .line 3361
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3362
    .line 3363
    .line 3364
    move-result-object v2

    .line 3365
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3366
    .line 3367
    .line 3368
    new-instance v1, Lcom/android/server/pm/PrepareFailure;

    .line 3369
    .line 3370
    invoke-direct {v1}, Lcom/android/server/pm/PrepareFailure;-><init>()V

    .line 3371
    .line 3372
    .line 3373
    throw v1

    .line 3374
    :cond_7e
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/InstallRequest;->getUserId()I

    .line 3375
    .line 3376
    .line 3377
    move-result v1

    .line 3378
    invoke-virtual {v11, v1}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    .line 3379
    .line 3380
    .line 3381
    move-result v1

    .line 3382
    if-eqz v1, :cond_7f

    .line 3383
    .line 3384
    goto :goto_5e

    .line 3385
    :cond_7f
    const-string v1, "PackageManager"

    .line 3386
    .line 3387
    new-instance v3, Ljava/lang/StringBuilder;

    .line 3388
    .line 3389
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 3390
    .line 3391
    .line 3392
    const-string v4, "Can\'t replace full app with instant app: "

    .line 3393
    .line 3394
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3395
    .line 3396
    .line 3397
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3398
    .line 3399
    .line 3400
    const-string v2, " for user: "

    .line 3401
    .line 3402
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3403
    .line 3404
    .line 3405
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/InstallRequest;->getUserId()I

    .line 3406
    .line 3407
    .line 3408
    move-result v2

    .line 3409
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3410
    .line 3411
    .line 3412
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3413
    .line 3414
    .line 3415
    move-result-object v2

    .line 3416
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3417
    .line 3418
    .line 3419
    new-instance v1, Lcom/android/server/pm/PrepareFailure;

    .line 3420
    .line 3421
    invoke-direct {v1}, Lcom/android/server/pm/PrepareFailure;-><init>()V

    .line 3422
    .line 3423
    .line 3424
    throw v1

    .line 3425
    :cond_80
    :goto_5e
    monitor-exit v6
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_8

    .line 3426
    :try_start_24
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 3427
    .line 3428
    new-instance v1, Lcom/android/server/pm/PackageRemovedInfo;

    .line 3429
    .line 3430
    invoke-direct {v1}, Lcom/android/server/pm/PackageRemovedInfo;-><init>()V

    .line 3431
    .line 3432
    .line 3433
    invoke-virtual {v11}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    .line 3434
    .line 3435
    .line 3436
    move-result v2

    .line 3437
    iput v2, v1, Lcom/android/server/pm/PackageRemovedInfo;->mUid:I

    .line 3438
    .line 3439
    invoke-virtual {v11}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    .line 3440
    .line 3441
    .line 3442
    move-result-object v2

    .line 3443
    iput-object v2, v1, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedPackage:Ljava/lang/String;

    .line 3444
    .line 3445
    invoke-virtual {v11}, Lcom/android/server/pm/PackageSetting;->getInstallSource()Lcom/android/server/pm/InstallSource;

    .line 3446
    .line 3447
    .line 3448
    move-result-object v2

    .line 3449
    iget-object v2, v2, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    .line 3450
    .line 3451
    iput-object v2, v1, Lcom/android/server/pm/PackageRemovedInfo;->mInstallerPackageName:Ljava/lang/String;

    .line 3452
    .line 3453
    invoke-interface {v13}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getStaticSharedLibraryName()Ljava/lang/String;

    .line 3454
    .line 3455
    .line 3456
    move-result-object v2

    .line 3457
    if-eqz v2, :cond_81

    .line 3458
    .line 3459
    const/4 v2, 0x1

    .line 3460
    goto :goto_5f

    .line 3461
    :cond_81
    const/4 v2, 0x0

    .line 3462
    :goto_5f
    iput-boolean v2, v1, Lcom/android/server/pm/PackageRemovedInfo;->mIsStaticSharedLib:Z

    .line 3463
    .line 3464
    const/4 v2, 0x1

    .line 3465
    iput-boolean v2, v1, Lcom/android/server/pm/PackageRemovedInfo;->mIsUpdate:Z

    .line 3466
    .line 3467
    iput-object v7, v1, Lcom/android/server/pm/PackageRemovedInfo;->mOrigUsers:[I

    .line 3468
    .line 3469
    new-instance v2, Landroid/util/SparseIntArray;

    .line 3470
    .line 3471
    array-length v5, v7

    .line 3472
    invoke-direct {v2, v5}, Landroid/util/SparseIntArray;-><init>(I)V

    .line 3473
    .line 3474
    .line 3475
    iput-object v2, v1, Lcom/android/server/pm/PackageRemovedInfo;->mInstallReasons:Landroid/util/SparseIntArray;

    .line 3476
    .line 3477
    const/4 v2, 0x0

    .line 3478
    :goto_60
    array-length v5, v7

    .line 3479
    if-ge v2, v5, :cond_82

    .line 3480
    .line 3481
    aget v5, v7, v2

    .line 3482
    .line 3483
    iget-object v6, v1, Lcom/android/server/pm/PackageRemovedInfo;->mInstallReasons:Landroid/util/SparseIntArray;

    .line 3484
    .line 3485
    invoke-virtual {v11, v5}, Lcom/android/server/pm/PackageSetting;->getInstallReason(I)I

    .line 3486
    .line 3487
    .line 3488
    move-result v9

    .line 3489
    invoke-virtual {v6, v5, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 3490
    .line 3491
    .line 3492
    const/4 v5, 0x1

    .line 3493
    add-int/2addr v2, v5

    .line 3494
    goto :goto_60

    .line 3495
    :catchall_a
    move-exception v0

    .line 3496
    :goto_61
    move-object v1, v0

    .line 3497
    move-object/from16 v14, v17

    .line 3498
    .line 3499
    goto/16 :goto_51

    .line 3500
    .line 3501
    :cond_82
    new-instance v2, Landroid/util/SparseIntArray;

    .line 3502
    .line 3503
    array-length v5, v3

    .line 3504
    invoke-direct {v2, v5}, Landroid/util/SparseIntArray;-><init>(I)V

    .line 3505
    .line 3506
    .line 3507
    iput-object v2, v1, Lcom/android/server/pm/PackageRemovedInfo;->mUninstallReasons:Landroid/util/SparseIntArray;

    .line 3508
    .line 3509
    const/4 v2, 0x0

    .line 3510
    :goto_62
    array-length v5, v3

    .line 3511
    if-ge v2, v5, :cond_83

    .line 3512
    .line 3513
    aget v5, v3, v2

    .line 3514
    .line 3515
    iget-object v6, v1, Lcom/android/server/pm/PackageRemovedInfo;->mUninstallReasons:Landroid/util/SparseIntArray;

    .line 3516
    .line 3517
    invoke-virtual {v11, v5}, Lcom/android/server/pm/PackageSetting;->getUninstallReason(I)I

    .line 3518
    .line 3519
    .line 3520
    move-result v7

    .line 3521
    invoke-virtual {v6, v5, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 3522
    .line 3523
    .line 3524
    const/4 v5, 0x1

    .line 3525
    add-int/2addr v2, v5

    .line 3526
    goto :goto_62

    .line 3527
    :cond_83
    invoke-virtual {v4}, Lcom/android/server/pm/PackageSetting;->isExternalStorage()Z

    .line 3528
    .line 3529
    .line 3530
    move-result v2

    .line 3531
    iput-boolean v2, v1, Lcom/android/server/pm/PackageRemovedInfo;->mIsExternal:Z

    .line 3532
    .line 3533
    invoke-virtual {v4}, Lcom/android/server/pm/PackageSetting;->getVersionCode()J

    .line 3534
    .line 3535
    .line 3536
    move-result-wide v2

    .line 3537
    iput-wide v2, v1, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedPackageVersionCode:J

    .line 3538
    .line 3539
    invoke-virtual {v12, v1}, Lcom/android/server/pm/InstallRequest;->setRemovedInfo(Lcom/android/server/pm/PackageRemovedInfo;)V

    .line 3540
    .line 3541
    .line 3542
    invoke-virtual {v4}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    .line 3543
    .line 3544
    .line 3545
    move-result v1

    .line 3546
    if-eqz v1, :cond_8a

    .line 3547
    .line 3548
    invoke-virtual {v4}, Lcom/android/server/pm/PackageSetting;->isPrivileged()Z

    .line 3549
    .line 3550
    .line 3551
    move-result v2

    .line 3552
    invoke-virtual {v4}, Lcom/android/server/pm/PackageSetting;->isOem()Z

    .line 3553
    .line 3554
    .line 3555
    move-result v3

    .line 3556
    invoke-virtual {v4}, Lcom/android/server/pm/PackageSetting;->isVendor()Z

    .line 3557
    .line 3558
    .line 3559
    move-result v5

    .line 3560
    invoke-virtual {v4}, Lcom/android/server/pm/PackageSetting;->isProduct()Z

    .line 3561
    .line 3562
    .line 3563
    move-result v6

    .line 3564
    invoke-virtual {v4}, Lcom/android/server/pm/PackageSetting;->isOdm()Z

    .line 3565
    .line 3566
    .line 3567
    move-result v7

    .line 3568
    invoke-virtual {v4}, Lcom/android/server/pm/PackageSetting;->isSystemExt()Z

    .line 3569
    .line 3570
    .line 3571
    move-result v9

    .line 3572
    const/high16 v15, 0x10000

    .line 3573
    .line 3574
    or-int/2addr v10, v15

    .line 3575
    if-eqz v2, :cond_84

    .line 3576
    .line 3577
    goto :goto_63

    .line 3578
    :cond_84
    const/16 v16, 0x0

    .line 3579
    .line 3580
    :goto_63
    or-int v2, v10, v16

    .line 3581
    .line 3582
    if-eqz v3, :cond_85

    .line 3583
    .line 3584
    const/high16 v3, 0x40000

    .line 3585
    .line 3586
    goto :goto_64

    .line 3587
    :cond_85
    const/4 v3, 0x0

    .line 3588
    :goto_64
    or-int/2addr v2, v3

    .line 3589
    if-eqz v5, :cond_86

    .line 3590
    .line 3591
    const/high16 v3, 0x80000

    .line 3592
    .line 3593
    goto :goto_65

    .line 3594
    :cond_86
    const/4 v3, 0x0

    .line 3595
    :goto_65
    or-int/2addr v2, v3

    .line 3596
    if-eqz v6, :cond_87

    .line 3597
    .line 3598
    const/high16 v3, 0x100000

    .line 3599
    .line 3600
    goto :goto_66

    .line 3601
    :cond_87
    const/4 v3, 0x0

    .line 3602
    :goto_66
    or-int/2addr v2, v3

    .line 3603
    if-eqz v7, :cond_88

    .line 3604
    .line 3605
    const/high16 v3, 0x400000

    .line 3606
    .line 3607
    goto :goto_67

    .line 3608
    :cond_88
    const/4 v3, 0x0

    .line 3609
    :goto_67
    or-int/2addr v2, v3

    .line 3610
    if-eqz v9, :cond_89

    .line 3611
    .line 3612
    const/high16 v34, 0x200000

    .line 3613
    .line 3614
    goto :goto_68

    .line 3615
    :cond_89
    const/16 v34, 0x0

    .line 3616
    .line 3617
    :goto_68
    or-int v10, v2, v34

    .line 3618
    .line 3619
    const/4 v2, 0x1

    .line 3620
    invoke-virtual {v12, v2}, Lcom/android/server/pm/InstallRequest;->setReturnCode(I)V

    .line 3621
    .line 3622
    .line 3623
    invoke-virtual {v4}, Lcom/android/server/pm/PackageSetting;->getApexModuleName()Ljava/lang/String;

    .line 3624
    .line 3625
    .line 3626
    move-result-object v2

    .line 3627
    iput-object v2, v12, Lcom/android/server/pm/InstallRequest;->mApexModuleName:Ljava/lang/String;
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_a

    .line 3628
    .line 3629
    :cond_8a
    move v9, v1

    .line 3630
    move-object v5, v4

    .line 3631
    move v3, v10

    .line 3632
    move-object v10, v11

    .line 3633
    move-object/from16 v11, v32

    .line 3634
    .line 3635
    goto :goto_6b

    .line 3636
    :goto_69
    :try_start_25
    monitor-exit v6
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_8

    .line 3637
    :try_start_26
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 3638
    .line 3639
    throw v1
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_a

    .line 3640
    :catchall_b
    move-exception v0

    .line 3641
    move-object/from16 v17, v7

    .line 3642
    .line 3643
    goto/16 :goto_61

    .line 3644
    .line 3645
    :catchall_c
    move-exception v0

    .line 3646
    move-object/from16 v17, v7

    .line 3647
    .line 3648
    :goto_6a
    move-object v1, v0

    .line 3649
    :try_start_27
    monitor-exit v3
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_d

    .line 3650
    :try_start_28
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 3651
    .line 3652
    throw v1
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_a

    .line 3653
    :catchall_d
    move-exception v0

    .line 3654
    goto :goto_6a

    .line 3655
    :cond_8b
    move-object/from16 v17, v7

    .line 3656
    .line 3657
    :try_start_29
    invoke-interface {v13}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    .line 3658
    .line 3659
    .line 3660
    move-result-object v2

    .line 3661
    iget-object v3, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 3662
    .line 3663
    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 3664
    .line 3665
    sget-boolean v4, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 3666
    .line 3667
    monitor-enter v3
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_12

    .line 3668
    :try_start_2a
    iget-object v4, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 3669
    .line 3670
    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 3671
    .line 3672
    invoke-virtual {v4, v2}, Lcom/android/server/pm/Settings;->getRenamedPackageLPr(Ljava/lang/String;)Ljava/lang/String;

    .line 3673
    .line 3674
    .line 3675
    move-result-object v4

    .line 3676
    if-nez v4, :cond_8e

    .line 3677
    .line 3678
    iget-object v1, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 3679
    .line 3680
    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 3681
    .line 3682
    invoke-virtual {v1, v2}, Lcom/android/server/utils/WatchedArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 3683
    .line 3684
    .line 3685
    move-result v1

    .line 3686
    if-nez v1, :cond_8d

    .line 3687
    .line 3688
    monitor-exit v3
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_f

    .line 3689
    move v3, v10

    .line 3690
    const/4 v5, 0x0

    .line 3691
    const/4 v9, 0x0

    .line 3692
    const/4 v10, 0x0

    .line 3693
    const/4 v11, 0x0

    .line 3694
    :goto_6b
    move-object/from16 v1, p1

    .line 3695
    .line 3696
    move v2, v8

    .line 3697
    move v4, v14

    .line 3698
    move-object v6, v13

    .line 3699
    move-object/from16 v14, v17

    .line 3700
    .line 3701
    move-object/from16 v7, v31

    .line 3702
    .line 3703
    :try_start_2b
    invoke-virtual/range {v1 .. v11}, Lcom/android/server/pm/InstallRequest;->setPrepareResult(ZIILcom/android/server/pm/PackageSetting;Lcom/android/internal/pm/parsing/pkg/ParsedPackage;Landroid/content/pm/ArchivedPackageParcel;ZZLcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;)V
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_e

    .line 3704
    .line 3705
    .line 3706
    if-eqz v14, :cond_8c

    .line 3707
    .line 3708
    iput-object v14, v12, Lcom/android/server/pm/InstallRequest;->mFreezer:Lcom/android/server/pm/PackageFreezer;

    .line 3709
    .line 3710
    :cond_8c
    return-void

    .line 3711
    :catchall_e
    move-exception v0

    .line 3712
    move-object v1, v0

    .line 3713
    const/4 v13, 0x0

    .line 3714
    goto/16 :goto_6f

    .line 3715
    .line 3716
    :catchall_f
    move-exception v0

    .line 3717
    move-object/from16 v14, v17

    .line 3718
    .line 3719
    :goto_6c
    move-object v1, v0

    .line 3720
    goto :goto_6d

    .line 3721
    :cond_8d
    move-object/from16 v14, v17

    .line 3722
    .line 3723
    :try_start_2c
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/InstallRequest;->getUser()Landroid/os/UserHandle;

    .line 3724
    .line 3725
    .line 3726
    move-result-object v1

    .line 3727
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    .line 3728
    .line 3729
    .line 3730
    move-result v1

    .line 3731
    invoke-interface {v13}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 3732
    .line 3733
    .line 3734
    move-result-object v4

    .line 3735
    const/4 v5, 0x1

    .line 3736
    invoke-static {v1, v4, v5}, Lcom/android/server/pm/PmHook;->auditLogInstallFail(ILjava/lang/String;Z)V

    .line 3737
    .line 3738
    .line 3739
    new-instance v1, Lcom/android/server/pm/PrepareFailure;

    .line 3740
    .line 3741
    new-instance v4, Ljava/lang/StringBuilder;

    .line 3742
    .line 3743
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 3744
    .line 3745
    .line 3746
    const-string v5, "Attempt to re-install "

    .line 3747
    .line 3748
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3749
    .line 3750
    .line 3751
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3752
    .line 3753
    .line 3754
    const-string v2, " without first uninstalling."

    .line 3755
    .line 3756
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3757
    .line 3758
    .line 3759
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3760
    .line 3761
    .line 3762
    move-result-object v2

    .line 3763
    const/4 v4, -0x1

    .line 3764
    invoke-direct {v1, v4, v2}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    .line 3765
    .line 3766
    .line 3767
    throw v1

    .line 3768
    :catchall_10
    move-exception v0

    .line 3769
    goto :goto_6c

    .line 3770
    :cond_8e
    move-object/from16 v14, v17

    .line 3771
    .line 3772
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/InstallRequest;->getUser()Landroid/os/UserHandle;

    .line 3773
    .line 3774
    .line 3775
    move-result-object v1

    .line 3776
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    .line 3777
    .line 3778
    .line 3779
    move-result v1

    .line 3780
    invoke-interface {v13}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 3781
    .line 3782
    .line 3783
    move-result-object v5

    .line 3784
    const/4 v6, 0x1

    .line 3785
    invoke-static {v1, v5, v6}, Lcom/android/server/pm/PmHook;->auditLogInstallFail(ILjava/lang/String;Z)V

    .line 3786
    .line 3787
    .line 3788
    new-instance v1, Lcom/android/server/pm/PrepareFailure;

    .line 3789
    .line 3790
    new-instance v5, Ljava/lang/StringBuilder;

    .line 3791
    .line 3792
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 3793
    .line 3794
    .line 3795
    const-string v6, "Attempt to re-install "

    .line 3796
    .line 3797
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3798
    .line 3799
    .line 3800
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3801
    .line 3802
    .line 3803
    const-string v2, " without first uninstalling package running as "

    .line 3804
    .line 3805
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3806
    .line 3807
    .line 3808
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3809
    .line 3810
    .line 3811
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3812
    .line 3813
    .line 3814
    move-result-object v2

    .line 3815
    const/4 v4, -0x1

    .line 3816
    invoke-direct {v1, v4, v2}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    .line 3817
    .line 3818
    .line 3819
    throw v1

    .line 3820
    :goto_6d
    monitor-exit v3
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_10

    .line 3821
    :try_start_2d
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 3822
    .line 3823
    throw v1
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_11

    .line 3824
    :catchall_11
    move-exception v0

    .line 3825
    :goto_6e
    move-object v1, v0

    .line 3826
    goto/16 :goto_51

    .line 3827
    .line 3828
    :catchall_12
    move-exception v0

    .line 3829
    move-object/from16 v14, v17

    .line 3830
    .line 3831
    goto :goto_6e

    .line 3832
    :goto_6f
    if-eqz v14, :cond_8f

    .line 3833
    .line 3834
    iput-object v14, v12, Lcom/android/server/pm/InstallRequest;->mFreezer:Lcom/android/server/pm/PackageFreezer;

    .line 3835
    .line 3836
    if-eqz v13, :cond_8f

    .line 3837
    .line 3838
    invoke-virtual {v14}, Lcom/android/server/pm/PackageFreezer;->close()V

    .line 3839
    .line 3840
    .line 3841
    :cond_8f
    throw v1

    .line 3842
    :cond_90
    :try_start_2e
    new-instance v1, Lcom/android/server/pm/PrepareFailure;

    .line 3843
    .line 3844
    new-instance v3, Ljava/lang/StringBuilder;

    .line 3845
    .line 3846
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 3847
    .line 3848
    .line 3849
    const-string v4, "Package "

    .line 3850
    .line 3851
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3852
    .line 3853
    .line 3854
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3855
    .line 3856
    .line 3857
    const-string v4, " is an optimized app. APK optimized apps are not updateable."

    .line 3858
    .line 3859
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3860
    .line 3861
    .line 3862
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3863
    .line 3864
    .line 3865
    move-result-object v3

    .line 3866
    const/4 v4, -0x2

    .line 3867
    invoke-direct {v1, v4, v3}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    .line 3868
    .line 3869
    .line 3870
    throw v1

    .line 3871
    :goto_70
    monitor-exit v2
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_2

    .line 3872
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 3873
    .line 3874
    throw v1

    .line 3875
    :cond_91
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/InstallRequest;->getUser()Landroid/os/UserHandle;

    .line 3876
    .line 3877
    .line 3878
    move-result-object v1

    .line 3879
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    .line 3880
    .line 3881
    .line 3882
    move-result v1

    .line 3883
    invoke-interface {v13}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 3884
    .line 3885
    .line 3886
    move-result-object v2

    .line 3887
    const/4 v3, 0x1

    .line 3888
    invoke-static {v1, v2, v3}, Lcom/android/server/pm/PmHook;->auditLogInstallFail(ILjava/lang/String;Z)V

    .line 3889
    .line 3890
    .line 3891
    new-instance v1, Lcom/android/server/pm/PrepareFailure;

    .line 3892
    .line 3893
    const-string v2, "This SmartSwitch installation is not allowed due to app is running in OOBE"

    .line 3894
    .line 3895
    const/16 v3, -0x6e

    .line 3896
    .line 3897
    invoke-direct {v1, v3, v2}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    .line 3898
    .line 3899
    .line 3900
    throw v1

    .line 3901
    :cond_92
    new-instance v1, Lcom/android/server/pm/PrepareFailure;

    .line 3902
    .line 3903
    const-string v3, "Failed collect during installPackageLI"

    .line 3904
    .line 3905
    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->getException()Ljava/lang/Exception;

    .line 3906
    .line 3907
    .line 3908
    move-result-object v2

    .line 3909
    invoke-direct {v1, v2, v3}, Lcom/android/server/pm/PrepareFailure;-><init>(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 3910
    .line 3911
    .line 3912
    throw v1

    .line 3913
    :cond_93
    const/16 v3, -0x6e

    .line 3914
    .line 3915
    const-string v1, "This app installation is not allowed"

    .line 3916
    .line 3917
    const-string v2, "PackageManager"

    .line 3918
    .line 3919
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3920
    .line 3921
    .line 3922
    new-instance v2, Lcom/android/server/pm/PrepareFailure;

    .line 3923
    .line 3924
    invoke-direct {v2, v3, v1}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    .line 3925
    .line 3926
    .line 3927
    throw v2

    .line 3928
    :cond_94
    if-eqz v2, :cond_97

    .line 3929
    .line 3930
    const/4 v1, 0x1

    .line 3931
    if-eq v2, v1, :cond_96

    .line 3932
    .line 3933
    const/4 v1, 0x2

    .line 3934
    if-eq v2, v1, :cond_95

    .line 3935
    .line 3936
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 3937
    .line 3938
    .line 3939
    move-result-object v1

    .line 3940
    goto :goto_71

    .line 3941
    :cond_95
    const-string v1, "INSTALL_NOT_ALLOWED_UNINSTALL_FOR_GUEST"

    .line 3942
    .line 3943
    goto :goto_71

    .line 3944
    :cond_96
    const-string v1, "INSTALL_NOT_ALLOWED_INSTALL_ONLY_OWNER"

    .line 3945
    .line 3946
    goto :goto_71

    .line 3947
    :cond_97
    const-string v1, "INSTALL_ALLOWD"

    .line 3948
    .line 3949
    :goto_71
    const-string v2, "Install failed. Not allowed to install due to "

    .line 3950
    .line 3951
    const-string v3, " for User "

    .line 3952
    .line 3953
    invoke-static {v2, v1, v3}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3954
    .line 3955
    .line 3956
    move-result-object v1

    .line 3957
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/InstallRequest;->getUserId()I

    .line 3958
    .line 3959
    .line 3960
    move-result v2

    .line 3961
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3962
    .line 3963
    .line 3964
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3965
    .line 3966
    .line 3967
    move-result-object v1

    .line 3968
    const-string v2, "PackageManager"

    .line 3969
    .line 3970
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3971
    .line 3972
    .line 3973
    new-instance v2, Lcom/android/server/pm/PrepareFailure;

    .line 3974
    .line 3975
    const/16 v3, -0x6e

    .line 3976
    .line 3977
    invoke-direct {v2, v3, v1}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    .line 3978
    .line 3979
    .line 3980
    throw v2

    .line 3981
    :goto_72
    if-eqz v2, :cond_98

    .line 3982
    .line 3983
    :try_start_2f
    invoke-virtual {v2}, Lcom/android/internal/pm/parsing/PackageParser2;->close()V
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_13

    .line 3984
    .line 3985
    .line 3986
    goto :goto_73

    .line 3987
    :catchall_13
    move-exception v0

    .line 3988
    move-object v2, v0

    .line 3989
    :try_start_30
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 3990
    .line 3991
    .line 3992
    :cond_98
    :goto_73
    throw v1
    :try_end_30
    .catch Lcom/android/internal/pm/parsing/PackageParserException; {:try_start_30 .. :try_end_30} :catch_0
    .catchall {:try_start_30 .. :try_end_30} :catchall_1

    .line 3993
    :goto_74
    :try_start_31
    new-instance v2, Lcom/android/server/pm/PrepareFailure;

    .line 3994
    .line 3995
    iget v3, v1, Lcom/android/internal/pm/parsing/PackageParserException;->error:I

    .line 3996
    .line 3997
    const-string v4, "Failed parse during installPackageLI"

    .line 3998
    .line 3999
    invoke-static {v4, v1}, Landroid/util/ExceptionUtils;->getCompleteMessage(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    .line 4000
    .line 4001
    .line 4002
    move-result-object v1

    .line 4003
    invoke-direct {v2, v3, v1}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    .line 4004
    .line 4005
    .line 4006
    throw v2
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_1

    .line 4007
    :goto_75
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 4008
    .line 4009
    .line 4010
    throw v3
.end method

.method public final restoreAndPostInstall(Lcom/android/server/pm/InstallRequest;)V
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    const/4 v3, 0x1

    .line 6
    iget v4, v2, Lcom/android/server/pm/InstallRequest;->mUserId:I

    .line 7
    .line 8
    iget-object v0, v2, Lcom/android/server/pm/InstallRequest;->mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

    .line 9
    .line 10
    const/4 v5, 0x0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, v0, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedPackage:Ljava/lang/String;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    move v6, v3

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v6, v5

    .line 20
    :goto_0
    iget-object v0, v2, Lcom/android/server/pm/InstallRequest;->mPkg:Lcom/android/server/pm/pkg/AndroidPackage;

    .line 21
    .line 22
    const/16 v7, 0x10

    .line 23
    .line 24
    const/4 v8, 0x0

    .line 25
    if-eqz v0, :cond_4

    .line 26
    .line 27
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/InstallRequest;->getInstallFlags()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    sget-object v9, Lcom/android/server/pm/PackageInstallerSession;->EMPTY_CHILD_SESSION_ARRAY:[I

    .line 32
    .line 33
    const/high16 v9, 0x8000000

    .line 34
    .line 35
    and-int/2addr v0, v9

    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    goto :goto_2

    .line 39
    :cond_1
    if-nez v6, :cond_2

    .line 40
    .line 41
    move v0, v3

    .line 42
    goto :goto_3

    .line 43
    :cond_2
    iget-object v0, v2, Lcom/android/server/pm/InstallRequest;->mPkg:Lcom/android/server/pm/pkg/AndroidPackage;

    .line 44
    .line 45
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iget-object v8, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 50
    .line 51
    iget-object v9, v8, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 52
    .line 53
    sget-boolean v8, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 54
    .line 55
    monitor-enter v9

    .line 56
    :try_start_0
    iget-object v8, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 57
    .line 58
    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 59
    .line 60
    invoke-virtual {v8, v0}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 61
    .line 62
    .line 63
    move-result-object v8

    .line 64
    if-eqz v8, :cond_3

    .line 65
    .line 66
    invoke-virtual {v8, v7}, Lcom/android/server/pm/PackageSetting;->getBoolean(I)Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-eqz v0, :cond_3

    .line 71
    .line 72
    move v0, v3

    .line 73
    goto :goto_1

    .line 74
    :cond_3
    move v0, v5

    .line 75
    :goto_1
    monitor-exit v9

    .line 76
    goto :goto_3

    .line 77
    :catchall_0
    move-exception v0

    .line 78
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 80
    .line 81
    throw v0

    .line 82
    :cond_4
    :goto_2
    move v0, v5

    .line 83
    :goto_3
    iget-object v9, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 84
    .line 85
    iget v10, v9, Lcom/android/server/pm/PackageManagerService;->mNextInstallToken:I

    .line 86
    .line 87
    if-gez v10, :cond_5

    .line 88
    .line 89
    iput v3, v9, Lcom/android/server/pm/PackageManagerService;->mNextInstallToken:I

    .line 90
    .line 91
    :cond_5
    iget v10, v9, Lcom/android/server/pm/PackageManagerService;->mNextInstallToken:I

    .line 92
    .line 93
    add-int/lit8 v11, v10, 0x1

    .line 94
    .line 95
    iput v11, v9, Lcom/android/server/pm/PackageManagerService;->mNextInstallToken:I

    .line 96
    .line 97
    iget-object v9, v9, Lcom/android/server/pm/PackageManagerService;->mRunningInstalls:Landroid/util/SparseArray;

    .line 98
    .line 99
    invoke-virtual {v9, v10, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    iget v9, v2, Lcom/android/server/pm/InstallRequest;->mReturnCode:I

    .line 103
    .line 104
    if-ne v9, v3, :cond_6

    .line 105
    .line 106
    move v9, v3

    .line 107
    goto :goto_4

    .line 108
    :cond_6
    move v9, v5

    .line 109
    :goto_4
    const-wide/32 v14, 0x40000

    .line 110
    .line 111
    .line 112
    const/4 v11, -0x1

    .line 113
    if-eqz v9, :cond_b

    .line 114
    .line 115
    if-eqz v0, :cond_b

    .line 116
    .line 117
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/InstallRequest;->closeFreezer()V

    .line 118
    .line 119
    .line 120
    const-string v0, "User "

    .line 121
    .line 122
    iget-object v12, v2, Lcom/android/server/pm/InstallRequest;->mPkg:Lcom/android/server/pm/pkg/AndroidPackage;

    .line 123
    .line 124
    if-nez v12, :cond_7

    .line 125
    .line 126
    :goto_5
    move v0, v5

    .line 127
    goto :goto_9

    .line 128
    :cond_7
    iget-object v12, v1, Lcom/android/server/pm/InstallPackageHelper;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 129
    .line 130
    iget-object v13, v12, Lcom/android/server/pm/PackageManagerServiceInjector;->mIBackupManager:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    .line 131
    .line 132
    iget-object v7, v12, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    .line 133
    .line 134
    invoke-virtual {v13, v7, v12}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v7

    .line 138
    check-cast v7, Landroid/app/backup/IBackupManager;

    .line 139
    .line 140
    const-string v12, "PackageManager"

    .line 141
    .line 142
    if-eqz v7, :cond_a

    .line 143
    .line 144
    if-ne v4, v11, :cond_8

    .line 145
    .line 146
    move v13, v5

    .line 147
    goto :goto_6

    .line 148
    :cond_8
    move v13, v4

    .line 149
    :goto_6
    const-string/jumbo v11, "restore"

    .line 150
    .line 151
    .line 152
    invoke-static {v14, v15, v11, v10}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 153
    .line 154
    .line 155
    :try_start_1
    invoke-interface {v7, v13}, Landroid/app/backup/IBackupManager;->isUserReadyForBackup(I)Z

    .line 156
    .line 157
    .line 158
    move-result v11

    .line 159
    if-eqz v11, :cond_9

    .line 160
    .line 161
    iget-object v0, v2, Lcom/android/server/pm/InstallRequest;->mPkg:Lcom/android/server/pm/pkg/AndroidPackage;

    .line 162
    .line 163
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    invoke-interface {v7, v13, v0, v10}, Landroid/app/backup/IBackupManager;->restoreAtInstallForUser(ILjava/lang/String;I)V

    .line 168
    .line 169
    .line 170
    goto :goto_8

    .line 171
    :catch_0
    move-exception v0

    .line 172
    goto :goto_7

    .line 173
    :cond_9
    new-instance v7, Ljava/lang/StringBuilder;

    .line 174
    .line 175
    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    const-string v0, " is not ready. Restore at install didn\'t take place."

    .line 182
    .line 183
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    invoke-static {v12, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 191
    .line 192
    .line 193
    goto :goto_5

    .line 194
    :goto_7
    const-string v7, "Exception trying to enqueue restore"

    .line 195
    .line 196
    invoke-static {v12, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 197
    .line 198
    .line 199
    goto :goto_5

    .line 200
    :catch_1
    :goto_8
    move v0, v3

    .line 201
    goto :goto_9

    .line 202
    :cond_a
    const-string v0, "Backup Manager not found!"

    .line 203
    .line 204
    invoke-static {v12, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    .line 206
    .line 207
    goto :goto_5

    .line 208
    :cond_b
    :goto_9
    if-eqz v9, :cond_11

    .line 209
    .line 210
    if-nez v0, :cond_11

    .line 211
    .line 212
    if-eqz v6, :cond_11

    .line 213
    .line 214
    iget-object v0, v2, Lcom/android/server/pm/InstallRequest;->mPkg:Lcom/android/server/pm/pkg/AndroidPackage;

    .line 215
    .line 216
    if-nez v0, :cond_c

    .line 217
    .line 218
    move v0, v5

    .line 219
    move-wide v6, v14

    .line 220
    goto/16 :goto_d

    .line 221
    .line 222
    :cond_c
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v12

    .line 226
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 227
    .line 228
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 229
    .line 230
    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    iget-object v6, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 235
    .line 236
    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 237
    .line 238
    sget-boolean v7, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 239
    .line 240
    monitor-enter v6

    .line 241
    :try_start_2
    iget-object v7, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 242
    .line 243
    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 244
    .line 245
    invoke-virtual {v7, v12}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 246
    .line 247
    .line 248
    move-result-object v7

    .line 249
    if-eqz v7, :cond_d

    .line 250
    .line 251
    iget v11, v7, Lcom/android/server/pm/PackageSetting;->mAppId:I

    .line 252
    .line 253
    invoke-virtual {v7, v4}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    .line 254
    .line 255
    .line 256
    move-result-object v4

    .line 257
    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageUserState;->getCeDataInode()J

    .line 258
    .line 259
    .line 260
    move-result-wide v16

    .line 261
    invoke-virtual {v7, v0, v3}, Lcom/android/server/pm/PackageSetting;->queryInstalledUsers([IZ)[I

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    move-wide/from16 v17, v16

    .line 266
    .line 267
    move/from16 v16, v11

    .line 268
    .line 269
    goto :goto_a

    .line 270
    :catchall_1
    move-exception v0

    .line 271
    goto :goto_e

    .line 272
    :cond_d
    new-array v0, v5, [I

    .line 273
    .line 274
    const-wide/16 v17, -0x1

    .line 275
    .line 276
    const/16 v16, -0x1

    .line 277
    .line 278
    :goto_a
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 279
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/InstallRequest;->getInstallFlags()I

    .line 280
    .line 281
    .line 282
    move-result v4

    .line 283
    const/high16 v6, 0x40000

    .line 284
    .line 285
    and-int/2addr v6, v4

    .line 286
    if-nez v6, :cond_f

    .line 287
    .line 288
    and-int/lit16 v4, v4, 0x80

    .line 289
    .line 290
    if-eqz v4, :cond_e

    .line 291
    .line 292
    goto :goto_b

    .line 293
    :cond_e
    move v4, v5

    .line 294
    goto :goto_c

    .line 295
    :cond_f
    :goto_b
    move v4, v3

    .line 296
    :goto_c
    if-eqz v7, :cond_10

    .line 297
    .line 298
    if-eqz v4, :cond_10

    .line 299
    .line 300
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getSeInfo()Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v4

    .line 304
    iget-object v6, v1, Lcom/android/server/pm/InstallPackageHelper;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 305
    .line 306
    const-class v7, Lcom/android/server/rollback/RollbackManagerInternal;

    .line 307
    .line 308
    iget-object v6, v6, Lcom/android/server/pm/PackageManagerServiceInjector;->mGetLocalServiceProducer:Lcom/android/server/pm/PackageManagerServiceInjector$ServiceProducer;

    .line 309
    .line 310
    invoke-interface {v6, v7}, Lcom/android/server/pm/PackageManagerServiceInjector$ServiceProducer;->produce(Ljava/lang/Class;)Ljava/lang/Object;

    .line 311
    .line 312
    .line 313
    move-result-object v6

    .line 314
    check-cast v6, Lcom/android/server/rollback/RollbackManagerInternal;

    .line 315
    .line 316
    invoke-static {v0}, Landroid/os/UserHandle;->toUserHandles([I)Ljava/util/List;

    .line 317
    .line 318
    .line 319
    move-result-object v0

    .line 320
    move-object v11, v6

    .line 321
    check-cast v11, Lcom/android/server/rollback/RollbackManagerServiceImpl;

    .line 322
    .line 323
    invoke-virtual {v11}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->assertNotInWorkerThread()V

    .line 324
    .line 325
    .line 326
    invoke-static {v0}, Landroid/os/UserHandle;->fromUserHandles(Ljava/util/List;)[I

    .line 327
    .line 328
    .line 329
    move-result-object v13

    .line 330
    move-wide v6, v14

    .line 331
    move/from16 v14, v16

    .line 332
    .line 333
    move-wide/from16 v15, v17

    .line 334
    .line 335
    move-object/from16 v17, v4

    .line 336
    .line 337
    move/from16 v18, v10

    .line 338
    .line 339
    invoke-virtual/range {v11 .. v18}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->snapshotAndRestoreUserData(Ljava/lang/String;[IIJLjava/lang/String;I)V

    .line 340
    .line 341
    .line 342
    move v0, v3

    .line 343
    goto :goto_d

    .line 344
    :cond_10
    move-wide v6, v14

    .line 345
    move v0, v5

    .line 346
    :goto_d
    move-wide v11, v6

    .line 347
    goto :goto_f

    .line 348
    :goto_e
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 349
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 350
    .line 351
    throw v0

    .line 352
    :cond_11
    move-wide v11, v14

    .line 353
    :goto_f
    if-eqz v9, :cond_14

    .line 354
    .line 355
    if-eqz v0, :cond_14

    .line 356
    .line 357
    iget-object v4, v2, Lcom/android/server/pm/InstallRequest;->mPostInstallRunnable:Ljava/lang/Runnable;

    .line 358
    .line 359
    if-eqz v4, :cond_12

    .line 360
    .line 361
    goto :goto_11

    .line 362
    :cond_12
    if-eqz v8, :cond_13

    .line 363
    .line 364
    const/16 v4, 0x10

    .line 365
    .line 366
    invoke-virtual {v8, v4}, Lcom/android/server/pm/PackageSetting;->getBoolean(I)Z

    .line 367
    .line 368
    .line 369
    move-result v6

    .line 370
    if-eqz v6, :cond_13

    .line 371
    .line 372
    goto :goto_10

    .line 373
    :cond_13
    move v3, v5

    .line 374
    :goto_10
    new-instance v4, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda7;

    .line 375
    .line 376
    invoke-direct {v4, v1, v3, v2}, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/pm/InstallPackageHelper;ZLcom/android/server/pm/InstallRequest;)V

    .line 377
    .line 378
    .line 379
    iput-object v4, v2, Lcom/android/server/pm/InstallRequest;->mPostInstallRunnable:Ljava/lang/Runnable;

    .line 380
    .line 381
    :cond_14
    :goto_11
    if-eqz v0, :cond_15

    .line 382
    .line 383
    if-eqz v8, :cond_16

    .line 384
    .line 385
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 386
    .line 387
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 388
    .line 389
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 390
    .line 391
    monitor-enter v1

    .line 392
    const/16 v2, 0x10

    .line 393
    .line 394
    :try_start_4
    invoke-virtual {v8, v2, v5}, Lcom/android/server/pm/PackageSetting;->setBoolean(IZ)V

    .line 395
    .line 396
    .line 397
    invoke-virtual {v8}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 398
    .line 399
    .line 400
    monitor-exit v1

    .line 401
    goto :goto_12

    .line 402
    :catchall_2
    move-exception v0

    .line 403
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 404
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 405
    .line 406
    throw v0

    .line 407
    :cond_15
    const-string/jumbo v0, "postInstall"

    .line 408
    .line 409
    .line 410
    invoke-static {v11, v12, v0, v10}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 411
    .line 412
    .line 413
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 414
    .line 415
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    .line 416
    .line 417
    const/16 v2, 0x9

    .line 418
    .line 419
    invoke-virtual {v0, v2, v10, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 420
    .line 421
    .line 422
    move-result-object v0

    .line 423
    iget-object v1, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 424
    .line 425
    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    .line 426
    .line 427
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 428
    .line 429
    .line 430
    :cond_16
    :goto_12
    return-void
.end method

.method public final scanApexPackages([Landroid/apex/ApexInfo;IILcom/android/internal/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;)Ljava/util/List;
    .locals 16

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    new-instance v2, Lcom/android/server/pm/ParallelPackageParser;

    .line 11
    .line 12
    move-object/from16 v3, p4

    .line 13
    .line 14
    move-object/from16 v4, p5

    .line 15
    .line 16
    invoke-direct {v2, v3, v4}, Lcom/android/server/pm/ParallelPackageParser;-><init>(Lcom/android/internal/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;)V

    .line 17
    .line 18
    .line 19
    new-instance v3, Landroid/util/ArrayMap;

    .line 20
    .line 21
    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    .line 22
    .line 23
    .line 24
    array-length v4, v0

    .line 25
    const/4 v5, 0x0

    .line 26
    move v6, v5

    .line 27
    :goto_0
    if-ge v6, v4, :cond_1

    .line 28
    .line 29
    aget-object v7, v0, v6

    .line 30
    .line 31
    new-instance v8, Ljava/io/File;

    .line 32
    .line 33
    iget-object v9, v7, Landroid/apex/ApexInfo;->modulePath:Ljava/lang/String;

    .line 34
    .line 35
    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-object v9, v2, Lcom/android/server/pm/ParallelPackageParser;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 39
    .line 40
    new-instance v10, Lcom/android/server/pm/ParallelPackageParser$$ExternalSyntheticLambda0;

    .line 41
    .line 42
    invoke-direct {v10, v2, v8, v1}, Lcom/android/server/pm/ParallelPackageParser$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/ParallelPackageParser;Ljava/io/File;I)V

    .line 43
    .line 44
    .line 45
    invoke-interface {v9, v10}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3, v8, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    add-int/lit8 v6, v6, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    .line 55
    .line 56
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 61
    .line 62
    .line 63
    move v4, v5

    .line 64
    :goto_1
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    .line 65
    .line 66
    .line 67
    move-result v6

    .line 68
    if-ge v4, v6, :cond_2

    .line 69
    .line 70
    invoke-virtual {v2}, Lcom/android/server/pm/ParallelPackageParser;->take()Lcom/android/server/pm/ParallelPackageParser$ParseResult;

    .line 71
    .line 72
    .line 73
    move-result-object v6

    .line 74
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    add-int/lit8 v4, v4, 0x1

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_2
    new-instance v2, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda5;

    .line 81
    .line 82
    invoke-direct {v2, v3}, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda5;-><init>(Landroid/util/ArrayMap;)V

    .line 83
    .line 84
    .line 85
    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 86
    .line 87
    .line 88
    new-instance v2, Ljava/util/ArrayList;

    .line 89
    .line 90
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    .line 91
    .line 92
    .line 93
    move-result v4

    .line 94
    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 95
    .line 96
    .line 97
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 98
    .line 99
    .line 100
    move-result v4

    .line 101
    if-ge v5, v4, :cond_7

    .line 102
    .line 103
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v4

    .line 107
    check-cast v4, Lcom/android/server/pm/ParallelPackageParser$ParseResult;

    .line 108
    .line 109
    iget-object v6, v4, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->throwable:Ljava/lang/Throwable;

    .line 110
    .line 111
    iget-object v7, v4, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->scanFile:Ljava/io/File;

    .line 112
    .line 113
    invoke-virtual {v3, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v7

    .line 117
    check-cast v7, Landroid/apex/ApexInfo;

    .line 118
    .line 119
    const/high16 v8, 0x4000000

    .line 120
    .line 121
    or-int v8, p3, v8

    .line 122
    .line 123
    iget-object v9, v4, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->scanFile:Ljava/io/File;

    .line 124
    .line 125
    move-object/from16 v15, p0

    .line 126
    .line 127
    iget-object v14, v15, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 128
    .line 129
    invoke-virtual {v14, v9}, Lcom/android/server/pm/PackageManagerService;->getSystemPackageScanFlags(Ljava/io/File;)I

    .line 130
    .line 131
    .line 132
    move-result v9

    .line 133
    or-int/2addr v8, v9

    .line 134
    iget-boolean v9, v7, Landroid/apex/ApexInfo;->isFactory:Z

    .line 135
    .line 136
    if-nez v9, :cond_3

    .line 137
    .line 138
    and-int/lit8 v9, v1, -0x11

    .line 139
    .line 140
    or-int/lit8 v8, v8, 0x4

    .line 141
    .line 142
    move v13, v8

    .line 143
    move v12, v9

    .line 144
    goto :goto_3

    .line 145
    :cond_3
    move v12, v1

    .line 146
    move v13, v8

    .line 147
    :goto_3
    if-nez v6, :cond_5

    .line 148
    .line 149
    :try_start_0
    iget-object v11, v4, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->parsedPackage:Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 150
    .line 151
    new-instance v6, Lcom/android/server/pm/ApexManager$ActiveApexInfo;

    .line 152
    .line 153
    invoke-direct {v6, v7}, Lcom/android/server/pm/ApexManager$ActiveApexInfo;-><init>(Landroid/apex/ApexInfo;)V

    .line 154
    .line 155
    .line 156
    const/4 v8, 0x0

    .line 157
    move-object/from16 v10, p0

    .line 158
    .line 159
    move-object v9, v14

    .line 160
    move-object v14, v8

    .line 161
    move-object v15, v6

    .line 162
    invoke-virtual/range {v10 .. v15}, Lcom/android/server/pm/InstallPackageHelper;->addForInitLI(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;IILandroid/os/UserHandle;Lcom/android/server/pm/ApexManager$ActiveApexInfo;)Lcom/android/server/pm/pkg/AndroidPackage;

    .line 163
    .line 164
    .line 165
    iget-object v4, v4, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->parsedPackage:Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 166
    .line 167
    invoke-interface {v4}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->hideAsFinal()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 168
    .line 169
    .line 170
    move-result-object v4

    .line 171
    iget-boolean v6, v7, Landroid/apex/ApexInfo;->isFactory:Z

    .line 172
    .line 173
    if-eqz v6, :cond_4

    .line 174
    .line 175
    iget-boolean v6, v7, Landroid/apex/ApexInfo;->isActive:Z

    .line 176
    .line 177
    if-nez v6, :cond_4

    .line 178
    .line 179
    iget-object v6, v9, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 180
    .line 181
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v8

    .line 185
    invoke-virtual {v6, v8}, Lcom/android/server/pm/Settings;->disableSystemPackageLPw(Ljava/lang/String;)Z

    .line 186
    .line 187
    .line 188
    goto :goto_4

    .line 189
    :catch_0
    move-exception v0

    .line 190
    goto :goto_5

    .line 191
    :cond_4
    :goto_4
    new-instance v6, Lcom/android/server/pm/ApexManager$ScanResult;

    .line 192
    .line 193
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v8

    .line 197
    invoke-direct {v6, v7, v4, v8}, Lcom/android/server/pm/ApexManager$ScanResult;-><init>(Landroid/apex/ApexInfo;Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    .line 202
    .line 203
    add-int/lit8 v5, v5, 0x1

    .line 204
    .line 205
    goto :goto_2

    .line 206
    :goto_5
    invoke-static {v7}, Lcom/android/server/pm/InstallPackageHelper;->tryToRecover(Landroid/apex/ApexInfo;)V

    .line 207
    .line 208
    .line 209
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 210
    .line 211
    new-instance v2, Ljava/lang/StringBuilder;

    .line 212
    .line 213
    const-string v3, "Failed to scan: "

    .line 214
    .line 215
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    iget-object v3, v7, Landroid/apex/ApexInfo;->modulePath:Ljava/lang/String;

    .line 219
    .line 220
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v2

    .line 227
    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 228
    .line 229
    .line 230
    throw v1

    .line 231
    :cond_5
    instance-of v0, v6, Lcom/android/server/pm/PackageManagerException;

    .line 232
    .line 233
    if-eqz v0, :cond_6

    .line 234
    .line 235
    invoke-static {v7}, Lcom/android/server/pm/InstallPackageHelper;->tryToRecover(Landroid/apex/ApexInfo;)V

    .line 236
    .line 237
    .line 238
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 239
    .line 240
    new-instance v1, Ljava/lang/StringBuilder;

    .line 241
    .line 242
    const-string v2, "Unable to parse: "

    .line 243
    .line 244
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    iget-object v2, v7, Landroid/apex/ApexInfo;->modulePath:Ljava/lang/String;

    .line 248
    .line 249
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v1

    .line 256
    invoke-direct {v0, v1, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 257
    .line 258
    .line 259
    throw v0

    .line 260
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 261
    .line 262
    new-instance v1, Ljava/lang/StringBuilder;

    .line 263
    .line 264
    const-string v2, "Unexpected exception occurred while parsing "

    .line 265
    .line 266
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    iget-object v2, v7, Landroid/apex/ApexInfo;->modulePath:Ljava/lang/String;

    .line 270
    .line 271
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v1

    .line 278
    invoke-direct {v0, v1, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 279
    .line 280
    .line 281
    throw v0

    .line 282
    :cond_7
    return-object v2
.end method

.method public final scanPackageNewLI(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;IIJLandroid/os/UserHandle;Ljava/lang/String;)Lcom/android/server/pm/ScanResult;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    move-object/from16 v1, p0

    .line 6
    .line 7
    move-object/from16 v2, p1

    .line 8
    .line 9
    move/from16 v3, p2

    .line 10
    .line 11
    move/from16 v4, p3

    .line 12
    .line 13
    move-object/from16 v5, p6

    .line 14
    .line 15
    move-object/from16 v6, p7

    .line 16
    .line 17
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/InstallPackageHelper;->prepareInitialScanRequest(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;IILandroid/os/UserHandle;Ljava/lang/String;)Lcom/android/server/pm/ScanRequest;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iget-object v5, v1, Lcom/android/server/pm/ScanRequest;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    .line 22
    .line 23
    iget-object v8, v1, Lcom/android/server/pm/ScanRequest;->mDisabledPkgSetting:Lcom/android/server/pm/PackageSetting;

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    const/4 v3, 0x1

    .line 27
    if-eqz v5, :cond_0

    .line 28
    .line 29
    iget-object v4, v5, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    .line 30
    .line 31
    iget-boolean v4, v4, Lcom/android/server/pm/pkg/PackageStateUnserialized;->updatedSystemApp:Z

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    if-eqz v8, :cond_1

    .line 35
    .line 36
    move v4, v3

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    move v4, v2

    .line 39
    :goto_0
    and-int/lit8 v6, p3, 0x4

    .line 40
    .line 41
    if-eqz v6, :cond_2

    .line 42
    .line 43
    if-nez v8, :cond_2

    .line 44
    .line 45
    if-eqz v5, :cond_2

    .line 46
    .line 47
    invoke-virtual {v5}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    .line 48
    .line 49
    .line 50
    move-result v6

    .line 51
    if-eqz v6, :cond_2

    .line 52
    .line 53
    move-object v6, v5

    .line 54
    goto :goto_1

    .line 55
    :cond_2
    move-object v6, v8

    .line 56
    :goto_1
    const/high16 v9, 0x80000

    .line 57
    .line 58
    const/high16 v10, 0x20000

    .line 59
    .line 60
    if-eqz v6, :cond_8

    .line 61
    .line 62
    const/high16 v11, 0x10000

    .line 63
    .line 64
    or-int v11, p3, v11

    .line 65
    .line 66
    iget v6, v6, Lcom/android/server/pm/SettingBase;->mPkgPrivateFlags:I

    .line 67
    .line 68
    and-int/lit8 v12, v6, 0x8

    .line 69
    .line 70
    if-eqz v12, :cond_3

    .line 71
    .line 72
    const/high16 v11, 0x30000

    .line 73
    .line 74
    or-int v11, p3, v11

    .line 75
    .line 76
    :cond_3
    and-int v12, v6, v10

    .line 77
    .line 78
    const/high16 v13, 0x40000

    .line 79
    .line 80
    if-eqz v12, :cond_4

    .line 81
    .line 82
    or-int/2addr v11, v13

    .line 83
    :cond_4
    and-int v12, v6, v13

    .line 84
    .line 85
    if-eqz v12, :cond_5

    .line 86
    .line 87
    or-int/2addr v11, v9

    .line 88
    :cond_5
    and-int v12, v6, v9

    .line 89
    .line 90
    if-eqz v12, :cond_6

    .line 91
    .line 92
    const/high16 v12, 0x100000

    .line 93
    .line 94
    or-int/2addr v11, v12

    .line 95
    :cond_6
    const/high16 v12, 0x200000

    .line 96
    .line 97
    and-int v13, v6, v12

    .line 98
    .line 99
    if-eqz v13, :cond_7

    .line 100
    .line 101
    or-int/2addr v11, v12

    .line 102
    :cond_7
    const/high16 v12, 0x40000000    # 2.0f

    .line 103
    .line 104
    and-int/2addr v6, v12

    .line 105
    if-eqz v6, :cond_9

    .line 106
    .line 107
    const/high16 v6, 0x400000

    .line 108
    .line 109
    or-int/2addr v11, v6

    .line 110
    goto :goto_2

    .line 111
    :cond_8
    move/from16 v11, p3

    .line 112
    .line 113
    :cond_9
    :goto_2
    if-eqz v5, :cond_c

    .line 114
    .line 115
    if-nez p6, :cond_a

    .line 116
    .line 117
    move v6, v2

    .line 118
    goto :goto_3

    .line 119
    :cond_a
    invoke-virtual/range {p6 .. p6}, Landroid/os/UserHandle;->getIdentifier()I

    .line 120
    .line 121
    .line 122
    move-result v6

    .line 123
    :goto_3
    invoke-virtual {v5, v6}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    .line 124
    .line 125
    .line 126
    move-result v12

    .line 127
    if-eqz v12, :cond_b

    .line 128
    .line 129
    or-int/lit16 v11, v11, 0x2000

    .line 130
    .line 131
    :cond_b
    invoke-virtual {v5, v6}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    .line 132
    .line 133
    .line 134
    move-result-object v6

    .line 135
    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageUserState;->isVirtualPreload()Z

    .line 136
    .line 137
    .line 138
    move-result v6

    .line 139
    if-eqz v6, :cond_c

    .line 140
    .line 141
    const v6, 0x8000

    .line 142
    .line 143
    .line 144
    or-int/2addr v11, v6

    .line 145
    :cond_c
    and-int v6, v11, v9

    .line 146
    .line 147
    if-eqz v6, :cond_d

    .line 148
    .line 149
    invoke-static {}, Lcom/android/server/pm/ScanPackageUtils;->getVendorPartitionVersion()I

    .line 150
    .line 151
    .line 152
    move-result v6

    .line 153
    const/16 v9, 0x1c

    .line 154
    .line 155
    if-ge v6, v9, :cond_d

    .line 156
    .line 157
    goto :goto_4

    .line 158
    :cond_d
    move v3, v2

    .line 159
    :goto_4
    and-int v6, v11, v10

    .line 160
    .line 161
    if-nez v6, :cond_f

    .line 162
    .line 163
    invoke-static/range {p1 .. p1}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageLegacyUtils;->isPrivileged(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    .line 164
    .line 165
    .line 166
    move-result v6

    .line 167
    if-nez v6, :cond_f

    .line 168
    .line 169
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSharedUserId()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v6

    .line 173
    if-eqz v6, :cond_f

    .line 174
    .line 175
    if-nez v3, :cond_f

    .line 176
    .line 177
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->isLeavingSharedUser()Z

    .line 178
    .line 179
    .line 180
    move-result v3

    .line 181
    if-nez v3, :cond_f

    .line 182
    .line 183
    iget-object v3, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 184
    .line 185
    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 186
    .line 187
    sget-boolean v6, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 188
    .line 189
    monitor-enter v3

    .line 190
    :try_start_0
    iget-object v6, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 191
    .line 192
    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 193
    .line 194
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSharedUserId()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v9

    .line 198
    invoke-virtual {v6, v9, v2}, Lcom/android/server/pm/Settings;->getSharedUserLPw(Ljava/lang/String;Z)Lcom/android/server/pm/SharedUserSetting;

    .line 199
    .line 200
    .line 201
    move-result-object v2
    :try_end_0
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    goto :goto_5

    .line 203
    :catchall_0
    move-exception v0

    .line 204
    goto :goto_6

    .line 205
    :catch_0
    const/4 v2, 0x0

    .line 206
    :goto_5
    if-eqz v2, :cond_e

    .line 207
    .line 208
    :try_start_1
    invoke-virtual {v2}, Lcom/android/server/pm/SharedUserSetting;->isPrivileged()Z

    .line 209
    .line 210
    .line 211
    move-result v2

    .line 212
    if-eqz v2, :cond_e

    .line 213
    .line 214
    iget-object v2, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 215
    .line 216
    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 217
    .line 218
    const-string v6, "android"

    .line 219
    .line 220
    invoke-virtual {v2, v6}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 221
    .line 222
    .line 223
    move-result-object v2

    .line 224
    iget-object v2, v2, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    .line 225
    .line 226
    iget-object v2, v2, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 227
    .line 228
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    .line 229
    .line 230
    .line 231
    move-result-object v6

    .line 232
    invoke-static {v2, v6}, Lcom/android/server/pm/PackageManagerServiceUtils;->compareSignatures(Landroid/content/pm/SigningDetails;Landroid/content/pm/SigningDetails;)I

    .line 233
    .line 234
    .line 235
    move-result v2

    .line 236
    if-eqz v2, :cond_e

    .line 237
    .line 238
    or-int/2addr v11, v10

    .line 239
    :cond_e
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 240
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 241
    .line 242
    goto :goto_7

    .line 243
    :goto_6
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 244
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 245
    .line 246
    throw v0

    .line 247
    :cond_f
    :goto_7
    iget-object v2, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 248
    .line 249
    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPlatformPackage:Lcom/android/server/pm/pkg/AndroidPackage;

    .line 250
    .line 251
    invoke-static {v7, v11, v2, v4}, Lcom/android/server/pm/ScanPackageUtils;->applyPolicy(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;ILcom/android/server/pm/pkg/AndroidPackage;Z)V

    .line 252
    .line 253
    .line 254
    iget-object v2, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 255
    .line 256
    iget-object v15, v2, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 257
    .line 258
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 259
    .line 260
    monitor-enter v15

    .line 261
    move/from16 v10, p2

    .line 262
    .line 263
    :try_start_3
    invoke-virtual {v0, v7, v10, v11}, Lcom/android/server/pm/InstallPackageHelper;->assertPackageIsValid(Lcom/android/server/pm/pkg/AndroidPackage;II)V

    .line 264
    .line 265
    .line 266
    new-instance v14, Lcom/android/server/pm/ScanRequest;

    .line 267
    .line 268
    iget-object v3, v1, Lcom/android/server/pm/ScanRequest;->mOldSharedUserSetting:Lcom/android/server/pm/SharedUserSetting;

    .line 269
    .line 270
    iget-object v4, v1, Lcom/android/server/pm/ScanRequest;->mOldPkg:Lcom/android/server/pm/pkg/AndroidPackage;

    .line 271
    .line 272
    iget-object v6, v1, Lcom/android/server/pm/ScanRequest;->mSharedUserSetting:Lcom/android/server/pm/SharedUserSetting;

    .line 273
    .line 274
    iget-object v9, v1, Lcom/android/server/pm/ScanRequest;->mOriginalPkgSetting:Lcom/android/server/pm/PackageSetting;

    .line 275
    .line 276
    iget-object v11, v1, Lcom/android/server/pm/ScanRequest;->mRealPkgName:Ljava/lang/String;

    .line 277
    .line 278
    iget-boolean v12, v1, Lcom/android/server/pm/ScanRequest;->mIsPlatformPackage:Z

    .line 279
    .line 280
    move-object v1, v14

    .line 281
    move-object/from16 v2, p1

    .line 282
    .line 283
    move-object v7, v8

    .line 284
    move-object v8, v9

    .line 285
    move-object v9, v11

    .line 286
    move/from16 v10, p2

    .line 287
    .line 288
    move/from16 v11, p3

    .line 289
    .line 290
    move-object/from16 v13, p6

    .line 291
    .line 292
    move-object/from16 v16, v14

    .line 293
    .line 294
    move-object/from16 v14, p7

    .line 295
    .line 296
    invoke-direct/range {v1 .. v14}, Lcom/android/server/pm/ScanRequest;-><init>(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;Lcom/android/server/pm/SharedUserSetting;Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/SharedUserSetting;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;Ljava/lang/String;IIZLandroid/os/UserHandle;Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    iget-object v0, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 300
    .line 301
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 302
    .line 303
    iget-boolean v0, v0, Lcom/android/server/pm/PackageManagerService;->mFactoryTest:Z

    .line 304
    .line 305
    move-wide/from16 v2, p4

    .line 306
    .line 307
    move-object/from16 v4, v16

    .line 308
    .line 309
    invoke-static {v4, v1, v0, v2, v3}, Lcom/android/server/pm/ScanPackageUtils;->scanPackageOnlyLI(Lcom/android/server/pm/ScanRequest;Lcom/android/server/pm/PackageManagerServiceInjector;ZJ)Lcom/android/server/pm/ScanResult;

    .line 310
    .line 311
    .line 312
    move-result-object v0

    .line 313
    monitor-exit v15

    .line 314
    return-object v0

    .line 315
    :catchall_1
    move-exception v0

    .line 316
    monitor-exit v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 317
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 318
    .line 319
    throw v0
.end method

.method public final scanSystemPackageLI(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;IILandroid/os/UserHandle;)Landroid/util/Pair;
    .locals 30

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v15, p1

    .line 4
    .line 5
    move/from16 v14, p3

    .line 6
    .line 7
    const-string v7, "Inconsistent package setting of updated system app for "

    .line 8
    .line 9
    and-int/lit8 v1, p2, 0x10

    .line 10
    .line 11
    const/4 v13, 0x0

    .line 12
    const/4 v12, 0x1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    move v11, v12

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v11, v13

    .line 18
    :goto_0
    const/4 v6, 0x0

    .line 19
    move-object/from16 v1, p0

    .line 20
    .line 21
    move-object/from16 v2, p1

    .line 22
    .line 23
    move/from16 v3, p2

    .line 24
    .line 25
    move/from16 v4, p3

    .line 26
    .line 27
    move-object/from16 v5, p4

    .line 28
    .line 29
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/InstallPackageHelper;->prepareInitialScanRequest(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;IILandroid/os/UserHandle;Ljava/lang/String;)Lcom/android/server/pm/ScanRequest;

    .line 30
    .line 31
    .line 32
    move-result-object v10

    .line 33
    iget-object v1, v10, Lcom/android/server/pm/ScanRequest;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    .line 34
    .line 35
    iget-object v2, v10, Lcom/android/server/pm/ScanRequest;->mOriginalPkgSetting:Lcom/android/server/pm/PackageSetting;

    .line 36
    .line 37
    if-nez v2, :cond_1

    .line 38
    .line 39
    move-object v9, v1

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    move-object v9, v2

    .line 42
    :goto_1
    if-eqz v9, :cond_2

    .line 43
    .line 44
    move/from16 v16, v12

    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_2
    move/from16 v16, v13

    .line 48
    .line 49
    :goto_2
    if-eqz v16, :cond_3

    .line 50
    .line 51
    iget-object v1, v9, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    .line 52
    .line 53
    goto :goto_3

    .line 54
    :cond_3
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    :goto_3
    iget-object v2, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 59
    .line 60
    iget-object v8, v2, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 61
    .line 62
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 63
    .line 64
    monitor-enter v8

    .line 65
    :try_start_0
    iget-object v2, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 66
    .line 67
    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService;->isDeviceUpgrading()Z

    .line 68
    .line 69
    .line 70
    move-result v17

    .line 71
    if-eqz v11, :cond_4

    .line 72
    .line 73
    if-nez v16, :cond_4

    .line 74
    .line 75
    iget-object v2, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 76
    .line 77
    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 78
    .line 79
    invoke-virtual {v2, v1}, Lcom/android/server/pm/Settings;->getDisabledSystemPkgLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    if-eqz v2, :cond_4

    .line 84
    .line 85
    const-string v2, "PackageManager"

    .line 86
    .line 87
    new-instance v3, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    const-string v4, ". To recover it, enable the system app and install it as non-updated system app."

    .line 96
    .line 97
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    .line 106
    .line 107
    iget-object v2, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 108
    .line 109
    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 110
    .line 111
    iget-object v3, v2, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 112
    .line 113
    invoke-virtual {v3, v1}, Lcom/android/server/utils/WatchedArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 118
    .line 119
    if-eqz v3, :cond_4

    .line 120
    .line 121
    invoke-virtual {v2, v3}, Lcom/android/server/pm/Settings;->getSharedUserSettingLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/SharedUserSetting;

    .line 122
    .line 123
    .line 124
    move-result-object v4

    .line 125
    if-eqz v4, :cond_4

    .line 126
    .line 127
    iget-object v5, v4, Lcom/android/server/pm/SharedUserSetting;->mDisabledPackages:Lcom/android/server/utils/WatchedArraySet;

    .line 128
    .line 129
    invoke-virtual {v5, v3}, Lcom/android/server/utils/WatchedArraySet;->remove(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    invoke-virtual {v2, v4, v13}, Lcom/android/server/pm/Settings;->checkAndPruneSharedUserLPw(Lcom/android/server/pm/SharedUserSetting;Z)Z

    .line 133
    .line 134
    .line 135
    goto :goto_5

    .line 136
    :goto_4
    move-object/from16 v22, v8

    .line 137
    .line 138
    goto/16 :goto_27

    .line 139
    .line 140
    :catchall_0
    move-exception v0

    .line 141
    goto :goto_4

    .line 142
    :cond_4
    :goto_5
    iget-object v2, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 143
    .line 144
    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 145
    .line 146
    invoke-virtual {v2, v1}, Lcom/android/server/pm/Settings;->getDisabledSystemPkgLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 147
    .line 148
    .line 149
    move-result-object v7

    .line 150
    if-eqz v7, :cond_5

    .line 151
    .line 152
    move/from16 v18, v12

    .line 153
    .line 154
    goto :goto_6

    .line 155
    :cond_5
    move/from16 v18, v13

    .line 156
    .line 157
    :goto_6
    if-eqz v11, :cond_8

    .line 158
    .line 159
    if-eqz v18, :cond_8

    .line 160
    .line 161
    new-instance v6, Lcom/android/server/pm/ScanRequest;

    .line 162
    .line 163
    iget-object v1, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 164
    .line 165
    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 166
    .line 167
    invoke-virtual {v1, v7}, Lcom/android/server/pm/Settings;->getSharedUserSettingLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/SharedUserSetting;

    .line 168
    .line 169
    .line 170
    move-result-object v3

    .line 171
    iget-object v5, v10, Lcom/android/server/pm/ScanRequest;->mSharedUserSetting:Lcom/android/server/pm/SharedUserSetting;

    .line 172
    .line 173
    iget-boolean v4, v10, Lcom/android/server/pm/ScanRequest;->mIsPlatformPackage:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    .line 175
    const/16 v19, 0x0

    .line 176
    .line 177
    const/16 v20, 0x0

    .line 178
    .line 179
    const/16 v21, 0x0

    .line 180
    .line 181
    const/16 v22, 0x0

    .line 182
    .line 183
    const/16 v23, 0x0

    .line 184
    .line 185
    move-object v1, v6

    .line 186
    move-object/from16 v2, p1

    .line 187
    .line 188
    move/from16 v24, v4

    .line 189
    .line 190
    move-object/from16 v4, v22

    .line 191
    .line 192
    move-object/from16 v22, v5

    .line 193
    .line 194
    move-object v5, v7

    .line 195
    move-object/from16 v25, v6

    .line 196
    .line 197
    move-object/from16 v6, v22

    .line 198
    .line 199
    move-object/from16 v26, v7

    .line 200
    .line 201
    move-object/from16 v7, v23

    .line 202
    .line 203
    move-object/from16 v22, v8

    .line 204
    .line 205
    move-object/from16 v8, v19

    .line 206
    .line 207
    move-object/from16 v27, v9

    .line 208
    .line 209
    move-object/from16 v9, v20

    .line 210
    .line 211
    move-object/from16 v28, v10

    .line 212
    .line 213
    move/from16 v10, p2

    .line 214
    .line 215
    move/from16 v29, v11

    .line 216
    .line 217
    move/from16 v11, p3

    .line 218
    .line 219
    move/from16 v12, v24

    .line 220
    .line 221
    move-object/from16 v13, p4

    .line 222
    .line 223
    move-object/from16 v14, v21

    .line 224
    .line 225
    :try_start_1
    invoke-direct/range {v1 .. v14}, Lcom/android/server/pm/ScanRequest;-><init>(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;Lcom/android/server/pm/SharedUserSetting;Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/SharedUserSetting;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;Ljava/lang/String;IIZLandroid/os/UserHandle;Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    iget-object v1, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 229
    .line 230
    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mPlatformPackage:Lcom/android/server/pm/pkg/AndroidPackage;

    .line 231
    .line 232
    move/from16 v2, p3

    .line 233
    .line 234
    const/4 v3, 0x1

    .line 235
    invoke-static {v15, v2, v1, v3}, Lcom/android/server/pm/ScanPackageUtils;->applyPolicy(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;ILcom/android/server/pm/pkg/AndroidPackage;Z)V

    .line 236
    .line 237
    .line 238
    iget-object v1, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 239
    .line 240
    iget-object v4, v1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 241
    .line 242
    iget-boolean v1, v1, Lcom/android/server/pm/PackageManagerService;->mFactoryTest:Z

    .line 243
    .line 244
    const-wide/16 v5, -0x1

    .line 245
    .line 246
    move-object/from16 v7, v25

    .line 247
    .line 248
    invoke-static {v7, v4, v1, v5, v6}, Lcom/android/server/pm/ScanPackageUtils;->scanPackageOnlyLI(Lcom/android/server/pm/ScanRequest;Lcom/android/server/pm/PackageManagerServiceInjector;ZJ)Lcom/android/server/pm/ScanResult;

    .line 249
    .line 250
    .line 251
    move-result-object v1

    .line 252
    iget-boolean v4, v1, Lcom/android/server/pm/ScanResult;->mExistingSettingCopied:Z

    .line 253
    .line 254
    if-eqz v4, :cond_7

    .line 255
    .line 256
    iget-object v4, v1, Lcom/android/server/pm/ScanResult;->mRequest:Lcom/android/server/pm/ScanRequest;

    .line 257
    .line 258
    iget-object v4, v4, Lcom/android/server/pm/ScanRequest;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    .line 259
    .line 260
    if-eqz v4, :cond_7

    .line 261
    .line 262
    iget-object v1, v1, Lcom/android/server/pm/ScanResult;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    .line 263
    .line 264
    const/4 v5, 0x0

    .line 265
    invoke-virtual {v4, v1, v5}, Lcom/android/server/pm/PackageSetting;->copyPackageSetting(Lcom/android/server/pm/PackageSetting;Z)V

    .line 266
    .line 267
    .line 268
    iget-object v1, v1, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    .line 269
    .line 270
    if-eqz v1, :cond_6

    .line 271
    .line 272
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 273
    .line 274
    .line 275
    move-result-object v1

    .line 276
    goto :goto_7

    .line 277
    :cond_6
    const/4 v1, 0x0

    .line 278
    :goto_7
    invoke-virtual {v4, v1}, Lcom/android/server/pm/PackageSetting;->updateMimeGroups(Ljava/util/Set;)V

    .line 279
    .line 280
    .line 281
    invoke-virtual {v4}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 282
    .line 283
    .line 284
    goto :goto_8

    .line 285
    :catchall_1
    move-exception v0

    .line 286
    goto/16 :goto_27

    .line 287
    .line 288
    :cond_7
    const/4 v5, 0x0

    .line 289
    goto :goto_8

    .line 290
    :cond_8
    move-object/from16 v26, v7

    .line 291
    .line 292
    move-object/from16 v22, v8

    .line 293
    .line 294
    move-object/from16 v27, v9

    .line 295
    .line 296
    move-object/from16 v28, v10

    .line 297
    .line 298
    move/from16 v29, v11

    .line 299
    .line 300
    move v3, v12

    .line 301
    move v5, v13

    .line 302
    move v2, v14

    .line 303
    :goto_8
    monitor-exit v22
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 304
    move-object/from16 v1, v27

    .line 305
    .line 306
    if-eqz v16, :cond_9

    .line 307
    .line 308
    iget-object v4, v1, Lcom/android/server/pm/PackageSetting;->mPathString:Ljava/lang/String;

    .line 309
    .line 310
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPath()Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v6

    .line 314
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 315
    .line 316
    .line 317
    move-result v4

    .line 318
    if-nez v4, :cond_9

    .line 319
    .line 320
    move v13, v3

    .line 321
    goto :goto_9

    .line 322
    :cond_9
    move v13, v5

    .line 323
    :goto_9
    if-eqz v16, :cond_a

    .line 324
    .line 325
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getLongVersionCode()J

    .line 326
    .line 327
    .line 328
    move-result-wide v6

    .line 329
    iget-wide v8, v1, Lcom/android/server/pm/PackageSetting;->versionCode:J

    .line 330
    .line 331
    cmp-long v4, v6, v8

    .line 332
    .line 333
    if-lez v4, :cond_a

    .line 334
    .line 335
    move v4, v3

    .line 336
    goto :goto_a

    .line 337
    :cond_a
    move v4, v5

    .line 338
    :goto_a
    if-eqz v16, :cond_b

    .line 339
    .line 340
    move-object/from16 v6, v28

    .line 341
    .line 342
    iget-object v7, v6, Lcom/android/server/pm/ScanRequest;->mOldSharedUserSetting:Lcom/android/server/pm/SharedUserSetting;

    .line 343
    .line 344
    iget-object v6, v6, Lcom/android/server/pm/ScanRequest;->mSharedUserSetting:Lcom/android/server/pm/SharedUserSetting;

    .line 345
    .line 346
    if-eq v7, v6, :cond_b

    .line 347
    .line 348
    move v6, v3

    .line 349
    :goto_b
    move/from16 v12, v29

    .line 350
    .line 351
    goto :goto_c

    .line 352
    :cond_b
    move v6, v5

    .line 353
    goto :goto_b

    .line 354
    :goto_c
    if-eqz v12, :cond_d

    .line 355
    .line 356
    if-eqz v18, :cond_d

    .line 357
    .line 358
    if-eqz v13, :cond_d

    .line 359
    .line 360
    if-nez v4, :cond_c

    .line 361
    .line 362
    if-eqz v6, :cond_d

    .line 363
    .line 364
    :cond_c
    move v13, v3

    .line 365
    goto :goto_d

    .line 366
    :cond_d
    move v13, v5

    .line 367
    :goto_d
    const/4 v7, 0x5

    .line 368
    if-eqz v13, :cond_e

    .line 369
    .line 370
    iget-object v8, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 371
    .line 372
    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 373
    .line 374
    monitor-enter v8

    .line 375
    :try_start_2
    iget-object v9, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 376
    .line 377
    iget-object v9, v9, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 378
    .line 379
    iget-object v10, v1, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    .line 380
    .line 381
    invoke-virtual {v9, v10}, Lcom/android/server/utils/WatchedArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    .line 383
    .line 384
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 385
    new-instance v8, Ljava/lang/StringBuilder;

    .line 386
    .line 387
    const-string v9, "System package updated; name: "

    .line 388
    .line 389
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 390
    .line 391
    .line 392
    iget-object v9, v1, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    .line 393
    .line 394
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    .line 396
    .line 397
    const-string v9, "; "

    .line 398
    .line 399
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    .line 401
    .line 402
    iget-wide v9, v1, Lcom/android/server/pm/PackageSetting;->versionCode:J

    .line 403
    .line 404
    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 405
    .line 406
    .line 407
    const-string v9, " --> "

    .line 408
    .line 409
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    .line 411
    .line 412
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getLongVersionCode()J

    .line 413
    .line 414
    .line 415
    move-result-wide v9

    .line 416
    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 417
    .line 418
    .line 419
    const-string v9, "; "

    .line 420
    .line 421
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    .line 423
    .line 424
    iget-object v9, v1, Lcom/android/server/pm/PackageSetting;->mPathString:Ljava/lang/String;

    .line 425
    .line 426
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    .line 428
    .line 429
    const-string v9, " --> "

    .line 430
    .line 431
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    .line 433
    .line 434
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPath()Ljava/lang/String;

    .line 435
    .line 436
    .line 437
    move-result-object v9

    .line 438
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    .line 440
    .line 441
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 442
    .line 443
    .line 444
    move-result-object v8

    .line 445
    invoke-static {v7, v8}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 446
    .line 447
    .line 448
    iget-object v8, v0, Lcom/android/server/pm/InstallPackageHelper;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    .line 449
    .line 450
    iget-object v9, v1, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    .line 451
    .line 452
    new-instance v10, Ljava/io/File;

    .line 453
    .line 454
    iget-object v11, v1, Lcom/android/server/pm/PackageSetting;->mPathString:Ljava/lang/String;

    .line 455
    .line 456
    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 457
    .line 458
    .line 459
    iget-object v11, v1, Lcom/android/server/pm/PackageSetting;->mPrimaryCpuAbi:Ljava/lang/String;

    .line 460
    .line 461
    iget-object v14, v1, Lcom/android/server/pm/PackageSetting;->mSecondaryCpuAbi:Ljava/lang/String;

    .line 462
    .line 463
    invoke-static {v11, v14}, Lcom/android/server/pm/InstructionSets;->getAppDexInstructionSets(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 464
    .line 465
    .line 466
    move-result-object v11

    .line 467
    invoke-virtual {v8, v9, v10, v11}, Lcom/android/server/pm/RemovePackageHelper;->cleanUpResources(Ljava/lang/String;Ljava/io/File;[Ljava/lang/String;)V

    .line 468
    .line 469
    .line 470
    iget-object v8, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 471
    .line 472
    iget-object v9, v8, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 473
    .line 474
    monitor-enter v9

    .line 475
    :try_start_3
    iget-object v8, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 476
    .line 477
    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 478
    .line 479
    iget-object v10, v1, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    .line 480
    .line 481
    invoke-virtual {v8, v10}, Lcom/android/server/pm/Settings;->enableSystemPackageLPw(Ljava/lang/String;)V

    .line 482
    .line 483
    .line 484
    monitor-exit v9

    .line 485
    goto :goto_e

    .line 486
    :catchall_2
    move-exception v0

    .line 487
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 488
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 489
    .line 490
    throw v0

    .line 491
    :catchall_3
    move-exception v0

    .line 492
    :try_start_4
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 493
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 494
    .line 495
    throw v0

    .line 496
    :cond_e
    :goto_e
    if-eqz v12, :cond_13

    .line 497
    .line 498
    if-eqz v18, :cond_13

    .line 499
    .line 500
    if-nez v13, :cond_13

    .line 501
    .line 502
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    .line 503
    .line 504
    .line 505
    move-result-object v2

    .line 506
    invoke-static {}, Landroid/security/Flags;->extendVbChainToUpdatedApk()Z

    .line 507
    .line 508
    .line 509
    move-result v3

    .line 510
    if-nez v3, :cond_f

    .line 511
    .line 512
    move v13, v5

    .line 513
    goto :goto_f

    .line 514
    :cond_f
    iget-object v0, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 515
    .line 516
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 517
    .line 518
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSystemConfig()Lcom/android/server/SystemConfig;

    .line 519
    .line 520
    .line 521
    move-result-object v0

    .line 522
    iget-object v0, v0, Lcom/android/server/SystemConfig;->mPreinstallPackagesWithStrictSignatureCheck:Ljava/util/Set;

    .line 523
    .line 524
    check-cast v0, Landroid/util/ArraySet;

    .line 525
    .line 526
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 527
    .line 528
    .line 529
    move-result v13

    .line 530
    :goto_f
    if-eqz v13, :cond_11

    .line 531
    .line 532
    invoke-static {}, Landroid/content/pm/parsing/result/ParseTypeImpl;->forDefaultParsing()Landroid/content/pm/parsing/result/ParseTypeImpl;

    .line 533
    .line 534
    .line 535
    move-result-object v0

    .line 536
    invoke-static {v0, v15, v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->getSigningDetails(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/parsing/pkg/ParsedPackage;Z)Landroid/content/pm/parsing/result/ParseResult;

    .line 537
    .line 538
    .line 539
    move-result-object v0

    .line 540
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    .line 541
    .line 542
    .line 543
    move-result v2

    .line 544
    if-nez v2, :cond_10

    .line 545
    .line 546
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    .line 547
    .line 548
    .line 549
    move-result-object v0

    .line 550
    check-cast v0, Landroid/content/pm/SigningDetails;

    .line 551
    .line 552
    move-object/from16 v2, v26

    .line 553
    .line 554
    iget-object v3, v2, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    .line 555
    .line 556
    iput-object v0, v3, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 557
    .line 558
    invoke-virtual {v2}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 559
    .line 560
    .line 561
    goto :goto_10

    .line 562
    :cond_10
    new-instance v1, Lcom/android/server/pm/PrepareFailure;

    .line 563
    .line 564
    const-string v2, "Failed collect during scanSystemPackageLI"

    .line 565
    .line 566
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getException()Ljava/lang/Exception;

    .line 567
    .line 568
    .line 569
    move-result-object v0

    .line 570
    invoke-direct {v1, v0, v2}, Lcom/android/server/pm/PrepareFailure;-><init>(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 571
    .line 572
    .line 573
    throw v1

    .line 574
    :cond_11
    :goto_10
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->hideAsFinal()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 575
    .line 576
    .line 577
    new-instance v0, Ljava/lang/StringBuilder;

    .line 578
    .line 579
    const-string v2, "Package "

    .line 580
    .line 581
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 582
    .line 583
    .line 584
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    .line 585
    .line 586
    .line 587
    move-result-object v2

    .line 588
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 589
    .line 590
    .line 591
    const-string v2, " at "

    .line 592
    .line 593
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 594
    .line 595
    .line 596
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPath()Ljava/lang/String;

    .line 597
    .line 598
    .line 599
    move-result-object v2

    .line 600
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 601
    .line 602
    .line 603
    const-string v2, " ignored: updated version "

    .line 604
    .line 605
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 606
    .line 607
    .line 608
    if-eqz v16, :cond_12

    .line 609
    .line 610
    iget-wide v1, v1, Lcom/android/server/pm/PackageSetting;->versionCode:J

    .line 611
    .line 612
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 613
    .line 614
    .line 615
    move-result-object v1

    .line 616
    goto :goto_11

    .line 617
    :cond_12
    const-string/jumbo v1, "unknown"

    .line 618
    .line 619
    .line 620
    :goto_11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 621
    .line 622
    .line 623
    const-string v1, " better than this "

    .line 624
    .line 625
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 626
    .line 627
    .line 628
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getLongVersionCode()J

    .line 629
    .line 630
    .line 631
    move-result-wide v1

    .line 632
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 633
    .line 634
    .line 635
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 636
    .line 637
    .line 638
    move-result-object v0

    .line 639
    new-instance v1, Lcom/android/server/pm/PackageManagerException;

    .line 640
    .line 641
    const/16 v2, -0xc

    .line 642
    .line 643
    invoke-direct {v1, v0, v2}, Lcom/android/server/pm/PackageManagerException;-><init>(Ljava/lang/String;I)V

    .line 644
    .line 645
    .line 646
    throw v1

    .line 647
    :cond_13
    if-eqz v12, :cond_14

    .line 648
    .line 649
    move/from16 v13, v17

    .line 650
    .line 651
    goto :goto_13

    .line 652
    :cond_14
    if-eqz v16, :cond_16

    .line 653
    .line 654
    iget-object v8, v1, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    .line 655
    .line 656
    invoke-static {}, Landroid/security/Flags;->extendVbChainToUpdatedApk()Z

    .line 657
    .line 658
    .line 659
    move-result v9

    .line 660
    if-nez v9, :cond_15

    .line 661
    .line 662
    move v13, v5

    .line 663
    goto :goto_12

    .line 664
    :cond_15
    iget-object v9, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 665
    .line 666
    iget-object v9, v9, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 667
    .line 668
    invoke-virtual {v9}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSystemConfig()Lcom/android/server/SystemConfig;

    .line 669
    .line 670
    .line 671
    move-result-object v9

    .line 672
    iget-object v9, v9, Lcom/android/server/SystemConfig;->mPreinstallPackagesWithStrictSignatureCheck:Ljava/util/Set;

    .line 673
    .line 674
    check-cast v9, Landroid/util/ArraySet;

    .line 675
    .line 676
    invoke-virtual {v9, v8}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 677
    .line 678
    .line 679
    move-result v13

    .line 680
    :goto_12
    if-eqz v13, :cond_16

    .line 681
    .line 682
    move v13, v3

    .line 683
    goto :goto_13

    .line 684
    :cond_16
    move v13, v5

    .line 685
    :goto_13
    iget-object v8, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 686
    .line 687
    invoke-virtual {v8, v15}, Lcom/android/server/pm/PackageManagerService;->getSettingsVersionForPackage(Lcom/android/server/pm/pkg/AndroidPackage;)Lcom/android/server/pm/Settings$VersionInfo;

    .line 688
    .line 689
    .line 690
    move-result-object v8

    .line 691
    iget-object v9, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 692
    .line 693
    iget-boolean v9, v9, Lcom/android/server/pm/PackageManagerService;->mIsPreNMR1Upgrade:Z

    .line 694
    .line 695
    if-eqz v9, :cond_17

    .line 696
    .line 697
    new-instance v9, Ljava/io/File;

    .line 698
    .line 699
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPath()Ljava/lang/String;

    .line 700
    .line 701
    .line 702
    move-result-object v10

    .line 703
    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 704
    .line 705
    .line 706
    invoke-virtual {v9}, Ljava/io/File;->lastModified()J

    .line 707
    .line 708
    .line 709
    move-result-wide v9

    .line 710
    goto :goto_14

    .line 711
    :cond_17
    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/PackageManagerServiceUtils;->getLastModifiedTime(Lcom/android/server/pm/pkg/AndroidPackage;)J

    .line 712
    .line 713
    .line 714
    move-result-wide v9

    .line 715
    :goto_14
    const-string v11, "PackageManager"

    .line 716
    .line 717
    const/4 v14, 0x2

    .line 718
    if-eqz v1, :cond_1b

    .line 719
    .line 720
    if-nez v13, :cond_1b

    .line 721
    .line 722
    iget-object v5, v1, Lcom/android/server/pm/PackageSetting;->mPathString:Ljava/lang/String;

    .line 723
    .line 724
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPath()Ljava/lang/String;

    .line 725
    .line 726
    .line 727
    move-result-object v7

    .line 728
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 729
    .line 730
    .line 731
    move-result v5

    .line 732
    if-eqz v5, :cond_1b

    .line 733
    .line 734
    move v5, v4

    .line 735
    iget-wide v3, v1, Lcom/android/server/pm/PackageSetting;->mLastModifiedTime:J

    .line 736
    .line 737
    cmp-long v3, v3, v9

    .line 738
    .line 739
    if-nez v3, :cond_1c

    .line 740
    .line 741
    sget-boolean v3, Lcom/android/server/pm/ReconcilePackageUtils;->ALLOW_NON_PRELOADS_SYSTEM_SHAREDUIDS:Z

    .line 742
    .line 743
    iget v3, v8, Lcom/android/server/pm/Settings$VersionInfo;->databaseVersion:I

    .line 744
    .line 745
    if-ge v3, v14, :cond_18

    .line 746
    .line 747
    const/4 v4, 0x1

    .line 748
    goto :goto_15

    .line 749
    :cond_18
    const/4 v4, 0x0

    .line 750
    :goto_15
    if-nez v4, :cond_1c

    .line 751
    .line 752
    const/4 v4, 0x3

    .line 753
    if-ge v3, v4, :cond_19

    .line 754
    .line 755
    goto :goto_16

    .line 756
    :cond_19
    iget-object v3, v1, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    .line 757
    .line 758
    iget-object v3, v3, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 759
    .line 760
    invoke-virtual {v3}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    .line 761
    .line 762
    .line 763
    move-result-object v3

    .line 764
    if-eqz v3, :cond_1a

    .line 765
    .line 766
    iget-object v3, v1, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    .line 767
    .line 768
    iget-object v3, v3, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 769
    .line 770
    invoke-virtual {v3}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    .line 771
    .line 772
    .line 773
    move-result-object v3

    .line 774
    array-length v3, v3

    .line 775
    if-eqz v3, :cond_1a

    .line 776
    .line 777
    iget-object v3, v1, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    .line 778
    .line 779
    iget-object v3, v3, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 780
    .line 781
    invoke-virtual {v3}, Landroid/content/pm/SigningDetails;->getSignatureSchemeVersion()I

    .line 782
    .line 783
    .line 784
    move-result v3

    .line 785
    if-eqz v3, :cond_1a

    .line 786
    .line 787
    new-instance v3, Landroid/content/pm/SigningDetails;

    .line 788
    .line 789
    iget-object v4, v1, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    .line 790
    .line 791
    iget-object v4, v4, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 792
    .line 793
    invoke-direct {v3, v4}, Landroid/content/pm/SigningDetails;-><init>(Landroid/content/pm/SigningDetails;)V

    .line 794
    .line 795
    .line 796
    invoke-interface {v15, v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setSigningDetails(Landroid/content/pm/SigningDetails;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 797
    .line 798
    .line 799
    goto :goto_19

    .line 800
    :cond_1a
    new-instance v3, Ljava/lang/StringBuilder;

    .line 801
    .line 802
    const-string v4, "PackageSetting for "

    .line 803
    .line 804
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 805
    .line 806
    .line 807
    iget-object v4, v1, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    .line 808
    .line 809
    const-string v7, " is missing signatures.  Collecting certs again to recover them."

    .line 810
    .line 811
    invoke-static {v3, v4, v7, v11}, Lcom/android/server/ProfileService$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 812
    .line 813
    .line 814
    goto :goto_18

    .line 815
    :cond_1b
    move v5, v4

    .line 816
    :cond_1c
    :goto_16
    new-instance v3, Ljava/lang/StringBuilder;

    .line 817
    .line 818
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 819
    .line 820
    .line 821
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPath()Ljava/lang/String;

    .line 822
    .line 823
    .line 824
    move-result-object v4

    .line 825
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 826
    .line 827
    .line 828
    const-string v4, " changed; collecting certs"

    .line 829
    .line 830
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 831
    .line 832
    .line 833
    if-eqz v13, :cond_1d

    .line 834
    .line 835
    const-string v4, " (forced)"

    .line 836
    .line 837
    goto :goto_17

    .line 838
    :cond_1d
    const-string v4, ""

    .line 839
    .line 840
    :goto_17
    invoke-static {v3, v4, v11}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 841
    .line 842
    .line 843
    :goto_18
    const-wide/32 v3, 0x40000

    .line 844
    .line 845
    .line 846
    :try_start_5
    const-string v7, "collectCertificates"

    .line 847
    .line 848
    invoke-static {v3, v4, v7}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 849
    .line 850
    .line 851
    invoke-static {}, Landroid/content/pm/parsing/result/ParseTypeImpl;->forDefaultParsing()Landroid/content/pm/parsing/result/ParseTypeImpl;

    .line 852
    .line 853
    .line 854
    move-result-object v7

    .line 855
    invoke-static {v7, v15, v12}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->getSigningDetails(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/parsing/pkg/ParsedPackage;Z)Landroid/content/pm/parsing/result/ParseResult;

    .line 856
    .line 857
    .line 858
    move-result-object v7

    .line 859
    invoke-interface {v7}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    .line 860
    .line 861
    .line 862
    move-result v8

    .line 863
    if-nez v8, :cond_2b

    .line 864
    .line 865
    invoke-interface {v7}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    .line 866
    .line 867
    .line 868
    move-result-object v7

    .line 869
    check-cast v7, Landroid/content/pm/SigningDetails;

    .line 870
    .line 871
    invoke-interface {v15, v7}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setSigningDetails(Landroid/content/pm/SigningDetails;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    .line 872
    .line 873
    .line 874
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 875
    .line 876
    .line 877
    :goto_19
    if-eqz v1, :cond_20

    .line 878
    .line 879
    iget-object v3, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 880
    .line 881
    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerService;->isDeviceUpgrading()Z

    .line 882
    .line 883
    .line 884
    move-result v3

    .line 885
    if-nez v3, :cond_1e

    .line 886
    .line 887
    goto :goto_1a

    .line 888
    :cond_1e
    iget-wide v3, v1, Lcom/android/server/pm/PackageSetting;->versionCode:J

    .line 889
    .line 890
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getLongVersionCode()J

    .line 891
    .line 892
    .line 893
    move-result-wide v7

    .line 894
    cmp-long v3, v3, v7

    .line 895
    .line 896
    if-nez v3, :cond_1f

    .line 897
    .line 898
    goto :goto_1a

    .line 899
    :cond_1f
    iget-object v3, v0, Lcom/android/server/pm/InstallPackageHelper;->mAppDataHelper:Lcom/android/server/pm/AppDataHelper;

    .line 900
    .line 901
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 902
    .line 903
    .line 904
    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/AppDataHelper;->clearAppProfilesLIF(Lcom/android/server/pm/pkg/AndroidPackage;)V

    .line 905
    .line 906
    .line 907
    :cond_20
    :goto_1a
    if-eqz v12, :cond_24

    .line 908
    .line 909
    if-nez v18, :cond_24

    .line 910
    .line 911
    if-eqz v16, :cond_24

    .line 912
    .line 913
    invoke-virtual {v1}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    .line 914
    .line 915
    .line 916
    move-result v3

    .line 917
    if-nez v3, :cond_24

    .line 918
    .line 919
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    .line 920
    .line 921
    .line 922
    move-result-object v3

    .line 923
    iget-object v4, v1, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    .line 924
    .line 925
    iget-object v4, v4, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 926
    .line 927
    const/4 v7, 0x1

    .line 928
    invoke-virtual {v3, v4, v7}, Landroid/content/pm/SigningDetails;->checkCapability(Landroid/content/pm/SigningDetails;I)Z

    .line 929
    .line 930
    .line 931
    move-result v3

    .line 932
    if-nez v3, :cond_21

    .line 933
    .line 934
    iget-object v3, v1, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    .line 935
    .line 936
    iget-object v3, v3, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 937
    .line 938
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    .line 939
    .line 940
    .line 941
    move-result-object v4

    .line 942
    const/16 v7, 0x8

    .line 943
    .line 944
    invoke-virtual {v3, v4, v7}, Landroid/content/pm/SigningDetails;->checkCapability(Landroid/content/pm/SigningDetails;I)Z

    .line 945
    .line 946
    .line 947
    move-result v3

    .line 948
    if-nez v3, :cond_21

    .line 949
    .line 950
    new-instance v3, Ljava/lang/StringBuilder;

    .line 951
    .line 952
    const-string v4, "System package signature mismatch; name: "

    .line 953
    .line 954
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 955
    .line 956
    .line 957
    iget-object v1, v1, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    .line 958
    .line 959
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 960
    .line 961
    .line 962
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 963
    .line 964
    .line 965
    move-result-object v1

    .line 966
    const/4 v3, 0x5

    .line 967
    invoke-static {v3, v1}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 968
    .line 969
    .line 970
    iget-object v4, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 971
    .line 972
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    .line 973
    .line 974
    .line 975
    move-result-object v5

    .line 976
    const-string/jumbo v7, "scanPackageInternalLI"

    .line 977
    .line 978
    .line 979
    const/4 v9, 0x0

    .line 980
    const/4 v6, -0x1

    .line 981
    const/16 v8, 0xd

    .line 982
    .line 983
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/pm/PackageManagerService;->freezePackage(Ljava/lang/String;ILjava/lang/String;ILcom/android/server/pm/InstallRequest;)Lcom/android/server/pm/PackageFreezer;

    .line 984
    .line 985
    .line 986
    move-result-object v1

    .line 987
    :try_start_6
    iget-object v3, v0, Lcom/android/server/pm/InstallPackageHelper;->mDeletePackageHelper:Lcom/android/server/pm/DeletePackageHelper;

    .line 988
    .line 989
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    .line 990
    .line 991
    .line 992
    move-result-object v4

    .line 993
    iget-object v5, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 994
    .line 995
    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 996
    .line 997
    invoke-virtual {v5}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    .line 998
    .line 999
    .line 1000
    move-result-object v7

    .line 1001
    new-instance v9, Lcom/android/server/pm/PackageRemovedInfo;

    .line 1002
    .line 1003
    invoke-direct {v9}, Lcom/android/server/pm/PackageRemovedInfo;-><init>()V

    .line 1004
    .line 1005
    .line 1006
    const/4 v6, 0x1

    .line 1007
    const/4 v8, 0x0

    .line 1008
    const/4 v10, 0x0

    .line 1009
    const/4 v5, 0x0

    .line 1010
    invoke-virtual/range {v3 .. v10}, Lcom/android/server/pm/DeletePackageHelper;->deletePackageLIF(Ljava/lang/String;Landroid/os/UserHandle;Z[IILcom/android/server/pm/PackageRemovedInfo;Z)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 1011
    .line 1012
    .line 1013
    invoke-virtual {v1}, Lcom/android/server/pm/PackageFreezer;->close()V

    .line 1014
    .line 1015
    .line 1016
    goto/16 :goto_1d

    .line 1017
    .line 1018
    :catchall_4
    move-exception v0

    .line 1019
    move-object v2, v0

    .line 1020
    :try_start_7
    invoke-virtual {v1}, Lcom/android/server/pm/PackageFreezer;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 1021
    .line 1022
    .line 1023
    goto :goto_1b

    .line 1024
    :catchall_5
    move-exception v0

    .line 1025
    move-object v1, v0

    .line 1026
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 1027
    .line 1028
    .line 1029
    :goto_1b
    throw v2

    .line 1030
    :cond_21
    if-nez v5, :cond_23

    .line 1031
    .line 1032
    if-eqz v6, :cond_22

    .line 1033
    .line 1034
    goto :goto_1c

    .line 1035
    :cond_22
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1036
    .line 1037
    const-string v4, "System package disabled; name: "

    .line 1038
    .line 1039
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1040
    .line 1041
    .line 1042
    iget-object v4, v1, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    .line 1043
    .line 1044
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1045
    .line 1046
    .line 1047
    const-string v4, "; old: "

    .line 1048
    .line 1049
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1050
    .line 1051
    .line 1052
    iget-object v4, v1, Lcom/android/server/pm/PackageSetting;->mPathString:Ljava/lang/String;

    .line 1053
    .line 1054
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1055
    .line 1056
    .line 1057
    const-string v4, " @ "

    .line 1058
    .line 1059
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1060
    .line 1061
    .line 1062
    iget-wide v4, v1, Lcom/android/server/pm/PackageSetting;->versionCode:J

    .line 1063
    .line 1064
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1065
    .line 1066
    .line 1067
    const-string v1, "; new: "

    .line 1068
    .line 1069
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1070
    .line 1071
    .line 1072
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPath()Ljava/lang/String;

    .line 1073
    .line 1074
    .line 1075
    move-result-object v1

    .line 1076
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1077
    .line 1078
    .line 1079
    const-string v1, " @ "

    .line 1080
    .line 1081
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1082
    .line 1083
    .line 1084
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getLongVersionCode()J

    .line 1085
    .line 1086
    .line 1087
    move-result-wide v4

    .line 1088
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1089
    .line 1090
    .line 1091
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1092
    .line 1093
    .line 1094
    move-result-object v1

    .line 1095
    const/4 v3, 0x4

    .line 1096
    invoke-static {v3, v1}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 1097
    .line 1098
    .line 1099
    const/4 v13, 0x1

    .line 1100
    goto :goto_1e

    .line 1101
    :cond_23
    :goto_1c
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1102
    .line 1103
    const-string v4, "System package enabled; name: "

    .line 1104
    .line 1105
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1106
    .line 1107
    .line 1108
    iget-object v4, v1, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    .line 1109
    .line 1110
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1111
    .line 1112
    .line 1113
    const-string v4, "; "

    .line 1114
    .line 1115
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1116
    .line 1117
    .line 1118
    iget-wide v4, v1, Lcom/android/server/pm/PackageSetting;->versionCode:J

    .line 1119
    .line 1120
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1121
    .line 1122
    .line 1123
    const-string v4, " --> "

    .line 1124
    .line 1125
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1126
    .line 1127
    .line 1128
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getLongVersionCode()J

    .line 1129
    .line 1130
    .line 1131
    move-result-wide v4

    .line 1132
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1133
    .line 1134
    .line 1135
    const-string v4, "; "

    .line 1136
    .line 1137
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1138
    .line 1139
    .line 1140
    iget-object v4, v1, Lcom/android/server/pm/PackageSetting;->mPathString:Ljava/lang/String;

    .line 1141
    .line 1142
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1143
    .line 1144
    .line 1145
    const-string v4, " --> "

    .line 1146
    .line 1147
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1148
    .line 1149
    .line 1150
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPath()Ljava/lang/String;

    .line 1151
    .line 1152
    .line 1153
    move-result-object v4

    .line 1154
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1155
    .line 1156
    .line 1157
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1158
    .line 1159
    .line 1160
    move-result-object v3

    .line 1161
    const/4 v4, 0x5

    .line 1162
    invoke-static {v4, v3}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 1163
    .line 1164
    .line 1165
    iget-object v3, v0, Lcom/android/server/pm/InstallPackageHelper;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    .line 1166
    .line 1167
    iget-object v4, v1, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    .line 1168
    .line 1169
    new-instance v5, Ljava/io/File;

    .line 1170
    .line 1171
    iget-object v6, v1, Lcom/android/server/pm/PackageSetting;->mPathString:Ljava/lang/String;

    .line 1172
    .line 1173
    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1174
    .line 1175
    .line 1176
    iget-object v6, v1, Lcom/android/server/pm/PackageSetting;->mPrimaryCpuAbi:Ljava/lang/String;

    .line 1177
    .line 1178
    iget-object v1, v1, Lcom/android/server/pm/PackageSetting;->mSecondaryCpuAbi:Ljava/lang/String;

    .line 1179
    .line 1180
    invoke-static {v6, v1}, Lcom/android/server/pm/InstructionSets;->getAppDexInstructionSets(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 1181
    .line 1182
    .line 1183
    move-result-object v1

    .line 1184
    invoke-virtual {v3, v4, v5, v1}, Lcom/android/server/pm/RemovePackageHelper;->cleanUpResources(Ljava/lang/String;Ljava/io/File;[Ljava/lang/String;)V

    .line 1185
    .line 1186
    .line 1187
    :cond_24
    :goto_1d
    const/4 v13, 0x0

    .line 1188
    :goto_1e
    const/high16 v1, 0x4000000

    .line 1189
    .line 1190
    and-int/2addr v1, v2

    .line 1191
    if-eqz v1, :cond_25

    .line 1192
    .line 1193
    const/4 v1, 0x1

    .line 1194
    goto :goto_1f

    .line 1195
    :cond_25
    const/4 v1, 0x0

    .line 1196
    :goto_1f
    iget-object v3, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 1197
    .line 1198
    iget-boolean v3, v3, Lcom/android/server/pm/PackageManagerService;->mShouldStopSystemPackagesByDefault:Z

    .line 1199
    .line 1200
    if-eqz v3, :cond_29

    .line 1201
    .line 1202
    if-eqz v12, :cond_29

    .line 1203
    .line 1204
    if-nez v16, :cond_29

    .line 1205
    .line 1206
    if-nez v1, :cond_29

    .line 1207
    .line 1208
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->isOverlayIsStatic()Z

    .line 1209
    .line 1210
    .line 1211
    move-result v1

    .line 1212
    if-nez v1, :cond_29

    .line 1213
    .line 1214
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    .line 1215
    .line 1216
    .line 1217
    move-result-object v1

    .line 1218
    const-string v3, "android"

    .line 1219
    .line 1220
    invoke-virtual {v3, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    .line 1221
    .line 1222
    .line 1223
    move-result v3

    .line 1224
    if-nez v3, :cond_29

    .line 1225
    .line 1226
    iget-object v3, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 1227
    .line 1228
    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mInitialNonStoppedSystemPackages:Ljava/util/Set;

    .line 1229
    .line 1230
    invoke-interface {v3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 1231
    .line 1232
    .line 1233
    move-result v1

    .line 1234
    if-nez v1, :cond_29

    .line 1235
    .line 1236
    new-instance v1, Ljava/util/HashSet;

    .line 1237
    .line 1238
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1239
    .line 1240
    .line 1241
    const-string v3, "android.intent.category.LAUNCHER"

    .line 1242
    .line 1243
    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1244
    .line 1245
    .line 1246
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getActivities()Ljava/util/List;

    .line 1247
    .line 1248
    .line 1249
    move-result-object v3

    .line 1250
    const/4 v4, 0x0

    .line 1251
    :goto_20
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 1252
    .line 1253
    .line 1254
    move-result v5

    .line 1255
    if-ge v4, v5, :cond_29

    .line 1256
    .line 1257
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1258
    .line 1259
    .line 1260
    move-result-object v5

    .line 1261
    check-cast v5, Lcom/android/internal/pm/pkg/component/ParsedActivity;

    .line 1262
    .line 1263
    invoke-interface {v5}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->isEnabled()Z

    .line 1264
    .line 1265
    .line 1266
    move-result v6

    .line 1267
    if-eqz v6, :cond_26

    .line 1268
    .line 1269
    invoke-interface {v5}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->isExported()Z

    .line 1270
    .line 1271
    .line 1272
    move-result v6

    .line 1273
    if-nez v6, :cond_27

    .line 1274
    .line 1275
    :cond_26
    const/4 v7, 0x1

    .line 1276
    goto :goto_22

    .line 1277
    :cond_27
    invoke-interface {v5}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getIntents()Ljava/util/List;

    .line 1278
    .line 1279
    .line 1280
    move-result-object v5

    .line 1281
    const/4 v6, 0x0

    .line 1282
    :goto_21
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 1283
    .line 1284
    .line 1285
    move-result v7

    .line 1286
    if-ge v6, v7, :cond_26

    .line 1287
    .line 1288
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1289
    .line 1290
    .line 1291
    move-result-object v7

    .line 1292
    check-cast v7, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;

    .line 1293
    .line 1294
    invoke-interface {v7}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;->getIntentFilter()Landroid/content/IntentFilter;

    .line 1295
    .line 1296
    .line 1297
    move-result-object v7

    .line 1298
    if-eqz v7, :cond_28

    .line 1299
    .line 1300
    invoke-virtual {v7, v1}, Landroid/content/IntentFilter;->matchCategories(Ljava/util/Set;)Ljava/lang/String;

    .line 1301
    .line 1302
    .line 1303
    move-result-object v7

    .line 1304
    if-nez v7, :cond_28

    .line 1305
    .line 1306
    const/high16 v1, 0x8000000

    .line 1307
    .line 1308
    or-int/2addr v1, v2

    .line 1309
    goto :goto_23

    .line 1310
    :cond_28
    const/4 v7, 0x1

    .line 1311
    add-int/2addr v6, v7

    .line 1312
    goto :goto_21

    .line 1313
    :goto_22
    add-int/2addr v4, v7

    .line 1314
    goto :goto_20

    .line 1315
    :cond_29
    move v1, v2

    .line 1316
    :goto_23
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->fixSystemAppsFirstInstallTime()Z

    .line 1317
    .line 1318
    .line 1319
    move-result v2

    .line 1320
    if-eqz v2, :cond_2a

    .line 1321
    .line 1322
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1323
    .line 1324
    .line 1325
    move-result-wide v2

    .line 1326
    :goto_24
    move-wide v5, v2

    .line 1327
    goto :goto_25

    .line 1328
    :cond_2a
    const-wide/16 v2, 0x0

    .line 1329
    .line 1330
    goto :goto_24

    .line 1331
    :goto_25
    or-int/lit8 v4, v1, 0x2

    .line 1332
    .line 1333
    const/4 v8, 0x0

    .line 1334
    move-object/from16 v1, p0

    .line 1335
    .line 1336
    move-object/from16 v2, p1

    .line 1337
    .line 1338
    move/from16 v3, p2

    .line 1339
    .line 1340
    move-object/from16 v7, p4

    .line 1341
    .line 1342
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/pm/InstallPackageHelper;->scanPackageNewLI(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;IIJLandroid/os/UserHandle;Ljava/lang/String;)Lcom/android/server/pm/ScanResult;

    .line 1343
    .line 1344
    .line 1345
    move-result-object v0

    .line 1346
    new-instance v1, Landroid/util/Pair;

    .line 1347
    .line 1348
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1349
    .line 1350
    .line 1351
    move-result-object v2

    .line 1352
    invoke-direct {v1, v0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1353
    .line 1354
    .line 1355
    return-object v1

    .line 1356
    :catchall_6
    move-exception v0

    .line 1357
    goto :goto_26

    .line 1358
    :cond_2b
    :try_start_8
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    .line 1359
    .line 1360
    invoke-interface {v7}, Landroid/content/pm/parsing/result/ParseResult;->getErrorCode()I

    .line 1361
    .line 1362
    .line 1363
    move-result v1

    .line 1364
    invoke-interface {v7}, Landroid/content/pm/parsing/result/ParseResult;->getErrorMessage()Ljava/lang/String;

    .line 1365
    .line 1366
    .line 1367
    move-result-object v2

    .line 1368
    invoke-interface {v7}, Landroid/content/pm/parsing/result/ParseResult;->getException()Ljava/lang/Exception;

    .line 1369
    .line 1370
    .line 1371
    move-result-object v5

    .line 1372
    invoke-direct {v0, v1, v2, v5}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 1373
    .line 1374
    .line 1375
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    .line 1376
    :goto_26
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 1377
    .line 1378
    .line 1379
    throw v0

    .line 1380
    :goto_27
    :try_start_9
    monitor-exit v22
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 1381
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 1382
    .line 1383
    throw v0
.end method
