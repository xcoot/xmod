.class public final synthetic Lcom/android/server/credentials/RequestSession$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/android/server/credentials/ProviderSession;

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    :try_start_0
    iget-object p0, p1, Lcom/android/server/credentials/ProviderSession;->mProviderCancellationSignal:Landroid/os/ICancellationSignal;

    .line 8
    if-eqz p0, :cond_0

    .line 10
    invoke-interface {p0}, Landroid/os/ICancellationSignal;->cancel()V

    .line 13
    goto :goto_0

    .line 14
    :catch_0
    move-exception p0

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    :goto_0
    sget-object p0, Lcom/android/server/credentials/ProviderSession$Status;->CANCELED:Lcom/android/server/credentials/ProviderSession$Status;

    .line 18
    iput-object p0, p1, Lcom/android/server/credentials/ProviderSession;->mStatus:Lcom/android/server/credentials/ProviderSession$Status;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    goto :goto_2

    .line 21
    :goto_1
    const-string p1, "CredentialManager"

    .line 23
    const-string v0, "Issue while cancelling provider session: "

    .line 25
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 28
    :goto_2
    return-void
.end method
