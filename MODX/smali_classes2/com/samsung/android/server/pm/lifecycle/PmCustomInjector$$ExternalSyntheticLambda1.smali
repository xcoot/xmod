.class public final synthetic Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Producer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final produce(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    new-instance p1, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;

    .line 12
    .line 13
    iget-object v0, p2, Lcom/android/server/pm/PackageManagerServiceInjector;->mContext:Landroid/content/Context;

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->getUserManagerHandler()Landroid/os/Handler;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerService()Lcom/android/server/pm/UserManagerService;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-direct {p1, v0, p0, p2}, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/pm/UserManagerService;)V

    .line 24
    .line 25
    .line 26
    return-object p1

    .line 27
    :pswitch_0
    new-instance v0, Lcom/samsung/android/server/pm/install/PrePackageInstaller;

    .line 28
    .line 29
    iget-object p2, p2, Lcom/android/server/pm/PackageManagerServiceInjector;->mContext:Landroid/content/Context;

    .line 30
    .line 31
    iget-object p0, p0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getPackageInstallerService()Lcom/android/server/pm/PackageInstallerService;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    iget-boolean v1, p1, Lcom/android/server/pm/PackageManagerService;->mFirstBoot:Z

    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerService;->isDeviceUpgrading()Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    invoke-direct {v0, p2, p0, v1, p1}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;-><init>(Landroid/content/Context;Lcom/android/server/pm/PackageInstallerService;ZZ)V

    .line 44
    .line 45
    .line 46
    return-object v0

    .line 47
    :pswitch_1
    new-instance v0, Lcom/samsung/android/server/pm/install/ChnPrePackageInstaller;

    .line 48
    .line 49
    iget-object p2, p2, Lcom/android/server/pm/PackageManagerServiceInjector;->mContext:Landroid/content/Context;

    .line 50
    .line 51
    iget-object p0, p0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getPackageInstallerService()Lcom/android/server/pm/PackageInstallerService;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    iget-boolean v1, p1, Lcom/android/server/pm/PackageManagerService;->mFirstBoot:Z

    .line 58
    .line 59
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerService;->isDeviceUpgrading()Z

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    invoke-direct {v0, p2, p0, v1, p1}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;-><init>(Landroid/content/Context;Lcom/android/server/pm/PackageInstallerService;ZZ)V

    .line 64
    .line 65
    .line 66
    new-instance p0, Ljava/util/HashSet;

    .line 67
    .line 68
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 69
    .line 70
    .line 71
    const/4 p0, 0x0

    .line 72
    iput-boolean p0, v0, Lcom/samsung/android/server/pm/install/ChnPrePackageInstaller;->mLoaded:Z

    .line 73
    .line 74
    new-instance p0, Ljava/util/ArrayList;

    .line 75
    .line 76
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .line 78
    .line 79
    iput-object p0, v0, Lcom/samsung/android/server/pm/install/ChnPrePackageInstaller;->mCscAddedAPKList:Ljava/util/List;

    .line 80
    .line 81
    new-instance p0, Ljava/util/ArrayList;

    .line 82
    .line 83
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 84
    .line 85
    .line 86
    iput-object p0, v0, Lcom/samsung/android/server/pm/install/ChnPrePackageInstaller;->mCscUpdateAPKList:Ljava/util/List;

    .line 87
    .line 88
    new-instance p0, Ljava/util/ArrayList;

    .line 89
    .line 90
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 91
    .line 92
    .line 93
    iput-object p0, v0, Lcom/samsung/android/server/pm/install/ChnPrePackageInstaller;->mCscInstallOnceAPKList:Ljava/util/List;

    .line 94
    .line 95
    new-instance p0, Ljava/util/ArrayList;

    .line 96
    .line 97
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 98
    .line 99
    .line 100
    iput-object p0, v0, Lcom/samsung/android/server/pm/install/ChnPrePackageInstaller;->mCscUninstallPKGList:Ljava/util/List;

    .line 101
    .line 102
    return-object v0

    .line 103
    :pswitch_2
    new-instance p1, Lcom/android/server/pm/AsecInstallHelper;

    .line 104
    .line 105
    iget-object p0, p0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mPmService:Lcom/android/server/pm/PackageManagerService;

    .line 106
    .line 107
    invoke-direct {p1, p0}, Lcom/android/server/pm/AsecInstallHelper;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    .line 108
    .line 109
    .line 110
    return-object p1

    .line 111
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
