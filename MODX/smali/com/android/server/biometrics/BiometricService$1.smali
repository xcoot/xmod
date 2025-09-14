.class public final Lcom/android/server/biometrics/BiometricService$1;
.super Landroid/hardware/biometrics/IBiometricSensorReceiver$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/BiometricService;

.field public final synthetic val$requestId:J


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/BiometricService;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/biometrics/BiometricService$1;->this$0:Lcom/android/server/biometrics/BiometricService;

    .line 3
    iput-wide p2, p0, Lcom/android/server/biometrics/BiometricService$1;->val$requestId:J

    .line 5
    invoke-direct {p0}, Landroid/hardware/biometrics/IBiometricSensorReceiver$Stub;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final onAcquired(III)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$1;->this$0:Lcom/android/server/biometrics/BiometricService;

    .line 3
    iget-object v0, v0, Lcom/android/server/biometrics/BiometricService;->mHandler:Landroid/os/Handler;

    .line 5
    iget-wide v3, p0, Lcom/android/server/biometrics/BiometricService$1;->val$requestId:J

    .line 7
    new-instance v8, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda4;

    .line 9
    move-object v1, v8

    .line 10
    move-object v2, p0

    .line 11
    move v5, p1

    .line 12
    move v6, p2

    .line 13
    move v7, p3

    .line 14
    invoke-direct/range {v1 .. v7}, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/biometrics/BiometricService$1;JIII)V

    .line 17
    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 20
    return-void
.end method

.method public final onAuthenticationFailed(I)V
    .locals 4

    .line 1
    const-string v0, "BiometricService"

    .line 3
    const-string/jumbo v1, "onAuthenticationFailed"

    .line 6
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$1;->this$0:Lcom/android/server/biometrics/BiometricService;

    .line 11
    iget-object v0, v0, Lcom/android/server/biometrics/BiometricService;->mHandler:Landroid/os/Handler;

    .line 13
    iget-wide v1, p0, Lcom/android/server/biometrics/BiometricService$1;->val$requestId:J

    .line 15
    new-instance v3, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda0;

    .line 17
    invoke-direct {v3, p0, v1, v2, p1}, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/BiometricService$1;JI)V

    .line 20
    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 23
    return-void
.end method

.method public final onAuthenticationSucceeded(I[B)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$1;->this$0:Lcom/android/server/biometrics/BiometricService;

    .line 3
    iget-object v0, v0, Lcom/android/server/biometrics/BiometricService;->mHandler:Landroid/os/Handler;

    .line 5
    iget-wide v3, p0, Lcom/android/server/biometrics/BiometricService$1;->val$requestId:J

    .line 7
    new-instance v7, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda0;

    .line 9
    move-object v1, v7

    .line 10
    move-object v2, p0

    .line 11
    move v5, p1

    .line 12
    move-object v6, p2

    .line 13
    invoke-direct/range {v1 .. v6}, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/BiometricService$1;JI[B)V

    .line 16
    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 19
    return-void
.end method

.method public final onError(IIII)V
    .locals 11

    .line 1
    const/4 v0, 0x3

    .line 2
    if-ne p3, v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$1;->this$0:Lcom/android/server/biometrics/BiometricService;

    .line 6
    iget-object v0, v0, Lcom/android/server/biometrics/BiometricService;->mHandler:Landroid/os/Handler;

    .line 8
    iget-wide v3, p0, Lcom/android/server/biometrics/BiometricService$1;->val$requestId:J

    .line 10
    new-instance v10, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda3;

    .line 12
    const/4 v9, 0x1

    .line 13
    move-object v1, v10

    .line 14
    move-object v2, p0

    .line 15
    move v5, p1

    .line 16
    move v6, p2

    .line 17
    move v7, p3

    .line 18
    move v8, p4

    .line 19
    invoke-direct/range {v1 .. v9}, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/biometrics/BiometricService$1;JIIIII)V

    .line 22
    invoke-virtual {v0, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$1;->this$0:Lcom/android/server/biometrics/BiometricService;

    .line 28
    iget-object v0, v0, Lcom/android/server/biometrics/BiometricService;->mHandler:Landroid/os/Handler;

    .line 30
    iget-wide v3, p0, Lcom/android/server/biometrics/BiometricService$1;->val$requestId:J

    .line 32
    new-instance v10, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda3;

    .line 34
    const/4 v9, 0x0

    .line 35
    move-object v1, v10

    .line 36
    move-object v2, p0

    .line 37
    move v5, p1

    .line 38
    move v6, p2

    .line 39
    move v7, p3

    .line 40
    move v8, p4

    .line 41
    invoke-direct/range {v1 .. v9}, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/biometrics/BiometricService$1;JIIIII)V

    .line 44
    invoke-virtual {v0, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 47
    :goto_0
    return-void
.end method

.method public final onSemAuthenticationSucceeded(I[BLandroid/os/Bundle;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$1;->this$0:Lcom/android/server/biometrics/BiometricService;

    .line 3
    iget-object v0, v0, Lcom/android/server/biometrics/BiometricService;->mHandler:Landroid/os/Handler;

    .line 5
    iget-wide v3, p0, Lcom/android/server/biometrics/BiometricService$1;->val$requestId:J

    .line 7
    new-instance v8, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda5;

    .line 9
    move-object v1, v8

    .line 10
    move-object v2, p0

    .line 11
    move v5, p1

    .line 12
    move-object v6, p2

    .line 13
    move-object v7, p3

    .line 14
    invoke-direct/range {v1 .. v7}, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/biometrics/BiometricService$1;JI[BLandroid/os/Bundle;)V

    .line 17
    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 20
    return-void
.end method
