.class public abstract Lcom/android/internal/net/IOemNetdUnsolicitedEventListener$Stub;
.super Landroid/os/Binder;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/net/IOemNetdUnsolicitedEventListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 4
    const-string/jumbo v0, "com.android.internal.net.IOemNetdUnsolicitedEventListener"

    .line 7
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 10
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/net/IOemNetdUnsolicitedEventListener;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    const-string/jumbo v0, "com.android.internal.net.IOemNetdUnsolicitedEventListener"

    .line 8
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_1

    .line 14
    instance-of v1, v0, Lcom/android/internal/net/IOemNetdUnsolicitedEventListener;

    .line 16
    if-eqz v1, :cond_1

    .line 18
    check-cast v0, Lcom/android/internal/net/IOemNetdUnsolicitedEventListener;

    .line 20
    return-object v0

    .line 21
    :cond_1
    new-instance v0, Lcom/android/internal/net/IOemNetdUnsolicitedEventListener$Stub$Proxy;

    .line 23
    invoke-direct {v0, p0}, Lcom/android/internal/net/IOemNetdUnsolicitedEventListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    .line 26
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
    const-string/jumbo v0, "com.android.internal.net.IOemNetdUnsolicitedEventListener"

    .line 4
    const/4 v1, 0x1

    .line 5
    if-lt p1, v1, :cond_0

    .line 7
    const v2, 0xffffff

    .line 10
    if-gt p1, v2, :cond_0

    .line 12
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 15
    :cond_0
    const v2, 0x5f4e5446

    .line 18
    if-ne p1, v2, :cond_1

    .line 20
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 23
    return v1

    .line 24
    :cond_1
    if-eq p1, v1, :cond_2

    .line 26
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 29
    move-result p0

    .line 30
    return p0

    .line 31
    :cond_2
    invoke-interface {p0}, Lcom/android/internal/net/IOemNetdUnsolicitedEventListener;->onRegistered()V

    .line 34
    return v1
.end method
