.class public final Landroid/hardware/security/keymint/IRemotelyProvisionedComponent$Stub$Proxy;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/hardware/security/keymint/IRemotelyProvisionedComponent;


# instance fields
.field public mRemote:Landroid/os/IBinder;


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/hardware/security/keymint/IRemotelyProvisionedComponent$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 3
    return-object p0
.end method

.method public final getHardwareInfo()Landroid/hardware/security/keymint/RpcHardwareInfo;
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/hardware/security/keymint/IRemotelyProvisionedComponent$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    sget-object v2, Landroid/hardware/security/keymint/IRemotelyProvisionedComponent;->DESCRIPTOR:Ljava/lang/String;

    .line 13
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 16
    iget-object p0, p0, Landroid/hardware/security/keymint/IRemotelyProvisionedComponent$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    sget-object p0, Landroid/hardware/security/keymint/RpcHardwareInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 31
    invoke-virtual {v1, p0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 34
    move-result-object p0

    .line 35
    check-cast p0, Landroid/hardware/security/keymint/RpcHardwareInfo;
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
    const-string v2, "Method getHardwareInfo is unimplemented."

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
