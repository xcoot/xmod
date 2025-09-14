.class public final Lcom/android/server/autofill/RemoteFillService$IFillCallbackDelegate;
.super Landroid/service/autofill/IFillCallback$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mCallbackWeakRef:Ljava/lang/ref/WeakReference;


# virtual methods
.method public final onCancellable(Landroid/os/ICancellationSignal;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/autofill/RemoteFillService$IFillCallbackDelegate;->mCallbackWeakRef:Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/service/autofill/IFillCallback;

    .line 9
    if-eqz p0, :cond_0

    .line 11
    invoke-interface {p0, p1}, Landroid/service/autofill/IFillCallback;->onCancellable(Landroid/os/ICancellationSignal;)V

    .line 14
    :cond_0
    return-void
.end method

.method public final onFailure(ILjava/lang/CharSequence;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/autofill/RemoteFillService$IFillCallbackDelegate;->mCallbackWeakRef:Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/service/autofill/IFillCallback;

    .line 9
    if-eqz p0, :cond_0

    .line 11
    invoke-interface {p0, p1, p2}, Landroid/service/autofill/IFillCallback;->onFailure(ILjava/lang/CharSequence;)V

    .line 14
    :cond_0
    return-void
.end method

.method public final onSuccess(Landroid/service/autofill/FillResponse;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/autofill/RemoteFillService$IFillCallbackDelegate;->mCallbackWeakRef:Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/service/autofill/IFillCallback;

    .line 9
    if-eqz p0, :cond_0

    .line 11
    invoke-interface {p0, p1}, Landroid/service/autofill/IFillCallback;->onSuccess(Landroid/service/autofill/FillResponse;)V

    .line 14
    :cond_0
    return-void
.end method
