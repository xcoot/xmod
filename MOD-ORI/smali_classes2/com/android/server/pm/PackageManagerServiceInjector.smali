.class public Lcom/android/server/pm/PackageManagerServiceInjector;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAbiHelper:Lcom/android/server/pm/PackageAbiHelper;

.field public final mApexManagerProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

.field public final mAppsFilterProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

.field public final mArtManagerServiceProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

.field public final mBackgroundExecutor:Ljava/util/concurrent/Executor;

.field public final mBackgroundHandler:Landroid/os/Handler;

.field public final mComponentResolverProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

.field public final mContext:Landroid/content/Context;

.field public final mCrossProfileIntentFilterHelperProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

.field public final mDefaultAppProviderProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

.field public final mDexManagerProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

.field public final mDisplayMetricsProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

.field public final mDomainVerificationManagerInternalProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

.field public final mDynamicCodeLoggerProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

.field public final mGetLocalServiceProducer:Lcom/android/server/pm/PackageManagerServiceInjector$ServiceProducer;

.field public final mGetSystemServiceProducer:Lcom/android/server/pm/PackageManagerServiceInjector$ServiceProducer;

.field public final mHandlerProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

.field public final mIBackupManager:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

.field public final mIncrementalManagerProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

.field public final mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

.field public final mInstaller:Lcom/android/server/pm/Installer;

.field public final mInstantAppResolverConnectionProducer:Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda10;

.field public final mLegacyPermissionManagerInternalProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

.field public final mLock:Lcom/android/server/pm/PackageManagerTracedLock;

.field public final mModuleInfoProviderProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

.field public final mPackageDexOptimizerProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

.field public final mPackageInstallerServiceProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

.field public mPackageManager:Lcom/android/server/pm/PackageManagerService;

.field public final mPackageMonitorCallbackHelper:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

.field public final mPermissionManagerServiceProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

.field public final mPlatformCompatProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

.field public final mPreparingPackageParserProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Producer;

.field public final mScanningCachingPackageParserProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Producer;

.field public final mScanningPackageParserProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Producer;

.field public final mSettingsProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

.field public final mSharedLibrariesProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

.field public final mSystemConfigProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

.field public final mSystemPartitions:Ljava/util/List;

.field public final mSystemWrapper:Lcom/android/server/pm/PackageManagerService$DefaultSystemWrapper;

.field public final mUpdateOwnershipHelperProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

