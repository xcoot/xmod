.class public Lcom/android/server/ConsumerIrService;
.super Landroid/hardware/IConsumerIrService$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAidlService:Landroid/hardware/ir/IConsumerIr;

.field public final mHalLock:Ljava/lang/Object;

.field public final mHasNativeHal:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Landroid/hardware/IConsumerIrService$Stub;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/ConsumerIrService;->mHalLock:Ljava/lang/Object;

    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/android/server/ConsumerIrService;->mAidlService:Landroid/hardware/ir/IConsumerIr;

    .line 14
    const-string/jumbo v1, "power"

    .line 17
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Landroid/os/PowerManager;

    .line 23
    const/4 v2, 0x1

    .line 24
    const-string v3, "ConsumerIrService"

    .line 26
    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    .line 35
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    sget-object v3, Landroid/hardware/ir/IConsumerIr;->DESCRIPTOR:Ljava/lang/String;

    .line 40
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    const-string v4, "/default"

    .line 45
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    move-result-object v1

    .line 52
    invoke-static {v1}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 55
    move-result-object v1

    .line 56
    if-nez v1, :cond_0

    .line 58
    goto :goto_0

    .line 59
    :cond_0
    invoke-interface {v1, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 62
    move-result-object v0

    .line 63
    if-eqz v0, :cond_1

    .line 65
    instance-of v3, v0, Landroid/hardware/ir/IConsumerIr;

    .line 67
    if-eqz v3, :cond_1

    .line 69
    check-cast v0, Landroid/hardware/ir/IConsumerIr;

    .line 71
    goto :goto_0

    .line 72
    :cond_1
    new-instance v0, Landroid/hardware/ir/IConsumerIr$Stub$Proxy;

    .line 74
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object v1, v0, Landroid/hardware/ir/IConsumerIr$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 79
    :goto_0
    iput-object v0, p0, Lcom/android/server/ConsumerIrService;->mAidlService:Landroid/hardware/ir/IConsumerIr;

    .line 81
    if-eqz v0, :cond_2

    .line 83
    goto :goto_1

    .line 84
    :cond_2
    invoke-static {}, Lcom/android/server/ConsumerIrService;->getHidlHalService()Z

    .line 87
    move-result v2

    .line 88
    :goto_1
    iput-boolean v2, p0, Lcom/android/server/ConsumerIrService;->mHasNativeHal:Z

    .line 90
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 93
    move-result-object p0

    .line 94
    const-string p1, "android.hardware.consumerir"

    .line 96
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 99
    move-result p0

    .line 100
    if-eqz p0, :cond_4

    .line 102
    if-eqz v2, :cond_3

    .line 104
    goto :goto_2

    .line 105
    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    .line 107
    const-string p1, "FEATURE_CONSUMER_IR present, but no IR HAL loaded!"

    .line 109
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 112
    throw p0

    .line 113
    :cond_4
    if-nez v2, :cond_5

    .line 115
    :goto_2
    return-void

    .line 116
    :cond_5
    new-instance p0, Ljava/lang/RuntimeException;

    .line 118
    const-string p1, "IR HAL present, but FEATURE_CONSUMER_IR is not set!"

    .line 120
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 123
    throw p0
.end method

.method private static native getHidlHalService()Z
.end method

.method private static native halGetCarrierFrequencies()[I
.end method

.method private static native halTransmit(I[I)I
.end method


# virtual methods
.method public final getCarrierFrequencies()[I
    .locals 6

    .line 1
    invoke-super {p0}, Landroid/hardware/IConsumerIrService$Stub;->getCarrierFrequencies_enforcePermission()V

    .line 4
    iget-boolean v0, p0, Lcom/android/server/ConsumerIrService;->mHasNativeHal:Z

    .line 6
    if-eqz v0, :cond_3

    .line 8
    iget-object v0, p0, Lcom/android/server/ConsumerIrService;->mHalLock:Ljava/lang/Object;

    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    iget-object p0, p0, Lcom/android/server/ConsumerIrService;->mAidlService:Landroid/hardware/ir/IConsumerIr;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    if-eqz p0, :cond_2

    .line 15
    :try_start_1
    check-cast p0, Landroid/hardware/ir/IConsumerIr$Stub$Proxy;

    .line 17
    invoke-virtual {p0}, Landroid/hardware/ir/IConsumerIr$Stub$Proxy;->getCarrierFreqs()[Landroid/hardware/ir/ConsumerIrFreqRange;

    .line 20
    move-result-object p0

    .line 21
    array-length v1, p0

    .line 22
    if-gtz v1, :cond_0

    .line 24
    const-string v1, "ConsumerIrService"

    .line 26
    const-string v2, "Error getting carrier frequencies."

    .line 28
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    goto :goto_2

    .line 34
    :cond_0
    :goto_0
    array-length v1, p0

    .line 35
    mul-int/lit8 v1, v1, 0x2

    .line 37
    new-array v1, v1, [I

    .line 39
    const/4 v2, 0x0

    .line 40
    :goto_1
    array-length v3, p0

    .line 41
    if-ge v2, v3, :cond_1

    .line 43
    mul-int/lit8 v3, v2, 0x2

    .line 45
    aget-object v4, p0, v2

    .line 47
    iget v5, v4, Landroid/hardware/ir/ConsumerIrFreqRange;->minHz:I

    .line 49
    aput v5, v1, v3

    .line 51
    add-int/lit8 v3, v3, 0x1

    .line 53
    iget v4, v4, Landroid/hardware/ir/ConsumerIrFreqRange;->maxHz:I

    .line 55
    aput v4, v1, v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    add-int/lit8 v2, v2, 0x1

    .line 59
    goto :goto_1

    .line 60
    :cond_1
    :try_start_2
    monitor-exit v0

    .line 61
    return-object v1

    .line 62
    :catch_0
    monitor-exit v0

    .line 63
    const/4 p0, 0x0

    .line 64
    return-object p0

    .line 65
    :cond_2
    invoke-static {}, Lcom/android/server/ConsumerIrService;->halGetCarrierFrequencies()[I

    .line 68
    move-result-object p0

    .line 69
    monitor-exit v0

    .line 70
    return-object p0

    .line 71
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 72
    throw p0

    .line 73
    :cond_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 75
    const-string v0, "IR emitter not available"

    .line 77
    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 80
    throw p0
.end method

.method public final hasIrEmitter()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/server/ConsumerIrService;->mHasNativeHal:Z

    .line 3
    return p0
.end method

.method public final transmit(Ljava/lang/String;I[I)V
    .locals 5

    .line 1
    invoke-super {p0}, Landroid/hardware/IConsumerIrService$Stub;->transmit_enforcePermission()V

    .line 4
    array-length p1, p3

    .line 5
    const-wide/16 v0, 0x0

    .line 7
    const/4 v2, 0x0

    .line 8
    :goto_0
    if-ge v2, p1, :cond_1

    .line 10
    aget v3, p3, v2

    .line 12
    if-lez v3, :cond_0

    .line 14
    int-to-long v3, v3

    .line 15
    add-long/2addr v0, v3

    .line 16
    add-int/lit8 v2, v2, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 21
    const-string p1, "Non-positive IR slice"

    .line 23
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 26
    throw p0

    .line 27
    :cond_1
    const-wide/32 v2, 0x1e8480

    .line 30
    cmp-long p1, v0, v2

    .line 32
    if-gtz p1, :cond_5

    .line 34
    iget-boolean p1, p0, Lcom/android/server/ConsumerIrService;->mHasNativeHal:Z

    .line 36
    if-eqz p1, :cond_4

    .line 38
    iget-object p1, p0, Lcom/android/server/ConsumerIrService;->mHalLock:Ljava/lang/Object;

    .line 40
    monitor-enter p1

    .line 41
    :try_start_0
    iget-object p0, p0, Lcom/android/server/ConsumerIrService;->mAidlService:Landroid/hardware/ir/IConsumerIr;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    if-eqz p0, :cond_2

    .line 45
    :try_start_1
    check-cast p0, Landroid/hardware/ir/IConsumerIr$Stub$Proxy;

    .line 47
    invoke-virtual {p0, p2, p3}, Landroid/hardware/ir/IConsumerIr$Stub$Proxy;->transmit(I[I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    goto :goto_1

    .line 51
    :catch_0
    :try_start_2
    const-string p0, "ConsumerIrService"

    .line 53
    new-instance p3, Ljava/lang/StringBuilder;

    .line 55
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    const-string v0, "Error transmitting frequency: "

    .line 60
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    move-result-object p2

    .line 70
    invoke-static {p0, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    goto :goto_1

    .line 74
    :catchall_0
    move-exception p0

    .line 75
    goto :goto_2

    .line 76
    :cond_2
    invoke-static {p2, p3}, Lcom/android/server/ConsumerIrService;->halTransmit(I[I)I

    .line 79
    move-result p0

    .line 80
    if-gez p0, :cond_3

    .line 82
    const-string p2, "ConsumerIrService"

    .line 84
    new-instance p3, Ljava/lang/StringBuilder;

    .line 86
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    const-string v0, "Error transmitting: "

    .line 91
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    move-result-object p0

    .line 101
    invoke-static {p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_3
    :goto_1
    monitor-exit p1

    .line 105
    return-void

    .line 106
    :goto_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 107
    throw p0

    .line 108
    :cond_4
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 110
    const-string p1, "IR emitter not available"

    .line 112
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 115
    throw p0

    .line 116
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 118
    const-string p1, "IR pattern too long"

    .line 120
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 123
    throw p0
.end method
