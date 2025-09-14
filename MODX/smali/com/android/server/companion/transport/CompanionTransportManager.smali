.class public final Lcom/android/server/companion/transport/CompanionTransportManager;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

.field public final mContext:Landroid/content/Context;

.field public final mMessageListeners:Landroid/util/SparseArray;

.field public mSecureTransportEnabled:Z

.field public final mTransports:Landroid/util/SparseArray;

.field public final mTransportsListeners:Landroid/os/RemoteCallbackList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/companion/association/AssociationStore;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mSecureTransportEnabled:Z

    .line 7
    new-instance v0, Landroid/util/SparseArray;

    .line 9
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 12
    iput-object v0, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mTransports:Landroid/util/SparseArray;

    .line 14
    new-instance v0, Landroid/os/RemoteCallbackList;

    .line 16
    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 19
    iput-object v0, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mTransportsListeners:Landroid/os/RemoteCallbackList;

    .line 21
    new-instance v0, Landroid/util/SparseArray;

    .line 23
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 26
    iput-object v0, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mMessageListeners:Landroid/util/SparseArray;

    .line 28
    iput-object p1, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mContext:Landroid/content/Context;

    .line 30
    iput-object p2, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 32
    return-void
.end method


# virtual methods
.method public final addListener(ILandroid/companion/IOnMessageReceivedListener;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mMessageListeners:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mTransports:Landroid/util/SparseArray;

    monitor-enter v0

    const/4 v1, 0x0

    .line 3
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mTransports:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 4
    iget-object v2, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mTransports:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/companion/transport/Transport;

    .line 5
    iget-object v2, v2, Lcom/android/server/companion/transport/Transport;->mListeners:Ljava/util/Map;

    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 7
    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final addListener(Landroid/companion/IOnTransportsChangedListener;)V
    .locals 3

    .line 8
    const-string v0, "CDM_CompanionTransportManager"

    const-string v1, "Registering OnTransportsChangedListener"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iget-object v0, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mTransportsListeners:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    .line 10
    :try_start_0
    iget-object v1, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mTransportsListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 11
    iget-object v1, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mTransportsListeners:Landroid/os/RemoteCallbackList;

    new-instance v2, Lcom/android/server/companion/transport/CompanionTransportManager$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Lcom/android/server/companion/transport/CompanionTransportManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/companion/transport/CompanionTransportManager;Landroid/companion/IOnTransportsChangedListener;)V

    invoke-virtual {v1, v2}, Landroid/os/RemoteCallbackList;->broadcast(Ljava/util/function/Consumer;)V

    .line 12
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final addMessageListenersToTransport(Lcom/android/server/companion/transport/Transport;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mMessageListeners:Landroid/util/SparseArray;

    .line 4
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 7
    move-result v1

    .line 8
    if-ge v0, v1, :cond_0

    .line 10
    iget-object v1, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mMessageListeners:Landroid/util/SparseArray;

    .line 12
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    .line 15
    move-result v1

    .line 16
    iget-object v2, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mMessageListeners:Landroid/util/SparseArray;

    .line 18
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Landroid/companion/IOnMessageReceivedListener;

    .line 24
    iget-object v3, p1, Lcom/android/server/companion/transport/Transport;->mListeners:Ljava/util/Map;

    .line 26
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    move-result-object v1

    .line 30
    check-cast v3, Ljava/util/HashMap;

    .line 32
    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    add-int/lit8 v0, v0, 0x1

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    return-void
.end method

.method public final createEmulatedTransport(I)Lcom/android/server/companion/transport/CompanionTransportManager$EmulatedTransport;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mTransports:Landroid/util/SparseArray;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Ljava/io/FileDescriptor;

    .line 6
    invoke-direct {v1}, Ljava/io/FileDescriptor;-><init>()V

    .line 9
    new-instance v2, Landroid/os/ParcelFileDescriptor;

    .line 11
    invoke-direct {v2, v1}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V

    .line 14
    new-instance v1, Lcom/android/server/companion/transport/CompanionTransportManager$EmulatedTransport;

    .line 16
    invoke-direct {v1, p1, v2}, Lcom/android/server/companion/transport/Transport;-><init>(ILandroid/os/ParcelFileDescriptor;)V

    .line 19
    invoke-virtual {p0, v1}, Lcom/android/server/companion/transport/CompanionTransportManager;->addMessageListenersToTransport(Lcom/android/server/companion/transport/Transport;)V

    .line 22
    iget-object v2, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mTransports:Landroid/util/SparseArray;

    .line 24
    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 27
    invoke-virtual {p0}, Lcom/android/server/companion/transport/CompanionTransportManager;->notifyOnTransportsChanged()V

    .line 30
    monitor-exit v0

    .line 31
    return-object v1

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    throw p0
.end method

.method public final detachSystemDataTransport(I)V
    .locals 3

    .line 1
    const-string v0, "CDM_CompanionTransportManager"

    .line 3
    const-string v1, "Detaching transport for association id=["

    .line 5
    const-string v2, "]..."

    .line 7
    invoke-static {p1, v1, v2, v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 12
    invoke-virtual {v0, p1}, Lcom/android/server/companion/association/AssociationStore;->getAssociationWithCallerChecks(I)Landroid/companion/AssociationInfo;

    .line 15
    iget-object v0, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mTransports:Landroid/util/SparseArray;

    .line 17
    monitor-enter v0

    .line 18
    :try_start_0
    iget-object v1, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mTransports:Landroid/util/SparseArray;

    .line 20
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Lcom/android/server/companion/transport/Transport;

    .line 26
    if-nez p1, :cond_0

    .line 28
    monitor-exit v0

    .line 29
    return-void

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/companion/transport/Transport;->stop()V

    .line 35
    invoke-virtual {p0}, Lcom/android/server/companion/transport/CompanionTransportManager;->notifyOnTransportsChanged()V

    .line 38
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    const-string p0, "CDM_CompanionTransportManager"

    .line 41
    const-string p1, "Transport detached."

    .line 43
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    return-void

    .line 47
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    throw p0
.end method

.method public final getAssociationsWithTransport()Ljava/util/List;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mTransports:Landroid/util/SparseArray;

    .line 8
    monitor-enter v1

    .line 9
    const/4 v2, 0x0

    .line 10
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mTransports:Landroid/util/SparseArray;

    .line 12
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 15
    move-result v3

    .line 16
    if-ge v2, v3, :cond_1

    .line 18
    iget-object v3, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 20
    iget-object v4, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mTransports:Landroid/util/SparseArray;

    .line 22
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 25
    move-result v4

    .line 26
    invoke-virtual {v3, v4}, Lcom/android/server/companion/association/AssociationStore;->getAssociationById(I)Landroid/companion/AssociationInfo;

    .line 29
    move-result-object v3

    .line 30
    if-eqz v3, :cond_0

    .line 32
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    goto :goto_1

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    goto :goto_2

    .line 38
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    monitor-exit v1

    .line 42
    return-object v0

    .line 43
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    throw p0
.end method

.method public final initializeTransport(ILandroid/os/ParcelFileDescriptor;)V
    .locals 2

    .line 1
    const-string v0, "CDM_CompanionTransportManager"

    .line 3
    const-string v1, "Initializing transport"

    .line 5
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-boolean v0, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mSecureTransportEnabled:Z

    .line 10
    if-nez v0, :cond_0

    .line 12
    const-string v0, "CDM_CompanionTransportManager"

    .line 14
    const-string v1, "Secure channel is disabled. Creating raw transport"

    .line 16
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    new-instance v0, Lcom/android/server/companion/transport/RawTransport;

    .line 21
    invoke-direct {v0, p1, p2}, Lcom/android/server/companion/transport/Transport;-><init>(ILandroid/os/ParcelFileDescriptor;)V

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-static {}, Landroid/os/Build;->isDebuggable()Z

    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_1

    .line 31
    const-string v0, "CDM_CompanionTransportManager"

    .line 33
    const-string v1, "Creating an unauthenticated secure channel"

    .line 35
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    const-string v0, "CDM"

    .line 40
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 45
    move-result-object v0

    .line 46
    new-instance v1, Lcom/android/server/companion/transport/SecureTransport;

    .line 48
    invoke-direct {v1, p1, p2, v0}, Lcom/android/server/companion/transport/SecureTransport;-><init>(ILandroid/os/ParcelFileDescriptor;[B)V

    .line 51
    move-object v0, v1

    .line 52
    goto :goto_0

    .line 53
    :cond_1
    const-string v0, "CDM_CompanionTransportManager"

    .line 55
    const-string v1, "Creating a secure channel"

    .line 57
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    new-instance v0, Lcom/android/server/companion/transport/SecureTransport;

    .line 62
    iget-object v1, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mContext:Landroid/content/Context;

    .line 64
    invoke-direct {v0, p1, p2, v1}, Lcom/android/server/companion/transport/SecureTransport;-><init>(ILandroid/os/ParcelFileDescriptor;Landroid/content/Context;)V

    .line 67
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/server/companion/transport/CompanionTransportManager;->addMessageListenersToTransport(Lcom/android/server/companion/transport/Transport;)V

    .line 70
    new-instance p2, Lcom/android/server/companion/transport/CompanionTransportManager$$ExternalSyntheticLambda2;

    .line 72
    invoke-direct {p2, p0}, Lcom/android/server/companion/transport/CompanionTransportManager$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/companion/transport/CompanionTransportManager;)V

    .line 75
    iput-object p2, v0, Lcom/android/server/companion/transport/Transport;->mOnTransportClosed:Lcom/android/server/companion/transport/CompanionTransportManager$$ExternalSyntheticLambda2;

    .line 77
    invoke-virtual {v0}, Lcom/android/server/companion/transport/Transport;->start()V

    .line 80
    iget-object p2, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mTransports:Landroid/util/SparseArray;

    .line 82
    monitor-enter p2

    .line 83
    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mTransports:Landroid/util/SparseArray;

    .line 85
    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 88
    monitor-exit p2

    .line 89
    return-void

    .line 90
    :catchall_0
    move-exception p0

    .line 91
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    throw p0
.end method

.method public final notifyOnTransportsChanged()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mTransportsListeners:Landroid/os/RemoteCallbackList;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mTransportsListeners:Landroid/os/RemoteCallbackList;

    .line 6
    new-instance v2, Lcom/android/server/companion/transport/CompanionTransportManager$$ExternalSyntheticLambda1;

    .line 8
    invoke-direct {v2, p0}, Lcom/android/server/companion/transport/CompanionTransportManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/companion/transport/CompanionTransportManager;)V

    .line 11
    invoke-virtual {v1, v2}, Landroid/os/RemoteCallbackList;->broadcast(Ljava/util/function/Consumer;)V

    .line 14
    monitor-exit v0

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    throw p0
.end method

.method public final sendMessage(I[B[I)V
    .locals 4

    .line 1
    const-string v0, "CDM_CompanionTransportManager"

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    const-string v2, "Sending message 0x"

    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    const-string v2, " data length "

    .line 12
    invoke-static {p1, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 15
    array-length v2, p2

    .line 16
    invoke-static {v1, v2, v0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 19
    iget-object v0, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mTransports:Landroid/util/SparseArray;

    .line 21
    monitor-enter v0

    .line 22
    const/4 v1, 0x0

    .line 23
    :goto_0
    :try_start_0
    array-length v2, p3

    .line 24
    if-ge v1, v2, :cond_1

    .line 26
    iget-object v2, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mTransports:Landroid/util/SparseArray;

    .line 28
    aget v3, p3, v1

    .line 30
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->contains(I)Z

    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_0

    .line 36
    iget-object v2, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mTransports:Landroid/util/SparseArray;

    .line 38
    aget v3, p3, v1

    .line 40
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 43
    move-result-object v2

    .line 44
    check-cast v2, Lcom/android/server/companion/transport/Transport;

    .line 46
    invoke-virtual {v2, p1, p2}, Lcom/android/server/companion/transport/Transport;->sendMessage(I[B)Ljava/util/concurrent/Future;

    .line 49
    goto :goto_1

    .line 50
    :catchall_0
    move-exception p0

    .line 51
    goto :goto_2

    .line 52
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 54
    goto :goto_0

    .line 55
    :cond_1
    monitor-exit v0

    .line 56
    return-void

    .line 57
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    throw p0
.end method
