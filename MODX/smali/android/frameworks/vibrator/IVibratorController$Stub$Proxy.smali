.class public final Landroid/frameworks/vibrator/IVibratorController$Stub$Proxy;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/frameworks/vibrator/IVibratorController;


# instance fields
.field public mRemote:Landroid/os/IBinder;


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/frameworks/vibrator/IVibratorController$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 3
    return-object p0
.end method

.method public final requestVibrationParams(Landroid/os/IBinder;JI)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/frameworks/vibrator/IVibratorController$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 3
    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    .line 6
    move-result-object v0

    .line 7
    :try_start_0
    sget-object v1, Landroid/frameworks/vibrator/IVibratorController;->DESCRIPTOR:Ljava/lang/String;

    .line 9
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 15
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 18
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 21
    iget-object p0, p0, Landroid/frameworks/vibrator/IVibratorController$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 23
    const/4 p1, 0x0

    .line 24
    const/4 p2, 0x1

    .line 25
    invoke-interface {p0, p2, v0, p1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 28
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    if-eqz p0, :cond_0

    .line 31
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 34
    return-void

    .line 35
    :cond_0
    :try_start_1
    new-instance p0, Landroid/os/RemoteException;

    .line 37
    const-string p1, "Method requestVibrationParams is unimplemented."

    .line 39
    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 42
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    :catchall_0
    move-exception p0

    .line 44
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 47
    throw p0
.end method
