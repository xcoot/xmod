.class public final synthetic Lcom/android/server/biometrics/sensors/BiometricScheduler$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/BiometricScheduler;

.field public final synthetic f$1:J

.field public final synthetic f$2:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/BiometricScheduler;JLjava/util/function/Consumer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    .line 6
    iput-wide p2, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler$$ExternalSyntheticLambda1;->f$1:J

    .line 8
    iput-object p4, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler$$ExternalSyntheticLambda1;->f$2:Ljava/util/function/Consumer;

    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    .line 3
    iget-wide v1, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler$$ExternalSyntheticLambda1;->f$1:J

    .line 5
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler$$ExternalSyntheticLambda1;->f$2:Ljava/util/function/Consumer;

    .line 7
    iget-object v3, v0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    .line 9
    if-eqz v3, :cond_0

    .line 11
    invoke-virtual {v3, v1, v2}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->isMatchingRequestId(J)Z

    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 17
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    .line 19
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    .line 21
    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 29
    :goto_0
    return-void
.end method
