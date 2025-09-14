.class public final Lcom/android/server/locksettings/RebootEscrowProviderHalImpl;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/locksettings/RebootEscrowProviderInterface;


# instance fields
.field public final mInjector:Lcom/android/server/locksettings/RebootEscrowProviderHalImpl$Injector;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/android/server/locksettings/RebootEscrowProviderHalImpl$Injector;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object v0, p0, Lcom/android/server/locksettings/RebootEscrowProviderHalImpl;->mInjector:Lcom/android/server/locksettings/RebootEscrowProviderHalImpl$Injector;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/locksettings/RebootEscrowProviderHalImpl$Injector;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/android/server/locksettings/RebootEscrowProviderHalImpl;->mInjector:Lcom/android/server/locksettings/RebootEscrowProviderHalImpl$Injector;

    return-void
.end method


# virtual methods
.method public final clearRebootEscrowKey()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/locksettings/RebootEscrowProviderHalImpl;->mInjector:Lcom/android/server/locksettings/RebootEscrowProviderHalImpl$Injector;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-static {}, Lcom/android/server/locksettings/RebootEscrowProviderHalImpl$Injector;->getRebootEscrow()Landroid/hardware/rebootescrow/IRebootEscrow;

    .line 9
    move-result-object p0

    .line 10
    if-nez p0, :cond_0

    .line 12
    return-void

    .line 13
    :cond_0
    const/16 v0, 0x20

    .line 15
    :try_start_0
    new-array v0, v0, [B

    .line 17
    check-cast p0, Landroid/hardware/rebootescrow/IRebootEscrow$Stub$Proxy;

    .line 19
    invoke-virtual {p0, v0}, Landroid/hardware/rebootescrow/IRebootEscrow$Stub$Proxy;->storeKey([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    goto :goto_0

    .line 23
    :catch_0
    const-string p0, "RebootEscrowProviderHal"

    .line 25
    const-string v0, "Could not call RebootEscrow HAL to shred key"

    .line 27
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    :goto_0
    return-void
.end method

.method public final getAndClearRebootEscrowKey(Ljavax/crypto/SecretKey;)Lcom/android/server/locksettings/RebootEscrowKey;
    .locals 6

    .line 1
    const-string p1, "IRebootEscrow returned key of incorrect size "

    .line 3
    iget-object p0, p0, Lcom/android/server/locksettings/RebootEscrowProviderHalImpl;->mInjector:Lcom/android/server/locksettings/RebootEscrowProviderHalImpl$Injector;

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    invoke-static {}, Lcom/android/server/locksettings/RebootEscrowProviderHalImpl$Injector;->getRebootEscrow()Landroid/hardware/rebootescrow/IRebootEscrow;

    .line 11
    move-result-object p0

    .line 12
    const/4 v0, 0x0

    .line 13
    const-string v1, "RebootEscrowProviderHal"

    .line 15
    if-nez p0, :cond_0

    .line 17
    const-string p0, "Had reboot escrow data for users, but RebootEscrow HAL is unavailable"

    .line 19
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    return-object v0

    .line 23
    :cond_0
    :try_start_0
    check-cast p0, Landroid/hardware/rebootescrow/IRebootEscrow$Stub$Proxy;

    .line 25
    invoke-virtual {p0}, Landroid/hardware/rebootescrow/IRebootEscrow$Stub$Proxy;->retrieveKey()[B

    .line 28
    move-result-object v2

    .line 29
    if-nez v2, :cond_1

    .line 31
    const-string p0, "Had reboot escrow data for users, but could not retrieve key"

    .line 33
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    return-object v0

    .line 37
    :catch_0
    move-exception p0

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    array-length v3, v2

    .line 40
    const/16 v4, 0x20

    .line 42
    if-eq v3, v4, :cond_2

    .line 44
    new-instance p0, Ljava/lang/StringBuilder;

    .line 46
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    array-length p1, v2

    .line 50
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    move-result-object p0

    .line 57
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    return-object v0

    .line 61
    :cond_2
    const/4 p1, 0x0

    .line 62
    move v3, p1

    .line 63
    :goto_0
    array-length v5, v2

    .line 64
    if-ge p1, v5, :cond_3

    .line 66
    aget-byte v5, v2, p1

    .line 68
    or-int/2addr v3, v5

    .line 69
    add-int/lit8 p1, p1, 0x1

    .line 71
    goto :goto_0

    .line 72
    :cond_3
    if-nez v3, :cond_4

    .line 74
    const-string p0, "IRebootEscrow returned an all-zeroes key"

    .line 76
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    return-object v0

    .line 80
    :cond_4
    new-array p1, v4, [B

    .line 82
    invoke-virtual {p0, p1}, Landroid/hardware/rebootescrow/IRebootEscrow$Stub$Proxy;->storeKey([B)V

    .line 85
    new-instance p0, Lcom/android/server/locksettings/RebootEscrowKey;

    .line 87
    new-instance p1, Ljavax/crypto/spec/SecretKeySpec;

    .line 89
    const-string v3, "AES"

    .line 91
    invoke-direct {p1, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 94
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/RebootEscrowKey;-><init>(Ljavax/crypto/SecretKey;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    return-object p0

    .line 98
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 100
    const-string v2, "Got service-specific exception: "

    .line 102
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    iget p0, p0, Landroid/os/ServiceSpecificException;->errorCode:I

    .line 107
    invoke-static {p1, p0, v1}, Lcom/android/server/HeapdumpWatcher$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 110
    return-object v0

    .line 111
    :catch_1
    const-string p0, "Could not retrieve escrow data"

    .line 113
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    return-object v0
.end method

.method public final getType()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final hasRebootEscrowSupport()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/locksettings/RebootEscrowProviderHalImpl;->mInjector:Lcom/android/server/locksettings/RebootEscrowProviderHalImpl$Injector;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-static {}, Lcom/android/server/locksettings/RebootEscrowProviderHalImpl$Injector;->getRebootEscrow()Landroid/hardware/rebootescrow/IRebootEscrow;

    .line 9
    move-result-object p0

    .line 10
    if-eqz p0, :cond_0

    .line 12
    const/4 p0, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    :goto_0
    return p0
.end method

.method public final storeRebootEscrowKey(Lcom/android/server/locksettings/RebootEscrowKey;Ljavax/crypto/SecretKey;)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/locksettings/RebootEscrowProviderHalImpl;->mInjector:Lcom/android/server/locksettings/RebootEscrowProviderHalImpl$Injector;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-static {}, Lcom/android/server/locksettings/RebootEscrowProviderHalImpl$Injector;->getRebootEscrow()Landroid/hardware/rebootescrow/IRebootEscrow;

    .line 9
    move-result-object p0

    .line 10
    const/4 p2, 0x0

    .line 11
    const-string v0, "RebootEscrowProviderHal"

    .line 13
    if-nez p0, :cond_0

    .line 15
    const-string p0, "Escrow marked as ready, but RebootEscrow HAL is unavailable"

    .line 17
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    return p2

    .line 21
    :cond_0
    :try_start_0
    iget-object p1, p1, Lcom/android/server/locksettings/RebootEscrowKey;->mKey:Ljavax/crypto/SecretKey;

    .line 23
    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    .line 26
    move-result-object p1

    .line 27
    check-cast p0, Landroid/hardware/rebootescrow/IRebootEscrow$Stub$Proxy;

    .line 29
    invoke-virtual {p0, p1}, Landroid/hardware/rebootescrow/IRebootEscrow$Stub$Proxy;->storeKey([B)V

    .line 32
    const-string p0, "Reboot escrow key stored with RebootEscrow HAL"

    .line 34
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    const/4 p0, 0x1

    .line 38
    return p0

    .line 39
    :catch_0
    move-exception p0

    .line 40
    const-string p1, "Failed escrow secret to RebootEscrow HAL"

    .line 42
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 45
    return p2
.end method
