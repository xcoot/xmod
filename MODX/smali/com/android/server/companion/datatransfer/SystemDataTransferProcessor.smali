.class public final Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

.field public final mCompanionDeviceDataTransferActivity:Landroid/content/ComponentName;

.field public final mContext:Landroid/content/Context;

.field public final mExecutor:Ljava/util/concurrent/ExecutorService;

.field public final mOnSystemDataTransferRequestConfirmationReceiver:Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor$2;

.field public final mPackageManager:Landroid/content/pm/PackageManagerInternal;

.field public final mPermissionControllerManager:Landroid/permission/PermissionControllerManager;

.field public final mSystemDataTransferRequestStore:Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;

.field public final mTransportManager:Lcom/android/server/companion/transport/CompanionTransportManager;


# direct methods
.method public constructor <init>(Lcom/android/server/companion/CompanionDeviceManagerService;Landroid/content/pm/PackageManagerInternal;Lcom/android/server/companion/association/AssociationStore;Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;Lcom/android/server/companion/transport/CompanionTransportManager;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor$2;

    .line 6
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    .line 9
    move-result-object v1

    .line 10
    invoke-direct {v0, p0, v1}, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor$2;-><init>(Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;Landroid/os/Handler;)V

    .line 13
    iput-object v0, p0, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;->mOnSystemDataTransferRequestConfirmationReceiver:Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor$2;

    .line 15
    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 18
    move-result-object p1

    .line 19
    iput-object p1, p0, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;->mContext:Landroid/content/Context;

    .line 21
    iput-object p2, p0, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;->mPackageManager:Landroid/content/pm/PackageManagerInternal;

    .line 23
    iput-object p3, p0, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 25
    iput-object p4, p0, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;->mSystemDataTransferRequestStore:Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;

    .line 27
    iput-object p5, p0, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;->mTransportManager:Lcom/android/server/companion/transport/CompanionTransportManager;

    .line 29
    new-instance p2, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor$1;

    .line 31
    invoke-direct {p2, p0}, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor$1;-><init>(Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;)V

    .line 34
    const p3, 0x63826983

    .line 37
    invoke-virtual {p5, p3, p2}, Lcom/android/server/companion/transport/CompanionTransportManager;->addListener(ILandroid/companion/IOnMessageReceivedListener;)V

    .line 40
    const-class p2, Landroid/permission/PermissionControllerManager;

    .line 42
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 45
    move-result-object p2

    .line 46
    check-cast p2, Landroid/permission/PermissionControllerManager;

    .line 48
    iput-object p2, p0, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;->mPermissionControllerManager:Landroid/permission/PermissionControllerManager;

    .line 50
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 53
    move-result-object p2

    .line 54
    iput-object p2, p0, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 56
    const p2, 0x10402f7

    .line 59
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 62
    move-result-object p1

    .line 63
    const-string p2, ".CompanionDeviceDataTransferActivity"

    .line 65
    invoke-static {p1, p2}, Landroid/content/ComponentName;->createRelative(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;

    .line 68
    move-result-object p1

    .line 69
    iput-object p1, p0, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;->mCompanionDeviceDataTransferActivity:Landroid/content/ComponentName;

    .line 71
    return-void
.end method


# virtual methods
.method public final getPermissionSyncRequest(I)Landroid/companion/datatransfer/PermissionSyncRequest;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 3
    invoke-virtual {v0, p1}, Lcom/android/server/companion/association/AssociationStore;->getAssociationWithCallerChecks(I)Landroid/companion/AssociationInfo;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/companion/AssociationInfo;->getUserId()I

    .line 10
    move-result v0

    .line 11
    iget-object p0, p0, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;->mSystemDataTransferRequestStore:Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;

    .line 13
    invoke-virtual {p0, v0, p1}, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;->readRequestsByAssociationId(II)Ljava/util/List;

    .line 16
    move-result-object p0

    .line 17
    check-cast p0, Ljava/util/ArrayList;

    .line 19
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 22
    move-result-object p0

    .line 23
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    move-result p1

    .line 27
    if-eqz p1, :cond_1

    .line 29
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    move-result-object p1

    .line 33
    check-cast p1, Landroid/companion/datatransfer/SystemDataTransferRequest;

    .line 35
    instance-of v0, p1, Landroid/companion/datatransfer/PermissionSyncRequest;

    .line 37
    if-eqz v0, :cond_0

    .line 39
    check-cast p1, Landroid/companion/datatransfer/PermissionSyncRequest;

    .line 41
    return-object p1

    .line 42
    :cond_1
    const/4 p0, 0x0

    .line 43
    return-object p0
.end method
