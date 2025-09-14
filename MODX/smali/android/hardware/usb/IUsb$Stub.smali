.class public abstract Landroid/hardware/usb/IUsb$Stub;
.super Landroid/os/Binder;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/hardware/usb/IUsb;


# direct methods
.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsb;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    sget-object v0, Landroid/hardware/usb/IUsb;->DESCRIPTOR:Ljava/lang/String;

    .line 7
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_1

    .line 13
    instance-of v1, v0, Landroid/hardware/usb/IUsb;

    .line 15
    if-eqz v1, :cond_1

    .line 17
    check-cast v0, Landroid/hardware/usb/IUsb;

    .line 19
    return-object v0

    .line 20
    :cond_1
    new-instance v0, Landroid/hardware/usb/IUsb$Stub$Proxy;

    .line 22
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p0, v0, Landroid/hardware/usb/IUsb$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 27
    return-object v0
.end method
