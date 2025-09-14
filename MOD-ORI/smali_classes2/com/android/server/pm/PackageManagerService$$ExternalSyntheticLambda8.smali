.class public final synthetic Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/pm/PackageManagerServiceInjector$Producer;
.implements Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Producer;
.implements Lcom/android/server/pm/PackageManagerServiceInjector$ServiceProducer;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda8;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public produce(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)Ljava/lang/Object;
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget p0, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda8;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    .line 2
    new-instance p0, Lcom/android/server/pm/dex/ArtManagerService;

    .line 3
    iget-object p1, p2, Lcom/android/server/pm/PackageManagerServiceInjector;->mContext:Landroid/content/Context;

    .line 4
    invoke-direct {p0, p1}, Lcom/android/server/pm/dex/ArtManagerService;-><init>(Landroid/content/Context;)V

    return-object p0

    .line 5
    :pswitch_0
    new-instance p0, Lcom/samsung/android/server/pm/install/MultiUserInstallPolicy;

    new-instance p1, Lcom/samsung/android/server/pm/install/MultiUserInstallPolicy$PackageSettingsDelegator;

    .line 6
    iget-object v0, p2, Lcom/android/server/pm/PackageManagerServiceInjector;->mSettingsProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    iget-object v3, p2, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, v3, p2}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/pm/Settings;

    .line 7
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda44;

    invoke-direct {v0, v2, p2}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda44;-><init>(ILjava/lang/Object;)V

    new-instance p2, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda68;

    invoke-direct {p2, v1}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda68;-><init>(I)V

    new-instance v1, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda68;

    invoke-direct {v1, v2}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda68;-><init>(I)V

    new-instance v2, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda68;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda68;-><init>(I)V

    invoke-direct {p1, v0, p2, v1, v2}, Lcom/samsung/android/server/pm/install/MultiUserInstallPolicy$PackageSettingsDelegator;-><init>(Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda44;Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda68;Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda68;Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda68;)V

    new-instance p2, Lcom/samsung/android/server/pm/MetaDataHelper;

    .line 8
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 9
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/server/pm/install/MultiUserInstallPolicy;-><init>(Lcom/samsung/android/server/pm/install/MultiUserInstallPolicy$PackageSettingsDelegator;Lcom/samsung/android/server/pm/MetaDataHelper;Lcom/android/server/pm/UserManagerService;)V

    return-object p0

    .line 10
    :pswitch_1
    new-instance p0, Lcom/android/server/pm/dex/DynamicCodeLogger;

    .line 11
    iget-object p1, p2, Lcom/android/server/pm/PackageManagerServiceInjector;->mInstaller:Lcom/android/server/pm/Installer;

    .line 12
    invoke-direct {p0, p1}, Lcom/android/server/pm/dex/DynamicCodeLogger;-><init>(Lcom/android/server/pm/Installer;)V

    return-object p0

    .line 13
    :pswitch_2
    new-instance p0, Lcom/android/server/pm/dex/DexManager;

    .line 14
    iget-object p1, p2, Lcom/android/server/pm/PackageManagerServiceInjector;->mContext:Landroid/content/Context;

    .line 15
    iget-object v1, p2, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageDexOptimizerProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    iget-object v2, p2, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1, v2, p2}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageDexOptimizer;

    .line 16
    iget-object v2, p2, Lcom/android/server/pm/PackageManagerServiceInjector;->mDynamicCodeLoggerProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    iget-object v3, p2, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2, v3, p2}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/pm/dex/DynamicCodeLogger;

    .line 17
    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/server/pm/dex/DexManager;-><init>(Landroid/content/Context;Lcom/android/server/pm/PackageDexOptimizer;Lcom/android/server/pm/dex/DynamicCodeLogger;Landroid/content/pm/IPackageManager;)V

    return-object p0

    .line 18
    :pswitch_3
    new-instance p0, Lcom/android/server/pm/PackageDexOptimizer;

    .line 19
    iget-object p1, p2, Lcom/android/server/pm/PackageManagerServiceInjector;->mInstaller:Lcom/android/server/pm/Installer;

    .line 20
    iget-object v0, p2, Lcom/android/server/pm/PackageManagerServiceInjector;->mContext:Landroid/content/Context;

    .line 21
    const-string v1, "*dexopt*"

    iget-object p2, p2, Lcom/android/server/pm/PackageManagerServiceInjector;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/pm/PackageDexOptimizer;-><init>(Lcom/android/server/pm/Installer;Lcom/android/server/pm/PackageManagerTracedLock;Landroid/content/Context;Ljava/lang/String;)V

    return-object p0

    .line 22
    :pswitch_4
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object p0

    return-object p0

    .line 23
    :pswitch_5
    const-string/jumbo p0, "platform_compat"

    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    check-cast p0, Lcom/android/server/compat/PlatformCompat;

    return-object p0

    .line 24
    :pswitch_6
    iget-object p0, p2, Lcom/android/server/pm/PackageManagerServiceInjector;->mGetLocalServiceProducer:Lcom/android/server/pm/PackageManagerServiceInjector$ServiceProducer;

    .line 25
    const-class p1, Landroid/content/pm/PackageManagerInternal;

    invoke-interface {p0, p1}, Lcom/android/server/pm/PackageManagerServiceInjector$ServiceProducer;->produce(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    .line 26
    check-cast p0, Landroid/content/pm/PackageManagerInternal;

    .line 27
    iget-object p1, p2, Lcom/android/server/pm/PackageManagerServiceInjector;->mContext:Landroid/content/Context;

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x11101a5

    .line 29
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    .line 30
    new-instance p1, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;

    invoke-direct {p1, p0, p2}, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;-><init>(Landroid/content/pm/PackageManagerInternal;Lcom/android/server/pm/PackageManagerServiceInjector;)V

    if-eqz v6, :cond_1

    .line 31
    new-array p0, v1, [Ljava/lang/String;

    :cond_0
    move-object v5, p0

    goto :goto_1

    .line 32
    :cond_1
    iget-object p0, p2, Lcom/android/server/pm/PackageManagerServiceInjector;->mContext:Landroid/content/Context;

    .line 33
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x1070105

    .line 34
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    .line 35
    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    .line 36
    aget-object v0, p0, v1

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p0, v1

    add-int/2addr v1, v2

    goto :goto_0

    .line 37
    :goto_1
    new-instance p0, Lcom/android/server/pm/AppsFilterImpl;

    const/4 v7, 0x0

    .line 38
    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerServiceInjector;->getHandler()Landroid/os/Handler;

    move-result-object v8

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/server/pm/AppsFilterImpl;-><init>(Lcom/android/server/pm/FeatureConfig;[Ljava/lang/String;ZLcom/android/server/om/OverlayReferenceMapper$Provider;Landroid/os/Handler;)V

    .line 39
    iput-object p0, p1, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mAppsFilter:Lcom/android/server/pm/AppsFilterImpl;

    return-object p0

    .line 40
    :pswitch_7
    new-instance p0, Lcom/android/server/pm/PackageMonitorCallbackHelper;

    invoke-direct {p0}, Lcom/android/server/pm/PackageMonitorCallbackHelper;-><init>()V

    return-object p0

    .line 41
    :pswitch_8
    new-instance p0, Lcom/android/server/pm/UpdateOwnershipHelper;

    invoke-direct {p0}, Lcom/android/server/pm/UpdateOwnershipHelper;-><init>()V

    return-object p0

    .line 42
    :pswitch_9
    new-instance p0, Lcom/android/server/pm/SharedLibrariesImpl;

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/SharedLibrariesImpl;-><init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)V

    return-object p0

    .line 43
    :pswitch_a
    const-string p0, "backup"

    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object p0

    return-object p0

    .line 44
    :pswitch_b
    const-string p0, "PackageManager"

    .line 45
    invoke-static {v1, p0, v2}, Lcom/android/server/Watchdog$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Z)Lcom/android/server/ServiceThread;

    move-result-object p0

    .line 46
    new-instance p2, Lcom/android/server/pm/PackageHandler;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-direct {p2, p0, p1}, Lcom/android/server/pm/PackageHandler;-><init>(Landroid/os/Looper;Lcom/android/server/pm/PackageManagerService;)V

    return-object p2

    .line 47
    :pswitch_c
    iget-object p0, p2, Lcom/android/server/pm/PackageManagerServiceInjector;->mContext:Landroid/content/Context;

    .line 48
    sget p1, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->$r8$clinit:I

    .line 49
    const-class p1, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Internal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Internal;

    if-nez p2, :cond_2

    .line 50
    new-instance p2, Lcom/android/server/pm/permission/LegacyPermissionManagerService;

    .line 51
    new-instance v0, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;

    invoke-direct {v0, p0}, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;-><init>(Landroid/content/Context;)V

    invoke-direct {p2, p0, v0}, Lcom/android/server/pm/permission/LegacyPermissionManagerService;-><init>(Landroid/content/Context;Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;)V

    .line 52
    new-instance p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Internal;

    invoke-direct {p0, p2}, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Internal;-><init>(Lcom/android/server/pm/permission/LegacyPermissionManagerService;)V

    invoke-static {p1, p0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 53
    const-string p0, "legacy_permission"

    invoke-static {p0, p2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 54
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    move-object p2, p0

    check-cast p2, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Internal;

    :cond_2
    return-object p2

    .line 55
    :pswitch_d
    new-instance p0, Lcom/android/server/pm/ModuleInfoProvider;

    .line 56
    iget-object p1, p2, Lcom/android/server/pm/PackageManagerServiceInjector;->mContext:Landroid/content/Context;

    .line 57
    invoke-direct {p0, p1}, Lcom/android/server/pm/ModuleInfoProvider;-><init>(Landroid/content/Context;)V

    return-object p0

    .line 58
    :pswitch_e
    new-instance p0, Lcom/android/server/pm/PackageInstallerService;

    .line 59
    iget-object v0, p2, Lcom/android/server/pm/PackageManagerServiceInjector;->mContext:Landroid/content/Context;

    .line 60
    new-instance v2, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda44;

    invoke-direct {v2, v1, p2}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda44;-><init>(ILjava/lang/Object;)V

    invoke-direct {p0, v0, p1, v2}, Lcom/android/server/pm/PackageInstallerService;-><init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda44;)V

    return-object p0

    .line 61
    :pswitch_f
    new-instance p0, Lcom/android/internal/pm/parsing/PackageParser2;

    iget-object v1, p1, Lcom/android/server/pm/PackageManagerService;->mSeparateProcesses:[Ljava/lang/String;

    .line 62
    iget-object v2, p2, Lcom/android/server/pm/PackageManagerServiceInjector;->mDisplayMetricsProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    iget-object v3, p2, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2, v3, p2}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/DisplayMetrics;

    .line 63
    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService;->mPackageParserCallback:Lcom/android/server/pm/PackageManagerService$3;

    invoke-direct {p0, v1, p2, v0, p1}, Lcom/android/internal/pm/parsing/PackageParser2;-><init>([Ljava/lang/String;Landroid/util/DisplayMetrics;Lcom/android/internal/pm/parsing/IPackageCacher;Lcom/android/internal/pm/parsing/PackageParser2$Callback;)V

    return-object p0

    .line 64
    :pswitch_10
    new-instance p0, Lcom/android/internal/pm/parsing/PackageParser2;

    iget-object v1, p1, Lcom/android/server/pm/PackageManagerService;->mSeparateProcesses:[Ljava/lang/String;

    .line 65
    iget-object v2, p2, Lcom/android/server/pm/PackageManagerServiceInjector;->mDisplayMetricsProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    iget-object v3, p2, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2, v3, p2}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/DisplayMetrics;

    .line 66
    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService;->mPackageParserCallback:Lcom/android/server/pm/PackageManagerService$3;

    invoke-direct {p0, v1, p2, v0, p1}, Lcom/android/internal/pm/parsing/PackageParser2;-><init>([Ljava/lang/String;Landroid/util/DisplayMetrics;Lcom/android/internal/pm/parsing/IPackageCacher;Lcom/android/internal/pm/parsing/PackageParser2$Callback;)V

    return-object p0

    .line 67
    :pswitch_11
    new-instance p0, Lcom/android/internal/pm/parsing/PackageParser2;

    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService;->mSeparateProcesses:[Ljava/lang/String;

    .line 68
    iget-object v1, p2, Lcom/android/server/pm/PackageManagerServiceInjector;->mDisplayMetricsProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    iget-object v2, p2, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1, v2, p2}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/DisplayMetrics;

    .line 69
    new-instance v1, Lcom/android/server/pm/parsing/PackageCacher;

    iget-object v2, p1, Lcom/android/server/pm/PackageManagerService;->mCacheDir:Ljava/io/File;

    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService;->mPackageParserCallback:Lcom/android/server/pm/PackageManagerService$3;

    invoke-direct {v1, v2, p1}, Lcom/android/server/pm/parsing/PackageCacher;-><init>(Ljava/io/File;Lcom/android/internal/pm/parsing/PackageParser2$Callback;)V

    invoke-direct {p0, v0, p2, v1, p1}, Lcom/android/internal/pm/parsing/PackageParser2;-><init>([Ljava/lang/String;Landroid/util/DisplayMetrics;Lcom/android/internal/pm/parsing/IPackageCacher;Lcom/android/internal/pm/parsing/PackageParser2$Callback;)V

    return-object p0

    .line 70
    :pswitch_12
    new-instance p0, Landroid/util/DisplayMetrics;

    invoke-direct {p0}, Landroid/util/DisplayMetrics;-><init>()V

    return-object p0

    .line 71
    :pswitch_13
    iget-object p0, p2, Lcom/android/server/pm/PackageManagerServiceInjector;->mContext:Landroid/content/Context;

    .line 72
    const-string p1, "incremental"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/incremental/IncrementalManager;

    return-object p0

    .line 73
    :pswitch_14
    invoke-static {}, Lcom/android/server/pm/ApexManager;->getInstance()Lcom/android/server/pm/ApexManager;

    move-result-object p0

    return-object p0

    .line 74
    :pswitch_15
    new-instance p0, Lcom/android/server/pm/resolution/ComponentResolver;

    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerService()Lcom/android/server/pm/UserManagerService;

    move-result-object p2

    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService;->mUserNeedsBadging:Lcom/android/server/pm/UserNeedsBadgingCache;

    invoke-direct {p0, p2, p1}, Lcom/android/server/pm/resolution/ComponentResolver;-><init>(Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/UserNeedsBadgingCache;)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public produce(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