.field public final mUserManagerProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerTracedLock;Lcom/android/server/pm/Installer;Lcom/android/server/pm/PackageManagerTracedLock;Lcom/android/server/pm/PackageAbiHelperImpl;Landroid/os/Handler;Ljava/util/List;Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda8;Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda12;Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda29;Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda32;Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda8;Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda8;Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda8;Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda8;Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda8;Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda8;Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda8;Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda8;Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda8;Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda12;Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda8;Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda8;Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda8;Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda8;Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda8;Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda10;Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda8;Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda8;Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda21;Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda8;Lcom/android/server/pm/PackageManagerService$DefaultSystemWrapper;Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda8;Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda12;Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda8;Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda8;Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda12;Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda8;Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda8;)V
    .locals 3

    move-object v0, p0

    move-object v1, p6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v2, p1

    .line 2
    iput-object v2, v0, Lcom/android/server/pm/PackageManagerServiceInjector;->mContext:Landroid/content/Context;

    move-object v2, p2

    .line 3
    iput-object v2, v0, Lcom/android/server/pm/PackageManagerServiceInjector;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    move-object v2, p3

    .line 4
    iput-object v2, v0, Lcom/android/server/pm/PackageManagerServiceInjector;->mInstaller:Lcom/android/server/pm/Installer;

    move-object v2, p5

    .line 5
    iput-object v2, v0, Lcom/android/server/pm/PackageManagerServiceInjector;->mAbiHelper:Lcom/android/server/pm/PackageAbiHelper;

    move-object v2, p4

    .line 6
    iput-object v2, v0, Lcom/android/server/pm/PackageManagerServiceInjector;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 7
    iput-object v1, v0, Lcom/android/server/pm/PackageManagerServiceInjector;->mBackgroundHandler:Landroid/os/Handler;

    .line 8
    new-instance v2, Landroid/os/HandlerExecutor;

    invoke-direct {v2, p6}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iput-object v2, v0, Lcom/android/server/pm/PackageManagerServiceInjector;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    move-object v1, p7

    .line 9
    iput-object v1, v0, Lcom/android/server/pm/PackageManagerServiceInjector;->mSystemPartitions:Ljava/util/List;

    .line 10
    new-instance v1, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    move-object v2, p8

    invoke-direct {v1, p8}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;-><init>(Lcom/android/server/pm/PackageManagerServiceInjector$Producer;)V

    iput-object v1, v0, Lcom/android/server/pm/PackageManagerServiceInjector;->mComponentResolverProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    .line 11
    new-instance v1, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    move-object v2, p9

    invoke-direct {v1, p9}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;-><init>(Lcom/android/server/pm/PackageManagerServiceInjector$Producer;)V

    iput-object v1, v0, Lcom/android/server/pm/PackageManagerServiceInjector;->mPermissionManagerServiceProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    .line 12
    new-instance v1, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    move-object v2, p10

    invoke-direct {v1, p10}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;-><init>(Lcom/android/server/pm/PackageManagerServiceInjector$Producer;)V

    iput-object v1, v0, Lcom/android/server/pm/PackageManagerServiceInjector;->mUserManagerProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    .line 13
    new-instance v1, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    move-object v2, p11

    invoke-direct {v1, p11}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;-><init>(Lcom/android/server/pm/PackageManagerServiceInjector$Producer;)V

    iput-object v1, v0, Lcom/android/server/pm/PackageManagerServiceInjector;->mSettingsProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    .line 14
    new-instance v1, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    move-object v2, p12

    invoke-direct {v1, p12}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;-><init>(Lcom/android/server/pm/PackageManagerServiceInjector$Producer;)V

    iput-object v1, v0, Lcom/android/server/pm/PackageManagerServiceInjector;->mAppsFilterProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    .line 15
    new-instance v1, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    move-object/from16 v2, p13

    invoke-direct {v1, v2}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;-><init>(Lcom/android/server/pm/PackageManagerServiceInjector$Producer;)V

    iput-object v1, v0, Lcom/android/server/pm/PackageManagerServiceInjector;->mPlatformCompatProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    .line 16
    new-instance v1, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    move-object/from16 v2, p14

    invoke-direct {v1, v2}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;-><init>(Lcom/android/server/pm/PackageManagerServiceInjector$Producer;)V

    iput-object v1, v0, Lcom/android/server/pm/PackageManagerServiceInjector;->mSystemConfigProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    .line 17
    new-instance v1, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    move-object/from16 v2, p15

    invoke-direct {v1, v2}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;-><init>(Lcom/android/server/pm/PackageManagerServiceInjector$Producer;)V

    iput-object v1, v0, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageDexOptimizerProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    .line 18
    new-instance v1, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    move-object/from16 v2, p16

    invoke-direct {v1, v2}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;-><init>(Lcom/android/server/pm/PackageManagerServiceInjector$Producer;)V

    iput-object v1, v0, Lcom/android/server/pm/PackageManagerServiceInjector;->mDexManagerProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    .line 19
    new-instance v1, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    move-object/from16 v2, p17

    invoke-direct {v1, v2}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;-><init>(Lcom/android/server/pm/PackageManagerServiceInjector$Producer;)V

    iput-object v1, v0, Lcom/android/server/pm/PackageManagerServiceInjector;->mDynamicCodeLoggerProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    .line 20
    new-instance v1, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    move-object/from16 v2, p18

    invoke-direct {v1, v2}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;-><init>(Lcom/android/server/pm/PackageManagerServiceInjector$Producer;)V

    iput-object v1, v0, Lcom/android/server/pm/PackageManagerServiceInjector;->mArtManagerServiceProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    .line 21
    new-instance v1, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    move-object/from16 v2, p19

    invoke-direct {v1, v2}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;-><init>(Lcom/android/server/pm/PackageManagerServiceInjector$Producer;)V

    iput-object v1, v0, Lcom/android/server/pm/PackageManagerServiceInjector;->mApexManagerProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    .line 22
    new-instance v1, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    move-object/from16 v2, p20

    invoke-direct {v1, v2}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;-><init>(Lcom/android/server/pm/PackageManagerServiceInjector$Producer;)V

    iput-object v1, v0, Lcom/android/server/pm/PackageManagerServiceInjector;->mIncrementalManagerProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    .line 23
    new-instance v1, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    move-object/from16 v2, p21

    invoke-direct {v1, v2}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;-><init>(Lcom/android/server/pm/PackageManagerServiceInjector$Producer;)V

    iput-object v1, v0, Lcom/android/server/pm/PackageManagerServiceInjector;->mDefaultAppProviderProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    .line 24
    new-instance v1, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    move-object/from16 v2, p22

    invoke-direct {v1, v2}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;-><init>(Lcom/android/server/pm/PackageManagerServiceInjector$Producer;)V

    iput-object v1, v0, Lcom/android/server/pm/PackageManagerServiceInjector;->mDisplayMetricsProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    move-object/from16 v1, p23

    .line 25
    iput-object v1, v0, Lcom/android/server/pm/PackageManagerServiceInjector;->mScanningCachingPackageParserProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Producer;

    move-object/from16 v1, p24

    .line 26
    iput-object v1, v0, Lcom/android/server/pm/PackageManagerServiceInjector;->mScanningPackageParserProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Producer;

    move-object/from16 v1, p25

    .line 27
    iput-object v1, v0, Lcom/android/server/pm/PackageManagerServiceInjector;->mPreparingPackageParserProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Producer;

    .line 28
    new-instance v1, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    move-object/from16 v2, p26

    invoke-direct {v1, v2}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;-><init>(Lcom/android/server/pm/PackageManagerServiceInjector$Producer;)V

    iput-object v1, v0, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageInstallerServiceProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    move-object/from16 v1, p27

    .line 29
    iput-object v1, v0, Lcom/android/server/pm/PackageManagerServiceInjector;->mInstantAppResolverConnectionProducer:Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda10;

    .line 30
    new-instance v1, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    move-object/from16 v2, p28

    invoke-direct {v1, v2}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;-><init>(Lcom/android/server/pm/PackageManagerServiceInjector$Producer;)V

    iput-object v1, v0, Lcom/android/server/pm/PackageManagerServiceInjector;->mModuleInfoProviderProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    .line 31
    new-instance v1, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    move-object/from16 v2, p29

    invoke-direct {v1, v2}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;-><init>(Lcom/android/server/pm/PackageManagerServiceInjector$Producer;)V

    iput-object v1, v0, Lcom/android/server/pm/PackageManagerServiceInjector;->mLegacyPermissionManagerInternalProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    move-object/from16 v1, p32

    .line 32
    iput-object v1, v0, Lcom/android/server/pm/PackageManagerServiceInjector;->mSystemWrapper:Lcom/android/server/pm/PackageManagerService$DefaultSystemWrapper;

    move-object/from16 v1, p33

    .line 33
    iput-object v1, v0, Lcom/android/server/pm/PackageManagerServiceInjector;->mGetLocalServiceProducer:Lcom/android/server/pm/PackageManagerServiceInjector$ServiceProducer;

    move-object/from16 v1, p34

    .line 34
    iput-object v1, v0, Lcom/android/server/pm/PackageManagerServiceInjector;->mGetSystemServiceProducer:Lcom/android/server/pm/PackageManagerServiceInjector$ServiceProducer;

    .line 35
    new-instance v1, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    move-object/from16 v2, p30

    invoke-direct {v1, v2}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;-><init>(Lcom/android/server/pm/PackageManagerServiceInjector$Producer;)V

    iput-object v1, v0, Lcom/android/server/pm/PackageManagerServiceInjector;->mDomainVerificationManagerInternalProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    .line 36
    new-instance v1, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    move-object/from16 v2, p31

    invoke-direct {v1, v2}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;-><init>(Lcom/android/server/pm/PackageManagerServiceInjector$Producer;)V

    iput-object v1, v0, Lcom/android/server/pm/PackageManagerServiceInjector;->mHandlerProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    .line 37
    new-instance v1, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    move-object/from16 v2, p35

    invoke-direct {v1, v2}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;-><init>(Lcom/android/server/pm/PackageManagerServiceInjector$Producer;)V

    iput-object v1, v0, Lcom/android/server/pm/PackageManagerServiceInjector;->mIBackupManager:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    .line 38
    new-instance v1, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    move-object/from16 v2, p36

    invoke-direct {v1, v2}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;-><init>(Lcom/android/server/pm/PackageManagerServiceInjector$Producer;)V

    iput-object v1, v0, Lcom/android/server/pm/PackageManagerServiceInjector;->mSharedLibrariesProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    .line 39
    new-instance v1, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    move-object/from16 v2, p37

    invoke-direct {v1, v2}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;-><init>(Lcom/android/server/pm/PackageManagerServiceInjector$Producer;)V

    iput-object v1, v0, Lcom/android/server/pm/PackageManagerServiceInjector;->mCrossProfileIntentFilterHelperProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    .line 40
    new-instance v1, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    move-object/from16 v2, p38

    invoke-direct {v1, v2}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;-><init>(Lcom/android/server/pm/PackageManagerServiceInjector$Producer;)V

    iput-object v1, v0, Lcom/android/server/pm/PackageManagerServiceInjector;->mUpdateOwnershipHelperProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    .line 41
    new-instance v1, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    move-object/from16 v2, p39

    invoke-direct {v1, v2}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;-><init>(Lcom/android/server/pm/PackageManagerServiceInjector$Producer;)V

    iput-object v1, v0, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageMonitorCallbackHelper:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    return-void
