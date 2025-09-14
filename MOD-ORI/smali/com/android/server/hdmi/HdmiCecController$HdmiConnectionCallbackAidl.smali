.class public final Lcom/android/server/hdmi/HdmiCecController$HdmiConnectionCallbackAidl;
.super Landroid/os/Binder;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/hardware/tv/hdmi/connection/IHdmiConnectionCallback;


# instance fields
.field public final mHdmiCecCallback:Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/os/Binder;->markVintfStability()V

    .line 5
    .line 6
    .line 7
    sget-object v0, Landroid/hardware/tv/hdmi/connection/IHdmiConnectionCallback;->DESCRIPTOR:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecController$HdmiConnectionCallbackAidl;->mHdmiCecCallback:Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4

    .line 1
    sget-object v0, Landroid/hardware/tv/hdmi/connection/IHdmiConnectionCallback;->DESCRIPTOR:Ljava/lang/String;

    .line 2
    .line 3
    const v1, 0xffffff

    .line 4
    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    if-lt p1, v2, :cond_0

    .line 8
    .line 9
    if-gt p1, v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    const v3, 0x5f4e5446

    .line 15
    .line 16
    .line 17
    if-ne p1, v3, :cond_1

    .line 18
    .line 19
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return v2

    .line 23
    :cond_1
    if-ne p1, v1, :cond_2

    .line 24
    .line 25
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 29
    .line 30
    .line 31
    return v2

    .line 32
    :cond_2
    const v0, 0xfffffe

    .line 33
    .line 34
    .line 35
    if-ne p1, v0, :cond_3

    .line 36
    .line 37
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 38
    .line 39
    .line 40
    monitor-enter p0

    .line 41
    monitor-exit p0

    .line 42
    const-string p0, "85c26fa47f3c3062aa93ffc8bb0897a85c8cb118"

    .line 43
    .line 44
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    return v2

    .line 48
    :cond_3
    if-eq p1, v2, :cond_4

    .line 49
    .line 50
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    return p0

    .line 55
    :cond_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 60
    .line 61
    .line 62
    move-result p3

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 64
    .line 65
    .line 66
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController$HdmiConnectionCallbackAidl;->mHdmiCecCallback:Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;

    .line 67
    .line 68
    invoke-virtual {p0, p3, p1}, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;->onHotplugEvent(IZ)V

    .line 69
    .line 70
    .line 71
    return v2
.end method
