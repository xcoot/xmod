.class public final synthetic Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;ILjava/util/ArrayList;I)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;

    .line 4
    .line 5
    iput p2, p0, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore$$ExternalSyntheticLambda1;->f$1:I

    .line 6
    .line 7
    iput-object p3, p0, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore$$ExternalSyntheticLambda1;->f$2:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;

    .line 7
    .line 8
    iget v1, p0, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore$$ExternalSyntheticLambda1;->f$1:I

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore$$ExternalSyntheticLambda1;->f$2:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v0, v1, p0}, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;->writeRequestsToStore(ILjava/util/List;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;

    .line 17
    .line 18
    iget v1, p0, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore$$ExternalSyntheticLambda1;->f$1:I

    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore$$ExternalSyntheticLambda1;->f$2:Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {v0, v1, p0}, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;->writeRequestsToStore(ILjava/util/List;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    nop

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
