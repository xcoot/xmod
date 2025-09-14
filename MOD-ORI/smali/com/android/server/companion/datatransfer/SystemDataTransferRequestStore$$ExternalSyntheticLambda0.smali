.class public final synthetic Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Landroid/companion/datatransfer/SystemDataTransferRequest;


# direct methods
.method public synthetic constructor <init>(Landroid/companion/datatransfer/SystemDataTransferRequest;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore$$ExternalSyntheticLambda0;->f$0:Landroid/companion/datatransfer/SystemDataTransferRequest;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore$$ExternalSyntheticLambda0;->f$0:Landroid/companion/datatransfer/SystemDataTransferRequest;

    .line 2
    .line 3
    check-cast p1, Landroid/companion/datatransfer/SystemDataTransferRequest;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/companion/datatransfer/SystemDataTransferRequest;->getAssociationId()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    invoke-virtual {p0}, Landroid/companion/datatransfer/SystemDataTransferRequest;->getAssociationId()I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-ne p1, p0, :cond_0

    .line 14
    .line 15
    const/4 p0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    :goto_0
    return p0
.end method
