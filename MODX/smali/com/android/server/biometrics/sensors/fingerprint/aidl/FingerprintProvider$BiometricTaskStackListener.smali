.class public final Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$BiometricTaskStackListener;
.super Landroid/app/TaskStackListener;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/app/ActivityManager$SemProcessListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$BiometricTaskStackListener;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 3
    invoke-direct {p0}, Landroid/app/TaskStackListener;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onForegroundActivitiesChanged(IIZ)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$BiometricTaskStackListener;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 3
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->getTag$1()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    const-string/jumbo v1, "onForegroundActivitiesChanged: pid = "

    .line 10
    const-string v2, ", uid = "

    .line 12
    const-string v3, ", foregroundActivities = "

    .line 14
    invoke-static {p1, p2, v1, v2, v3}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    move-result-object p1

    .line 25
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$BiometricTaskStackListener;->onTaskStackChanged()V

    .line 31
    return-void
.end method

.method public final onProcessDied(II)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onTaskStackChanged()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$BiometricTaskStackListener;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 3
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mHandler:Landroid/os/Handler;

    .line 5
    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda4;

    .line 7
    const/4 v2, 0x5

    .line 8
    invoke-direct {v1, v2, p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda4;-><init>(ILjava/lang/Object;)V

    .line 11
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 14
    return-void
.end method
