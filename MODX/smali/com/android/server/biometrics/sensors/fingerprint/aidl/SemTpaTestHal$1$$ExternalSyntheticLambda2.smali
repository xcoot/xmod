.class public final synthetic Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;

.field public final synthetic f$1:Landroid/hardware/biometrics/fingerprint/ISessionCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;Landroid/hardware/biometrics/fingerprint/ISessionCallback;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;

    .line 5
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1$$ExternalSyntheticLambda2;->f$1:Landroid/hardware/biometrics/fingerprint/ISessionCallback;

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;

    .line 8
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1$$ExternalSyntheticLambda2;->f$1:Landroid/hardware/biometrics/fingerprint/ISessionCallback;

    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    :try_start_0
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;

    .line 15
    iget-wide v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->mChallenge:J

    .line 17
    invoke-interface {p0, v0, v1}, Landroid/hardware/biometrics/fingerprint/ISessionCallback;->onChallengeGenerated(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    goto :goto_0

    .line 21
    :catch_0
    move-exception p0

    .line 22
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 25
    :goto_0
    return-void

    .line 26
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;

    .line 28
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1$$ExternalSyntheticLambda2;->f$1:Landroid/hardware/biometrics/fingerprint/ISessionCallback;

    .line 30
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;

    .line 32
    iget-object v1, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->mEnrolledIds:Ljava/util/Set;

    .line 34
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_0

    .line 40
    iget-object p0, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;

    .line 42
    const/16 v0, 0xb

    .line 44
    const/4 v1, 0x0

    .line 45
    invoke-virtual {p0, v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->deliverErrorEvent(II)V

    .line 48
    goto :goto_1

    .line 49
    :cond_0
    :try_start_1
    invoke-interface {p0}, Landroid/hardware/biometrics/fingerprint/ISessionCallback;->onInteractionDetected()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 52
    goto :goto_1

    .line 53
    :catch_1
    move-exception p0

    .line 54
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 57
    :goto_1
    return-void

    .line 58
    nop

    .line 59
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
