.class public final synthetic Lcom/android/server/biometrics/SemBiometricSysUiWrapper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/SemBiometricSysUiWrapper;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/SemBiometricSysUiWrapper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/SemBiometricSysUiWrapper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/SemBiometricSysUiWrapper;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object p0, p0, Lcom/android/server/biometrics/SemBiometricSysUiWrapper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/SemBiometricSysUiWrapper;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiWrapper;->mCurrentSession:Landroid/util/Pair;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string v0, "SemBiometricSysUiWrapper"

    .line 8
    .line 9
    const-string v1, "ShowDialogWatchdog: No response from BP UI"

    .line 10
    .line 11
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/server/biometrics/SemBiometricSysUiWrapper;->mCurrentSession:Landroid/util/Pair;

    .line 15
    .line 16
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 17
    .line 18
    move-object v1, p0

    .line 19
    check-cast v1, Lcom/android/server/biometrics/BiometricService$2;

    .line 20
    .line 21
    iget-object p0, v1, Lcom/android/server/biometrics/BiometricService$2;->this$0:Lcom/android/server/biometrics/BiometricService;

    .line 22
    .line 23
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService;->mHandler:Landroid/os/Handler;

    .line 24
    .line 25
    iget-wide v2, v1, Lcom/android/server/biometrics/BiometricService$2;->val$requestId:J

    .line 26
    .line 27
    new-instance v6, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda4;

    .line 28
    .line 29
    const/4 v4, 0x3

    .line 30
    const/4 v5, -0x1

    .line 31
    move-object v0, v6

    .line 32
    invoke-direct/range {v0 .. v5}, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/biometrics/BiometricService$2;JII)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 36
    .line 37
    .line 38
    :cond_0
    return-void
.end method
