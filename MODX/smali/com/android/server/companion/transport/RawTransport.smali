.class public Lcom/android/server/companion/transport/RawTransport;
.super Lcom/android/server/companion/transport/Transport;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public volatile mStopped:Z


# direct methods
.method public static $r8$lambda$kOck5G0Ky7-AcKXjGkOrtQvK6ss(Lcom/android/server/companion/transport/RawTransport;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/companion/transport/RawTransport;->mStopped:Z

    .line 6
    if-nez v0, :cond_1

    .line 8
    invoke-virtual {p0}, Lcom/android/server/companion/transport/RawTransport;->receiveMessage()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    goto :goto_0

    .line 12
    :catch_0
    move-exception v0

    .line 13
    iget-boolean v1, p0, Lcom/android/server/companion/transport/RawTransport;->mStopped:Z

    .line 15
    if-nez v1, :cond_1

    .line 17
    const-string v1, "Trouble during transport"

    .line 19
    const-string v2, "CDM_CompanionTransport"

    .line 21
    invoke-static {v2, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 24
    invoke-virtual {p0}, Lcom/android/server/companion/transport/RawTransport;->stop()V

    .line 27
    sget-boolean v0, Lcom/android/server/companion/transport/Transport;->DEBUG:Z

    .line 29
    if-eqz v0, :cond_0

    .line 31
    const-string v0, "Closing raw transport."

    .line 33
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/android/server/companion/transport/Transport;->mRemoteIn:Ljava/io/InputStream;

    .line 38
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 41
    iget-object v0, p0, Lcom/android/server/companion/transport/Transport;->mRemoteOut:Ljava/io/OutputStream;

    .line 43
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 46
    iget-object v0, p0, Lcom/android/server/companion/transport/Transport;->mOnTransportClosed:Lcom/android/server/companion/transport/CompanionTransportManager$$ExternalSyntheticLambda2;

    .line 48
    if-eqz v0, :cond_1

    .line 50
    iget-object v0, v0, Lcom/android/server/companion/transport/CompanionTransportManager$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/companion/transport/CompanionTransportManager;

    .line 52
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    iget p0, p0, Lcom/android/server/companion/transport/Transport;->mAssociationId:I

    .line 57
    iget-object v1, v0, Lcom/android/server/companion/transport/CompanionTransportManager;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 59
    invoke-virtual {v1, p0}, Lcom/android/server/companion/association/AssociationStore;->getAssociationById(I)Landroid/companion/AssociationInfo;

    .line 62
    move-result-object p0

    .line 63
    if-eqz p0, :cond_1

    .line 65
    invoke-virtual {p0}, Landroid/companion/AssociationInfo;->getId()I

    .line 68
    move-result p0

    .line 69
    invoke-virtual {v0, p0}, Lcom/android/server/companion/transport/CompanionTransportManager;->detachSystemDataTransport(I)V

    .line 72
    :cond_1
    return-void
.end method


# virtual methods
.method public final receiveMessage()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/companion/transport/Transport;->mRemoteIn:Ljava/io/InputStream;

    .line 3
    monitor-enter v0

    .line 4
    const/16 v1, 0xc

    .line 6
    :try_start_0
    new-array v1, v1, [B

    .line 8
    iget-object v2, p0, Lcom/android/server/companion/transport/Transport;->mRemoteIn:Ljava/io/InputStream;

    .line 10
    invoke-static {v2, v1}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;[B)V

    .line 13
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 20
    move-result v2

    .line 21
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 24
    move-result v3

    .line 25
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 28
    move-result v1

    .line 29
    new-array v1, v1, [B

    .line 31
    iget-object v4, p0, Lcom/android/server/companion/transport/Transport;->mRemoteIn:Ljava/io/InputStream;

    .line 33
    invoke-static {v4, v1}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;[B)V

    .line 36
    invoke-virtual {p0, v2, v3, v1}, Lcom/android/server/companion/transport/Transport;->handleMessage(II[B)V

    .line 39
    monitor-exit v0

    .line 40
    return-void

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    throw p0
.end method

.method public sendMessage(II[B)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/server/companion/transport/Transport;->DEBUG:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    const-string v0, "CDM_CompanionTransport"

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    const-string v2, "Sending message 0x"

    .line 11
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    const-string v2, " sequence "

    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    const-string v2, " length "

    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    array-length v2, p3

    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    const-string v2, " to association "

    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    iget v2, p0, Lcom/android/server/companion/transport/Transport;->mAssociationId:I

    .line 45
    invoke-static {v1, v2, v0}, Lcom/android/server/VaultKeeperService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/android/server/companion/transport/Transport;->mRemoteOut:Ljava/io/OutputStream;

    .line 50
    monitor-enter v0

    .line 51
    const/16 v1, 0xc

    .line 53
    :try_start_0
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 64
    move-result-object p1

    .line 65
    array-length p2, p3

    .line 66
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 69
    move-result-object p1

    .line 70
    iget-object p2, p0, Lcom/android/server/companion/transport/Transport;->mRemoteOut:Ljava/io/OutputStream;

    .line 72
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    .line 75
    move-result-object p1

    .line 76
    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V

    .line 79
    iget-object p1, p0, Lcom/android/server/companion/transport/Transport;->mRemoteOut:Ljava/io/OutputStream;

    .line 81
    invoke-virtual {p1, p3}, Ljava/io/OutputStream;->write([B)V

    .line 84
    iget-object p0, p0, Lcom/android/server/companion/transport/Transport;->mRemoteOut:Ljava/io/OutputStream;

    .line 86
    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    .line 89
    monitor-exit v0

    .line 90
    return-void

    .line 91
    :catchall_0
    move-exception p0

    .line 92
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    throw p0
.end method

.method public final start()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/server/companion/transport/Transport;->DEBUG:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    const-string v0, "CDM_CompanionTransport"

    .line 7
    const-string v1, "Starting raw transport."

    .line 9
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    .line 14
    new-instance v1, Lcom/android/server/companion/transport/RawTransport$$ExternalSyntheticLambda0;

    .line 16
    invoke-direct {v1, p0}, Lcom/android/server/companion/transport/RawTransport$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/companion/transport/RawTransport;)V

    .line 19
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 22
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 25
    return-void
.end method

.method public final stop()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/server/companion/transport/Transport;->DEBUG:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    const-string v0, "CDM_CompanionTransport"

    .line 7
    const-string v1, "Stopping raw transport."

    .line 9
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    :cond_0
    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lcom/android/server/companion/transport/RawTransport;->mStopped:Z

    .line 15
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "RawTransport{mAssociationId="

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    iget p0, p0, Lcom/android/server/companion/transport/Transport;->mAssociationId:I

    .line 10
    const/16 v1, 0x7d

    .line 12
    invoke-static {v0, p0, v1}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method
