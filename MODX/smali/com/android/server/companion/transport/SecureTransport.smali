.class public final Lcom/android/server/companion/transport/SecureTransport;
.super Lcom/android/server/companion/transport/Transport;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/companion/securechannel/SecureChannel$Callback;


# instance fields
.field public final mRequestQueue:Ljava/util/concurrent/BlockingQueue;

.field public final mSecureChannel:Lcom/android/server/companion/securechannel/SecureChannel;

.field public volatile mShouldProcessRequests:Z


# direct methods
.method public constructor <init>(ILandroid/os/ParcelFileDescriptor;Landroid/content/Context;)V
    .locals 6

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/server/companion/transport/Transport;-><init>(ILandroid/os/ParcelFileDescriptor;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/android/server/companion/transport/SecureTransport;->mShouldProcessRequests:Z

    .line 3
    new-instance p1, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 p2, 0x1f4

    invoke-direct {p1, p2}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/companion/transport/SecureTransport;->mRequestQueue:Ljava/util/concurrent/BlockingQueue;

    .line 4
    new-instance p1, Lcom/android/server/companion/securechannel/SecureChannel;

    iget-object v1, p0, Lcom/android/server/companion/transport/Transport;->mRemoteIn:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/android/server/companion/transport/Transport;->mRemoteOut:Ljava/io/OutputStream;

    .line 5
    new-instance v5, Lcom/android/server/companion/securechannel/AttestationVerifier;

    invoke-direct {v5, p3}, Lcom/android/server/companion/securechannel/AttestationVerifier;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x0

    move-object v0, p1

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/companion/securechannel/SecureChannel;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/android/server/companion/securechannel/SecureChannel$Callback;[BLcom/android/server/companion/securechannel/AttestationVerifier;)V

    .line 6
    iput-object p1, p0, Lcom/android/server/companion/transport/SecureTransport;->mSecureChannel:Lcom/android/server/companion/securechannel/SecureChannel;

    return-void
.end method

.method public constructor <init>(ILandroid/os/ParcelFileDescriptor;[B)V
    .locals 6

    .line 7
    invoke-direct {p0, p1, p2}, Lcom/android/server/companion/transport/Transport;-><init>(ILandroid/os/ParcelFileDescriptor;)V

    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lcom/android/server/companion/transport/SecureTransport;->mShouldProcessRequests:Z

    .line 9
    new-instance p1, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 p2, 0x1f4

    invoke-direct {p1, p2}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/companion/transport/SecureTransport;->mRequestQueue:Ljava/util/concurrent/BlockingQueue;

    .line 10
    new-instance p1, Lcom/android/server/companion/securechannel/SecureChannel;

    iget-object v1, p0, Lcom/android/server/companion/transport/Transport;->mRemoteIn:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/android/server/companion/transport/Transport;->mRemoteOut:Ljava/io/OutputStream;

    const/4 v5, 0x0

    move-object v0, p1

    move-object v3, p0

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/companion/securechannel/SecureChannel;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/android/server/companion/securechannel/SecureChannel$Callback;[BLcom/android/server/companion/securechannel/AttestationVerifier;)V

    iput-object p1, p0, Lcom/android/server/companion/transport/SecureTransport;->mSecureChannel:Lcom/android/server/companion/securechannel/SecureChannel;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/companion/transport/SecureTransport;->mSecureChannel:Lcom/android/server/companion/securechannel/SecureChannel;

    .line 3
    invoke-virtual {v0}, Lcom/android/server/companion/securechannel/SecureChannel;->close()V

    .line 6
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/android/server/companion/transport/SecureTransport;->mShouldProcessRequests:Z

    .line 9
    iget-object v0, p0, Lcom/android/server/companion/transport/Transport;->mOnTransportClosed:Lcom/android/server/companion/transport/CompanionTransportManager$$ExternalSyntheticLambda2;

    .line 11
    if-eqz v0, :cond_0

    .line 13
    iget-object v0, v0, Lcom/android/server/companion/transport/CompanionTransportManager$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/companion/transport/CompanionTransportManager;

    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    iget p0, p0, Lcom/android/server/companion/transport/Transport;->mAssociationId:I

    .line 20
    iget-object v1, v0, Lcom/android/server/companion/transport/CompanionTransportManager;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 22
    invoke-virtual {v1, p0}, Lcom/android/server/companion/association/AssociationStore;->getAssociationById(I)Landroid/companion/AssociationInfo;

    .line 25
    move-result-object p0

    .line 26
    if-eqz p0, :cond_0

    .line 28
    invoke-virtual {p0}, Landroid/companion/AssociationInfo;->getId()I

    .line 31
    move-result p0

    .line 32
    invoke-virtual {v0, p0}, Lcom/android/server/companion/transport/CompanionTransportManager;->detachSystemDataTransport(I)V

    .line 35
    :cond_0
    return-void
.end method

.method public final sendMessage(II[B)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/server/companion/transport/SecureTransport;->mShouldProcessRequests:Z

    .line 3
    const-string v1, "CDM_CompanionTransport"

    .line 5
    if-nez v0, :cond_2

    .line 7
    const-string v0, "Establishing secure connection."

    .line 9
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    :try_start_0
    iget-object v0, p0, Lcom/android/server/companion/transport/SecureTransport;->mSecureChannel:Lcom/android/server/companion/securechannel/SecureChannel;

    .line 14
    invoke-virtual {v0}, Lcom/android/server/companion/securechannel/SecureChannel;->isSecured()Z

    .line 17
    move-result v2

    .line 18
    const-string v3, "CDM_SecureChannel"

    .line 20
    if-eqz v2, :cond_0

    .line 22
    const-string v0, "Channel is already secure."

    .line 24
    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget-boolean v2, v0, Lcom/android/server/companion/securechannel/SecureChannel;->mInProgress:Z

    .line 30
    if-eqz v2, :cond_1

    .line 32
    const-string v0, "Channel has already started establishing secure connection."

    .line 34
    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const/4 v2, 0x1

    .line 39
    :try_start_1
    iput-boolean v2, v0, Lcom/android/server/companion/securechannel/SecureChannel;->mInProgress:Z

    .line 41
    invoke-virtual {v0}, Lcom/android/server/companion/securechannel/SecureChannel;->initiateHandshake()V
    :try_end_1
    .catch Lcom/google/security/cryptauth/lib/securegcm/ukey2/BadHandleException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 44
    goto :goto_0

    .line 45
    :catch_0
    move-exception v0

    .line 46
    :try_start_2
    new-instance v2, Lcom/android/server/companion/securechannel/SecureChannelException;

    .line 48
    const-string v3, "Failed to initiate handshake protocol."

    .line 50
    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 53
    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 54
    :catch_1
    move-exception v0

    .line 55
    const-string v2, "Failed to initiate secure channel handshake."

    .line 57
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 60
    invoke-virtual {p0}, Lcom/android/server/companion/transport/SecureTransport;->close()V

    .line 63
    :cond_2
    :goto_0
    sget-boolean v0, Lcom/android/server/companion/transport/Transport;->DEBUG:Z

    .line 65
    if-eqz v0, :cond_3

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    .line 69
    const-string v2, "Queueing message 0x"

    .line 71
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 77
    move-result-object v2

    .line 78
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    const-string v2, " sequence "

    .line 83
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 89
    const-string v2, " length "

    .line 91
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    array-length v2, p3

    .line 95
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    const-string v2, " to association "

    .line 100
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    iget v2, p0, Lcom/android/server/companion/transport/Transport;->mAssociationId:I

    .line 105
    invoke-static {v0, v2, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 108
    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/android/server/companion/transport/SecureTransport;->mRequestQueue:Ljava/util/concurrent/BlockingQueue;

    .line 110
    array-length v2, p3

    .line 111
    add-int/lit8 v2, v2, 0xc

    .line 113
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 116
    move-result-object v2

    .line 117
    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 120
    move-result-object v2

    .line 121
    invoke-virtual {v2, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 124
    move-result-object p2

    .line 125
    array-length v2, p3

    .line 126
    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 129
    move-result-object p2

    .line 130
    invoke-virtual {p2, p3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 133
    move-result-object p2

    .line 134
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    .line 137
    move-result-object p2

    .line 138
    check-cast v0, Ljava/util/concurrent/ArrayBlockingQueue;

    .line 140
    invoke-virtual {v0, p2}, Ljava/util/concurrent/ArrayBlockingQueue;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_2

    .line 143
    goto :goto_1

    .line 144
    :catch_2
    move-exception p2

    .line 145
    new-instance p3, Ljava/lang/StringBuilder;

    .line 147
    const-string v0, "Failed to queue message 0x"

    .line 149
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 152
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 155
    move-result-object p1

    .line 156
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    const-string p1, " . Request buffer is full; detaching transport."

    .line 161
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    move-result-object p1

    .line 168
    invoke-static {v1, p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 171
    invoke-virtual {p0}, Lcom/android/server/companion/transport/SecureTransport;->close()V

    .line 174
    :goto_1
    return-void
.end method

.method public final start()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/companion/transport/SecureTransport;->mSecureChannel:Lcom/android/server/companion/securechannel/SecureChannel;

    .line 3
    sget-boolean v0, Lcom/android/server/companion/securechannel/SecureChannel;->DEBUG:Z

    .line 5
    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    const-string v0, "CDM_SecureChannel"

    .line 12
    const-string v1, "Starting secure channel."

    .line 14
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mStopped:Z

    .line 20
    new-instance v0, Ljava/lang/Thread;

    .line 22
    new-instance v1, Lcom/android/server/companion/securechannel/SecureChannel$$ExternalSyntheticLambda0;

    .line 24
    invoke-direct {v1, p0}, Lcom/android/server/companion/securechannel/SecureChannel$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/companion/securechannel/SecureChannel;)V

    .line 27
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 30
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 33
    return-void
.end method

.method public final stop()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/companion/transport/SecureTransport;->mSecureChannel:Lcom/android/server/companion/securechannel/SecureChannel;

    .line 3
    sget-boolean v1, Lcom/android/server/companion/securechannel/SecureChannel;->DEBUG:Z

    .line 5
    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    const-string v1, "CDM_SecureChannel"

    .line 12
    const-string v2, "Stopping secure channel."

    .line 14
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    :cond_0
    const/4 v1, 0x1

    .line 18
    iput-boolean v1, v0, Lcom/android/server/companion/securechannel/SecureChannel;->mStopped:Z

    .line 20
    const/4 v1, 0x0

    .line 21
    iput-boolean v1, v0, Lcom/android/server/companion/securechannel/SecureChannel;->mInProgress:Z

    .line 23
    iput-boolean v1, p0, Lcom/android/server/companion/transport/SecureTransport;->mShouldProcessRequests:Z

    .line 25
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "SecureTransport{mAssociationId="

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    iget v1, p0, Lcom/android/server/companion/transport/Transport;->mAssociationId:I

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    const-string v1, ", mSecureChannel="

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    iget-object p0, p0, Lcom/android/server/companion/transport/SecureTransport;->mSecureChannel:Lcom/android/server/companion/securechannel/SecureChannel;

    .line 20
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    const/16 p0, 0x7d

    .line 25
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object p0

    .line 32
    return-object p0
.end method
