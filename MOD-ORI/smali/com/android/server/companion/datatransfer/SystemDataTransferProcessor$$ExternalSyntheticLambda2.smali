.class public final synthetic Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:Landroid/companion/ISystemDataTransferCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;IILandroid/companion/ISystemDataTransferCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor$$ExternalSyntheticLambda2;->f$1:I

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor$$ExternalSyntheticLambda2;->f$2:I

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor$$ExternalSyntheticLambda2;->f$3:Landroid/companion/ISystemDataTransferCallback;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor$$ExternalSyntheticLambda2;->f$1:I

    .line 4
    .line 5
    iget v2, p0, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor$$ExternalSyntheticLambda2;->f$2:I

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor$$ExternalSyntheticLambda2;->f$3:Landroid/companion/ISystemDataTransferCallback;

    .line 8
    .line 9
    iget-object v3, v0, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;->mPermissionControllerManager:Landroid/permission/PermissionControllerManager;

    .line 10
    .line 11
    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iget-object v4, v0, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 16
    .line 17
    new-instance v5, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor$$ExternalSyntheticLambda3;

    .line 18
    .line 19
    invoke-direct {v5, v0, v2, p0}, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;ILandroid/companion/ISystemDataTransferCallback;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3, v1, v4, v5}, Landroid/permission/PermissionControllerManager;->getRuntimePermissionBackup(Landroid/os/UserHandle;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method
