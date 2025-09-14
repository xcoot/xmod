.class public interface abstract Landroid/hardware/usb/V1_2/IUsb;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/hardware/usb/V1_1/IUsb;


# direct methods
.method public static castFrom(Landroid/os/IHwInterface;)Landroid/hardware/usb/V1_2/IUsb;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {p0}, Landroid/os/IHwInterface;->asBinder()Landroid/os/IHwBinder;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    if-nez p0, :cond_1

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_1
    const-string v1, "android.hardware.usb@1.2::IUsb"

    .line 13
    .line 14
    invoke-interface {p0, v1}, Landroid/os/IHwBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    if-eqz v2, :cond_2

    .line 19
    .line 20
    instance-of v3, v2, Landroid/hardware/usb/V1_2/IUsb;

    .line 21
    .line 22
    if-eqz v3, :cond_2

    .line 23
    .line 24
    move-object v0, v2

    .line 25
    check-cast v0, Landroid/hardware/usb/V1_2/IUsb;

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_2
    new-instance v2, Landroid/hardware/usb/V1_2/IUsb$Proxy;

    .line 29
    .line 30
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object p0, v2, Landroid/hardware/usb/V1_2/IUsb$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 34
    .line 35
    :try_start_0
    invoke-virtual {v2}, Landroid/hardware/usb/V1_2/IUsb$Proxy;->interfaceChain()Ljava/util/ArrayList;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-eqz v3, :cond_4

    .line 48
    .line 49
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    check-cast v3, Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    if-eqz v3, :cond_3

    .line 60
    .line 61
    move-object v0, v2

    .line 62
    :catch_0
    :cond_4
    :goto_0
    return-object v0
.end method


# virtual methods
.method public abstract enableContaminantPresenceDetection(Ljava/lang/String;Z)V
.end method
