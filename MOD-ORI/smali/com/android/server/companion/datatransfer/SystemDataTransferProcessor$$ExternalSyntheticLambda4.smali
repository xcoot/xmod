.class public final synthetic Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor$$ExternalSyntheticLambda4;->f$1:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;

    .line 2
    .line 3
    iget p0, p0, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor$$ExternalSyntheticLambda4;->f$1:I

    .line 4
    .line 5
    iget-object v1, v0, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 6
    .line 7
    invoke-virtual {v1, p0}, Lcom/android/server/companion/association/AssociationStore;->getAssociationWithCallerChecks(I)Landroid/companion/AssociationInfo;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Landroid/companion/AssociationInfo;->getUserId()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    iget-object v0, v0, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;->mSystemDataTransferRequestStore:Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;

    .line 16
    .line 17
    invoke-virtual {v0, v1, p0}, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;->removeRequestsByAssociationId(II)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
