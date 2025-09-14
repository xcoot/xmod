.class public Lcom/android/server/credentials/RemoteCredentialService;
.super Lcom/android/internal/infra/ServiceConnector$Impl;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field private mCallback:Lcom/android/server/credentials/RemoteCredentialService$ProviderCallbacks;

.field private final mComponentName:Landroid/content/ComponentName;

.field private mOngoingRequest:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmCallback(Lcom/android/server/credentials/RemoteCredentialService;)Lcom/android/server/credentials/RemoteCredentialService$ProviderCallbacks;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/credentials/RemoteCredentialService;->mCallback:Lcom/android/server/credentials/RemoteCredentialService$ProviderCallbacks;

    .line 2
    .line 3
    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;I)V
    .locals 8

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "android.service.credentials.CredentialProviderService"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 9
    .line 10
    .line 11
    move-result-object v4

    .line 12
    new-instance v7, Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda6;

    .line 13
    .line 14
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 15
    .line 16
    .line 17
    const/4 v5, 0x0

    .line 18
    move-object v2, p0

    .line 19
    move-object v3, p1

    .line 20
    move v6, p3

    .line 21
    invoke-direct/range {v2 .. v7}, Lcom/android/internal/infra/ServiceConnector$Impl;-><init>(Landroid/content/Context;Landroid/content/Intent;IILjava/util/function/Function;)V

    .line 22
    .line 23
    .line 24
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 25
    .line 26
    const/4 p3, 0x0

    .line 27
    invoke-direct {p1, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, Lcom/android/server/credentials/RemoteCredentialService;->mOngoingRequest:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 31
    .line 32
    iput-object p2, p0, Lcom/android/server/credentials/RemoteCredentialService;->mComponentName:Landroid/content/ComponentName;

    .line 33
    .line 34
    return-void
.end method

.method public static dispatchCancellationSignal(Landroid/os/ICancellationSignal;)V
    .locals 2

    .line 1
    const-string v0, "CredentialManager"

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const-string p0, "Error dispatching a cancellation - Signal is null"

    .line 6
    .line 7
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    :try_start_0
    invoke-interface {p0}, Landroid/os/ICancellationSignal;->cancel()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catch_0
    move-exception p0

    .line 16
    const-string v1, "Error dispatching a cancellation"

    .line 17
    .line 18
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 19
    .line 20
    .line 21
    :goto_0
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/internal/infra/ServiceConnector$Impl;->binderDied()V

    .line 2
    .line 3
    .line 4
    const-string v0, "CredentialManager"

    .line 5
    .line 6
    const-string v1, "binderDied"

    .line 7
    .line 8
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/credentials/RemoteCredentialService;->mCallback:Lcom/android/server/credentials/RemoteCredentialService$ProviderCallbacks;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/server/credentials/RemoteCredentialService;->mOngoingRequest:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/android/server/credentials/RemoteCredentialService;->mCallback:Lcom/android/server/credentials/RemoteCredentialService$ProviderCallbacks;

    .line 22
    .line 23
    invoke-interface {v0, p0}, Lcom/android/server/credentials/RemoteCredentialService$ProviderCallbacks;->onProviderServiceDied(Lcom/android/server/credentials/RemoteCredentialService;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method public final getAutoDisconnectTimeoutMs()J
    .locals 2

    .line 1
    const-wide/16 v0, 0x1388

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getComponentName()Landroid/content/ComponentName;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/credentials/RemoteCredentialService;->mComponentName:Landroid/content/ComponentName;

    .line 2
    .line 3
    return-object p0
.end method

.method public final handleExecutionResponse(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 3

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/credentials/RemoteCredentialService;->mCallback:Lcom/android/server/credentials/RemoteCredentialService$ProviderCallbacks;

    .line 4
    .line 5
    if-eqz p0, :cond_7

    .line 6
    .line 7
    invoke-interface {p0, p1}, Lcom/android/server/credentials/RemoteCredentialService$ProviderCallbacks;->onProviderResponseSuccess(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    goto/16 :goto_0

    .line 11
    .line 12
    :cond_0
    instance-of p1, p2, Ljava/util/concurrent/TimeoutException;

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    const-string v1, "CredentialManager"

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    if-eqz p1, :cond_2

    .line 19
    .line 20
    new-instance p1, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string p2, "Remote provider response timed tuo for: "

    .line 23
    .line 24
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object p2, p0, Lcom/android/server/credentials/RemoteCredentialService;->mComponentName:Landroid/content/ComponentName;

    .line 28
    .line 29
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Lcom/android/server/credentials/RemoteCredentialService;->mOngoingRequest:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 40
    .line 41
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    if-nez p1, :cond_1

    .line 46
    .line 47
    return-void

    .line 48
    :cond_1
    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    check-cast p1, Landroid/os/ICancellationSignal;

    .line 53
    .line 54
    invoke-static {p1}, Lcom/android/server/credentials/RemoteCredentialService;->dispatchCancellationSignal(Landroid/os/ICancellationSignal;)V

    .line 55
    .line 56
    .line 57
    iget-object p1, p0, Lcom/android/server/credentials/RemoteCredentialService;->mCallback:Lcom/android/server/credentials/RemoteCredentialService$ProviderCallbacks;

    .line 58
    .line 59
    if-eqz p1, :cond_7

    .line 60
    .line 61
    iget-object p1, p0, Lcom/android/server/credentials/RemoteCredentialService;->mOngoingRequest:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 62
    .line 63
    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 64
    .line 65
    .line 66
    iget-object p0, p0, Lcom/android/server/credentials/RemoteCredentialService;->mCallback:Lcom/android/server/credentials/RemoteCredentialService$ProviderCallbacks;

    .line 67
    .line 68
    invoke-interface {p0, v0}, Lcom/android/server/credentials/RemoteCredentialService$ProviderCallbacks;->onProviderResponseFailure(Ljava/lang/Exception;)V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_2
    instance-of p1, p2, Ljava/util/concurrent/CancellationException;

    .line 73
    .line 74
    if-eqz p1, :cond_4

    .line 75
    .line 76
    new-instance p1, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    const-string p2, "Cancellation exception for remote provider: "

    .line 79
    .line 80
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    iget-object p2, p0, Lcom/android/server/credentials/RemoteCredentialService;->mComponentName:Landroid/content/ComponentName;

    .line 84
    .line 85
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    iget-object p1, p0, Lcom/android/server/credentials/RemoteCredentialService;->mOngoingRequest:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 96
    .line 97
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    if-nez p1, :cond_3

    .line 102
    .line 103
    return-void

    .line 104
    :cond_3
    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    check-cast p1, Landroid/os/ICancellationSignal;

    .line 109
    .line 110
    invoke-static {p1}, Lcom/android/server/credentials/RemoteCredentialService;->dispatchCancellationSignal(Landroid/os/ICancellationSignal;)V

    .line 111
    .line 112
    .line 113
    iget-object p1, p0, Lcom/android/server/credentials/RemoteCredentialService;->mCallback:Lcom/android/server/credentials/RemoteCredentialService$ProviderCallbacks;

    .line 114
    .line 115
    if-eqz p1, :cond_7

    .line 116
    .line 117
    iget-object p1, p0, Lcom/android/server/credentials/RemoteCredentialService;->mOngoingRequest:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 118
    .line 119
    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 120
    .line 121
    .line 122
    iget-object p0, p0, Lcom/android/server/credentials/RemoteCredentialService;->mCallback:Lcom/android/server/credentials/RemoteCredentialService$ProviderCallbacks;

    .line 123
    .line 124
    invoke-interface {p0, v0}, Lcom/android/server/credentials/RemoteCredentialService$ProviderCallbacks;->onProviderResponseFailure(Ljava/lang/Exception;)V

    .line 125
    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_4
    instance-of p1, p2, Landroid/credentials/GetCredentialException;

    .line 129
    .line 130
    if-eqz p1, :cond_5

    .line 131
    .line 132
    iget-object p0, p0, Lcom/android/server/credentials/RemoteCredentialService;->mCallback:Lcom/android/server/credentials/RemoteCredentialService$ProviderCallbacks;

    .line 133
    .line 134
    if-eqz p0, :cond_7

    .line 135
    .line 136
    check-cast p2, Landroid/credentials/GetCredentialException;

    .line 137
    .line 138
    invoke-interface {p0, p2}, Lcom/android/server/credentials/RemoteCredentialService$ProviderCallbacks;->onProviderResponseFailure(Ljava/lang/Exception;)V

    .line 139
    .line 140
    .line 141
    goto :goto_0

    .line 142
    :cond_5
    instance-of p1, p2, Landroid/credentials/CreateCredentialException;

    .line 143
    .line 144
    if-eqz p1, :cond_6

    .line 145
    .line 146
    iget-object p0, p0, Lcom/android/server/credentials/RemoteCredentialService;->mCallback:Lcom/android/server/credentials/RemoteCredentialService$ProviderCallbacks;

    .line 147
    .line 148
    if-eqz p0, :cond_7

    .line 149
    .line 150
    check-cast p2, Landroid/credentials/CreateCredentialException;

    .line 151
    .line 152
    invoke-interface {p0, p2}, Lcom/android/server/credentials/RemoteCredentialService$ProviderCallbacks;->onProviderResponseFailure(Ljava/lang/Exception;)V

    .line 153
    .line 154
    .line 155
    goto :goto_0

    .line 156
    :cond_6
    iget-object p0, p0, Lcom/android/server/credentials/RemoteCredentialService;->mCallback:Lcom/android/server/credentials/RemoteCredentialService$ProviderCallbacks;

    .line 157
    .line 158
    if-eqz p0, :cond_7

    .line 159
    .line 160
    check-cast p2, Ljava/lang/Exception;

    .line 161
    .line 162
    invoke-interface {p0, p2}, Lcom/android/server/credentials/RemoteCredentialService$ProviderCallbacks;->onProviderResponseFailure(Ljava/lang/Exception;)V

    .line 163
    .line 164
    .line 165
    :cond_7
    :goto_0
    return-void
.end method

.method public final onBeginCreateCredential(Landroid/service/credentials/BeginCreateCredentialRequest;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/credentials/RemoteCredentialService;->mCallback:Lcom/android/server/credentials/RemoteCredentialService$ProviderCallbacks;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string p0, "CredentialManager"

    .line 6
    .line 7
    const-string p1, "Callback is not set"

    .line 8
    .line 9
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/android/server/credentials/RemoteCredentialService;->mOngoingRequest:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 17
    .line 18
    .line 19
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 22
    .line 23
    .line 24
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 25
    .line 26
    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 27
    .line 28
    .line 29
    new-instance v2, Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda0;

    .line 30
    .line 31
    invoke-direct {v2, p0, p1, v1, v0}, Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/credentials/RemoteCredentialService;Landroid/service/credentials/BeginCreateCredentialRequest;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v2}, Lcom/android/internal/infra/ServiceConnector$Impl;->postAsync(Lcom/android/internal/infra/ServiceConnector$Job;)Lcom/android/internal/infra/AndroidFuture;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    const-wide/16 v2, 0xbb8

    .line 39
    .line 40
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 41
    .line 42
    invoke-virtual {p1, v2, v3, v4}, Lcom/android/internal/infra/AndroidFuture;->orTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/android/internal/infra/AndroidFuture;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    new-instance v1, Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda1;

    .line 50
    .line 51
    const/4 v2, 0x0

    .line 52
    invoke-direct {v1, p0, v0, v2}, Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/credentials/RemoteCredentialService;Ljava/util/concurrent/atomic/AtomicReference;I)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, v1}, Ljava/util/concurrent/CompletableFuture;->whenComplete(Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public final onBeginGetCredential(Landroid/service/credentials/BeginGetCredentialRequest;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/credentials/RemoteCredentialService;->mCallback:Lcom/android/server/credentials/RemoteCredentialService$ProviderCallbacks;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string p0, "CredentialManager"

    .line 6
    .line 7
    const-string p1, "Callback is not set"

    .line 8
    .line 9
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/android/server/credentials/RemoteCredentialService;->mOngoingRequest:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 17
    .line 18
    .line 19
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 22
    .line 23
    .line 24
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 25
    .line 26
    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 27
    .line 28
    .line 29
    new-instance v2, Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda0;

    .line 30
    .line 31
    invoke-direct {v2, p0, p1, v1, v0}, Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/credentials/RemoteCredentialService;Landroid/service/credentials/BeginGetCredentialRequest;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v2}, Lcom/android/internal/infra/ServiceConnector$Impl;->postAsync(Lcom/android/internal/infra/ServiceConnector$Job;)Lcom/android/internal/infra/AndroidFuture;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    const-wide/16 v2, 0xbb8

    .line 39
    .line 40
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 41
    .line 42
    invoke-virtual {p1, v2, v3, v4}, Lcom/android/internal/infra/AndroidFuture;->orTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/android/internal/infra/AndroidFuture;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    new-instance v1, Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda1;

    .line 50
    .line 51
    const/4 v2, 0x1

    .line 52
    invoke-direct {v1, p0, v0, v2}, Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/credentials/RemoteCredentialService;Ljava/util/concurrent/atomic/AtomicReference;I)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, v1}, Ljava/util/concurrent/CompletableFuture;->whenComplete(Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public final onBindingDied(Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/internal/infra/ServiceConnector$Impl;->onBindingDied(Landroid/content/ComponentName;)V

    .line 2
    .line 3
    .line 4
    new-instance p0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    const-string/jumbo v0, "binding died for: "

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    const-string p1, "CredentialManager"

    .line 20
    .line 21
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final onClearCredentialState(Landroid/service/credentials/ClearCredentialStateRequest;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/credentials/RemoteCredentialService;->mCallback:Lcom/android/server/credentials/RemoteCredentialService$ProviderCallbacks;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string p0, "CredentialManager"

    .line 6
    .line 7
    const-string p1, "Callback is not set"

    .line 8
    .line 9
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/android/server/credentials/RemoteCredentialService;->mOngoingRequest:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 17
    .line 18
    .line 19
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 22
    .line 23
    .line 24
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 25
    .line 26
    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 27
    .line 28
    .line 29
    new-instance v2, Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda0;

    .line 30
    .line 31
    invoke-direct {v2, p0, p1, v1, v0}, Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/credentials/RemoteCredentialService;Landroid/service/credentials/ClearCredentialStateRequest;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v2}, Lcom/android/internal/infra/ServiceConnector$Impl;->postAsync(Lcom/android/internal/infra/ServiceConnector$Job;)Lcom/android/internal/infra/AndroidFuture;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    const-wide/16 v2, 0xbb8

    .line 39
    .line 40
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 41
    .line 42
    invoke-virtual {p1, v2, v3, v4}, Lcom/android/internal/infra/AndroidFuture;->orTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/android/internal/infra/AndroidFuture;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    new-instance v1, Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda1;

    .line 50
    .line 51
    const/4 v2, 0x2

    .line 52
    invoke-direct {v1, p0, v0, v2}, Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/credentials/RemoteCredentialService;Ljava/util/concurrent/atomic/AtomicReference;I)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, v1}, Ljava/util/concurrent/CompletableFuture;->whenComplete(Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public final setCallback(Lcom/android/server/credentials/ProviderSession;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/credentials/RemoteCredentialService;->mCallback:Lcom/android/server/credentials/RemoteCredentialService$ProviderCallbacks;

    .line 2
    .line 3
    return-void
.end method
