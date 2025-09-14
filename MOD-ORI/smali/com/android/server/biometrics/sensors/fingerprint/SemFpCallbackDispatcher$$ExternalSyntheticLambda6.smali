.class public final synthetic Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher;IIJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher$$ExternalSyntheticLambda6;->f$1:I

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher$$ExternalSyntheticLambda6;->f$2:I

    .line 9
    .line 10
    iput-wide p4, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher$$ExternalSyntheticLambda6;->f$3:J

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher;

    .line 2
    .line 3
    iget v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher$$ExternalSyntheticLambda6;->f$1:I

    .line 4
    .line 5
    iget v5, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher$$ExternalSyntheticLambda6;->f$2:I

    .line 6
    .line 7
    iget-wide v7, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher$$ExternalSyntheticLambda6;->f$3:J

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    new-instance v4, Landroid/os/Binder;

    .line 13
    .line 14
    invoke-direct {v4}, Landroid/os/Binder;-><init>()V

    .line 15
    .line 16
    .line 17
    iget-object p0, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher;->mProvider:Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 18
    .line 19
    move-object v2, p0

    .line 20
    check-cast v2, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 21
    .line 22
    iget-object p0, v2, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mHandler:Landroid/os/Handler;

    .line 23
    .line 24
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda11;

    .line 25
    .line 26
    const-string v6, "EnrollSession"

    .line 27
    .line 28
    move-object v1, v0

    .line 29
    invoke-direct/range {v1 .. v8}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;ILandroid/os/IBinder;ILjava/lang/String;J)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 33
    .line 34
    .line 35
    return-void
.end method
