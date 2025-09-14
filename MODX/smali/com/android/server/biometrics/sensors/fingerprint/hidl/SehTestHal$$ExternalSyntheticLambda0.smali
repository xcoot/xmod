.class public final synthetic Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;

    .line 6
    iput p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal$$ExternalSyntheticLambda0;->f$1:I

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;

    .line 3
    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal$$ExternalSyntheticLambda0;->f$1:I

    .line 5
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mEnrollmentIds:Ljava/util/Set;

    .line 7
    check-cast v1, Ljava/util/HashSet;

    .line 9
    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 15
    const/16 p0, 0x8

    .line 17
    const/16 v1, 0x3ec

    .line 19
    invoke-virtual {v0, p0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->deliverErrorEvent(II)V

    .line 22
    goto :goto_2

    .line 23
    :cond_0
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mTestHalHelper:Lcom/android/server/biometrics/sensors/SemTestHalHelper;

    .line 25
    iget-object v1, v1, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->mAuthActionList:Ljava/util/List;

    .line 27
    const-string/jumbo v2, "start authenticateTPA: "

    .line 30
    const-string v3, ", action size = "

    .line 32
    invoke-static {p0, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    move-result-object p0

    .line 36
    check-cast v1, Ljava/util/ArrayList;

    .line 38
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 41
    move-result v2

    .line 42
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    move-result-object p0

    .line 49
    const-string/jumbo v2, "fingerprint.hidl.SehTestHal"

    .line 52
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 58
    move-result-object p0

    .line 59
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 62
    move-result v1

    .line 63
    if-eqz v1, :cond_3

    .line 65
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 68
    move-result-object v1

    .line 69
    check-cast v1, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    .line 71
    iget-object v2, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mIsCancellation:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 73
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 76
    move-result v2

    .line 77
    if-eqz v2, :cond_2

    .line 79
    goto :goto_2

    .line 80
    :cond_2
    :try_start_0
    iget-wide v2, v1, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->delay:J

    .line 82
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    goto :goto_1

    .line 86
    :catch_0
    move-exception v2

    .line 87
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 90
    :goto_1
    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->run()V

    .line 93
    sget-boolean v2, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_OPTICAL:Z

    .line 95
    if-eqz v2, :cond_1

    .line 97
    iget-object v2, v1, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->callbackType:Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

    .line 99
    sget-object v3, Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;->TSP_FOD:Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

    .line 101
    if-ne v2, v3, :cond_1

    .line 103
    iget v1, v1, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->value:I

    .line 105
    const/4 v2, 0x2

    .line 106
    if-ne v1, v2, :cond_1

    .line 108
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    .line 110
    const/4 v2, 0x1

    .line 111
    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 114
    iput-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 116
    :try_start_1
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 118
    const-wide/16 v3, 0x2710

    .line 120
    invoke-virtual {v1, v3, v4, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 123
    goto :goto_0

    .line 124
    :catch_1
    move-exception v1

    .line 125
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 128
    goto :goto_0

    .line 129
    :cond_3
    :goto_2
    return-void
.end method
