.class public final synthetic Lcom/android/server/am/PendingIntentController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/BiConsumer;


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Lcom/android/server/am/PendingIntentController;

    .line 3
    check-cast p2, Landroid/os/RemoteCallbackList;

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    invoke-virtual {p2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 11
    move-result p0

    .line 12
    const/4 p1, 0x0

    .line 13
    move v0, p1

    .line 14
    :goto_0
    if-ge v0, p0, :cond_0

    .line 16
    :try_start_0
    invoke-virtual {p2, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/android/internal/os/IResultReceiver;

    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-interface {v1, p1, v2}, Lcom/android/internal/os/IResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    :catch_0
    add-int/lit8 v0, v0, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {p2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 32
    invoke-virtual {p2}, Landroid/os/RemoteCallbackList;->kill()V

    .line 35
    return-void
.end method
