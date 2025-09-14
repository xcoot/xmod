.class public final synthetic Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;

.field public final synthetic f$1:[B

.field public final synthetic f$2:Landroid/os/UserHandle;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;[BLandroid/os/UserHandle;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;

    .line 6
    iput-object p2, p0, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor$$ExternalSyntheticLambda0;->f$1:[B

    .line 8
    iput-object p3, p0, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor$$ExternalSyntheticLambda0;->f$2:Landroid/os/UserHandle;

    .line 10
    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;

    .line 3
    iget-object v1, p0, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor$$ExternalSyntheticLambda0;->f$1:[B

    .line 5
    iget-object p0, p0, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor$$ExternalSyntheticLambda0;->f$2:Landroid/os/UserHandle;

    .line 7
    iget-object v0, v0, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;->mPermissionControllerManager:Landroid/permission/PermissionControllerManager;

    .line 9
    invoke-virtual {v0, v1, p0}, Landroid/permission/PermissionControllerManager;->stageAndApplyRuntimePermissionsBackup([BLandroid/os/UserHandle;)V

    .line 12
    return-void
.end method