.end method


# virtual methods
.method public final getCompatibility()Lcom/android/server/compat/PlatformCompat;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mPlatformCompatProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    .line 4
    .line 5
    invoke-virtual {v0, v1, p0}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lcom/android/server/compat/PlatformCompat;

    .line 10
    .line 11
    return-object p0
.end method

.method public final getHandler()Landroid/os/Handler;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mHandlerProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    .line 4
    .line 5
    invoke-virtual {v0, v1, p0}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroid/os/Handler;

    .line 10
    .line 11
    return-object p0
.end method

.method public final getInstantAppResolverConnection(Landroid/content/ComponentName;)Lcom/android/server/pm/InstantAppResolverConnection;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mInstantAppResolverConnectionProducer:Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda10;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/android/server/pm/InstantAppResolverConnection;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    invoke-direct {v0, p0, p1}, Lcom/android/server/pm/InstantAppResolverConnection;-><init>(Landroid/content/Context;Landroid/content/ComponentName;)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method public final getLegacyPermissionManagerInternal()Lcom/android/server/pm/permission/LegacyPermissionManagerService$Internal;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mLegacyPermissionManagerInternalProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    .line 4
    .line 5
    invoke-virtual {v0, v1, p0}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Internal;

    .line 10
    .line 11
    return-object p0
