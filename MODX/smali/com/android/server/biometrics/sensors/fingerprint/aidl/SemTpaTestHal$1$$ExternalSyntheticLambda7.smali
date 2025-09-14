.class public final synthetic Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;

.field public final synthetic f$1:J

.field public final synthetic f$2:Landroid/os/CancellationSignal;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;JLandroid/os/CancellationSignal;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;

    .line 6
    iput-wide p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1$$ExternalSyntheticLambda7;->f$1:J

    .line 8
    iput-object p4, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1$$ExternalSyntheticLambda7;->f$2:Landroid/os/CancellationSignal;

    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;

    .line 3
    iget-wide v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1$$ExternalSyntheticLambda7;->f$1:J

    .line 5
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1$$ExternalSyntheticLambda7;->f$2:Landroid/os/CancellationSignal;

    .line 7
    iget-object v3, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;

    .line 9
    iget-object v3, v3, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->mEnrolledIds:Ljava/util/Set;

    .line 11
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    .line 14
    move-result v3

    .line 15
    if-eqz v3, :cond_0

    .line 17
    iget-object p0, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;

    .line 19
    const/16 v0, 0x8

    .line 21
    const/16 v1, 0x3ec

    .line 23
    invoke-virtual {p0, v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->deliverErrorEvent(II)V

    .line 26
    goto/16 :goto_2

    .line 28
    :cond_0
    iget-object v3, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;

    .line 30
    iget-object v3, v3, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->mTestHalHelper:Lcom/android/server/biometrics/sensors/SemTestHalHelper;

    .line 32
    iget-object v3, v3, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->mAuthActionList:Ljava/util/List;

    .line 34
    const-string/jumbo v4, "start authenticateTPA: "

    .line 37
    const-string v5, ", action size = "

    .line 39
    invoke-static {v4, v1, v2, v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    move-result-object v1

    .line 43
    check-cast v3, Ljava/util/ArrayList;

    .line 45
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 48
    move-result v2

    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    move-result-object v1

    .line 56
    const-string/jumbo v2, "fingerprint.aidl.SemTpaTestHal"

    .line 59
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 65
    move-result-object v1

    .line 66
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 69
    move-result v2

    .line 70
    if-eqz v2, :cond_3

    .line 72
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 75
    move-result-object v2

    .line 76
    check-cast v2, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    .line 78
    invoke-virtual {p0}, Landroid/os/CancellationSignal;->isCanceled()Z

    .line 81
    move-result v3

    .line 82
    if-eqz v3, :cond_2

    .line 84
    goto :goto_2

    .line 85
    :cond_2
    iget-object v3, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;

    .line 87
    new-instance v4, Ljava/util/concurrent/CountDownLatch;

    .line 89
    const/4 v5, 0x1

    .line 90
    invoke-direct {v4, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 93
    iput-object v4, v3, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->mActionDelayLatch:Ljava/util/concurrent/CountDownLatch;

    .line 95
    :try_start_0
    iget-object v3, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;

    .line 97
    iget-object v3, v3, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->mActionDelayLatch:Ljava/util/concurrent/CountDownLatch;

    .line 99
    iget-wide v6, v2, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->delay:J

    .line 101
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 103
    invoke-virtual {v3, v6, v7, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    goto :goto_1

    .line 107
    :catch_0
    move-exception v3

    .line 108
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 111
    :goto_1
    invoke-virtual {v2}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->run()V

    .line 114
    sget-boolean v3, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_OPTICAL:Z

    .line 116
    if-eqz v3, :cond_1

    .line 118
    iget-object v3, v2, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->callbackType:Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

    .line 120
    sget-object v4, Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;->TSP_FOD:Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

    .line 122
    if-ne v3, v4, :cond_1

    .line 124
    iget v2, v2, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->value:I

    .line 126
    const/4 v3, 0x2

    .line 127
    if-ne v2, v3, :cond_1

    .line 129
    iget-object v2, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;

    .line 131
    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    .line 133
    invoke-direct {v3, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 136
    iput-object v3, v2, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->mTspDelayLatch:Ljava/util/concurrent/CountDownLatch;

    .line 138
    :try_start_1
    iget-object v2, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;

    .line 140
    iget-object v2, v2, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->mTspDelayLatch:Ljava/util/concurrent/CountDownLatch;

    .line 142
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 144
    const-wide/16 v4, 0x2710

    .line 146
    invoke-virtual {v2, v4, v5, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 149
    goto :goto_0

    .line 150
    :catch_1
    move-exception v2

    .line 151
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 154
    goto :goto_0

    .line 155
    :cond_3
    :goto_2
    return-void
.end method
