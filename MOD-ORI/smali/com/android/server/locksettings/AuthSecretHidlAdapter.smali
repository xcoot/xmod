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

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/locksettings/AuthSecretHidlAdapter;->mImpl:Landroid/hardware/authsecret/V1_0/IAuthSecret$Proxy;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 1

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    const-string v0, "AuthSecretHidlAdapter does not support asBinder"

    .line 4
    .line 5
    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p0
.end method

.method public final setPrimaryUserCredential([B)V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    array-length v1, p1

    .line 4
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    array-length v2, p1

    .line 9
    if-ge v1, v2, :cond_0

    .line 10
    .line 11
    aget-byte v2, p1, v1

    .line 12
    .line 13
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    add-int/lit8 v1, v1, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object p0, p0, Lcom/android/server/locksettings/AuthSecretHidlAdapter;->mImpl:Landroid/hardware/authsecret/V1_0/IAuthSecret$Proxy;

    .line 24
    .line 25
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    new-instance p1, Landroid/os/HwParcel;

    .line 29
    .line 30
    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 31
    .line 32
    .line 33
    const-string v1, "android.hardware.authsecret@1.0::IAuthSecret"

    .line 34
    .line 35
    invoke-virtual {p1, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeInt8Vector(Ljava/util/ArrayList;)V

    .line 39
    .line 40
    .line 41
    new-instance v0, Landroid/os/HwParcel;

    .line 42
    .line 43
    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 44
    .line 45
    .line 46
    :try_start_0
    iget-object p0, p0, Landroid/hardware/authsecret/V1_0/IAuthSecret$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 47
    .line 48
    const/4 v1, 0x1

    .line 49
    invoke-interface {p0, v1, p1, v0, v1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :catchall_0
    move-exception p0

    .line 60
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 61
    .line 62
    .line 63
    throw p0
.end method
