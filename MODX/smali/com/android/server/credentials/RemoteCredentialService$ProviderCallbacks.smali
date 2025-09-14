.class public interface abstract Lcom/android/server/credentials/RemoteCredentialService$ProviderCallbacks;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# virtual methods
.method public abstract onProviderCancellable(Landroid/os/ICancellationSignal;)V
.end method

.method public abstract onProviderResponseFailure(Ljava/lang/Exception;)V
.end method

.method public abstract onProviderResponseSuccess(Ljava/lang/Object;)V
.end method

.method public abstract onProviderServiceDied(Lcom/android/server/credentials/RemoteCredentialService;)V
.end method
