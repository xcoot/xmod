.class public final Landroid/os/IInstalld$Stub$Proxy;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IInstalld;


# instance fields
.field public mRemote:Landroid/os/IBinder;


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 3
    return-object p0
.end method

.method public final cleanupInvalidPackageDirs(Ljava/lang/String;II)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    const-string v2, "android.os.IInstalld"

    .line 13
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 22
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 25
    iget-object p0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 27
    const/16 p1, 0x31

    .line 29
    const/4 p2, 0x0

    .line 30
    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

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
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 47
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 50
    throw p0
.end method

.method public final clearAppData(Ljava/lang/String;Ljava/lang/String;IIJ)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    const-string v2, "android.os.IInstalld"

    .line 13
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 25
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 28
    invoke-virtual {v0, p5, p6}, Landroid/os/Parcel;->writeLong(J)V

    .line 31
    iget-object p0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 33
    const/16 p1, 0x9

    .line 35
    const/4 p2, 0x0

    .line 36
    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 39
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 45
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 48
    return-void

    .line 49
    :catchall_0
    move-exception p0

    .line 50
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 53
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 56
    throw p0
.end method

.method public final clearAppProfiles(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    const-string v2, "android.os.IInstalld"

    .line 13
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 22
    iget-object p0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 24
    const/16 p1, 0x19

    .line 26
    const/4 p2, 0x0

    .line 27
    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

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
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 44
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 47
    throw p0
.end method

.method public final compressFile(Ljava/lang/String;Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    const-string v2, "android.os.IInstalld"

    .line 13
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 22
    iget-object p0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 24
    const/16 p1, 0x46

    .line 26
    const/4 p2, 0x0

    .line 27
    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

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
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 44
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 47
    throw p0
.end method

.method public final controlDexOptBlocking(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    const-string v2, "android.os.IInstalld"

    .line 13
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 19
    iget-object p0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 21
    const/16 p1, 0x14

    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

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
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 41
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 44
    throw p0
.end method

.method public final copyKnoxAppData(Ljava/lang/String;ILjava/lang/String;II)Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    const-string v2, "android.os.IInstalld"

    .line 13
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 22
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 28
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 31
    iget-object p0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 33
    const/16 p1, 0x36

    .line 35
    const/4 p2, 0x0

    .line 36
    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 39
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 42
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    .line 45
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 49
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 52
    return p0

    .line 53
    :catchall_0
    move-exception p0

    .line 54
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 57
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 60
    throw p0
.end method

.method public final copyKnoxCancel(Ljava/lang/String;J)Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    const-string v2, "android.os.IInstalld"

    .line 13
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 22
    iget-object p0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 24
    const/16 p1, 0x38

    .line 26
    const/4 p2, 0x0

    .line 27
    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

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
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 48
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 51
    throw p0
.end method

.method public final copyKnoxChunks(Ljava/lang/String;ILjava/lang/String;IIJJJ)I
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    const-string v2, "android.os.IInstalld"

    .line 13
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 22
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 28
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 31
    invoke-virtual {v0, p6, p7}, Landroid/os/Parcel;->writeLong(J)V

    .line 34
    invoke-virtual {v0, p8, p9}, Landroid/os/Parcel;->writeLong(J)V

    .line 37
    invoke-virtual {v0, p10, p11}, Landroid/os/Parcel;->writeLong(J)V

    .line 40
    iget-object p0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 42
    const/16 p1, 0x37

    .line 44
    const/4 p2, 0x0

    .line 45
    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 48
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 51
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 54
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 58
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 61
    return p0

    .line 62
    :catchall_0
    move-exception p0

    .line 63
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 66
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 69
    throw p0
.end method

.method public final copySystemProfile(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    const-string v2, "android.os.IInstalld"

    .line 13
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 22
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 28
    iget-object p0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 30
    const/16 p1, 0x18

    .line 32
    const/4 p2, 0x0

    .line 33
    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 36
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 39
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    .line 42
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 46
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 49
    return p0

    .line 50
    :catchall_0
    move-exception p0

    .line 51
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 54
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 57
    throw p0
.end method

.method public final createAppData(Landroid/os/CreateAppDataArgs;)Landroid/os/CreateAppDataResult;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    const-string v2, "android.os.IInstalld"

    .line 13
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 20
    iget-object p0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 22
    const/4 p1, 0x4

    .line 23
    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 26
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 29
    sget-object p0, Landroid/os/CreateAppDataResult;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 31
    invoke-virtual {v1, p0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 34
    move-result-object p0

    .line 35
    check-cast p0, Landroid/os/CreateAppDataResult;
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
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 48
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 51
    throw p0
.end method

.method public final createAppDataBatched([Landroid/os/CreateAppDataArgs;)[Landroid/os/CreateAppDataResult;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    const-string v2, "android.os.IInstalld"

    .line 13
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 20
    iget-object p0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 22
    const/4 p1, 0x5

    .line 23
    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 26
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 29
    sget-object p0, Landroid/os/CreateAppDataResult;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 31
    invoke-virtual {v1, p0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 34
    move-result-object p0

    .line 35
    check-cast p0, [Landroid/os/CreateAppDataResult;
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
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 48
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 51
    throw p0
.end method

.method public final createEncAppData(Ljava/lang/String;III)Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    const-string v2, "android.os.IInstalld"

    .line 13
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 22
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 25
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 28
    iget-object p0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 30
    const/16 p1, 0x3c

    .line 32
    const/4 p2, 0x0

    .line 33
    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 36
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 39
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    .line 42
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 46
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 49
    return p0

    .line 50
    :catchall_0
    move-exception p0

    .line 51
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 54
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 57
    throw p0
.end method

.method public final createFsveritySetupAuthToken(Landroid/os/ParcelFileDescriptor;I)Landroid/os/IInstalld$IFsveritySetupAuthToken;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    const-string v2, "android.os.IInstalld"

    .line 13
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 20
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 23
    iget-object p0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 25
    const/16 p1, 0x34

    .line 27
    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 30
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 33
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 36
    move-result-object p0

    .line 37
    invoke-static {p0}, Landroid/os/IInstalld$IFsveritySetupAuthToken$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IInstalld$IFsveritySetupAuthToken;

    .line 40
    move-result-object p0
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
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 52
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 55
    throw p0
.end method

.method public final createOatDir(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    const-string v2, "android.os.IInstalld"

    .line 13
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 25
    iget-object p0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 27
    const/16 p1, 0x21

    .line 29
    const/4 p2, 0x0

    .line 30
    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

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
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 47
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 50
    throw p0
.end method

.method public final createProfileSnapshot(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    const-string v2, "android.os.IInstalld"

    .line 13
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 28
    iget-object p0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 30
    const/16 p1, 0x1c

    .line 32
    const/4 p2, 0x0

    .line 33
    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 36
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 39
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    .line 42
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 46
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 49
    return p0

    .line 50
    :catchall_0
    move-exception p0

    .line 51
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 54
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 57
    throw p0
.end method

.method public final createUserData(Ljava/lang/String;III)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    const-string v2, "android.os.IInstalld"

    .line 13
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 22
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 25
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 28
    iget-object p0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 30
    const/4 p1, 0x1

    .line 31
    const/4 p2, 0x0

    .line 32
    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 35
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 41
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 44
    return-void

    .line 45
    :catchall_0
    move-exception p0

    .line 46
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 49
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 52
    throw p0
.end method

.method public final deleteKnoxFile(Ljava/lang/String;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    const-string v2, "android.os.IInstalld"

    .line 13
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19
    iget-object p0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 21
    const/16 p1, 0x3b

    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 27
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 30
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    .line 33
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 37
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 40
    return p0

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 45
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 48
    throw p0
.end method

.method public final deleteOdex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    const-string v2, "android.os.IInstalld"

    .line 13
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 28
    iget-object p0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 30
    const/16 p1, 0x24

    .line 32
    const/4 p2, 0x0

    .line 33
    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 36
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 39
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    .line 42
    move-result-wide p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 46
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 49
    return-wide p0

    .line 50
    :catchall_0
    move-exception p0

    .line 51
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 54
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 57
    throw p0
.end method

.method public final deleteReferenceProfile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    const-string v2, "android.os.IInstalld"

    .line 13
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 22
    iget-object p0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 24
    const/16 p1, 0x1b

    .line 26
    const/4 p2, 0x0

    .line 27
    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

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
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 44
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 47
    throw p0
.end method

.method public final destroyAppData(Ljava/lang/String;Ljava/lang/String;IIJ)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    const-string v2, "android.os.IInstalld"

    .line 13
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 25
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 28
    invoke-virtual {v0, p5, p6}, Landroid/os/Parcel;->writeLong(J)V

    .line 31
    iget-object p0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 33
    const/16 p1, 0xa

    .line 35
    const/4 p2, 0x0

    .line 36
    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 39
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 45
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 48
    return-void

    .line 49
    :catchall_0
    move-exception p0

    .line 50
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 53
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 56
    throw p0
.end method

.method public final destroyAppDataSnapshot(Ljava/lang/String;Ljava/lang/String;IJII)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    const-string v2, "android.os.IInstalld"

    .line 13
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 25
    invoke-virtual {v0, p4, p5}, Landroid/os/Parcel;->writeLong(J)V

    .line 28
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 31
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 34
    iget-object p0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 36
    const/16 p1, 0x2c

    .line 38
    const/4 p2, 0x0

    .line 39
    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 42
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 48
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 51
    return-void

    .line 52
    :catchall_0
    move-exception p0

    .line 53
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 56
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 59
    throw p0
.end method

.method public final destroyAppProfiles(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    const-string v2, "android.os.IInstalld"

    .line 13
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19
    iget-object p0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 21
    const/16 p1, 0x1a

    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

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
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 41
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 44
    throw p0
.end method

.method public final destroyCeSnapshotsNotSpecified(Ljava/lang/String;I[I)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    const-string v2, "android.os.IInstalld"

    .line 13
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 22
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 25
    iget-object p0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 27
    const/16 p1, 0x2d

    .line 29
    const/4 p2, 0x0

    .line 30
    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

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
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 47
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 50
    throw p0
.end method

.method public final destroyProfileSnapshot(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    const-string v2, "android.os.IInstalld"

    .line 13
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 22
    iget-object p0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 24
    const/16 p1, 0x1d

    .line 26
    const/4 p2, 0x0

    .line 27
    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

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
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 44
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 47
    throw p0
.end method

.method public final destroyUserData(Ljava/lang/String;II)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    const-string v2, "android.os.IInstalld"

    .line 13
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 22
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 25
    iget-object p0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 27
    const/4 p1, 0x2

    .line 28
    const/4 p2, 0x0

    .line 29
    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

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
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 46
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 49
    throw p0
.end method

.method public final dexopt(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .line 1
    move-object v0, p0

    .line 2
    iget-object v1, v0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 4
    invoke-static {v1}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    .line 7
    move-result-object v1

    .line 8
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 11
    move-result-object v2

    .line 12
    :try_start_0
    const-string v3, "android.os.IInstalld"

    .line 14
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 17
    move-object v3, p1

    .line 18
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 21
    move v3, p2

    .line 22
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 25
    move-object v3, p3

    .line 26
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 29
    move-object v3, p4

    .line 30
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 33
    move v3, p5

    .line 34
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 37
    move-object v3, p6

    .line 38
    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 41
    move v3, p7

    .line 42
    invoke-virtual {v1, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 45
    move-object v3, p8

    .line 46
    invoke-virtual {v1, p8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    move-object v3, p9

    .line 50
    invoke-virtual {v1, p9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 53
    move-object v3, p10

    .line 54
    invoke-virtual {v1, p10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 57
    move-object/from16 v3, p11

    .line 59
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 62
    move/from16 v3, p12

    .line 64
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 67
    move/from16 v3, p13

    .line 69
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    move-object/from16 v3, p14

    .line 74
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 77
    move-object/from16 v3, p15

    .line 79
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 82
    move-object/from16 v3, p16

    .line 84
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 87
    iget-object v0, v0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 89
    const/16 v3, 0x13

    .line 91
    const/4 v4, 0x0

    .line 92
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 95
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 98
    invoke-virtual {v2}, Landroid/os/Parcel;->readBoolean()Z

    .line 101
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 105
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 108
    return v0

    .line 109
    :catchall_0
    move-exception v0

    .line 110
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 113
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 116
    throw v0
.end method

.method public final dumpProfiles(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    const-string v2, "android.os.IInstalld"

    .line 13
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 31
    iget-object p0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 33
    const/16 p1, 0x17

    .line 35
    const/4 p2, 0x0

    .line 36
    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 39
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 42
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    .line 45
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 49
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 52
    return p0

    .line 53
    :catchall_0
    move-exception p0

    .line 54
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 57
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 60
    throw p0
.end method

.method public final enableFsverity(Landroid/os/IInstalld$IFsveritySetupAuthToken;Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    const-string v2, "android.os.IInstalld"

    .line 13
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 19
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 25
    iget-object p0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 27
    const/16 p1, 0x35

    .line 29
    const/4 p2, 0x0

    .line 30
    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 33
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 36
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 39
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 43
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 46
    return p0

    .line 47
    :catchall_0
    move-exception p0

    .line 48
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 51
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 54
    throw p0
.end method

.method public final fixupAppData(Ljava/lang/String;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    const-string v2, "android.os.IInstalld"

    .line 13
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 22
    iget-object p0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 24
    const/16 p1, 0xb

    .line 26
    const/4 p2, 0x0

    .line 27
    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

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
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 44
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 47
    throw p0
.end method

.method public final freeCache(Ljava/lang/String;JI)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    const-string v2, "android.os.IInstalld"

    .line 13
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 22
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 25
    iget-object p0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 27
    const/16 p1, 0x1f

    .line 29
    const/4 p2, 0x0

    .line 30
    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

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
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 47
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 50
    throw p0
.end method

.method public final getAppCrates(Ljava/lang/String;[Ljava/lang/String;I)[Landroid/os/storage/CrateMetadata;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    const-string v2, "android.os.IInstalld"

    .line 13
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 22
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 25
    iget-object p0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 27
    const/16 p1, 0xf

    .line 29
    const/4 p2, 0x0

    .line 30
    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 33
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 36
    sget-object p0, Landroid/os/storage/CrateMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 38
    invoke-virtual {v1, p0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 41
    move-result-object p0

    .line 42
    check-cast p0, [Landroid/os/storage/CrateMetadata;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 47
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 50
    return-object p0

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 55
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 58
    throw p0
.end method

.method public final getAppSize(Ljava/lang/String;[Ljava/lang/String;III[J[Ljava/lang/String;)[J
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    const-string v2, "android.os.IInstalld"

    .line 13
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 22
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 25
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 28
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 31
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 34
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 37
    iget-object p0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 39
    const/16 p1, 0xc

    .line 41
    const/4 p2, 0x0

    .line 42
    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 45
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 48
    invoke-virtual {v1}, Landroid/os/Parcel;->createLongArray()[J

    .line 51
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 55
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 58
    return-object p0

    .line 59
    :catchall_0
    move-exception p0

    .line 60
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 63
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 66
    throw p0
.end method

.method public final getCompressedStats(Ljava/lang/String;[J)Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    const-string v2, "android.os.IInstalld"

    .line 13
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19
    array-length p1, p2

    .line 20
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 23
    iget-object p0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 25
    const/16 p1, 0x47

    .line 27
    const/4 v2, 0x0

    .line 28
    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 31
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 34
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    .line 37
    move-result p0

    .line 38
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->readLongArray([J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 44
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 47
    return p0

    .line 48
    :catchall_0
    move-exception p0

    .line 49
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 52
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 55
    throw p0
.end method

.method public final getDualDARLockstate()Z
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    const-string v2, "android.os.IInstalld"

    .line 13
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 16
    iget-object p0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 18
    const/16 v2, 0x45

    .line 20
    const/4 v3, 0x0

    .line 21
    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 24
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 27
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    .line 30
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 34
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 37
    return p0

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 42
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 45
    throw p0
.end method

.method public final getExternalSize(Ljava/lang/String;II[I)[J
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    const-string v2, "android.os.IInstalld"

    .line 13
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 22
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 25
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 28
    iget-object p0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 30
    const/16 p1, 0xe

    .line 32
    const/4 p2, 0x0

    .line 33
    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 36
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 39
    invoke-virtual {v1}, Landroid/os/Parcel;->createLongArray()[J

    .line 42
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 46
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 49
    return-object p0

    .line 50
    :catchall_0
    move-exception p0

    .line 51
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 54
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 57
    throw p0
.end method

.method public final getKnoxFileInfo(Ljava/lang/String;)[J
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    const-string v2, "android.os.IInstalld"

    .line 13
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19
    iget-object p0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 21
    const/16 p1, 0x39

    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 27
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 30
    invoke-virtual {v1}, Landroid/os/Parcel;->createLongArray()[J

    .line 33
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 37
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 40
    return-object p0

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 45
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 48
    throw p0
.end method

.method public final getKnoxScanDir(Ljava/lang/String;JLjava/util/List;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    const-string v2, "android.os.IInstalld"

    .line 13
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 22
    iget-object p0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 24
    const/16 p1, 0x3a

    .line 26
    const/4 p2, 0x0

    .line 27
    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 30
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 33
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    .line 36
    move-result p0

    .line 37
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 43
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 46
    return p0

    .line 47
    :catchall_0
    move-exception p0

    .line 48
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 51
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 54
    throw p0
.end method

.method public final getOdexVisibility(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    const-string v2, "android.os.IInstalld"

    .line 13
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 28
    iget-object p0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 30
    const/16 p1, 0x32

    .line 32
    const/4 p2, 0x0

    .line 33
    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 36
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 39
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 42
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 46
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 49
    return p0

    .line 50
    :catchall_0
    move-exception p0

    .line 51
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 54
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 57
    throw p0
.end method

.method public final getUserCrates(Ljava/lang/String;I)[Landroid/os/storage/CrateMetadata;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    const-string v2, "android.os.IInstalld"

    .line 13
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 22
    iget-object p0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 24
    const/16 p1, 0x10

    .line 26
    const/4 p2, 0x0

    .line 27
    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 30
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 33
    sget-object p0, Landroid/os/storage/CrateMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 35
    invoke-virtual {v1, p0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 38
    move-result-object p0

    .line 39
    check-cast p0, [Landroid/os/storage/CrateMetadata;
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
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 52
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 55
    throw p0
.end method

.method public final getUserSize(Ljava/lang/String;II[I)[J
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    const-string v2, "android.os.IInstalld"

    .line 13
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 22
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 25
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 28
    iget-object p0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 30
    const/16 p1, 0xd

    .line 32
    const/4 p2, 0x0

    .line 33
    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 36
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 39
    invoke-virtual {v1}, Landroid/os/Parcel;->createLongArray()[J

    .line 42
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 46
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 49
    return-object p0

    .line 50
    :catchall_0
    move-exception p0

    .line 51
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 54
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 57
    throw p0
.end method

.method public final hasDualDARPolicy(Ljava/lang/String;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    const-string v2, "android.os.IInstalld"

    .line 13
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19
    iget-object p0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 21
    const/16 p1, 0x43

    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 27
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 30
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    .line 33
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 37
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 40
    return p0

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 45
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 48
    throw p0
.end method

.method public final hasDualDARPolicyRecursively(Ljava/lang/String;Ljava/util/List;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    const-string v2, "android.os.IInstalld"

    .line 13
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19
    iget-object p0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 21
    const/16 p1, 0x44

    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 27
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 30
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    .line 33
    move-result p0

    .line 34
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V
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
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 48
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 51
    throw p0
.end method

.method public final hashSecondaryDexFile(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)[B
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    const-string v2, "android.os.IInstalld"

    .line 13
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 25
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 31
    iget-object p0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 33
    const/16 p1, 0x26

    .line 35
    const/4 p2, 0x0

    .line 36
    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 39
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 42
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B

    .line 45
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 49
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 52
    return-object p0

    .line 53
    :catchall_0
    move-exception p0

    .line 54
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 57
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 60
    throw p0
.end method

.method public final invalidateMounts()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    const-string v2, "android.os.IInstalld"

    .line 13
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 16
    iget-object p0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 18
    const/16 v2, 0x27

    .line 20
    const/4 v3, 0x0

    .line 21
    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 24
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 30
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 33
    return-void

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 38
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 41
    throw p0
.end method

.method public final isQuotaSupported(Ljava/lang/String;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    const-string v2, "android.os.IInstalld"

    .line 13
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19
    iget-object p0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 21
    const/16 p1, 0x28

    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 27
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 30
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    .line 33
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 37
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 40
    return p0

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 45
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 48
    throw p0
.end method

.method public final linkFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    const-string v2, "android.os.IInstalld"

    .line 13
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 28
    iget-object p0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 30
    const/16 p1, 0x22

    .line 32
    const/4 p2, 0x0

    .line 33
    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 36
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 42
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 45
    return-void

    .line 46
    :catchall_0
    move-exception p0

    .line 47
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 50
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 53
    throw p0
.end method

.method public final linkNativeLibraryDirectory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    const-string v2, "android.os.IInstalld"

    .line 13
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 28
    iget-object p0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 30
    const/16 p1, 0x20

    .line 32
    const/4 p2, 0x0

    .line 33
    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 36
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 42
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 45
    return-void

    .line 46
    :catchall_0
    move-exception p0

    .line 47
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 50
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 53
    throw p0
.end method

.method public final mergeProfiles(ILjava/lang/String;Ljava/lang/String;)I
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    const-string v2, "android.os.IInstalld"

    .line 13
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 25
    iget-object p0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 27
    const/16 p1, 0x16

    .line 29
    const/4 p2, 0x0

    .line 30
    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 33
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 36
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 39
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 43
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 46
    return p0

    .line 47
    :catchall_0
    move-exception p0

    .line 48
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 51
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 54
    throw p0
.end method

.method public final migrateAppData(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    const-string v2, "android.os.IInstalld"

    .line 13
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 25
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 28
    iget-object p0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 30
    const/16 p1, 0x8

    .line 32
    const/4 p2, 0x0

    .line 33
    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 36
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 42
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 45
    return-void

    .line 46
    :catchall_0
    move-exception p0

    .line 47
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 50
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 53
    throw p0
.end method

.method public final migrateLegacyObbData()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    const-string v2, "android.os.IInstalld"

    .line 13
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 16
    iget-object p0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 18
    const/16 v2, 0x30

    .line 20
    const/4 v3, 0x0

    .line 21
    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 24
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 30
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 33
    return-void

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 38
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 41
    throw p0
.end method

.method public final migrateSdpDb(Ljava/lang/String;I)Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    const-string v2, "android.os.IInstalld"

    .line 13
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 22
    iget-object p0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 24
    const/16 p1, 0x3f

    .line 26
    const/4 p2, 0x0

    .line 27
    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

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
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 48
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 51
    throw p0
.end method

.method public final moveAb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    const-string v2, "android.os.IInstalld"

    .line 13
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 28
    iget-object p0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 30
    const/16 p1, 0x23

    .line 32
    const/4 p2, 0x0

    .line 33
    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 36
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 42
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 45
    return-void

    .line 46
    :catchall_0
    move-exception p0

    .line 47
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 50
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 53
    throw p0
.end method

.method public final moveCompleteApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    const-string v2, "android.os.IInstalld"

    .line 13
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 28
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 31
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 34
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 37
    iget-object p0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 39
    const/16 p1, 0x12

    .line 41
    const/4 p2, 0x0

    .line 42
    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 45
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 51
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 54
    return-void

    .line 55
    :catchall_0
    move-exception p0

    .line 56
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 59
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 62
    throw p0
.end method

.method public final onPrivateVolumeRemoved(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    const-string v2, "android.os.IInstalld"

    .line 13
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19
    iget-object p0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 21
    const/16 p1, 0x2f

    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

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
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 41
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 44
    throw p0
.end method

.method public final prepareAppProfile(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    const-string v2, "android.os.IInstalld"

    .line 13
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 22
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 25
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 31
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 34
    iget-object p0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 36
    const/16 p1, 0x29

    .line 38
    const/4 p2, 0x0

    .line 39
    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 42
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 45
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    .line 48
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 52
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 55
    return p0

    .line 56
    :catchall_0
    move-exception p0

    .line 57
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 60
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 63
    throw p0
.end method

.method public final reconcileSdkData(Landroid/os/ReconcileSdkDataArgs;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    const-string v2, "android.os.IInstalld"

    .line 13
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 20
    iget-object p0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 22
    const/4 p1, 0x6

    .line 23
    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

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
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 40
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 43
    throw p0
.end method

.method public final reconcileSecondaryDexFile(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    const-string v2, "android.os.IInstalld"

    .line 13
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 25
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 28
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 31
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 34
    iget-object p0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 36
    const/16 p1, 0x25

    .line 38
    const/4 p2, 0x0

    .line 39
    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 42
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 45
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    .line 48
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 52
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 55
    return p0

    .line 56
    :catchall_0
    move-exception p0

    .line 57
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 60
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 63
    throw p0
.end method

.method public final removeEncPkgDir(ILjava/lang/String;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    const-string v2, "android.os.IInstalld"

    .line 13
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 22
    iget-object p0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 24
    const/16 p1, 0x3d

    .line 26
    const/4 p2, 0x0

    .line 27
    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

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
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 48
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 51
    throw p0
.end method

.method public final removeEncUserDir(I)Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    const-string v2, "android.os.IInstalld"

    .line 13
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    iget-object p0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 21
    const/16 p1, 0x3e

    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 27
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 30
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    .line 33
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 37
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 40
    return p0

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 45
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 48
    throw p0
.end method

.method public final removeNotTargetedPreloadApksIfNeeded()Z
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    const-string v2, "android.os.IInstalld"

    .line 13
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 16
    iget-object p0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 18
    const/16 v2, 0x33

    .line 20
    const/4 v3, 0x0

    .line 21
    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 24
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 27
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    .line 30
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 34
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 37
    return p0

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 42
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 45
    throw p0
.end method

.method public final restoreAppDataSnapshot(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;III)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    const-string v2, "android.os.IInstalld"

    .line 13
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 25
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 31
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 34
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 37
    iget-object p0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 39
    const/16 p1, 0x2b

    .line 41
    const/4 p2, 0x0

    .line 42
    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 45
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 51
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 54
    return-void

    .line 55
    :catchall_0
    move-exception p0

    .line 56
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 59
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 62
    throw p0
.end method

.method public final restoreconAppData(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    const-string v2, "android.os.IInstalld"

    .line 13
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 25
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 28
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 31
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 34
    iget-object p0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 36
    const/4 p1, 0x7

    .line 37
    const/4 p2, 0x0

    .line 38
    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 41
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 47
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 50
    return-void

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 55
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 58
    throw p0
.end method

.method public final rmPackageDir(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    const-string v2, "android.os.IInstalld"

    .line 13
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 22
    iget-object p0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 24
    const/16 p1, 0x1e

    .line 26
    const/4 p2, 0x0

    .line 27
    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

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
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 44
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 47
    throw p0
.end method

.method public final rmdex(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    const-string v2, "android.os.IInstalld"

    .line 13
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 22
    iget-object p0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 24
    const/16 p1, 0x15

    .line 26
    const/4 p2, 0x0

    .line 27
    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

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
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 44
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 47
    throw p0
.end method

.method public final scanApkStats(Ljava/lang/String;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    const-string v2, "android.os.IInstalld"

    .line 13
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 22
    iget-object p0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 24
    const/16 p1, 0x48

    .line 26
    const/4 p2, 0x0

    .line 27
    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

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
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 44
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 47
    throw p0
.end method

.method public final setAppQuota(Ljava/lang/String;IIJ)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    const-string v2, "android.os.IInstalld"

    .line 13
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 22
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 25
    invoke-virtual {v0, p4, p5}, Landroid/os/Parcel;->writeLong(J)V

    .line 28
    iget-object p0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 30
    const/16 p1, 0x11

    .line 32
    const/4 p2, 0x0

    .line 33
    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 36
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 42
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 45
    return-void

    .line 46
    :catchall_0
    move-exception p0

    .line 47
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 50
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 53
    throw p0
.end method

.method public final setDualDARPolicyDir(IILjava/lang/String;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    const-string v2, "android.os.IInstalld"

    .line 13
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 22
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 25
    iget-object p0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 27
    const/16 p1, 0x41

    .line 29
    const/4 p2, 0x0

    .line 30
    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 33
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 36
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    .line 39
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 43
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 46
    return p0

    .line 47
    :catchall_0
    move-exception p0

    .line 48
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 51
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 54
    throw p0
.end method

.method public final setDualDARPolicyDirRecursively(IILjava/lang/String;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    const-string v2, "android.os.IInstalld"

    .line 13
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 22
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 25
    iget-object p0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 27
    const/16 p1, 0x42

    .line 29
    const/4 p2, 0x0

    .line 30
    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 33
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 36
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    .line 39
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 43
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 46
    return p0

    .line 47
    :catchall_0
    move-exception p0

    .line 48
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 51
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 54
    throw p0
.end method

.method public final setEviction(IZ)Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    const-string v2, "android.os.IInstalld"

    .line 13
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 22
    iget-object p0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 24
    const/16 p1, 0x40

    .line 26
    const/4 p2, 0x0

    .line 27
    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

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
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 48
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 51
    throw p0
.end method

.method public final setFirstBoot()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    const-string v2, "android.os.IInstalld"

    .line 13
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 16
    iget-object p0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 18
    const/4 v2, 0x3

    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 23
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 29
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 32
    return-void

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 37
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 40
    throw p0
.end method

.method public final snapshotAppData(Ljava/lang/String;Ljava/lang/String;III)J
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    const-string v2, "android.os.IInstalld"

    .line 13
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 25
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 28
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 31
    iget-object p0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 33
    const/16 p1, 0x2a

    .line 35
    const/4 p2, 0x0

    .line 36
    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 39
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 42
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    .line 45
    move-result-wide p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 49
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 52
    return-wide p0

    .line 53
    :catchall_0
    move-exception p0

    .line 54
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 57
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 60
    throw p0
.end method

.method public final tryMountDataMirror(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    const-string v2, "android.os.IInstalld"

    .line 13
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19
    iget-object p0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 21
    const/16 p1, 0x2e

    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

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
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 41
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 44
    throw p0
.end method
