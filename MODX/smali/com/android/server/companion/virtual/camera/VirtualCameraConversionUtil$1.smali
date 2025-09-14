.class public final Lcom/android/server/companion/virtual/camera/VirtualCameraConversionUtil$1;
.super Landroid/os/Binder;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/companion/virtualcamera/IVirtualCameraCallback;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final synthetic val$camera:Landroid/companion/virtual/camera/IVirtualCameraCallback;


# direct methods
.method public constructor <init>(Landroid/companion/virtual/camera/IVirtualCameraCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraConversionUtil$1;->val$camera:Landroid/companion/virtual/camera/IVirtualCameraCallback;

    .line 3
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 6
    const-string p1, "android.companion.virtualcamera.IVirtualCameraCallback"

    .line 8
    invoke-virtual {p0, p0, p1}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 11
    return-void
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final getMaxTransactionId()I
    .locals 0

    .line 1
    const/4 p0, 0x2

    .line 2
    return p0
.end method

.method public final getTransactionName(I)Ljava/lang/String;
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    if-eq p1, p0, :cond_2

    .line 4
    const/4 p0, 0x2

    .line 5
    if-eq p1, p0, :cond_1

    .line 7
    const/4 p0, 0x3

    .line 8
    if-eq p1, p0, :cond_0

    .line 10
    const/4 p0, 0x0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const-string/jumbo p0, "onStreamClosed"

    .line 15
    goto :goto_0

    .line 16
    :cond_1
    const-string/jumbo p0, "onProcessCaptureRequest"

    .line 19
    goto :goto_0

    .line 20
    :cond_2
    const-string/jumbo p0, "onStreamConfigured"

    .line 23
    :goto_0
    return-object p0
.end method

.method public final onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8

    .line 1
    const-string v0, "android.companion.virtualcamera.IVirtualCameraCallback"

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
    if-eq p1, v1, :cond_4

    .line 25
    const/4 v0, 0x2

    .line 26
    if-eq p1, v0, :cond_3

    .line 28
    const/4 v0, 0x3

    .line 29
    if-eq p1, v0, :cond_2

    .line 31
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 34
    move-result p0

    .line 35
    return p0

    .line 36
    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 39
    move-result p1

    .line 40
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 43
    iget-object p0, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraConversionUtil$1;->val$camera:Landroid/companion/virtual/camera/IVirtualCameraCallback;

    .line 45
    invoke-interface {p0, p1}, Landroid/companion/virtual/camera/IVirtualCameraCallback;->onStreamClosed(I)V

    .line 48
    goto :goto_1

    .line 49
    :cond_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 52
    move-result p1

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 56
    move-result p3

    .line 57
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 60
    iget-object p0, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraConversionUtil$1;->val$camera:Landroid/companion/virtual/camera/IVirtualCameraCallback;

    .line 62
    int-to-long p2, p3

    .line 63
    invoke-interface {p0, p1, p2, p3}, Landroid/companion/virtual/camera/IVirtualCameraCallback;->onProcessCaptureRequest(IJ)V

    .line 66
    goto :goto_1

    .line 67
    :cond_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 70
    move-result v3

    .line 71
    sget-object p1, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 73
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 76
    move-result-object p1

    .line 77
    move-object v4, p1

    .line 78
    check-cast v4, Landroid/view/Surface;

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 83
    move-result v5

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 87
    move-result v6

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 91
    move-result p1

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 95
    iget-object v2, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraConversionUtil$1;->val$camera:Landroid/companion/virtual/camera/IVirtualCameraCallback;

    .line 97
    if-eq p1, v1, :cond_6

    .line 99
    const/16 p0, 0x23

    .line 101
    if-eq p1, p0, :cond_5

    .line 103
    const/4 p0, 0x0

    .line 104
    :cond_5
    move v7, p0

    .line 105
    goto :goto_0

    .line 106
    :cond_6
    move v7, v1

    .line 107
    :goto_0
    invoke-interface/range {v2 .. v7}, Landroid/companion/virtual/camera/IVirtualCameraCallback;->onStreamConfigured(ILandroid/view/Surface;III)V

    .line 110
    :goto_1
    return v1
.end method
