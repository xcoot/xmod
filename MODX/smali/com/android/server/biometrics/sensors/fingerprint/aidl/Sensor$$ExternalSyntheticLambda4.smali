.class public final synthetic Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/biometrics/sensors/StartUserClient$UserStartedCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

.field public final synthetic f$1:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    .line 6
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$$ExternalSyntheticLambda4;->f$1:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;

    .line 8
    iput p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$$ExternalSyntheticLambda4;->f$2:I

    .line 10
    return-void
.end method


# virtual methods
.method public final onUserStarted(IILjava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p3, Landroid/hardware/biometrics/fingerprint/ISession;

    .line 3
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    const-string v2, "New fingerprint session created for user: "

    .line 12
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    const-string v2, " with hal version: "

    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object v1

    .line 30
    const-string v2, "Sensor"

    .line 32
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;

    .line 37
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$$ExternalSyntheticLambda4;->f$1:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;

    .line 39
    invoke-direct {v1, p2, p3, p1, v3}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;-><init>(ILandroid/hardware/biometrics/fingerprint/ISession;ILcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;)V

    .line 42
    iput-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mCurrentSession:Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;

    .line 44
    iget-object p2, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mProvider:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 46
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    new-instance p3, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$$ExternalSyntheticLambda6;

    .line 51
    invoke-direct {p3, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;)V

    .line 54
    iput-object p3, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->mLazySehFingerprint:Ljava/util/function/Function;

    .line 56
    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$$ExternalSyntheticLambda4;->f$2:I

    .line 58
    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getInstance(I)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;

    .line 61
    move-result-object p3

    .line 62
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mContext:Landroid/content/Context;

    .line 64
    invoke-virtual {p3, v0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getStateForUser(Landroid/content/Context;I)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUserState;

    .line 67
    move-result-object p3

    .line 68
    monitor-enter p3

    .line 69
    :try_start_0
    iget-boolean v0, p3, Lcom/android/server/biometrics/sensors/BiometricUserState;->mInvalidationInProgress:Z

    .line 71
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    if-eqz v0, :cond_0

    .line 74
    const-string p3, "Scheduling unfinished invalidation request for fingerprint sensor: "

    .line 76
    const-string v0, ", user: "

    .line 78
    invoke-static {p0, p1, p3, v0, v2}, Lcom/android/server/am/PendingIntentController$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-object p3, p2, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mHandler:Landroid/os/Handler;

    .line 83
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda0;

    .line 85
    const/4 v1, 0x0

    .line 86
    invoke-direct {v0, p2, p1, p0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;III)V

    .line 89
    invoke-virtual {p3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 92
    :cond_0
    return-void

    .line 93
    :catchall_0
    move-exception p0

    .line 94
    :try_start_1
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    throw p0
.end method
