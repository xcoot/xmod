.class public final Lcom/android/server/broadcastradio/aidl/RadioModule$3;
.super Landroid/hardware/radio/ICloseHandle$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic val$hwCloseHandle:[Landroid/hardware/broadcastradio/ICloseHandle;


# direct methods
.method public constructor <init>([Landroid/hardware/broadcastradio/ICloseHandle;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/broadcastradio/aidl/RadioModule$3;->val$hwCloseHandle:[Landroid/hardware/broadcastradio/ICloseHandle;

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
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/android/server/broadcastradio/aidl/RadioModule$3;->val$hwCloseHandle:[Landroid/hardware/broadcastradio/ICloseHandle;

    .line 3
    .line 4
    aget-object v1, v1, v0

    .line 5
    .line 6
    check-cast v1, Landroid/hardware/broadcastradio/ICloseHandle$Stub$Proxy;

    .line 7
    .line 8
    invoke-virtual {v1}, Landroid/hardware/broadcastradio/ICloseHandle$Stub$Proxy;->close()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catch_0
    move-exception v1

    .line 13
    const-string v2, "Failed closing announcement listener"

    .line 14
    .line 15
    new-array v3, v0, [Ljava/lang/Object;

    .line 16
    .line 17
    const-string v4, "BcRadioAidlSrv.module"

    .line 18
    .line 19
    invoke-static {v4, v1, v2, v3}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    :goto_0
    iget-object p0, p0, Lcom/android/server/broadcastradio/aidl/RadioModule$3;->val$hwCloseHandle:[Landroid/hardware/broadcastradio/ICloseHandle;

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    aput-object v1, p0, v0

    .line 26
    .line 27
    return-void
.end method
