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

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/biometrics/BiometricService$2;

    .line 5
    .line 6
    iput-wide p2, p0, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda2;->f$1:J

    .line 7
    .line 8
    iput-boolean p4, p0, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda2;->f$2:Z

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/biometrics/BiometricService$2;

    .line 2
    .line 3
    iget-wide v1, p0, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda2;->f$1:J

    .line 4
    .line 5
    iget-boolean p0, p0, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda2;->f$2:Z

    .line 6
    .line 7
    iget-object v0, v0, Lcom/android/server/biometrics/BiometricService$2;->this$0:Lcom/android/server/biometrics/BiometricService;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    const-string v3, "BiometricService"

    .line 13
    .line 14
    const-string/jumbo v4, "handleOnDialogAnimatedIn"

    .line 15
    .line 16
    .line 17
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1, v2}, Lcom/android/server/biometrics/BiometricService;->getAuthSessionIfCurrent(J)Lcom/android/server/biometrics/AuthSession;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    const-string/jumbo p0, "handleOnDialogAnimatedIn: AuthSession is not current"

    .line 27
    .line 28
    .line 29
    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_0
    iget v1, v0, Lcom/android/server/biometrics/AuthSession;->mState:I

    .line 34
    .line 35
    const/4 v2, 0x2

    .line 36
    const-string v3, "BiometricService/AuthSession"

    .line 37
    .line 38
    const/4 v4, 0x6

    .line 39
    const/4 v5, 0x4

    .line 40
    if-eq v1, v2, :cond_1

    .line 41
    .line 42
    const/16 v2, 0x8

    .line 43
    .line 44
    if-eq v1, v2, :cond_1

    .line 45
    .line 46
    if-eq v1, v5, :cond_1

    .line 47
    .line 48
    if-eq v1, v4, :cond_1

    .line 49
    .line 50
    new-instance p0, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    const-string/jumbo v1, "onDialogAnimatedIn, unexpected state: "

    .line 53
    .line 54
    .line 55
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    iget v0, v0, Lcom/android/server/biometrics/AuthSession;->mState:I

    .line 59
    .line 60
    invoke-static {p0, v0, v3}, Lcom/android/server/VaultKeeperService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_1
    if-eq v1, v4, :cond_2

    .line 65
    .line 66
    if-eq v1, v5, :cond_2

    .line 67
    .line 68
    const/4 v1, 0x3

    .line 69
    iput v1, v0, Lcom/android/server/biometrics/AuthSession;->mState:I

    .line 70
    .line 71
    :cond_2
    if-eqz p0, :cond_3

    .line 72
    .line 73
    new-instance p0, Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda1;

    .line 74
    .line 75
    const/4 v1, 0x4

    .line 76
    invoke-direct {p0, v1}, Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda1;-><init>(I)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, p0}, Lcom/android/server/biometrics/AuthSession;->startAllPreparedSensors(Ljava/util/function/Function;)V

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_3
    const-string/jumbo p0, "delaying fingerprint sensor start"

    .line 84
    .line 85
    .line 86
    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    :goto_0
    iget-object p0, v0, Lcom/android/server/biometrics/AuthSession;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    .line 90
    .line 91
    iget-object v1, v0, Lcom/android/server/biometrics/AuthSession;->mOperationContext:Lcom/android/server/biometrics/log/OperationContextExt;

    .line 92
    .line 93
    invoke-virtual {v0}, Lcom/android/server/biometrics/AuthSession;->isCrypto()Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    check-cast p0, Lcom/android/server/biometrics/log/BiometricContextProvider;

    .line 98
    .line 99
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1, p0, v0}, Lcom/android/server/biometrics/log/OperationContextExt;->update(Lcom/android/server/biometrics/log/BiometricContext;Z)V

    .line 103
    .line 104
    .line 105
    :goto_1
    return-void
.end method
