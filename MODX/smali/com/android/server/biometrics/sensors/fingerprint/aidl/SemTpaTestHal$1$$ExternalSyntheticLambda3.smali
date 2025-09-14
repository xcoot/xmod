.class public final synthetic Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/CancellationSignal$OnCancelListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;

.field public final synthetic f$1:Landroid/os/Handler;

.field public final synthetic f$2:Landroid/hardware/biometrics/fingerprint/ISessionCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;Landroid/os/Handler;Landroid/hardware/biometrics/fingerprint/ISessionCallback;I)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;

    .line 5
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1$$ExternalSyntheticLambda3;->f$1:Landroid/os/Handler;

    .line 7
    iput-object p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1$$ExternalSyntheticLambda3;->f$2:Landroid/hardware/biometrics/fingerprint/ISessionCallback;

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public final onCancel()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;

    .line 8
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1$$ExternalSyntheticLambda3;->f$1:Landroid/os/Handler;

    .line 10
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1$$ExternalSyntheticLambda3;->f$2:Landroid/hardware/biometrics/fingerprint/ISessionCallback;

    .line 12
    iget-object v2, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;

    .line 14
    iget-object v2, v2, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->mActionDelayLatch:Ljava/util/concurrent/CountDownLatch;

    .line 16
    if-eqz v2, :cond_0

    .line 18
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 21
    :cond_0
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;

    .line 23
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->mTspDelayLatch:Ljava/util/concurrent/CountDownLatch;

    .line 25
    if-eqz v0, :cond_1

    .line 27
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 30
    :cond_1
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$$ExternalSyntheticLambda0;

    .line 32
    const/4 v2, 0x1

    .line 33
    invoke-direct {v0, p0, v2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$$ExternalSyntheticLambda0;-><init>(Landroid/hardware/biometrics/fingerprint/ISessionCallback;I)V

    .line 36
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 39
    return-void

    .line 40
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;

    .line 42
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1$$ExternalSyntheticLambda3;->f$1:Landroid/os/Handler;

    .line 44
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1$$ExternalSyntheticLambda3;->f$2:Landroid/hardware/biometrics/fingerprint/ISessionCallback;

    .line 46
    iget-object v2, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;

    .line 48
    iget-object v2, v2, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->mActionDelayLatch:Ljava/util/concurrent/CountDownLatch;

    .line 50
    if-eqz v2, :cond_2

    .line 52
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 55
    :cond_2
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;

    .line 57
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->mTspDelayLatch:Ljava/util/concurrent/CountDownLatch;

    .line 59
    if-eqz v0, :cond_3

    .line 61
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 64
    :cond_3
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$$ExternalSyntheticLambda0;

    .line 66
    const/4 v2, 0x3

    .line 67
    invoke-direct {v0, p0, v2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$$ExternalSyntheticLambda0;-><init>(Landroid/hardware/biometrics/fingerprint/ISessionCallback;I)V

    .line 70
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 73
    return-void

    .line 74
    nop

    .line 75
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
