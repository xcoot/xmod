.class public final Lcom/android/server/companion/CompanionDeviceManagerService$2;
.super Lcom/android/internal/content/PackageMonitor;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/companion/CompanionDeviceManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/companion/CompanionDeviceManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/companion/CompanionDeviceManagerService$2;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 3
    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onPackageAdded(Ljava/lang/String;I)V
    .locals 4

    .line 1
    iget-object p2, p0, Lcom/android/server/companion/CompanionDeviceManagerService$2;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 3
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    .line 6
    move-result p0

    .line 7
    iget-object p2, p2, Lcom/android/server/companion/CompanionDeviceManagerService;->mBackupRestoreProcessor:Lcom/android/server/companion/BackupRestoreProcessor;

    .line 9
    iget-object v0, p2, Lcom/android/server/companion/BackupRestoreProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 11
    iget-object v1, v0, Lcom/android/server/companion/association/AssociationStore;->mLock:Ljava/lang/Object;

    .line 13
    monitor-enter v1

    .line 14
    :try_start_0
    invoke-virtual {v0}, Lcom/android/server/companion/association/AssociationStore;->getAssociations()Ljava/util/List;

    .line 17
    move-result-object v0

    .line 18
    new-instance v2, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda7;

    .line 20
    const/4 v3, 0x0

    .line 21
    invoke-direct {v2, p0, v3, p1}, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda7;-><init>(IILjava/lang/String;)V

    .line 24
    invoke-static {v0, v2}, Lcom/android/internal/util/CollectionUtils;->filter(Ljava/util/List;Ljava/util/function/Predicate;)Ljava/util/List;

    .line 27
    move-result-object p0

    .line 28
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_0

    .line 35
    const-string v0, "CDM_BackupRestoreProcessor"

    .line 37
    const-string v1, "Found pending associations for package=["

    .line 39
    const-string v2, "]. Restoring..."

    .line 41
    invoke-static {v1, p1, v2, v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 47
    move-result-object p0

    .line 48
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    move-result p1

    .line 52
    if-eqz p1, :cond_1

    .line 54
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    move-result-object p1

    .line 58
    check-cast p1, Landroid/companion/AssociationInfo;

    .line 60
    new-instance v0, Landroid/companion/AssociationInfo$Builder;

    .line 62
    invoke-direct {v0, p1}, Landroid/companion/AssociationInfo$Builder;-><init>(Landroid/companion/AssociationInfo;)V

    .line 65
    const/4 v1, 0x0

    .line 66
    invoke-virtual {v0, v1}, Landroid/companion/AssociationInfo$Builder;->setPending(Z)Landroid/companion/AssociationInfo$Builder;

    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {v0}, Landroid/companion/AssociationInfo$Builder;->build()Landroid/companion/AssociationInfo;

    .line 73
    move-result-object v0

    .line 74
    iget-object v1, p2, Lcom/android/server/companion/BackupRestoreProcessor;->mContext:Landroid/content/Context;

    .line 76
    new-instance v2, Lcom/android/server/companion/BackupRestoreProcessor$$ExternalSyntheticLambda0;

    .line 78
    invoke-direct {v2, p2, v0, p1}, Lcom/android/server/companion/BackupRestoreProcessor$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/companion/BackupRestoreProcessor;Landroid/companion/AssociationInfo;Landroid/companion/AssociationInfo;)V

    .line 81
    invoke-static {v1, v0, v2}, Lcom/android/server/companion/utils/RolesUtils;->addRoleHolderForAssociation(Landroid/content/Context;Landroid/companion/AssociationInfo;Ljava/util/function/Consumer;)V

    .line 84
    goto :goto_0

    .line 85
    :cond_1
    return-void

    .line 86
    :catchall_0
    move-exception p0

    .line 87
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    throw p0
.end method

.method public final onPackageDataCleared(Ljava/lang/String;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/android/server/companion/CompanionDeviceManagerService$2;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 3
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    .line 6
    move-result p0

    .line 7
    invoke-static {p2, p0, p1}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$monPackageRemoveOrDataClearedInternal(Lcom/android/server/companion/CompanionDeviceManagerService;ILjava/lang/String;)V

    .line 10
    return-void
.end method

.method public final onPackageModified(Ljava/lang/String;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$2;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 3
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    .line 6
    move-result p0

    .line 7
    iget-object v1, v0, Lcom/android/server/companion/CompanionDeviceManagerService;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 9
    invoke-virtual {v1, p0, p1}, Lcom/android/server/companion/association/AssociationStore;->getAssociationsByPackage(ILjava/lang/String;)Ljava/util/List;

    .line 12
    move-result-object p1

    .line 13
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 16
    move-result-object p1

    .line 17
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 23
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Landroid/companion/AssociationInfo;

    .line 29
    invoke-virtual {v1}, Landroid/companion/AssociationInfo;->getUserId()I

    .line 32
    move-result v2

    .line 33
    invoke-virtual {v1}, Landroid/companion/AssociationInfo;->getPackageName()Ljava/lang/String;

    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 40
    move-result-object v3

    .line 41
    sget-object v4, Lcom/android/server/companion/utils/PackageUtils;->COMPANION_SERVICE_INTENT:Landroid/content/Intent;

    .line 43
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 46
    move-result-object v3

    .line 47
    const-wide/16 v4, 0x5000

    .line 49
    invoke-static {v4, v5}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    .line 52
    move-result-object v4

    .line 53
    new-instance v5, Lcom/android/server/companion/utils/PackageUtils$$ExternalSyntheticLambda1;

    .line 55
    invoke-direct {v5, v3, v1, v4, v2}, Lcom/android/server/companion/utils/PackageUtils$$ExternalSyntheticLambda1;-><init>(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;I)V

    .line 58
    invoke-static {v5}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    .line 61
    move-result-object v1

    .line 62
    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 64
    new-instance v2, Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda1;

    .line 66
    invoke-direct {v2, v0, v1}, Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/companion/CompanionDeviceManagerService;Landroid/content/pm/PackageInfo;)V

    .line 69
    invoke-static {v2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 72
    goto :goto_0

    .line 73
    :cond_0
    iget-object p1, v0, Lcom/android/server/companion/CompanionDeviceManagerService;->mCompanionAppBinder:Lcom/android/server/companion/devicepresence/CompanionAppBinder;

    .line 75
    iget-object p1, p1, Lcom/android/server/companion/devicepresence/CompanionAppBinder;->mCompanionServicesRegister:Lcom/android/server/companion/devicepresence/CompanionAppBinder$CompanionServicesRegister;

    .line 77
    monitor-enter p1

    .line 78
    :try_start_0
    invoke-virtual {p1, p0}, Lcom/android/internal/infra/PerUser;->remove(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    monitor-exit p1

    .line 82
    return-void

    .line 83
    :catchall_0
    move-exception p0

    .line 84
    monitor-exit p1

    .line 85
    throw p0
.end method

.method public final onPackageRemoved(Ljava/lang/String;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/android/server/companion/CompanionDeviceManagerService$2;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 3
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    .line 6
    move-result p0

    .line 7
    invoke-static {p2, p0, p1}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$monPackageRemoveOrDataClearedInternal(Lcom/android/server/companion/CompanionDeviceManagerService;ILjava/lang/String;)V

    .line 10
    return-void
.end method
