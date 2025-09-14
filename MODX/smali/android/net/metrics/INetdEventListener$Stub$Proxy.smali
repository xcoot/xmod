.class public final Landroid/net/metrics/INetdEventListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/net/metrics/INetdEventListener;


# instance fields
.field public mCachedHash:Ljava/lang/String;

.field public mCachedVersion:I

.field public mRemote:Landroid/os/IBinder;


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/net/metrics/INetdEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 3
    return-object p0
.end method

.method public final declared-synchronized getInterfaceHash()Ljava/lang/String;
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "-1"

    .line 4
    iget-object v1, p0, Landroid/net/metrics/INetdEventListener$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 12
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 15
    move-result-object v0

    .line 16
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 19
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :try_start_1
    sget-object v2, Landroid/net/metrics/INetdEventListener;->DESCRIPTOR:Ljava/lang/String;

    .line 22
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 25
    iget-object v2, p0, Landroid/net/metrics/INetdEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 27
    const v3, 0xfffffe

    .line 30
    const/4 v4, 0x0

    .line 31
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 34
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 37
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 40
    move-result-object v2

    .line 41
    iput-object v2, p0, Landroid/net/metrics/INetdEventListener$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 43
    :try_start_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 46
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 49
    goto :goto_0

    .line 50
    :catchall_0
    move-exception v0

    .line 51
    goto :goto_1

    .line 52
    :catchall_1
    move-exception v2

    .line 53
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 56
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 59
    throw v2

    .line 60
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/net/metrics/INetdEventListener$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 62
    monitor-exit p0

    .line 63
    return-object v0

    .line 64
    :goto_1
    monitor-exit p0

    .line 65
    throw v0
.end method

.method public final getInterfaceVersion()I
    .locals 5

    .line 1
    iget v0, p0, Landroid/net/metrics/INetdEventListener$Stub$Proxy;->mCachedVersion:I

    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 6
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 9
    move-result-object v0

    .line 10
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 13
    move-result-object v1

    .line 14
    :try_start_0
    sget-object v2, Landroid/net/metrics/INetdEventListener;->DESCRIPTOR:Ljava/lang/String;

    .line 16
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 19
    iget-object v2, p0, Landroid/net/metrics/INetdEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 21
    const v3, 0xffffff

    .line 24
    const/4 v4, 0x0

    .line 25
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 28
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 31
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 34
    move-result v2

    .line 35
    iput v2, p0, Landroid/net/metrics/INetdEventListener$Stub$Proxy;->mCachedVersion:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 40
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 43
    goto :goto_0

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 48
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 51
    throw p0

    .line 52
    :cond_0
    :goto_0
    iget p0, p0, Landroid/net/metrics/INetdEventListener$Stub$Proxy;->mCachedVersion:I

    .line 54
    return p0
.end method

