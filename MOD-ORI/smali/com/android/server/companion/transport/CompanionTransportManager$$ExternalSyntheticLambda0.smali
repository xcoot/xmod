.class public final synthetic Lcom/android/server/companion/transport/CompanionTransportManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/companion/transport/CompanionTransportManager;

.field public final synthetic f$1:Landroid/companion/IOnTransportsChangedListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/companion/transport/CompanionTransportManager;Landroid/companion/IOnTransportsChangedListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/companion/transport/CompanionTransportManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/companion/transport/CompanionTransportManager;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/companion/transport/CompanionTransportManager$$ExternalSyntheticLambda0;->f$1:Landroid/companion/IOnTransportsChangedListener;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/companion/transport/CompanionTransportManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/companion/transport/CompanionTransportManager;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/companion/transport/CompanionTransportManager$$ExternalSyntheticLambda0;->f$1:Landroid/companion/IOnTransportsChangedListener;

    .line 4
    .line 5
    check-cast p1, Landroid/companion/IOnTransportsChangedListener;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    if-ne p1, p0, :cond_0

    .line 11
    .line 12
    :try_start_0
    invoke-virtual {v0}, Lcom/android/server/companion/transport/CompanionTransportManager;->getAssociationsWithTransport()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-interface {p0, p1}, Landroid/companion/IOnTransportsChangedListener;->onTransportsChanged(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    :catch_0
    :cond_0
    return-void
.end method
