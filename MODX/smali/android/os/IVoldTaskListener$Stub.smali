.class public abstract Landroid/os/IVoldTaskListener$Stub;
.super Landroid/os/Binder;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IVoldTaskListener;


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.os.IVoldTaskListener"

.field static final TRANSACTION_onFinished:I = 0x2

.field static final TRANSACTION_onStatus:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 4
    const-string v0, "android.os.IVoldTaskListener"

    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 9
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IVoldTaskListener;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    const-string v0, "android.os.IVoldTaskListener"

    .line 7
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_1

    .line 13
    instance-of v1, v0, Landroid/os/IVoldTaskListener;

    .line 15
    if-eqz v1, :cond_1

    .line 17
    check-cast v0, Landroid/os/IVoldTaskListener;

    .line 19
    return-object v0

    .line 20
    :cond_1
    new-instance v0, Landroid/os/IVoldTaskListener$Stub$Proxy;

    .line 22
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p0, v0, Landroid/os/IVoldTaskListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 27
    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 1
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    const-string v0, "android.os.IVoldTaskListener"

    .line 3
    const/4 v1, 0x1

    .line 4
    if-lt p1, v1, :cond_0

    .line 6
    const v2, 0xffffff

    .line 9
    if-gt p1, v2, :cond_0

    .line 11
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 14
    :cond_0
    const v2, 0x5f4e5446

    .line 17
    if-ne p1, v2, :cond_1

    .line 19
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 22
    return v1

    .line 23
    :cond_1
    if-eq p1, v1, :cond_3

    .line 25
    const/4 v0, 0x2

    .line 26
    if-eq p1, v0, :cond_2

    .line 28
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 31
    move-result p0

    .line 32
    return p0

    .line 33
    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 36
    move-result p1

    .line 37
    sget-object p3, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 39
    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 42
    move-result-object p3

    .line 43
    check-cast p3, Landroid/os/PersistableBundle;

    .line 45
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 48
    invoke-interface {p0, p1, p3}, Landroid/os/IVoldTaskListener;->onFinished(ILandroid/os/PersistableBundle;)V

    .line 51
    goto :goto_0

    .line 52
    :cond_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 55
    move-result p1

    .line 56
    sget-object p3, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 58
    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 61
    move-result-object p3

    .line 62
    check-cast p3, Landroid/os/PersistableBundle;

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 67
    invoke-interface {p0, p1, p3}, Landroid/os/IVoldTaskListener;->onStatus(ILandroid/os/PersistableBundle;)V

    .line 70
    :goto_0
    return v1
.end method
