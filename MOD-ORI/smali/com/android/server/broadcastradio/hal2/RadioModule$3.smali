.class public final Lcom/android/server/broadcastradio/hal2/RadioModule$3;
.super Landroid/hardware/radio/ICloseHandle$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic val$hwCloseHandle:Lcom/android/server/broadcastradio/hal2/Mutable;


# direct methods
.method public constructor <init>(Lcom/android/server/broadcastradio/hal2/Mutable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$3;->val$hwCloseHandle:Lcom/android/server/broadcastradio/hal2/Mutable;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/hardware/radio/ICloseHandle$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$3;->val$hwCloseHandle:Lcom/android/server/broadcastradio/hal2/Mutable;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/broadcastradio/hal2/Mutable;->value:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Landroid/hardware/broadcastradio/V2_0/ICloseHandle$Proxy;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    new-instance v1, Landroid/os/HwParcel;

    .line 11
    .line 12
    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v2, "android.hardware.broadcastradio@2.0::ICloseHandle"

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    new-instance v2, Landroid/os/HwParcel;

    .line 21
    .line 22
    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    .line 25
    :try_start_1
    iget-object v0, v0, Landroid/hardware/broadcastradio/V2_0/ICloseHandle$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 26
    .line 27
    const/4 v3, 0x1

    .line 28
    const/4 v4, 0x0

    .line 29
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2}, Landroid/os/HwParcel;->verifySuccess()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    .line 37
    .line 38
    :try_start_2
    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catchall_0
    move-exception v0

    .line 43
    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    .line 44
    .line 45
    .line 46
    throw v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 47
    :catch_0
    move-exception v0

    .line 48
    const-string v1, "BcRadio2Srv.module"

    .line 49
    .line 50
    const-string v2, "Failed closing announcement listener"

    .line 51
    .line 52
    invoke-static {v1, v2, v0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 53
    .line 54
    .line 55
    :goto_0
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$3;->val$hwCloseHandle:Lcom/android/server/broadcastradio/hal2/Mutable;

    .line 56
    .line 57
    const/4 v0, 0x0

    .line 58
    iput-object v0, p0, Lcom/android/server/broadcastradio/hal2/Mutable;->value:Ljava/lang/Object;

    .line 59
    .line 60
    return-void
.end method
