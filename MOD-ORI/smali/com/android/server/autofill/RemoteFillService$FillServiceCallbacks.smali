.class public interface abstract Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/infra/AbstractRemoteService$VultureCallback;


# virtual methods
.method public abstract onFillRequestFailure(ILjava/lang/Throwable;)V
.end method

.method public abstract onFillRequestSuccess(ILandroid/service/autofill/FillResponse;I)V
.end method

.method public abstract onSaveRequestFailure(Ljava/lang/String;Ljava/lang/CharSequence;)V
.end method

.method public abstract onSaveRequestSuccess(Ljava/lang/String;Landroid/content/IntentSender;)V
.end method
