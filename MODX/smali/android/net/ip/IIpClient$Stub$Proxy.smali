.class public final Landroid/net/ip/IIpClient$Stub$Proxy;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/net/ip/IIpClient;


# instance fields
.field public mCachedHash:Ljava/lang/String;

.field public mCachedVersion:I

.field public mRemote:Landroid/os/IBinder;


# virtual methods
.method public final addKeepalivePacketFilter(ILandroid/net/TcpKeepalivePacketDataParcelable;)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 4
    move-result-object v0

    .line 5
    :try_start_0
    sget-object v1, Landroid/net/ip/IIpClient;->DESCRIPTOR:Ljava/lang/String;

    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 13
    const/4 p1, 0x0

    .line 14
    invoke-virtual {v0, p2, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 17
    iget-object p0, p0, Landroid/net/ip/IIpClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 19
    const/4 p1, 0x0

    .line 20
    const/4 p2, 0x1

    .line 21
    const/16 v1, 0xa

    .line 23
    invoke-interface {p0, v1, v0, p1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 26
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    if-eqz p0, :cond_0

    .line 29
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 32
    return-void

    .line 33
    :cond_0
    :try_start_1
    new-instance p0, Landroid/os/RemoteException;

    .line 35
    const-string p1, "Method addKeepalivePacketFilter is unimplemented."

    .line 37
    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 40
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 45
    throw p0
.end method

.method public final addNattKeepalivePacketFilter(ILandroid/net/NattKeepalivePacketDataParcelable;)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 4
    move-result-object v0

    .line 5
    :try_start_0
    sget-object v1, Landroid/net/ip/IIpClient;->DESCRIPTOR:Ljava/lang/String;

    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 13
    const/4 p1, 0x0

    .line 14
    invoke-virtual {v0, p2, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 17
    iget-object p0, p0, Landroid/net/ip/IIpClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 19
    const/4 p1, 0x0

    .line 20
    const/4 p2, 0x1

    .line 21
    const/16 v1, 0xd

    .line 23
    invoke-interface {p0, v1, v0, p1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 26
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    if-eqz p0, :cond_0

    .line 29
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 32
    return-void

    .line 33
    :cond_0
    :try_start_1
    new-instance p0, Landroid/os/RemoteException;

    .line 35
    const-string p1, "Method addNattKeepalivePacketFilter is unimplemented."

    .line 37
    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 40
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 45
    throw p0
.end method

.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/net/ip/IIpClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 3
    return-object p0
.end method

.method public final completedPreDhcpAction()V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 4
    move-result-object v0

    .line 5
    :try_start_0
    sget-object v1, Landroid/net/ip/IIpClient;->DESCRIPTOR:Ljava/lang/String;

    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10
    iget-object p0, p0, Landroid/net/ip/IIpClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 12
    const/4 v1, 0x0

    .line 13
    const/4 v2, 0x1

    .line 14
    invoke-interface {p0, v2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 17
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    if-eqz p0, :cond_0

    .line 20
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 23
    return-void

    .line 24
    :cond_0
    :try_start_1
    new-instance p0, Landroid/os/RemoteException;

    .line 26
    const-string v1, "Method completedPreDhcpAction is unimplemented."

    .line 28
    invoke-direct {p0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 31
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 36
    throw p0
.end method

.method public final confirmConfiguration()V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 4
    move-result-object v0

    .line 5
    :try_start_0
    sget-object v1, Landroid/net/ip/IIpClient;->DESCRIPTOR:Ljava/lang/String;

    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10
    iget-object p0, p0, Landroid/net/ip/IIpClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 12
    const/4 v1, 0x0

    .line 13
    const/4 v2, 0x1

    .line 14
    const/4 v3, 0x2

    .line 15
    invoke-interface {p0, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 18
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    if-eqz p0, :cond_0

    .line 21
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 24
    return-void

    .line 25
    :cond_0
    :try_start_1
    new-instance p0, Landroid/os/RemoteException;

    .line 27
    const-string v1, "Method confirmConfiguration is unimplemented."

    .line 29
    invoke-direct {p0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 32
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 37
    throw p0
.end method

.method public final declared-synchronized getInterfaceHash()Ljava/lang/String;
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "-1"

    .line 4
    iget-object v1, p0, Landroid/net/ip/IIpClient$Stub$Proxy;->mCachedHash:Ljava/lang/String;

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
    sget-object v2, Landroid/net/ip/IIpClient;->DESCRIPTOR:Ljava/lang/String;

    .line 22
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 25
    iget-object v2, p0, Landroid/net/ip/IIpClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    iput-object v2, p0, Landroid/net/ip/IIpClient$Stub$Proxy;->mCachedHash:Ljava/lang/String;
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
    iget-object v0, p0, Landroid/net/ip/IIpClient$Stub$Proxy;->mCachedHash:Ljava/lang/String;
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
    iget v0, p0, Landroid/net/ip/IIpClient$Stub$Proxy;->mCachedVersion:I

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
    sget-object v2, Landroid/net/ip/IIpClient;->DESCRIPTOR:Ljava/lang/String;

    .line 16
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 19
    iget-object v2, p0, Landroid/net/ip/IIpClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    iput v2, p0, Landroid/net/ip/IIpClient$Stub$Proxy;->mCachedVersion:I
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
    iget p0, p0, Landroid/net/ip/IIpClient$Stub$Proxy;->mCachedVersion:I

    .line 54
    return p0
.end method

.method public final notifyPreconnectionComplete(Z)V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 4
    move-result-object v0

    .line 5
    :try_start_0
    sget-object v1, Landroid/net/ip/IIpClient;->DESCRIPTOR:Ljava/lang/String;

    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 13
    iget-object p0, p0, Landroid/net/ip/IIpClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 15
    const/4 p1, 0x0

    .line 16
    const/4 v1, 0x1

    .line 17
    const/16 v2, 0xe

    .line 19
    invoke-interface {p0, v2, v0, p1, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 22
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    if-eqz p0, :cond_0

    .line 25
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 28
    return-void

    .line 29
    :cond_0
    :try_start_1
    new-instance p0, Landroid/os/RemoteException;

    .line 31
    const-string p1, "Method notifyPreconnectionComplete is unimplemented."

    .line 33
    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 36
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 41
    throw p0
.end method

.method public final readPacketFilterComplete([B)V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 4
    move-result-object v0

    .line 5
    :try_start_0
    sget-object v1, Landroid/net/ip/IIpClient;->DESCRIPTOR:Ljava/lang/String;

    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 13
    iget-object p0, p0, Landroid/net/ip/IIpClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 15
    const/4 p1, 0x0

    .line 16
    const/4 v1, 0x1

    .line 17
    const/4 v2, 0x3

    .line 18
    invoke-interface {p0, v2, v0, p1, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 21
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    if-eqz p0, :cond_0

    .line 24
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 27
    return-void

    .line 28
    :cond_0
    :try_start_1
    new-instance p0, Landroid/os/RemoteException;

    .line 30
    const-string p1, "Method readPacketFilterComplete is unimplemented."

    .line 32
    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 35
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 40
    throw p0
.end method

.method public final removeKeepalivePacketFilter(I)V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 4
    move-result-object v0

    .line 5
    :try_start_0
    sget-object v1, Landroid/net/ip/IIpClient;->DESCRIPTOR:Ljava/lang/String;

    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 13
    iget-object p0, p0, Landroid/net/ip/IIpClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 15
    const/4 p1, 0x0

    .line 16
    const/4 v1, 0x1

    .line 17
    const/16 v2, 0xb

    .line 19
    invoke-interface {p0, v2, v0, p1, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 22
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    if-eqz p0, :cond_0

    .line 25
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 28
    return-void

    .line 29
    :cond_0
    :try_start_1
    new-instance p0, Landroid/os/RemoteException;

    .line 31
    const-string p1, "Method removeKeepalivePacketFilter is unimplemented."

    .line 33
    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 36
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 41
    throw p0
.end method

.method public final setHttpProxy(Landroid/net/ProxyInfo;)V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 4
    move-result-object v0

    .line 5
    :try_start_0
    sget-object v1, Landroid/net/ip/IIpClient;->DESCRIPTOR:Ljava/lang/String;

    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 14
    iget-object p0, p0, Landroid/net/ip/IIpClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 16
    const/4 p1, 0x0

    .line 17
    const/4 v1, 0x1

    .line 18
    const/16 v2, 0x8

    .line 20
    invoke-interface {p0, v2, v0, p1, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 23
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    if-eqz p0, :cond_0

    .line 26
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 29
    return-void

    .line 30
    :cond_0
    :try_start_1
    new-instance p0, Landroid/os/RemoteException;

    .line 32
    const-string p1, "Method setHttpProxy is unimplemented."

    .line 34
    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 37
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 42
    throw p0
.end method

.method public final setL2KeyAndGroupHint(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 4
    move-result-object v0

    .line 5
    :try_start_0
    sget-object v1, Landroid/net/ip/IIpClient;->DESCRIPTOR:Ljava/lang/String;

    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 16
    iget-object p0, p0, Landroid/net/ip/IIpClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 18
    const/4 p1, 0x0

    .line 19
    const/4 p2, 0x1

    .line 20
    const/16 v1, 0xc

    .line 22
    invoke-interface {p0, v1, v0, p1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 25
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    if-eqz p0, :cond_0

    .line 28
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 31
    return-void

    .line 32
    :cond_0
    :try_start_1
    new-instance p0, Landroid/os/RemoteException;

    .line 34
    const-string p1, "Method setL2KeyAndGroupHint is unimplemented."

    .line 36
    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 39
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 44
    throw p0
.end method

.method public final setMulticastFilter(Z)V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 4
    move-result-object v0

    .line 5
    :try_start_0
    sget-object v1, Landroid/net/ip/IIpClient;->DESCRIPTOR:Ljava/lang/String;

    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 13
    iget-object p0, p0, Landroid/net/ip/IIpClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 15
    const/4 p1, 0x0

    .line 16
    const/4 v1, 0x1

    .line 17
    const/16 v2, 0x9

    .line 19
    invoke-interface {p0, v2, v0, p1, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 22
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    if-eqz p0, :cond_0

    .line 25
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 28
    return-void

    .line 29
    :cond_0
    :try_start_1
    new-instance p0, Landroid/os/RemoteException;

    .line 31
    const-string p1, "Method setMulticastFilter is unimplemented."

    .line 33
    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 36
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 41
    throw p0
.end method

.method public final setTcpBufferSizes(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 4
    move-result-object v0

    .line 5
    :try_start_0
    sget-object v1, Landroid/net/ip/IIpClient;->DESCRIPTOR:Ljava/lang/String;

    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 13
    iget-object p0, p0, Landroid/net/ip/IIpClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 15
    const/4 p1, 0x0

    .line 16
    const/4 v1, 0x1

    .line 17
    const/4 v2, 0x7

    .line 18
    invoke-interface {p0, v2, v0, p1, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 21
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    if-eqz p0, :cond_0

    .line 24
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 27
    return-void

    .line 28
    :cond_0
    :try_start_1
    new-instance p0, Landroid/os/RemoteException;

    .line 30
    const-string p1, "Method setTcpBufferSizes is unimplemented."

    .line 32
    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 35
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 40
    throw p0
.end method

.method public final shutdown()V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 4
    move-result-object v0

    .line 5
    :try_start_0
    sget-object v1, Landroid/net/ip/IIpClient;->DESCRIPTOR:Ljava/lang/String;

    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10
    iget-object p0, p0, Landroid/net/ip/IIpClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 12
    const/4 v1, 0x0

    .line 13
    const/4 v2, 0x1

    .line 14
    const/4 v3, 0x4

    .line 15
    invoke-interface {p0, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 18
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    if-eqz p0, :cond_0

    .line 21
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 24
    return-void

    .line 25
    :cond_0
    :try_start_1
    new-instance p0, Landroid/os/RemoteException;

    .line 27
    const-string v1, "Method shutdown is unimplemented."

    .line 29
    invoke-direct {p0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 32
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 37
    throw p0
.end method

.method public final startProvisioning(Landroid/net/ProvisioningConfigurationParcelable;)V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 4
    move-result-object v0

    .line 5
    :try_start_0
    sget-object v1, Landroid/net/ip/IIpClient;->DESCRIPTOR:Ljava/lang/String;

    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 14
    iget-object p0, p0, Landroid/net/ip/IIpClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 16
    const/4 p1, 0x0

    .line 17
    const/4 v1, 0x1

    .line 18
    const/4 v2, 0x5

    .line 19
    invoke-interface {p0, v2, v0, p1, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 22
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    if-eqz p0, :cond_0

    .line 25
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 28
    return-void

    .line 29
    :cond_0
    :try_start_1
    new-instance p0, Landroid/os/RemoteException;

    .line 31
    const-string p1, "Method startProvisioning is unimplemented."

    .line 33
    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 36
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 41
    throw p0
.end method

.method public final stop()V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 4
    move-result-object v0

    .line 5
    :try_start_0
    sget-object v1, Landroid/net/ip/IIpClient;->DESCRIPTOR:Ljava/lang/String;

    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10
    iget-object p0, p0, Landroid/net/ip/IIpClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 12
    const/4 v1, 0x0

    .line 13
    const/4 v2, 0x1

    .line 14
    const/4 v3, 0x6

    .line 15
    invoke-interface {p0, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 18
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    if-eqz p0, :cond_0

    .line 21
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 24
    return-void

    .line 25
    :cond_0
    :try_start_1
    new-instance p0, Landroid/os/RemoteException;

    .line 27
    const-string v1, "Method stop is unimplemented."

    .line 29
    invoke-direct {p0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 32
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 37
    throw p0
.end method

.method public final updateApfCapabilities(Landroid/net/apf/ApfCapabilities;)V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 4
    move-result-object v0

    .line 5
    :try_start_0
    sget-object v1, Landroid/net/ip/IIpClient;->DESCRIPTOR:Ljava/lang/String;

    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 14
    iget-object p0, p0, Landroid/net/ip/IIpClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 16
    const/4 p1, 0x0

    .line 17
    const/4 v1, 0x1

    .line 18
    const/16 v2, 0x10

    .line 20
    invoke-interface {p0, v2, v0, p1, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 23
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    if-eqz p0, :cond_0

    .line 26
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 29
    return-void

    .line 30
    :cond_0
    :try_start_1
    new-instance p0, Landroid/os/RemoteException;

    .line 32
    const-string p1, "Method updateApfCapabilities is unimplemented."

    .line 34
    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 37
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 42
    throw p0
.end method

.method public final updateLayer2Information(Landroid/net/Layer2InformationParcelable;)V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 4
    move-result-object v0

    .line 5
    :try_start_0
    sget-object v1, Landroid/net/ip/IIpClient;->DESCRIPTOR:Ljava/lang/String;

    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 14
    iget-object p0, p0, Landroid/net/ip/IIpClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 16
    const/4 p1, 0x0

    .line 17
    const/4 v1, 0x1

    .line 18
    const/16 v2, 0xf

    .line 20
    invoke-interface {p0, v2, v0, p1, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 23
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    if-eqz p0, :cond_0

    .line 26
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 29
    return-void

    .line 30
    :cond_0
    :try_start_1
    new-instance p0, Landroid/os/RemoteException;

    .line 32
    const-string p1, "Method updateLayer2Information is unimplemented."

    .line 34
    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 37
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 42
    throw p0
.end method
