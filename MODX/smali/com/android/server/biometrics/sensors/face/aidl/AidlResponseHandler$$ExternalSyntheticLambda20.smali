.class public final synthetic Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda20;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/BiometricScheduler;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/BiometricScheduler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda20;->f$0:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda20;->f$0:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    .line 3
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mStopUserClient:Lcom/android/server/biometrics/sensors/StopUserClient;

    .line 5
    const-string v1, "BiometricScheduler"

    .line 7
    if-nez v0, :cond_0

    .line 9
    const-string p0, "Unexpected onUserStopped"

    .line 11
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 17
    const-string v2, "[OnUserStopped]: "

    .line 19
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mStopUserClient:Lcom/android/server/biometrics/sensors/StopUserClient;

    .line 24
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    move-result-object v0

    .line 31
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mStopUserClient:Lcom/android/server/biometrics/sensors/StopUserClient;

    .line 36
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/StopUserClient;->onUserStopped()V

    .line 39
    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mStopUserClient:Lcom/android/server/biometrics/sensors/StopUserClient;

    .line 42
    :goto_0
    return-void
.end method
