.class public final Landroid/hardware/authsecret/IAuthSecret$Stub$Proxy;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/hardware/authsecret/IAuthSecret;


# instance fields
.field public mRemote:Landroid/os/IBinder;


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/hardware/authsecret/IAuthSecret$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setPrimaryUserCredential([B)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/hardware/authsecret/IAuthSecret$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :try_start_0
    sget-object v1, Landroid/hardware/authsecret/IAuthSecret;->DESCRIPTOR:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 13
    .line 14
    .line 15
    iget-object p0, p0, Landroid/hardware/authsecret/IAuthSecret$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    const/4 v1, 0x1

    .line 19
    invoke-interface {p0, v1, v0, p1, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 20
    .line 21
    .line 22
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    if-eqz p0, :cond_0

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    :try_start_1
    new-instance p0, Landroid/os/RemoteException;

    .line 30
    .line 31
    const-string p1, "Method setPrimaryUserCredential is unimplemented."

    .line 32
    .line 33
    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 39
    .line 40
    .line 41
    throw p0
.end method
