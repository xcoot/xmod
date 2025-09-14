.class public final synthetic Lcom/android/server/companion/transport/CompanionTransportManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/companion/transport/CompanionTransportManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/companion/transport/CompanionTransportManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/companion/transport/CompanionTransportManager$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/companion/transport/CompanionTransportManager;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/companion/transport/CompanionTransportManager$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/companion/transport/CompanionTransportManager;

    .line 2
    .line 3
    check-cast p1, Landroid/companion/IOnTransportsChangedListener;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/companion/transport/CompanionTransportManager;->getAssociationsWithTransport()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-interface {p1, p0}, Landroid/companion/IOnTransportsChangedListener;->onTransportsChanged(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    :catch_0
    return-void
.end method
