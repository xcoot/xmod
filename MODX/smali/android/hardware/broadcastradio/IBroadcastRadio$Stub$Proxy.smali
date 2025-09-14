.class public final Landroid/hardware/broadcastradio/IBroadcastRadio$Stub$Proxy;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/hardware/broadcastradio/IBroadcastRadio;


# instance fields
.field public mRemote:Landroid/os/IBinder;


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/hardware/broadcastradio/IBroadcastRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 3
    return-object p0
.end method

.method public final cancel()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/hardware/broadcastradio/IBroadcastRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    sget-object v2, Landroid/hardware/broadcastradio/IBroadcastRadio;->DESCRIPTOR:Ljava/lang/String;

    .line 13
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 16
    iget-object p0, p0, Landroid/hardware/broadcastradio/IBroadcastRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 18
    const/16 v2, 0x9

    .line 20
    const/4 v3, 0x0

    .line 21
    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 24
    move-result p0

    .line 25
    if-eqz p0, :cond_0

    .line 27
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 33
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 36
    return-void

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    :try_start_1
    new-instance p0, Landroid/os/RemoteException;

    .line 41
    const-string v2, "Method cancel is unimplemented."

    .line 43
    invoke-direct {p0, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 46
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 50
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 53
    throw p0
.end method

.method public final getAmFmRegionConfig()Landroid/hardware/broadcastradio/AmFmRegionConfig;
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/hardware/broadcastradio/IBroadcastRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    sget-object v2, Landroid/hardware/broadcastradio/IBroadcastRadio;->DESCRIPTOR:Ljava/lang/String;

    .line 13
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 20
    iget-object p0, p0, Landroid/hardware/broadcastradio/IBroadcastRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 22
    const/4 v3, 0x2

    .line 23
    invoke-interface {p0, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 26
    move-result p0

    .line 27
    if-eqz p0, :cond_0

    .line 29
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 32
    sget-object p0, Landroid/hardware/broadcastradio/AmFmRegionConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 34
    invoke-virtual {v1, p0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 37
    move-result-object p0

    .line 38
    check-cast p0, Landroid/hardware/broadcastradio/AmFmRegionConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 43
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 46
    return-object p0

    .line 47
    :catchall_0
    move-exception p0

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    :try_start_1
    new-instance p0, Landroid/os/RemoteException;

    .line 51
    const-string v2, "Method getAmFmRegionConfig is unimplemented."

    .line 53
    invoke-direct {p0, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 56
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 60
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 63
    throw p0
.end method

.method public final getDabRegionConfig()[Landroid/hardware/broadcastradio/DabTableEntry;
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/hardware/broadcastradio/IBroadcastRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    sget-object v2, Landroid/hardware/broadcastradio/IBroadcastRadio;->DESCRIPTOR:Ljava/lang/String;

    .line 13
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 16
    iget-object p0, p0, Landroid/hardware/broadcastradio/IBroadcastRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    sget-object p0, Landroid/hardware/broadcastradio/DabTableEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 31
    invoke-virtual {v1, p0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 34
    move-result-object p0

    .line 35
    check-cast p0, [Landroid/hardware/broadcastradio/DabTableEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 40
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 43
    return-object p0

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    :try_start_1
    new-instance p0, Landroid/os/RemoteException;

    .line 48
    const-string v2, "Method getDabRegionConfig is unimplemented."

    .line 50
    invoke-direct {p0, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 53
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 57
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 60
    throw p0
.end method

.method public final getImage(I)[B
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/hardware/broadcastradio/IBroadcastRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    sget-object v2, Landroid/hardware/broadcastradio/IBroadcastRadio;->DESCRIPTOR:Ljava/lang/String;

    .line 13
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    iget-object p0, p0, Landroid/hardware/broadcastradio/IBroadcastRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 21
    const/16 p1, 0x10

    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 27
    move-result p0

    .line 28
    if-eqz p0, :cond_0

    .line 30
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 33
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B

    .line 36
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 40
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 43
    return-object p0

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    :try_start_1
    new-instance p0, Landroid/os/RemoteException;

    .line 48
    const-string p1, "Method getImage is unimplemented."

    .line 50
    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 53
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 57
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 60
    throw p0
.end method

.method public final getParameters([Ljava/lang/String;)[Landroid/hardware/broadcastradio/VendorKeyValue;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/hardware/broadcastradio/IBroadcastRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    sget-object v2, Landroid/hardware/broadcastradio/IBroadcastRadio;->DESCRIPTOR:Ljava/lang/String;

    .line 13
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 19
    iget-object p0, p0, Landroid/hardware/broadcastradio/IBroadcastRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 21
    const/16 p1, 0xf

    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 27
    move-result p0

    .line 28
    if-eqz p0, :cond_0

    .line 30
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 33
    sget-object p0, Landroid/hardware/broadcastradio/VendorKeyValue;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 35
    invoke-virtual {v1, p0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 38
    move-result-object p0

    .line 39
    check-cast p0, [Landroid/hardware/broadcastradio/VendorKeyValue;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 44
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 47
    return-object p0

    .line 48
    :catchall_0
    move-exception p0

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    :try_start_1
    new-instance p0, Landroid/os/RemoteException;

    .line 52
    const-string p1, "Method getParameters is unimplemented."

    .line 54
    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 57
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 61
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 64
    throw p0
.end method

.method public final getProperties()Landroid/hardware/broadcastradio/Properties;
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/hardware/broadcastradio/IBroadcastRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    sget-object v2, Landroid/hardware/broadcastradio/IBroadcastRadio;->DESCRIPTOR:Ljava/lang/String;

    .line 13
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 16
    iget-object p0, p0, Landroid/hardware/broadcastradio/IBroadcastRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    sget-object p0, Landroid/hardware/broadcastradio/Properties;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 31
    invoke-virtual {v1, p0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 34
    move-result-object p0

    .line 35
    check-cast p0, Landroid/hardware/broadcastradio/Properties;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 40
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 43
    return-object p0

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    :try_start_1
    new-instance p0, Landroid/os/RemoteException;

    .line 48
    const-string v2, "Method getProperties is unimplemented."

    .line 50
    invoke-direct {p0, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 53
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 57
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 60
    throw p0
.end method

.method public final isConfigFlagSet(I)Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/hardware/broadcastradio/IBroadcastRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    sget-object v2, Landroid/hardware/broadcastradio/IBroadcastRadio;->DESCRIPTOR:Ljava/lang/String;

    .line 13
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    iget-object p0, p0, Landroid/hardware/broadcastradio/IBroadcastRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 21
    const/16 p1, 0xc

    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 27
    move-result p0

    .line 28
    if-eqz p0, :cond_0

    .line 30
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 33
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    .line 36
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 40
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 43
    return p0

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    :try_start_1
    new-instance p0, Landroid/os/RemoteException;

    .line 48
    const-string p1, "Method isConfigFlagSet is unimplemented."

    .line 50
    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 53
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 57
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 60
    throw p0
.end method

.method public final registerAnnouncementListener(Lcom/android/server/broadcastradio/aidl/RadioModule$2;[B)Landroid/hardware/broadcastradio/ICloseHandle;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/hardware/broadcastradio/IBroadcastRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    sget-object v2, Landroid/hardware/broadcastradio/IBroadcastRadio;->DESCRIPTOR:Ljava/lang/String;

    .line 13
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 19
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 22
    iget-object p0, p0, Landroid/hardware/broadcastradio/IBroadcastRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 24
    const/16 p1, 0x11

    .line 26
    const/4 p2, 0x0

    .line 27
    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 30
    move-result p0

    .line 31
    if-eqz p0, :cond_2

    .line 33
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 36
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 39
    move-result-object p0

    .line 40
    sget p1, Landroid/hardware/broadcastradio/ICloseHandle$Stub;->$r8$clinit:I

    .line 42
    if-nez p0, :cond_0

    .line 44
    const/4 p0, 0x0

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    sget-object p1, Landroid/hardware/broadcastradio/ICloseHandle;->DESCRIPTOR:Ljava/lang/String;

    .line 48
    invoke-interface {p0, p1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 51
    move-result-object p1

    .line 52
    if-eqz p1, :cond_1

    .line 54
    instance-of p2, p1, Landroid/hardware/broadcastradio/ICloseHandle;

    .line 56
    if-eqz p2, :cond_1

    .line 58
    move-object p0, p1

    .line 59
    check-cast p0, Landroid/hardware/broadcastradio/ICloseHandle;

    .line 61
    goto :goto_0

    .line 62
    :cond_1
    new-instance p1, Landroid/hardware/broadcastradio/ICloseHandle$Stub$Proxy;

    .line 64
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p0, p1, Landroid/hardware/broadcastradio/ICloseHandle$Stub$Proxy;->mRemote:Landroid/os/IBinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    move-object p0, p1

    .line 70
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 73
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 76
    return-object p0

    .line 77
    :catchall_0
    move-exception p0

    .line 78
    goto :goto_1

    .line 79
    :cond_2
    :try_start_1
    new-instance p0, Landroid/os/RemoteException;

    .line 81
    const-string p1, "Method registerAnnouncementListener is unimplemented."

    .line 83
    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 86
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 90
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 93
    throw p0
.end method

.method public final seek(ZZ)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/hardware/broadcastradio/IBroadcastRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    sget-object v2, Landroid/hardware/broadcastradio/IBroadcastRadio;->DESCRIPTOR:Ljava/lang/String;

    .line 13
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 19
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 22
    iget-object p0, p0, Landroid/hardware/broadcastradio/IBroadcastRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 24
    const/4 p1, 0x7

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
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 38
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 41
    return-void

    .line 42
    :catchall_0
    move-exception p0

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    :try_start_1
    new-instance p0, Landroid/os/RemoteException;

    .line 46
    const-string p1, "Method seek is unimplemented."

    .line 48
    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 51
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 55
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 58
    throw p0
.end method

.method public final setConfigFlag(IZ)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/hardware/broadcastradio/IBroadcastRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    sget-object v2, Landroid/hardware/broadcastradio/IBroadcastRadio;->DESCRIPTOR:Ljava/lang/String;

    .line 13
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 22
    iget-object p0, p0, Landroid/hardware/broadcastradio/IBroadcastRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 24
    const/16 p1, 0xd

    .line 26
    const/4 p2, 0x0

    .line 27
    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 30
    move-result p0

    .line 31
    if-eqz p0, :cond_0

    .line 33
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 39
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 42
    return-void

    .line 43
    :catchall_0
    move-exception p0

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    :try_start_1
    new-instance p0, Landroid/os/RemoteException;

    .line 47
    const-string p1, "Method setConfigFlag is unimplemented."

    .line 49
    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 52
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 56
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 59
    throw p0
.end method

.method public final setParameters([Landroid/hardware/broadcastradio/VendorKeyValue;)[Landroid/hardware/broadcastradio/VendorKeyValue;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/hardware/broadcastradio/IBroadcastRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    sget-object v2, Landroid/hardware/broadcastradio/IBroadcastRadio;->DESCRIPTOR:Ljava/lang/String;

    .line 13
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 20
    iget-object p0, p0, Landroid/hardware/broadcastradio/IBroadcastRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 22
    const/16 p1, 0xe

    .line 24
    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 27
    move-result p0

    .line 28
    if-eqz p0, :cond_0

    .line 30
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 33
    sget-object p0, Landroid/hardware/broadcastradio/VendorKeyValue;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 35
    invoke-virtual {v1, p0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 38
    move-result-object p0

    .line 39
    check-cast p0, [Landroid/hardware/broadcastradio/VendorKeyValue;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 44
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 47
    return-object p0

    .line 48
    :catchall_0
    move-exception p0

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    :try_start_1
    new-instance p0, Landroid/os/RemoteException;

    .line 52
    const-string p1, "Method setParameters is unimplemented."

    .line 54
    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 57
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 61
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 64
    throw p0
.end method

.method public final setTunerCallback(Lcom/android/server/broadcastradio/aidl/RadioModule$1;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/hardware/broadcastradio/IBroadcastRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    sget-object v2, Landroid/hardware/broadcastradio/IBroadcastRadio;->DESCRIPTOR:Ljava/lang/String;

    .line 13
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 19
    iget-object p0, p0, Landroid/hardware/broadcastradio/IBroadcastRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 21
    const/4 p1, 0x4

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
    const-string p1, "Method setTunerCallback is unimplemented."

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

.method public final startProgramListUpdates(Landroid/hardware/broadcastradio/ProgramFilter;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/hardware/broadcastradio/IBroadcastRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    sget-object v2, Landroid/hardware/broadcastradio/IBroadcastRadio;->DESCRIPTOR:Ljava/lang/String;

    .line 13
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 20
    iget-object p0, p0, Landroid/hardware/broadcastradio/IBroadcastRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 22
    const/16 p1, 0xa

    .line 24
    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 27
    move-result p0

    .line 28
    if-eqz p0, :cond_0

    .line 30
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 36
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 39
    return-void

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
    const-string p1, "Method startProgramListUpdates is unimplemented."

    .line 46
    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

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

.method public final step(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/hardware/broadcastradio/IBroadcastRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    sget-object v2, Landroid/hardware/broadcastradio/IBroadcastRadio;->DESCRIPTOR:Ljava/lang/String;

    .line 13
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 19
    iget-object p0, p0, Landroid/hardware/broadcastradio/IBroadcastRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 21
    const/16 p1, 0x8

    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 27
    move-result p0

    .line 28
    if-eqz p0, :cond_0

    .line 30
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 36
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 39
    return-void

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
    const-string p1, "Method step is unimplemented."

    .line 46
    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

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

.method public final stopProgramListUpdates()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/hardware/broadcastradio/IBroadcastRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    sget-object v2, Landroid/hardware/broadcastradio/IBroadcastRadio;->DESCRIPTOR:Ljava/lang/String;

    .line 13
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 16
    iget-object p0, p0, Landroid/hardware/broadcastradio/IBroadcastRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 18
    const/16 v2, 0xb

    .line 20
    const/4 v3, 0x0

    .line 21
    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 24
    move-result p0

    .line 25
    if-eqz p0, :cond_0

    .line 27
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 33
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 36
    return-void

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    :try_start_1
    new-instance p0, Landroid/os/RemoteException;

    .line 41
    const-string v2, "Method stopProgramListUpdates is unimplemented."

    .line 43
    invoke-direct {p0, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 46
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 50
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 53
    throw p0
.end method

.method public final tune(Landroid/hardware/broadcastradio/ProgramSelector;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/hardware/broadcastradio/IBroadcastRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    sget-object v2, Landroid/hardware/broadcastradio/IBroadcastRadio;->DESCRIPTOR:Ljava/lang/String;

    .line 13
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 20
    iget-object p0, p0, Landroid/hardware/broadcastradio/IBroadcastRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 22
    const/4 p1, 0x6

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
    const-string p1, "Method tune is unimplemented."

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

.method public final unsetTunerCallback()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/hardware/broadcastradio/IBroadcastRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    sget-object v2, Landroid/hardware/broadcastradio/IBroadcastRadio;->DESCRIPTOR:Ljava/lang/String;

    .line 13
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 16
    iget-object p0, p0, Landroid/hardware/broadcastradio/IBroadcastRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 18
    const/4 v2, 0x5

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
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 32
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 35
    return-void

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    :try_start_1
    new-instance p0, Landroid/os/RemoteException;

    .line 40
    const-string v2, "Method unsetTunerCallback is unimplemented."

    .line 42
    invoke-direct {p0, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 45
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 49
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 52
    throw p0
.end method
