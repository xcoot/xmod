.class public final Landroid/net/ipmemorystore/IOnNetworkAttributesRetrievedListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/net/ipmemorystore/IOnNetworkAttributesRetrievedListener;


# instance fields
.field public mCachedHash:Ljava/lang/String;

.field public mCachedVersion:I

.field public mRemote:Landroid/os/IBinder;


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/net/ipmemorystore/IOnNetworkAttributesRetrievedListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    iget-object v1, p0, Landroid/net/ipmemorystore/IOnNetworkAttributesRetrievedListener$Stub$Proxy;->mCachedHash:Ljava/lang/String;

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
    sget-object v2, Landroid/net/ipmemorystore/IOnNetworkAttributesRetrievedListener;->DESCRIPTOR:Ljava/lang/String;

    .line 22
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 25
    iget-object v2, p0, Landroid/net/ipmemorystore/IOnNetworkAttributesRetrievedListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    iput-object v2, p0, Landroid/net/ipmemorystore/IOnNetworkAttributesRetrievedListener$Stub$Proxy;->mCachedHash:Ljava/lang/String;
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
    iget-object v0, p0, Landroid/net/ipmemorystore/IOnNetworkAttributesRetrievedListener$Stub$Proxy;->mCachedHash:Ljava/lang/String;
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
    iget v0, p0, Landroid/net/ipmemorystore/IOnNetworkAttributesRetrievedListener$Stub$Proxy;->mCachedVersion:I

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
    sget-object v2, Landroid/net/ipmemorystore/IOnNetworkAttributesRetrievedListener;->DESCRIPTOR:Ljava/lang/String;

    .line 16
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 19
    iget-object v2, p0, Landroid/net/ipmemorystore/IOnNetworkAttributesRetrievedListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    iput v2, p0, Landroid/net/ipmemorystore/IOnNetworkAttributesRetrievedListener$Stub$Proxy;->mCachedVersion:I
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
    iget p0, p0, Landroid/net/ipmemorystore/IOnNetworkAttributesRetrievedListener$Stub$Proxy;->mCachedVersion:I

    .line 54
    return p0
.end method

.method public final onNetworkAttributesRetrieved(Landroid/net/ipmemorystore/StatusParcelable;Ljava/lang/String;Landroid/net/ipmemorystore/NetworkAttributesParcelable;)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 4
    move-result-object v0

    .line 5
    :try_start_0
    sget-object v1, Landroid/net/ipmemorystore/IOnNetworkAttributesRetrievedListener;->DESCRIPTOR:Ljava/lang/String;

    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 14
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 20
    iget-object p0, p0, Landroid/net/ipmemorystore/IOnNetworkAttributesRetrievedListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 22
    const/4 p1, 0x0

    .line 23
    const/4 p2, 0x1

    .line 24
    invoke-interface {p0, p2, v0, p1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 27
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    if-eqz p0, :cond_0

    .line 30
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 33
    return-void

    .line 34
    :cond_0
    :try_start_1
    new-instance p0, Landroid/os/RemoteException;

    .line 36
    const-string p1, "Method onNetworkAttributesRetrieved is unimplemented."

    .line 38
    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 41
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    :catchall_0
    move-exception p0

    .line 43
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 46
    throw p0
.end method
