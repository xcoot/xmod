.class public final Lcom/android/server/biometrics/SemBiometricSysUiReceiver$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/BiometricService$2;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/BiometricService$2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/SemBiometricSysUiReceiver$1;->this$0:Lcom/android/server/biometrics/BiometricService$2;

    .line 6
    return-void
.end method


# virtual methods
.method public final onDismissed(I[B)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/biometrics/SemBiometricSysUiReceiver$1;->this$0:Lcom/android/server/biometrics/BiometricService$2;

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/BiometricService$2;->onDialogDismissed(I[B)V

    .line 6
    return-void
.end method

.method public final onError(II)V
    .locals 7

    .line 1
    iget-object v1, p0, Lcom/android/server/biometrics/SemBiometricSysUiReceiver$1;->this$0:Lcom/android/server/biometrics/BiometricService$2;

    .line 3
    iget-object p0, v1, Lcom/android/server/biometrics/BiometricService$2;->this$0:Lcom/android/server/biometrics/BiometricService;

    .line 5
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService;->mHandler:Landroid/os/Handler;

    .line 7
    iget-wide v2, v1, Lcom/android/server/biometrics/BiometricService$2;->val$requestId:J

    .line 9
    new-instance v6, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda4;

    .line 11
    move-object v0, v6

    .line 12
    move v4, p1

    .line 13
    move v5, p2

    .line 14
    invoke-direct/range {v0 .. v5}, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/biometrics/BiometricService$2;JII)V

    .line 17
    invoke-virtual {p0, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 20
    return-void
.end method

.method public final onEvent(II)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/biometrics/SemBiometricSysUiReceiver$1;->this$0:Lcom/android/server/biometrics/BiometricService$2;

    .line 3
    packed-switch p1, :pswitch_data_0

    .line 6
    goto :goto_0

    .line 7
    :pswitch_0
    const/4 p1, 0x1

    .line 8
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/BiometricService$2;->onDialogAnimatedIn(Z)V

    .line 11
    goto :goto_0

    .line 12
    :pswitch_1
    invoke-virtual {p0, p2}, Lcom/android/server/biometrics/BiometricService$2;->onSystemEvent(I)V

    .line 15
    goto :goto_0

    .line 16
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricService$2;->onDeviceCredentialPressed()V

    .line 19
    :goto_0
    return-void

    .line 20
    nop

    .line 21
    :pswitch_data_0
    .packed-switch 0x3ea
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onTryAgainPressed(I)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/biometrics/SemBiometricSysUiReceiver$1;->this$0:Lcom/android/server/biometrics/BiometricService$2;

    .line 3
    if-nez p1, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricService$2;->onTryAgainPressed()V

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$2;->this$0:Lcom/android/server/biometrics/BiometricService;

    .line 11
    iget-object v0, v0, Lcom/android/server/biometrics/BiometricService;->mHandler:Landroid/os/Handler;

    .line 13
    new-instance v1, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda7;

    .line 15
    invoke-direct {v1, p0, p1}, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/biometrics/BiometricService$2;I)V

    .line 18
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 21
    :goto_0
    return-void
.end method
