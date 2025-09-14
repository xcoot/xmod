.class public final Lcom/android/server/biometrics/sensors/InvalidationRequesterClient$1;
.super Landroid/hardware/biometrics/IInvalidationCallback$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/InvalidationRequesterClient;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/InvalidationRequesterClient;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/InvalidationRequesterClient$1;->this$0:Lcom/android/server/biometrics/sensors/InvalidationRequesterClient;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/hardware/biometrics/IInvalidationCallback$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onCompleted()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/InvalidationRequesterClient$1;->this$0:Lcom/android/server/biometrics/sensors/InvalidationRequesterClient;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/InvalidationRequesterClient;->mUtils:Lcom/android/server/biometrics/sensors/BiometricUtils;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    iget v0, v0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mTargetUserId:I

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-interface {v1, v2, v0, v3}, Lcom/android/server/biometrics/sensors/BiometricUtils;->setInvalidationInProgress(Landroid/content/Context;IZ)V

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/InvalidationRequesterClient$1;->this$0:Lcom/android/server/biometrics/sensors/InvalidationRequesterClient;

    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    invoke-interface {v0, p0, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