.end method

.method public final getModuleInfoProvider()Lcom/android/server/pm/ModuleInfoProvider;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mModuleInfoProviderProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    .line 4
    .line 5
    invoke-virtual {v0, v1, p0}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lcom/android/server/pm/ModuleInfoProvider;

    .line 10
    .line 11
    return-object p0
.end method

.method public final getPackageInstallerService()Lcom/android/server/pm/PackageInstallerService;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageInstallerServiceProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    .line 4
    .line 5
    invoke-virtual {v0, v1, p0}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lcom/android/server/pm/PackageInstallerService;

    .line 10
    .line 11
    return-object p0
.end method

.method public final getPreparingPackageParser()Lcom/android/internal/pm/parsing/PackageParser2;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mPreparingPackageParserProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Producer;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    .line 4
    .line 5
    invoke-interface {v0, v1, p0}, Lcom/android/server/pm/PackageManagerServiceInjector$Producer;->produce(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lcom/android/internal/pm/parsing/PackageParser2;

    .line 10
    .line 11
    return-object p0
.end method

.method public final getScanningCachingPackageParser()Lcom/android/internal/pm/parsing/PackageParser2;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mScanningCachingPackageParserProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Producer;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    .line 4
    .line 5
    invoke-interface {v0, v1, p0}, Lcom/android/server/pm/PackageManagerServiceInjector$Producer;->produce(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lcom/android/internal/pm/parsing/PackageParser2;

    .line 10
    .line 11
    return-object p0
.end method

.method public final getSharedLibrariesImpl()Lcom/android/server/pm/SharedLibrariesImpl;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mSharedLibrariesProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    .line 4
    .line 5
    invoke-virtual {v0, v1, p0}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lcom/android/server/pm/SharedLibrariesImpl;

    .line 10
    .line 11
    return-object p0
.end method

.method public final getSystemConfig()Lcom/android/server/SystemConfig;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mSystemConfigProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    .line 4
    .line 5
    invoke-virtual {v0, v1, p0}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lcom/android/server/SystemConfig;

    .line 10
    .line 11
    return-object p0
.end method

.method public final getSystemPartitions()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mSystemPartitions:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getUserManagerService()Lcom/android/server/pm/UserManagerService;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mUserManagerProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    .line 4
    .line 5
    invoke-virtual {v0, v1, p0}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lcom/android/server/pm/UserManagerService;

    .line 10
    .line 11
    return-object p0
.end method
