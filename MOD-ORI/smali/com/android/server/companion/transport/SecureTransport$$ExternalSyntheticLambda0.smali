.class public final synthetic Lcom/android/server/companion/transport/SecureTransport$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/companion/transport/SecureTransport;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/companion/transport/SecureTransport;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/companion/transport/SecureTransport$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/companion/transport/SecureTransport;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/companion/transport/SecureTransport$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/companion/transport/SecureTransport;

    .line 2
    .line 3
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/companion/transport/SecureTransport;->mShouldProcessRequests:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/android/server/companion/transport/SecureTransport;->mRequestQueue:Ljava/util/concurrent/BlockingQueue;

    .line 8
    .line 9
    check-cast v0, Ljava/util/concurrent/ArrayBlockingQueue;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->take()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, [B

    .line 16
    .line 17
    iget-object v1, p0, Lcom/android/server/companion/transport/SecureTransport;->mSecureChannel:Lcom/android/server/companion/securechannel/SecureChannel;

    .line 18
    .line 19
    invoke-virtual {v1, v0}, Lcom/android/server/companion/securechannel/SecureChannel;->sendSecureMessage([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception v0

    .line 24
    const-string v1, "CDM_CompanionTransport"

    .line 25
    .line 26
    const-string v2, "Failed to send secure message."

    .line 27
    .line 28
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/android/server/companion/transport/SecureTransport;->close()V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    return-void
.end method
