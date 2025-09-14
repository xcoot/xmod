.class public final Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/biometrics/sensors/ClientMonitorCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation$1;->this$0:Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    .line 6
    return-void
.end method


# virtual methods
.method public final onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V
    .locals 1

    .line 1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 3
    const-string v0, "[Finished / destroy]: "

    .line 5
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    move-result-object p1

    .line 15
    const-string p2, "BiometricSchedulerOperation"

    .line 17
    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation$1;->this$0:Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    .line 22
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    .line 24
    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->destroy()V

    .line 27
    const/4 p1, 0x5

    .line 28
    iput p1, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mState:I

    .line 30
    return-void
.end method
