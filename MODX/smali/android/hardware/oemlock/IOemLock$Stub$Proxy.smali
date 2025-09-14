.class public final Landroid/hardware/oemlock/IOemLock$Stub$Proxy;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/hardware/oemlock/IOemLock;


# instance fields
.field public mRemote:Landroid/os/IBinder;


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/hardware/oemlock/IOemLock$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 3
    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/hardware/oemlock/IOemLock$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 3
    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    .line 6
    move-result-object v0

    .line 7
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 10
    move-result-object v1

    .line 11
    :try_start_0
    sget-object v2, Landroid/hardware/oemlock/IOemLock;->DESCRIPTOR:Ljava/lang/String;

    .line 13
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 16
    iget-object p0, p0, Landroid/hardware/oemlock/IOemLock$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 18
    const/4 v2, 0x1

    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 23
    move-result p0

    .line 24
    if-eqz p0, :cond_0

    .line 26
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 29
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 32
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 36
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 39
    return-object p0

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    :try_start_1
    new-instance p0, Landroid/os/RemoteException;

    .line 44
    const-string v2, "Method getName is unimplemented."

    .line 46
    invoke-direct {p0, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 49
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 53
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 56
    throw p0
.end method

.method public final isOemUnlockAllowedByCarrier()Z
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/hardware/oemlock/IOemLock$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 3
    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    .line 6
    move-result-object v0

    .line 7
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 10
    move-result-object v1

    .line 11
    :try_start_0
    sget-object v2, Landroid/hardware/oemlock/IOemLock;->DESCRIPTOR:Ljava/lang/String;

    .line 13
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 16
    iget-object p0, p0, Landroid/hardware/oemlock/IOemLock$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 18
    const/4 v2, 0x2

    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 23
    move-result p0

    .line 24
    if-eqz p0, :cond_0

    .line 26
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 29
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    .line 32
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 36
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 39
    return p0

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    :try_start_1
    new-instance p0, Landroid/os/RemoteException;

    .line 44
    const-string v2, "Method isOemUnlockAllowedByCarrier is unimplemented."

    .line 46
    invoke-direct {p0, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 49
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 53
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 56
    throw p0
.end method

.method public final isOemUnlockAllowedByDevice()Z
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/hardware/oemlock/IOemLock$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 3
    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    .line 6
    move-result-object v0

    .line 7
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 10
    move-result-object v1

    .line 11
    :try_start_0
    sget-object v2, Landroid/hardware/oemlock/IOemLock;->DESCRIPTOR:Ljava/lang/String;

    .line 13
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 16
    iget-object p0, p0, Landroid/hardware/oemlock/IOemLock$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 18
    const/4 v2, 0x3

    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 23
    move-result p0

    .line 24
    if-eqz p0, :cond_0

    .line 26
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 29
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    .line 32
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 36
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 39
    return p0

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    :try_start_1
    new-instance p0, Landroid/os/RemoteException;

    .line 44
    const-string v2, "Method isOemUnlockAllowedByDevice is unimplemented."

    .line 46
    invoke-direct {p0, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 49
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 53
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 56
    throw p0
.end method

.method public final setOemUnlockAllowedByCarrier(Z[B)I
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/hardware/oemlock/IOemLock$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 3
    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    .line 6
    move-result-object v0

    .line 7
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 10
    move-result-object v1

    .line 11
    :try_start_0
    sget-object v2, Landroid/hardware/oemlock/IOemLock;->DESCRIPTOR:Ljava/lang/String;

    .line 13
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 19
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 22
    iget-object p0, p0, Landroid/hardware/oemlock/IOemLock$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 24
    const/4 p1, 0x4

    .line 25
    const/4 p2, 0x0

    .line 26
    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 29
    move-result p0

    .line 30
    if-eqz p0, :cond_0

    .line 32
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 35
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 38
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 42
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 45
    return p0

    .line 46
    :catchall_0
    move-exception p0

    .line 47
    goto :goto_0

    .line 48
    :cond_0
    :try_start_1
    new-instance p0, Landroid/os/RemoteException;

    .line 50
    const-string p1, "Method setOemUnlockAllowedByCarrier is unimplemented."

    .line 52
    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 55
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 59
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 62
    throw p0
.end method

.method public final setOemUnlockAllowedByDevice(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/hardware/oemlock/IOemLock$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 3
    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    .line 6
    move-result-object v0

    .line 7
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 10
    move-result-object v1

    .line 11
    :try_start_0
    sget-object v2, Landroid/hardware/oemlock/IOemLock;->DESCRIPTOR:Ljava/lang/String;

    .line 13
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 19
    iget-object p0, p0, Landroid/hardware/oemlock/IOemLock$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 21
    const/4 p1, 0x5

    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 26
    move-result p0

    .line 27
    if-eqz p0, :cond_0

    .line 29
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 35
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 38
    return-void

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    :try_start_1
    new-instance p0, Landroid/os/RemoteException;

    .line 43
    const-string p1, "Method setOemUnlockAllowedByDevice is unimplemented."

    .line 45
    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 48
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 52
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 55
    throw p0
.end method
