.class public final Lcom/android/server/locksettings/AuthSecretHidlAdapter;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/hardware/authsecret/IAuthSecret;


# instance fields
.field public final mImpl:Landroid/hardware/authsecret/V1_0/IAuthSecret$Proxy;


# direct methods
.method public constructor <init>(Landroid/hardware/authsecret/V1_0/IAuthSecret$Proxy;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/locksettings/AuthSecretHidlAdapter;->mImpl:Landroid/hardware/authsecret/V1_0/IAuthSecret$Proxy;

    .line 6
    return-void
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 1

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 3
    const-string v0, "AuthSecretHidlAdapter does not support asBinder"

    .line 5
    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 8
    throw p0
.end method

.method public final setPrimaryUserCredential([B)V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    array-length v1, p1

    .line 4
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    array-length v2, p1

    .line 9
    if-ge v1, v2, :cond_0

    .line 11
    aget-byte v2, p1, v1

    .line 13
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    add-int/lit8 v1, v1, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object p0, p0, Lcom/android/server/locksettings/AuthSecretHidlAdapter;->mImpl:Landroid/hardware/authsecret/V1_0/IAuthSecret$Proxy;

    .line 25
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    new-instance p1, Landroid/os/HwParcel;

    .line 30
    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 33
    const-string v1, "android.hardware.authsecret@1.0::IAuthSecret"

    .line 35
    invoke-virtual {p1, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 38
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeInt8Vector(Ljava/util/ArrayList;)V

    .line 41
    new-instance v0, Landroid/os/HwParcel;

    .line 43
    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 46
    :try_start_0
    iget-object p0, p0, Landroid/hardware/authsecret/V1_0/IAuthSecret$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 48
    const/4 v1, 0x1

    .line 49
    invoke-interface {p0, v1, p1, v0, v1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 52
    invoke-virtual {p1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 58
    return-void

    .line 59
    :catchall_0
    move-exception p0

    .line 60
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 63
    throw p0
.end method
