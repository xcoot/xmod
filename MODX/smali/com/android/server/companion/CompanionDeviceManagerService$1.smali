.class public final Lcom/android/server/companion/CompanionDeviceManagerService$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/companion/association/AssociationStore$OnChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/companion/CompanionDeviceManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/companion/CompanionDeviceManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/companion/CompanionDeviceManagerService$1;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 6
    return-void
.end method


# virtual methods
.method public final onAssociationChanged(ILandroid/companion/AssociationInfo;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string/jumbo v1, "onAssociationChanged changeType=["

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    const-string p1, "], association=["

    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    move-result-object p1

    .line 24
    const-string v0, "CDM_CompanionDeviceManagerService"

    .line 26
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    invoke-virtual {p2}, Landroid/companion/AssociationInfo;->getUserId()I

    .line 32
    move-result p1

    .line 33
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$1;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 35
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 37
    invoke-virtual {v0, p1}, Lcom/android/server/companion/association/AssociationStore;->getActiveAssociationsByUser(I)Ljava/util/List;

    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {p0, p1, v0}, Lcom/android/server/companion/CompanionDeviceManagerService;->updateAtm(ILjava/util/List;)V

    .line 44
    invoke-virtual {p2}, Landroid/companion/AssociationInfo;->getUserId()I

    .line 47
    move-result p1

    .line 48
    invoke-virtual {p2}, Landroid/companion/AssociationInfo;->getPackageName()Ljava/lang/String;

    .line 51
    move-result-object p2

    .line 52
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 55
    move-result-object v0

    .line 56
    sget-object v1, Lcom/android/server/companion/utils/PackageUtils;->COMPANION_SERVICE_INTENT:Landroid/content/Intent;

    .line 58
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 61
    move-result-object v0

    .line 62
    const-wide/16 v1, 0x5000

    .line 64
    invoke-static {v1, v2}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    .line 67
    move-result-object v1

    .line 68
    new-instance v2, Lcom/android/server/companion/utils/PackageUtils$$ExternalSyntheticLambda1;

    .line 70
    invoke-direct {v2, v0, p2, v1, p1}, Lcom/android/server/companion/utils/PackageUtils$$ExternalSyntheticLambda1;-><init>(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;I)V

    .line 73
    invoke-static {v2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    .line 76
    move-result-object p1

    .line 77
    check-cast p1, Landroid/content/pm/PackageInfo;

    .line 79
    new-instance p2, Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda1;

    .line 81
    invoke-direct {p2, p0, p1}, Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/companion/CompanionDeviceManagerService;Landroid/content/pm/PackageInfo;)V

    .line 84
    invoke-static {p2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 87
    return-void
.end method
