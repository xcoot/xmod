.class public final Lcom/android/server/biometrics/sensors/BiometricScheduler$UserSwitchClientCallback;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/biometrics/sensors/ClientMonitorCallback;


# instance fields
.field public final mOwner:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/BiometricScheduler;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/BiometricScheduler;Lcom/android/server/biometrics/sensors/HalClientMonitor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler$UserSwitchClientCallback;->this$0:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    .line 6
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler$UserSwitchClientCallback;->mOwner:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    .line 8
    return-void
.end method


# virtual methods
.method public final onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler$UserSwitchClientCallback;->this$0:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    .line 3
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mHandler:Landroid/os/Handler;

    .line 5
    new-instance v1, Lcom/android/server/biometrics/sensors/BiometricScheduler$1$$ExternalSyntheticLambda0;

    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-direct {v1, p0, p1, p2, v2}, Lcom/android/server/biometrics/sensors/BiometricScheduler$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;Lcom/android/server/biometrics/sensors/BaseClientMonitor;ZI)V

    .line 11
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 14
    return-void
.end method
