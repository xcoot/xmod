.class public final Lcom/android/server/recoverysystem/hal/BootControlHIDL;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/hardware/boot/IBootControl;


# instance fields
.field public final v1_2_hal:Landroid/hardware/boot/V1_2/IBootControl$Proxy;

.field public final v1_hal:Landroid/hardware/boot/V1_0/IBootControl;


# direct methods
.method public constructor <init>(Landroid/hardware/boot/V1_0/IBootControl;Landroid/hardware/boot/V1_1/IBootControl;Landroid/hardware/boot/V1_2/IBootControl$Proxy;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/recoverysystem/hal/BootControlHIDL;->v1_hal:Landroid/hardware/boot/V1_0/IBootControl;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/android/server/recoverysystem/hal/BootControlHIDL;->v1_2_hal:Landroid/hardware/boot/V1_2/IBootControl$Proxy;

    .line 7
    .line 8
    if-eqz p1, :cond_2

    .line 9
    .line 10
    const-string p0, "BootControlHIDL"

    .line 11
    .line 12
    if-eqz p3, :cond_0

    .line 13
    .line 14
    const-string p1, "V1.2 version of BootControl HIDL HAL available, using V1.2"

    .line 15
    .line 16
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    if-eqz p2, :cond_1

    .line 21
    .line 22
    const-string p1, "V1.1 version of BootControl HIDL HAL available, using V1.1"

    .line 23
    .line 24
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const-string p1, "V1.0 version of BootControl HIDL HAL available, using V1.0"

    .line 29
    .line 30
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    :goto_0
    return-void

    .line 34
    :cond_2
    new-instance p0, Landroid/os/RemoteException;

    .line 35
    .line 36
    const-string p1, "Failed to find V1.0 BootControl HIDL"

    .line 37
    .line 38
    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw p0
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final getActiveBootSlot()I
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/recoverysystem/hal/BootControlHIDL;->v1_2_hal:Landroid/hardware/boot/V1_2/IBootControl$Proxy;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    new-instance v0, Landroid/os/HwParcel;

    .line 9
    .line 10
    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v1, "android.hardware.boot@1.2::IBootControl"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    new-instance v1, Landroid/os/HwParcel;

    .line 19
    .line 20
    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 21
    .line 22
    .line 23
    :try_start_0
    iget-object p0, p0, Landroid/hardware/boot/V1_2/IBootControl$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 24
    .line 25
    const/16 v2, 0xb

    .line 26
    .line 27
    const/4 v3, 0x0

    .line 28
    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    .line 38
    .line 39
    .line 40
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 42
    .line 43
    .line 44
    return p0

    .line 45
    :catchall_0
    move-exception p0

    .line 46
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 47
    .line 48
    .line 49
    throw p0

    .line 50
    :cond_0
    new-instance p0, Landroid/os/RemoteException;

    .line 51
    .line 52
    const-string v0, "getActiveBootSlot() requires V1.2 BootControl HAL"

    .line 53
    .line 54
    invoke-direct {p0, v0}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw p0
.end method

.method public final getCurrentSlot()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/recoverysystem/hal/BootControlHIDL;->v1_hal:Landroid/hardware/boot/V1_0/IBootControl;

    .line 2
    .line 3
    invoke-interface {p0}, Landroid/hardware/boot/V1_0/IBootControl;->getCurrentSlot()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method
