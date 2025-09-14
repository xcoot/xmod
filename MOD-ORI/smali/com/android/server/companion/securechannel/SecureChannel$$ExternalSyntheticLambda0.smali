.class public final synthetic Lcom/android/server/companion/securechannel/SecureChannel$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/companion/securechannel/SecureChannel;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/companion/securechannel/SecureChannel;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/companion/securechannel/SecureChannel$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/companion/securechannel/SecureChannel;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    const-string v0, "CDM_CompanionTransport"

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/companion/securechannel/SecureChannel$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/companion/securechannel/SecureChannel;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/companion/securechannel/SecureChannel;->exchangeHandshake()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/android/server/companion/securechannel/SecureChannel;->exchangeAuthentication()V

    .line 12
    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    iput-boolean v1, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mInProgress:Z

    .line 16
    .line 17
    iget-object v1, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mCallback:Lcom/android/server/companion/securechannel/SecureChannel$Callback;

    .line 18
    .line 19
    check-cast v1, Lcom/android/server/companion/transport/SecureTransport;

    .line 20
    .line 21
    const/4 v2, 0x1

    .line 22
    iput-boolean v2, v1, Lcom/android/server/companion/transport/SecureTransport;->mShouldProcessRequests:Z

    .line 23
    .line 24
    const-string v2, "Secure connection established."

    .line 25
    .line 26
    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    new-instance v2, Ljava/lang/Thread;

    .line 30
    .line 31
    new-instance v3, Lcom/android/server/companion/transport/SecureTransport$$ExternalSyntheticLambda0;

    .line 32
    .line 33
    invoke-direct {v3, v1}, Lcom/android/server/companion/transport/SecureTransport$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/companion/transport/SecureTransport;)V

    .line 34
    .line 35
    .line 36
    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 40
    .line 41
    .line 42
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mStopped:Z

    .line 43
    .line 44
    if-nez v1, :cond_1

    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/android/server/companion/securechannel/SecureChannel;->receiveSecureMessage()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :catch_0
    move-exception v1

    .line 51
    iget-boolean v2, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mStopped:Z

    .line 52
    .line 53
    if-eqz v2, :cond_0

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_0
    const-string v2, "CDM_SecureChannel"

    .line 57
    .line 58
    const-string v3, "Secure channel encountered an error."

    .line 59
    .line 60
    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Lcom/android/server/companion/securechannel/SecureChannel;->close()V

    .line 64
    .line 65
    .line 66
    iget-object p0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mCallback:Lcom/android/server/companion/securechannel/SecureChannel$Callback;

    .line 67
    .line 68
    check-cast p0, Lcom/android/server/companion/transport/SecureTransport;

    .line 69
    .line 70
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    const-string v2, "Secure transport encountered an error."

    .line 74
    .line 75
    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 76
    .line 77
    .line 78
    iget-object v0, p0, Lcom/android/server/companion/transport/SecureTransport;->mSecureChannel:Lcom/android/server/companion/securechannel/SecureChannel;

    .line 79
    .line 80
    iget-boolean v0, v0, Lcom/android/server/companion/securechannel/SecureChannel;->mStopped:Z

    .line 81
    .line 82
    if-eqz v0, :cond_1

    .line 83
    .line 84
    invoke-virtual {p0}, Lcom/android/server/companion/transport/SecureTransport;->close()V

    .line 85
    .line 86
    .line 87
    :cond_1
    :goto_1
    return-void
.end method