.method public final onConnectEvent(IIILjava/lang/String;II)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 4
    move-result-object v0

    .line 5
    :try_start_0
    sget-object v1, Landroid/net/metrics/INetdEventListener;->DESCRIPTOR:Ljava/lang/String;

    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 13
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 16
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 25
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 28
    iget-object p0, p0, Landroid/net/metrics/INetdEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 30
    const/4 p1, 0x0

    .line 31
    const/4 p2, 0x1

    .line 32
    const/4 p3, 0x3

    .line 33
    invoke-interface {p0, p3, v0, p1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 36
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    if-eqz p0, :cond_0

    .line 39
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 42
    return-void

    .line 43
    :cond_0
    :try_start_1
    new-instance p0, Landroid/os/RemoteException;

    .line 45
    const-string p1, "Method onConnectEvent is unimplemented."

    .line 47
    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 50
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 55
    throw p0
.end method

.method public final onDnsEvent(IIIILjava/lang/String;[Ljava/lang/String;II)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 4
    move-result-object v0

    .line 5
    :try_start_0
    sget-object v1, Landroid/net/metrics/INetdEventListener;->DESCRIPTOR:Ljava/lang/String;

    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 13
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 16
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 22
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 28
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 31
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeInt(I)V

    .line 34
    iget-object p0, p0, Landroid/net/metrics/INetdEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 36
    const/4 p1, 0x0

    .line 37
    const/4 p2, 0x1

    .line 38
    invoke-interface {p0, p2, v0, p1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 41
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    if-eqz p0, :cond_0

    .line 44
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 47
    return-void

    .line 48
    :cond_0
    :try_start_1
    new-instance p0, Landroid/os/RemoteException;

    .line 50
    const-string p1, "Method onDnsEvent is unimplemented."

    .line 52
    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 55
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    :catchall_0
    move-exception p0

    .line 57
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 60
    throw p0
.end method

.method public final onNat64PrefixEvent(IZLjava/lang/String;I)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 4
    move-result-object v0

    .line 5
    :try_start_0
    sget-object v1, Landroid/net/metrics/INetdEventListener;->DESCRIPTOR:Ljava/lang/String;

    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 13
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 16
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 22
    iget-object p0, p0, Landroid/net/metrics/INetdEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 24
    const/4 p1, 0x0

    .line 25
    const/4 p2, 0x1

    .line 26
    const/4 p3, 0x6

    .line 27
    invoke-interface {p0, p3, v0, p1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 30
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    if-eqz p0, :cond_0

    .line 33
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 36
    return-void

    .line 37
    :cond_0
    :try_start_1
    new-instance p0, Landroid/os/RemoteException;

    .line 39
    const-string p1, "Method onNat64PrefixEvent is unimplemented."

    .line 41
    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 44
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    :catchall_0
    move-exception p0

    .line 46
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 49
    throw p0
.end method

.method public final onPrivateDnsValidationEvent(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 4
    move-result-object v0

    .line 5
    :try_start_0
    sget-object v1, Landroid/net/metrics/INetdEventListener;->DESCRIPTOR:Ljava/lang/String;

    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 13
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 22
    iget-object p0, p0, Landroid/net/metrics/INetdEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 24
    const/4 p1, 0x0

    .line 25
    const/4 p2, 0x1

    .line 26
    const/4 p3, 0x2

    .line 27
    invoke-interface {p0, p3, v0, p1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 30
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    if-eqz p0, :cond_0

    .line 33
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 36
    return-void

    .line 37
    :cond_0
    :try_start_1
    new-instance p0, Landroid/os/RemoteException;

    .line 39
    const-string p1, "Method onPrivateDnsValidationEvent is unimplemented."

    .line 41
    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 44
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    :catchall_0
    move-exception p0

    .line 46
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 49
    throw p0
.end method

.method public final onTcpSocketStatsEvent([I[I[I[I[I)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 4
    move-result-object v0

    .line 5
    :try_start_0
    sget-object v1, Landroid/net/metrics/INetdEventListener;->DESCRIPTOR:Ljava/lang/String;

    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 13
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 16
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 19
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 22
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 25
    iget-object p0, p0, Landroid/net/metrics/INetdEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 27
    const/4 p1, 0x0

    .line 28
    const/4 p2, 0x1

    .line 29
    const/4 p3, 0x5

    .line 30
    invoke-interface {p0, p3, v0, p1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 33
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    if-eqz p0, :cond_0

    .line 36
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 39
    return-void

    .line 40
    :cond_0
    :try_start_1
    new-instance p0, Landroid/os/RemoteException;

    .line 42
    const-string p1, "Method onTcpSocketStatsEvent is unimplemented."

    .line 44
    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 47
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    :catchall_0
    move-exception p0

    .line 49
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 52
    throw p0
.end method

.method public final onWakeupEvent(Ljava/lang/String;III[BLjava/lang/String;Ljava/lang/String;IIJ)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 4
    move-result-object v0

    .line 5
    :try_start_0
    sget-object v1, Landroid/net/metrics/INetdEventListener;->DESCRIPTOR:Ljava/lang/String;

    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 16
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 22
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 25
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 31
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeInt(I)V

    .line 34
    invoke-virtual {v0, p9}, Landroid/os/Parcel;->writeInt(I)V

    .line 37
    invoke-virtual {v0, p10, p11}, Landroid/os/Parcel;->writeLong(J)V

    .line 40
    iget-object p0, p0, Landroid/net/metrics/INetdEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 42
    const/4 p1, 0x0

    .line 43
    const/4 p2, 0x1

    .line 44
    const/4 p3, 0x4

    .line 45
    invoke-interface {p0, p3, v0, p1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 48
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    if-eqz p0, :cond_0

    .line 51
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 54
    return-void

    .line 55
    :cond_0
    :try_start_1
    new-instance p0, Landroid/os/RemoteException;

    .line 57
    const-string p1, "Method onWakeupEvent is unimplemented."

    .line 59
    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 62
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    :catchall_0
    move-exception p0

    .line 64
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 67
    throw p0
.end method
