.class public final synthetic Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/BiometricService$2;

.field public final synthetic f$1:J

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/BiometricService$2;JZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/biometrics/BiometricService$2;

    .line 6
    iput-wide p2, p0, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda2;->f$1:J

    .line 8
    iput-boolean p4, p0, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda2;->f$2:Z

    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/biometrics/BiometricService$2;

    .line 3
    iget-wide v1, p0, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda2;->f$1:J

    .line 5
    iget-boolean p0, p0, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda2;->f$2:Z

    .line 7
    iget-object v0, v0, Lcom/android/server/biometrics/BiometricService$2;->this$0:Lcom/android/server/biometrics/BiometricService;

    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    const-string v3, "BiometricService"

    .line 14
    const-string/jumbo v4, "handleOnDialogAnimatedIn"

    .line 17
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    invoke-virtual {v0, v1, v2}, Lcom/android/server/biometrics/BiometricService;->getAuthSessionIfCurrent(J)Lcom/android/server/biometrics/AuthSession;

    .line 23
    move-result-object v0

    .line 24
    if-nez v0, :cond_0

    .line 26
    const-string/jumbo p0, "handleOnDialogAnimatedIn: AuthSession is not current"

    .line 29
    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    goto :goto_1

    .line 33
    :cond_0
    iget v1, v0, Lcom/android/server/biometrics/AuthSession;->mState:I

    .line 35
    const/4 v2, 0x2

    .line 36
    const-string v3, "BiometricService/AuthSession"

    .line 38
    const/4 v4, 0x6

    .line 39
    const/4 v5, 0x4

    .line 40
    if-eq v1, v2, :cond_1

    .line 42
    const/16 v2, 0x8

    .line 44
    if-eq v1, v2, :cond_1

    .line 46
    if-eq v1, v5, :cond_1

    .line 48
    if-eq v1, v4, :cond_1

    .line 50
    new-instance p0, Ljava/lang/StringBuilder;

    .line 52
    const-string/jumbo v1, "onDialogAnimatedIn, unexpected state: "

    .line 55
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    iget v0, v0, Lcom/android/server/biometrics/AuthSession;->mState:I

    .line 60
    invoke-static {p0, v0, v3}, Lcom/android/server/VaultKeeperService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 63
    goto :goto_1

    .line 64
    :cond_1
    if-eq v1, v4, :cond_2

    .line 66
    if-eq v1, v5, :cond_2

    .line 68
    const/4 v1, 0x3

    .line 69
    iput v1, v0, Lcom/android/server/biometrics/AuthSession;->mState:I

    .line 71
    :cond_2
    if-eqz p0, :cond_3

    .line 73
    new-instance p0, Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda1;

    .line 75
    const/4 v1, 0x4

    .line 76
    invoke-direct {p0, v1}, Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda1;-><init>(I)V

    .line 79
    invoke-virtual {v0, p0}, Lcom/android/server/biometrics/AuthSession;->startAllPreparedSensors(Ljava/util/function/Function;)V

    .line 82
    goto :goto_0

    .line 83
    :cond_3
    const-string/jumbo p0, "delaying fingerprint sensor start"

    .line 86
    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :goto_0
    iget-object p0, v0, Lcom/android/server/biometrics/AuthSession;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    .line 91
    iget-object v1, v0, Lcom/android/server/biometrics/AuthSession;->mOperationContext:Lcom/android/server/biometrics/log/OperationContextExt;

    .line 93
    invoke-virtual {v0}, Lcom/android/server/biometrics/AuthSession;->isCrypto()Z

    .line 96
    move-result v0

    .line 97
    check-cast p0, Lcom/android/server/biometrics/log/BiometricContextProvider;

    .line 99
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 102
    invoke-virtual {v1, p0, v0}, Lcom/android/server/biometrics/log/OperationContextExt;->update(Lcom/android/server/biometrics/log/BiometricContext;Z)V

    .line 105
    :goto_1
    return-void
.end method
