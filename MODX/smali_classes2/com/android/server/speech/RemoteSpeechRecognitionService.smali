.class final Lcom/android/server/speech/RemoteSpeechRecognitionService;
.super Lcom/android/internal/infra/ServiceConnector$Impl;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field private final mCallingUid:I

.field private final mClientListeners:Ljava/util/List;

.field private final mClients:Ljava/util/Map;

.field private final mComponentName:Landroid/content/ComponentName;

.field private mConnected:Z

.field private final mLock:Ljava/lang/Object;


# direct methods
.method public static synthetic $r8$lambda$XM077MW2pg9W0-weK1UAA4Npj6A(Lcom/android/server/speech/RemoteSpeechRecognitionService;Lcom/android/server/speech/RemoteSpeechRecognitionService$ClientState;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    const/4 v0, 0x0

    .line 5
    :try_start_0
    iput-boolean v0, p1, Lcom/android/server/speech/RemoteSpeechRecognitionService$ClientState;->mRecordingInProgress:Z

    .line 6
    .line 7
    monitor-exit p0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception p1

    .line 10
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    throw p1
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/server/speech/RemoteSpeechRecognitionService;

    .line 2
    .line 3
    return-void
.end method

.method public constructor <init>(IILandroid/content/ComponentName;Landroid/content/Context;Z)V
    .locals 8

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "android.speech.RecognitionService"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 9
    .line 10
    .line 11
    move-result-object v4

    .line 12
    if-eqz p5, :cond_0

    .line 13
    .line 14
    const p5, 0x4001001

    .line 15
    .line 16
    .line 17
    :goto_0
    move v5, p5

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    const/4 p5, 0x1

    .line 20
    goto :goto_0

    .line 21
    :goto_1
    new-instance v7, Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda8;

    .line 22
    .line 23
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 24
    .line 25
    .line 26
    move-object v2, p0

    .line 27
    move-object v3, p4

    .line 28
    move v6, p1

    .line 29
    invoke-direct/range {v2 .. v7}, Lcom/android/internal/infra/ServiceConnector$Impl;-><init>(Landroid/content/Context;Landroid/content/Intent;IILjava/util/function/Function;)V

    .line 30
    .line 31
    .line 32
    new-instance p1, Ljava/lang/Object;

    .line 33
    .line 34
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object p1, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mLock:Ljava/lang/Object;

    .line 38
    .line 39
    const/4 p1, 0x0

    .line 40
    iput-boolean p1, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mConnected:Z

    .line 41
    .line 42
    new-instance p1, Ljava/util/HashMap;

    .line 43
    .line 44
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 45
    .line 46
    .line 47
    iput-object p1, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mClients:Ljava/util/Map;

    .line 48
    .line 49
    new-instance p1, Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .line 53
    .line 54
    iput-object p1, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mClientListeners:Ljava/util/List;

    .line 55
    .line 56
    iput p2, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mCallingUid:I

    .line 57
    .line 58
    iput-object p3, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mComponentName:Landroid/content/ComponentName;

    .line 59
    .line 60
    return-void
.end method

.method public static tryRespondWithError(Landroid/speech/IRecognitionListener;I)V
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    :try_start_0
    invoke-interface {p0, p1}, Landroid/speech/IRecognitionListener;->onError(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catch_0
    move-exception p0

    .line 8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const-string v0, "Failed to respond with an error %d to the client"

    .line 17
    .line 18
    invoke-static {v0, p1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const-string v0, "RemoteSpeechRecognitionService"

    .line 23
    .line 24
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 25
    .line 26
    .line 27
    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public final associateClientWithActiveListener(Landroid/os/IBinder;Landroid/speech/IRecognitionListener;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mClients:Ljava/util/Map;

    .line 5
    .line 6
    invoke-interface {p2}, Landroid/speech/IRecognitionListener;->asBinder()Landroid/os/IBinder;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mClientListeners:Ljava/util/List;

    .line 17
    .line 18
    new-instance v1, Landroid/util/Pair;

    .line 19
    .line 20
    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    :goto_0
    monitor-exit v0

    .line 30
    return-void

    .line 31
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    throw p0
.end method

.method public final cancel(Landroid/speech/IRecognitionListener;Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mConnected:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/16 v0, 0xb

    .line 6
    .line 7
    invoke-static {p1, v0}, Lcom/android/server/speech/RemoteSpeechRecognitionService;->tryRespondWithError(Landroid/speech/IRecognitionListener;I)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mLock:Ljava/lang/Object;

    .line 11
    .line 12
    monitor-enter v0

    .line 13
    :try_start_0
    iget-object v1, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mClients:Ljava/util/Map;

    .line 14
    .line 15
    invoke-interface {p1}, Landroid/speech/IRecognitionListener;->asBinder()Landroid/os/IBinder;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Lcom/android/server/speech/RemoteSpeechRecognitionService$ClientState;

    .line 24
    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    iput-boolean v2, v1, Lcom/android/server/speech/RemoteSpeechRecognitionService$ClientState;->mRecordingInProgress:Z

    .line 29
    .line 30
    iget-object v1, v1, Lcom/android/server/speech/RemoteSpeechRecognitionService$ClientState;->mDelegatingListener:Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;

    .line 31
    .line 32
    new-instance v2, Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda1;

    .line 33
    .line 34
    invoke-direct {v2, v1, p2}, Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda1;-><init>(Landroid/speech/IRecognitionListener;Z)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v2}, Lcom/android/internal/infra/ServiceConnector$Impl;->run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    .line 44
    .line 45
    invoke-virtual {p0, p1}, Lcom/android/server/speech/RemoteSpeechRecognitionService;->removeClient(Landroid/speech/IRecognitionListener;)V

    .line 46
    .line 47
    .line 48
    iget-object p1, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mClients:Ljava/util/Map;

    .line 49
    .line 50
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    if-eqz p1, :cond_2

    .line 55
    .line 56
    new-instance p1, Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda2;

    .line 57
    .line 58
    const/4 p2, 0x0

    .line 59
    invoke-direct {p1, p2, p0}, Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, p1}, Lcom/android/internal/infra/ServiceConnector$Impl;->run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z

    .line 63
    .line 64
    .line 65
    :cond_2
    monitor-exit v0

    .line 66
    return-void

    .line 67
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    throw p0
.end method

.method public final checkRecognitionSupport(Landroid/content/Intent;Landroid/content/AttributionSource;Landroid/speech/IRecognitionSupportCallback;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mConnected:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/16 p0, 0xb

    .line 6
    .line 7
    :try_start_0
    invoke-interface {p3, p0}, Landroid/speech/IRecognitionSupportCallback;->onError(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :catch_0
    move-exception p0

    .line 12
    const-string p1, "RemoteSpeechRecognitionService"

    .line 13
    .line 14
    const-string p2, "Failed to report the connection broke to the caller."

    .line 15
    .line 16
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 20
    .line 21
    .line 22
    :goto_0
    return-void

    .line 23
    :cond_0
    new-instance v0, Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda0;

    .line 24
    .line 25
    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda0;-><init>(Landroid/content/Intent;Landroid/content/AttributionSource;Landroid/speech/IRecognitionSupportCallback;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v0}, Lcom/android/internal/infra/ServiceConnector$Impl;->run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final getAutoDisconnectTimeoutMs()J
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getServiceComponentName()Landroid/content/ComponentName;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mComponentName:Landroid/content/ComponentName;

    .line 2
    .line 3
    return-object p0
.end method

.method public final hasActiveSessions()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mClients:Ljava/util/Map;

    .line 5
    .line 6
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    xor-int/lit8 p0, p0, 0x1

    .line 11
    .line 12
    monitor-exit v0

    .line 13
    return p0

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    throw p0
.end method

.method public final onServiceConnectionStatusChanged(Landroid/os/IInterface;Z)V
    .locals 5

    .line 1
    check-cast p1, Landroid/speech/IRecognitionService;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mConnected:Z

    .line 4
    .line 5
    iget-object p1, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter p1

    .line 8
    if-nez p2, :cond_1

    .line 9
    .line 10
    :try_start_0
    iget-object p2, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mClients:Ljava/util/Map;

    .line 11
    .line 12
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    if-eqz p2, :cond_0

    .line 17
    .line 18
    const-string p0, "RemoteSpeechRecognitionService"

    .line 19
    .line 20
    const-string p2, "Connection to speech recognition service lost, but no #startListening has been invoked yet."

    .line 21
    .line 22
    invoke-static {p0, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    monitor-exit p1

    .line 26
    goto :goto_1

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    goto :goto_2

    .line 29
    :cond_0
    iget-object p2, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mClients:Ljava/util/Map;

    .line 30
    .line 31
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    const/4 v0, 0x0

    .line 36
    new-array v1, v0, [Lcom/android/server/speech/RemoteSpeechRecognitionService$ClientState;

    .line 37
    .line 38
    invoke-interface {p2, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    check-cast p2, [Lcom/android/server/speech/RemoteSpeechRecognitionService$ClientState;

    .line 43
    .line 44
    array-length v1, p2

    .line 45
    :goto_0
    if-ge v0, v1, :cond_1

    .line 46
    .line 47
    aget-object v2, p2, v0

    .line 48
    .line 49
    iget-object v3, v2, Lcom/android/server/speech/RemoteSpeechRecognitionService$ClientState;->mDelegatingListener:Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;

    .line 50
    .line 51
    iget-object v3, v3, Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;->mRemoteListener:Landroid/speech/IRecognitionListener;

    .line 52
    .line 53
    const/16 v4, 0xb

    .line 54
    .line 55
    invoke-static {v3, v4}, Lcom/android/server/speech/RemoteSpeechRecognitionService;->tryRespondWithError(Landroid/speech/IRecognitionListener;I)V

    .line 56
    .line 57
    .line 58
    iget-object v2, v2, Lcom/android/server/speech/RemoteSpeechRecognitionService$ClientState;->mDelegatingListener:Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;

    .line 59
    .line 60
    iget-object v2, v2, Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;->mRemoteListener:Landroid/speech/IRecognitionListener;

    .line 61
    .line 62
    invoke-virtual {p0, v2}, Lcom/android/server/speech/RemoteSpeechRecognitionService;->removeClient(Landroid/speech/IRecognitionListener;)V

    .line 63
    .line 64
    .line 65
    add-int/lit8 v0, v0, 0x1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_1
    monitor-exit p1

    .line 69
    :goto_1
    return-void

    .line 70
    :goto_2
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    throw p0
.end method

.method public final removeClient(Landroid/speech/IRecognitionListener;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mClients:Ljava/util/Map;

    .line 5
    .line 6
    invoke-interface {p1}, Landroid/speech/IRecognitionListener;->asBinder()Landroid/os/IBinder;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Lcom/android/server/speech/RemoteSpeechRecognitionService$ClientState;

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    iput-object v2, v1, Lcom/android/server/speech/RemoteSpeechRecognitionService$ClientState;->mDelegatingListener:Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    iput-boolean v2, v1, Lcom/android/server/speech/RemoteSpeechRecognitionService$ClientState;->mRecordingInProgress:Z

    .line 23
    .line 24
    :cond_0
    iget-object p0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mClientListeners:Ljava/util/List;

    .line 25
    .line 26
    new-instance v1, Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda9;

    .line 27
    .line 28
    invoke-direct {v1, p1}, Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda9;-><init>(Landroid/speech/IRecognitionListener;)V

    .line 29
    .line 30
    .line 31
    invoke-interface {p0, v1}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 32
    .line 33
    .line 34
    monitor-exit v0

    .line 35
    return-void

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    throw p0
.end method

.method public final shutdown(Landroid/os/IBinder;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mClientListeners:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_1

    .line 15
    .line 16
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Landroid/util/Pair;

    .line 21
    .line 22
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 23
    .line 24
    if-ne v3, p1, :cond_0

    .line 25
    .line 26
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v2, Landroid/speech/IRecognitionListener;

    .line 29
    .line 30
    const/4 v3, 0x1

    .line 31
    invoke-virtual {p0, v2, v3}, Lcom/android/server/speech/RemoteSpeechRecognitionService;->cancel(Landroid/speech/IRecognitionListener;Z)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    monitor-exit v0

    .line 38
    return-void

    .line 39
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    throw p0
.end method

.method public final startListening(Landroid/content/Intent;Landroid/speech/IRecognitionListener;Landroid/content/AttributionSource;)V
    .locals 6

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    const-string p0, "RemoteSpeechRecognitionService"

    .line 4
    .line 5
    const-string p1, "#startListening called with no preceding #setListening - ignoring."

    .line 6
    .line 7
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mConnected:Z

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    const/16 p0, 0xb

    .line 16
    .line 17
    invoke-static {p2, p0}, Lcom/android/server/speech/RemoteSpeechRecognitionService;->tryRespondWithError(Landroid/speech/IRecognitionListener;I)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    iget-object v0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mLock:Ljava/lang/Object;

    .line 22
    .line 23
    monitor-enter v0

    .line 24
    :try_start_0
    iget-object v1, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mClients:Ljava/util/Map;

    .line 25
    .line 26
    invoke-interface {p2}, Landroid/speech/IRecognitionListener;->asBinder()Landroid/os/IBinder;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Lcom/android/server/speech/RemoteSpeechRecognitionService$ClientState;

    .line 35
    .line 36
    const/4 v2, 0x1

    .line 37
    if-nez v1, :cond_3

    .line 38
    .line 39
    iget-object v1, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mClients:Ljava/util/Map;

    .line 40
    .line 41
    invoke-interface {v1}, Ljava/util/Map;->size()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    const/16 v3, 0x64

    .line 46
    .line 47
    if-lt v1, v3, :cond_2

    .line 48
    .line 49
    const/16 p0, 0x8

    .line 50
    .line 51
    invoke-static {p2, p0}, Lcom/android/server/speech/RemoteSpeechRecognitionService;->tryRespondWithError(Landroid/speech/IRecognitionListener;I)V

    .line 52
    .line 53
    .line 54
    const-string p0, "RemoteSpeechRecognitionService"

    .line 55
    .line 56
    const-string p1, "#startListening received when the recognizer\'s capacity is full - ignoring this call."

    .line 57
    .line 58
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    monitor-exit v0

    .line 62
    return-void

    .line 63
    :catchall_0
    move-exception p0

    .line 64
    goto :goto_1

    .line 65
    :cond_2
    new-instance v1, Lcom/android/server/speech/RemoteSpeechRecognitionService$ClientState;

    .line 66
    .line 67
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 68
    .line 69
    .line 70
    const/4 v3, 0x0

    .line 71
    iput-object v3, v1, Lcom/android/server/speech/RemoteSpeechRecognitionService$ClientState;->mDelegatingListener:Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;

    .line 72
    .line 73
    iput-boolean v2, v1, Lcom/android/server/speech/RemoteSpeechRecognitionService$ClientState;->mRecordingInProgress:Z

    .line 74
    .line 75
    new-instance v2, Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;

    .line 76
    .line 77
    new-instance v3, Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda3;

    .line 78
    .line 79
    const/4 v4, 0x0

    .line 80
    invoke-direct {v3, p0, v1, v4}, Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/speech/RemoteSpeechRecognitionService;Ljava/lang/Object;I)V

    .line 81
    .line 82
    .line 83
    new-instance v4, Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda3;

    .line 84
    .line 85
    const/4 v5, 0x1

    .line 86
    invoke-direct {v4, p0, p2, v5}, Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/speech/RemoteSpeechRecognitionService;Ljava/lang/Object;I)V

    .line 87
    .line 88
    .line 89
    invoke-direct {v2, p2, v3, v4}, Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;-><init>(Landroid/speech/IRecognitionListener;Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda3;Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda3;)V

    .line 90
    .line 91
    .line 92
    iput-object v2, v1, Lcom/android/server/speech/RemoteSpeechRecognitionService$ClientState;->mDelegatingListener:Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;

    .line 93
    .line 94
    iget-object v2, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mClients:Ljava/util/Map;

    .line 95
    .line 96
    invoke-interface {p2}, Landroid/speech/IRecognitionListener;->asBinder()Landroid/os/IBinder;

    .line 97
    .line 98
    .line 99
    move-result-object p2

    .line 100
    invoke-interface {v2, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_3
    iget-boolean v3, v1, Lcom/android/server/speech/RemoteSpeechRecognitionService$ClientState;->mRecordingInProgress:Z

    .line 105
    .line 106
    if-eqz v3, :cond_4

    .line 107
    .line 108
    const-string p0, "RemoteSpeechRecognitionService"

    .line 109
    .line 110
    const-string p1, "#startListening called while listening is in progress for this caller."

    .line 111
    .line 112
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    .line 114
    .line 115
    const/4 p0, 0x5

    .line 116
    invoke-static {p2, p0}, Lcom/android/server/speech/RemoteSpeechRecognitionService;->tryRespondWithError(Landroid/speech/IRecognitionListener;I)V

    .line 117
    .line 118
    .line 119
    monitor-exit v0

    .line 120
    return-void

    .line 121
    :cond_4
    iput-boolean v2, v1, Lcom/android/server/speech/RemoteSpeechRecognitionService$ClientState;->mRecordingInProgress:Z

    .line 122
    .line 123
    :goto_0
    iget-object p2, v1, Lcom/android/server/speech/RemoteSpeechRecognitionService$ClientState;->mDelegatingListener:Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;

    .line 124
    .line 125
    new-instance v1, Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda0;

    .line 126
    .line 127
    invoke-direct {v1, p1, p2, p3}, Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda0;-><init>(Landroid/content/Intent;Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;Landroid/content/AttributionSource;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p0, v1}, Lcom/android/internal/infra/ServiceConnector$Impl;->run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z

    .line 131
    .line 132
    .line 133
    monitor-exit v0

    .line 134
    return-void

    .line 135
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    throw p0
.end method

.method public final stopListening(Landroid/speech/IRecognitionListener;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mConnected:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/16 p0, 0xb

    .line 6
    .line 7
    invoke-static {p1, p0}, Lcom/android/server/speech/RemoteSpeechRecognitionService;->tryRespondWithError(Landroid/speech/IRecognitionListener;I)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mLock:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter v0

    .line 14
    :try_start_0
    iget-object v1, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mClients:Ljava/util/Map;

    .line 15
    .line 16
    invoke-interface {p1}, Landroid/speech/IRecognitionListener;->asBinder()Landroid/os/IBinder;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lcom/android/server/speech/RemoteSpeechRecognitionService$ClientState;

    .line 25
    .line 26
    const/4 v2, 0x5

    .line 27
    if-nez v1, :cond_1

    .line 28
    .line 29
    const-string p0, "RemoteSpeechRecognitionService"

    .line 30
    .line 31
    const-string v1, "#stopListening called with no preceding #startListening - ignoring."

    .line 32
    .line 33
    invoke-static {p0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    invoke-static {p1, v2}, Lcom/android/server/speech/RemoteSpeechRecognitionService;->tryRespondWithError(Landroid/speech/IRecognitionListener;I)V

    .line 37
    .line 38
    .line 39
    monitor-exit v0

    .line 40
    return-void

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    iget-boolean v3, v1, Lcom/android/server/speech/RemoteSpeechRecognitionService$ClientState;->mRecordingInProgress:Z

    .line 44
    .line 45
    if-nez v3, :cond_2

    .line 46
    .line 47
    invoke-static {p1, v2}, Lcom/android/server/speech/RemoteSpeechRecognitionService;->tryRespondWithError(Landroid/speech/IRecognitionListener;I)V

    .line 48
    .line 49
    .line 50
    const-string p0, "RemoteSpeechRecognitionService"

    .line 51
    .line 52
    const-string p1, "#stopListening called while listening isn\'t in progress - ignoring."

    .line 53
    .line 54
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    monitor-exit v0

    .line 58
    return-void

    .line 59
    :cond_2
    const/4 p1, 0x0

    .line 60
    iput-boolean p1, v1, Lcom/android/server/speech/RemoteSpeechRecognitionService$ClientState;->mRecordingInProgress:Z

    .line 61
    .line 62
    iget-object p1, v1, Lcom/android/server/speech/RemoteSpeechRecognitionService$ClientState;->mDelegatingListener:Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;

    .line 63
    .line 64
    new-instance v1, Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda2;

    .line 65
    .line 66
    const/4 v2, 0x1

    .line 67
    invoke-direct {v1, v2, p1}, Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, v1}, Lcom/android/internal/infra/ServiceConnector$Impl;->run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z

    .line 71
    .line 72
    .line 73
    monitor-exit v0

    .line 74
    return-void

    .line 75
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    throw p0
.end method

.method public final triggerModelDownload(Landroid/content/Intent;Landroid/content/AttributionSource;Landroid/speech/IModelDownloadListener;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mConnected:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/16 p0, 0xb

    .line 6
    .line 7
    :try_start_0
    invoke-interface {p3, p0}, Landroid/speech/IModelDownloadListener;->onError(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :catch_0
    move-exception p0

    .line 12
    const-string p1, "RemoteSpeechRecognitionService"

    .line 13
    .line 14
    const-string p2, "#downloadModel failed due to connection."

    .line 15
    .line 16
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 20
    .line 21
    .line 22
    :goto_0
    return-void

    .line 23
    :cond_0
    new-instance v0, Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda0;

    .line 24
    .line 25
    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda0;-><init>(Landroid/content/Intent;Landroid/content/AttributionSource;Landroid/speech/IModelDownloadListener;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v0}, Lcom/android/internal/infra/ServiceConnector$Impl;->run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z

    .line 29
    .line 30
    .line 31
    return-void
.end method
