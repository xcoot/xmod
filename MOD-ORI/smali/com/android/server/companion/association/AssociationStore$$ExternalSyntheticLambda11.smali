.class public final synthetic Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(ILjava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda11;->f$0:I

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda11;->f$1:Ljava/util/List;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda11;->f$0:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda11;->f$1:Ljava/util/List;

    .line 4
    .line 5
    check-cast p1, Landroid/companion/IOnAssociationsChangedListener;

    .line 6
    .line 7
    check-cast p2, Ljava/lang/Integer;

    .line 8
    .line 9
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    if-eq p2, v0, :cond_0

    .line 14
    .line 15
    const/4 v0, -0x1

    .line 16
    if-ne p2, v0, :cond_1

    .line 17
    .line 18
    :cond_0
    :try_start_0
    invoke-interface {p1, p0}, Landroid/companion/IOnAssociationsChangedListener;->onAssociationsChanged(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    .line 21
    :catch_0
    :cond_1
    return-void
.end method
