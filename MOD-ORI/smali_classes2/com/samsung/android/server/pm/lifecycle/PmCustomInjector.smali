.class public final Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAppCategoryFilterProducer:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

.field public final mAsecInstallHelperProducer:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

.field public final mChinaGmsToggleUtilsProducer:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

.field public final mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

.field public final mMaintenanceModeManagerProducer:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

.field public final mMultiUserInstallPolicyProducer:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

.field public final mOmcInstallHelperProducer:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

.field public final mPackageManagerBackupControllerProducer:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

.field public final mPmService:Lcom/android/server/pm/PackageManagerService;

.field public final mPrePackageInstaller:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

.field public final mSkippingApksProducer:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

.field public final mUnknownSourceAppManagerProducer:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

.field public final mUserManagerHandlerProducer:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 3
    iput-object v0, p0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mPmService:Lcom/android/server/pm/PackageManagerService;

    .line 4
    iput-object v0, p0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mSkippingApksProducer:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

    .line 5
    iput-object v0, p0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mMultiUserInstallPolicyProducer:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

    .line 6
    iput-object v0, p0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mOmcInstallHelperProducer:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

    .line 7
    iput-object v0, p0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mChinaGmsToggleUtilsProducer:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

    .line 8
    iput-object v0, p0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mPackageManagerBackupControllerProducer:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

    .line 9
    iput-object v0, p0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mPrePackageInstaller:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

    .line 10
    iput-object v0, p0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mUnknownSourceAppManagerProducer:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

    .line 11
    iput-object v0, p0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mUserManagerHandlerProducer:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

    .line 12
    iput-object v0, p0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mMaintenanceModeManagerProducer:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

    .line 13
    iput-object v0, p0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mAppCategoryFilterProducer:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

    .line 14
    iput-object v0, p0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mAsecInstallHelperProducer:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda8;Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda40;)V
    .locals 6

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p2, p0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mPmService:Lcom/android/server/pm/PackageManagerService;

    .line 17
    iput-object p1, p0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 18
    new-instance p1, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

    new-instance p2, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$$ExternalSyntheticLambda0;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-direct {p1, p2}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;-><init>(Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Producer;)V

    iput-object p1, p0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mSkippingApksProducer:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

    .line 19
    new-instance p1, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

    invoke-direct {p1, p3}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;-><init>(Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Producer;)V

    iput-object p1, p0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mMultiUserInstallPolicyProducer:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

    .line 20
    new-instance p1, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

    new-instance p2, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$$ExternalSyntheticLambda0;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-direct {p1, p2}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;-><init>(Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Producer;)V

    iput-object p1, p0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mOmcInstallHelperProducer:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

    .line 21
    new-instance p1, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

    new-instance p2, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$$ExternalSyntheticLambda0;

    const/4 p3, 0x2

    invoke-direct {p2, p3}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-direct {p1, p2}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;-><init>(Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Producer;)V

    iput-object p1, p0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mChinaGmsToggleUtilsProducer:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

    .line 22
    new-instance p1, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

    new-instance p2, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$$ExternalSyntheticLambda0;

    const/4 p3, 0x3

    invoke-direct {p2, p3}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-direct {p1, p2}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;-><init>(Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Producer;)V

    iput-object p1, p0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mPackageManagerBackupControllerProducer:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

    .line 23
    new-instance p1, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

    invoke-direct {p1, p4}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;-><init>(Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Producer;)V

    iput-object p1, p0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mUnknownSourceAppManagerProducer:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

    .line 24
    const-string v4, "CTC"

    const-string v5, "CHC"

    const-string v0, "CHZ"

    const-string v1, "CHN"

    const-string v2, "CHM"

    const-string v3, "CHU"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 25
    const-string/jumbo p2, "ro.csc.sales_code"

    invoke-static {p2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 26
    new-instance p1, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

    new-instance p2, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$$ExternalSyntheticLambda1;

    const/4 p3, 0x1

    invoke-direct {p2, p0, p3}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;I)V

    invoke-direct {p1, p2}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;-><init>(Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Producer;)V

    iput-object p1, p0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mPrePackageInstaller:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

    goto :goto_0

    .line 27
    :cond_0
    new-instance p1, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

    new-instance p2, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$$ExternalSyntheticLambda1;

    const/4 p3, 0x2

    invoke-direct {p2, p0, p3}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;I)V

    invoke-direct {p1, p2}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;-><init>(Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Producer;)V

    iput-object p1, p0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mPrePackageInstaller:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

    .line 28
    :goto_0
    new-instance p1, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

    new-instance p2, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$$ExternalSyntheticLambda0;

    const/4 p3, 0x4

    invoke-direct {p2, p3}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-direct {p1, p2}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;-><init>(Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Producer;)V

    iput-object p1, p0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mUserManagerHandlerProducer:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

    .line 29
    new-instance p1, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

    new-instance p2, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$$ExternalSyntheticLambda1;

    const/4 p3, 0x3

    invoke-direct {p2, p0, p3}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;I)V

    invoke-direct {p1, p2}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;-><init>(Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Producer;)V

    iput-object p1, p0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mMaintenanceModeManagerProducer:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

    .line 30
    new-instance p1, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

    new-instance p2, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$$ExternalSyntheticLambda0;

    const/4 p3, 0x5

    invoke-direct {p2, p3}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-direct {p1, p2}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;-><init>(Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Producer;)V

    iput-object p1, p0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mAppCategoryFilterProducer:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

    .line 31
    new-instance p1, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

    new-instance p2, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$$ExternalSyntheticLambda1;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;I)V

    invoke-direct {p1, p2}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;-><init>(Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Producer;)V

    iput-object p1, p0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mAsecInstallHelperProducer:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

    return-void
.end method


# virtual methods
.method public final getAsecInstallHelper()Lcom/android/server/pm/AsecInstallHelper;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mPmService:Lcom/android/server/pm/PackageManagerService;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mAsecInstallHelperProducer:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

    .line 6
    .line 7
    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lcom/android/server/pm/AsecInstallHelper;

    .line 12
    .line 13
    return-object p0
.end method

.method public final getMaintenanceModeManager()Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mPmService:Lcom/android/server/pm/PackageManagerService;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mMaintenanceModeManagerProducer:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

    .line 6
    .line 7
    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;

    .line 12
    .line 13
    return-object p0
.end method

.method public final getUnknownSourceAppManager()Lcom/samsung/android/server/pm/install/UnknownSourceAppManager;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mPmService:Lcom/android/server/pm/PackageManagerService;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mUnknownSourceAppManagerProducer:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

    .line 6
    .line 7
    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lcom/samsung/android/server/pm/install/UnknownSourceAppManager;

    .line 12
    .line 13
    return-object p0
.end method

.method public final getUserManagerHandler()Landroid/os/Handler;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mPmService:Lcom/android/server/pm/PackageManagerService;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mUserManagerHandlerProducer:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

    .line 6
    .line 7
    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Landroid/os/Handler;

    .line 12
    .line 13
    return-object p0
.end method
