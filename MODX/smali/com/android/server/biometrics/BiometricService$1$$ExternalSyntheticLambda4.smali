.class public final synthetic Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/BiometricService$1;

.field public final synthetic f$1:J

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/BiometricService$1;JIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/biometrics/BiometricService$1;

    .line 6
    iput-wide p2, p0, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda4;->f$1:J

    .line 8
    iput p4, p0, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda4;->f$2:I

    .line 10
    iput p5, p0, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda4;->f$3:I

    .line 12
    iput p6, p0, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda4;->f$4:I

    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/biometrics/BiometricService$1;

    .line 3
    iget-wide v1, p0, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda4;->f$1:J

    .line 5
    iget v3, p0, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda4;->f$2:I

    .line 7
    iget v10, p0, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda4;->f$3:I

    .line 9
    iget p0, p0, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda4;->f$4:I

    .line 11
    iget-object v0, v0, Lcom/android/server/biometrics/BiometricService$1;->this$0:Lcom/android/server/biometrics/BiometricService;

    .line 13
    invoke-virtual {v0, v1, v2}, Lcom/android/server/biometrics/BiometricService;->getAuthSessionIfCurrent(J)Lcom/android/server/biometrics/AuthSession;

    .line 16
    move-result-object v0

    .line 17
    if-nez v0, :cond_0

    .line 19
    const-string p0, "BiometricService"

    .line 21
    const-string/jumbo v0, "onAcquired: AuthSession is not current"

    .line 24
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    goto/16 :goto_1

    .line 29
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/biometrics/AuthSession;->hasAuthenticatedAndConfirmed()Z

    .line 32
    move-result v1

    .line 33
    const-string v2, "BiometricService/AuthSession"

    .line 35
    if-eqz v1, :cond_1

    .line 37
    const-string/jumbo p0, "onAcquired after successful auth"

    .line 40
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    invoke-virtual {v0, v3}, Lcom/android/server/biometrics/AuthSession;->sensorIdToModality(I)I

    .line 47
    move-result v1

    .line 48
    const/4 v4, 0x2

    .line 49
    if-eq v1, v4, :cond_3

    .line 51
    const/16 v4, 0x8

    .line 53
    if-eq v1, v4, :cond_2

    .line 55
    const/4 v1, 0x0

    .line 56
    goto :goto_0

    .line 57
    :cond_2
    iget-object v1, v0, Lcom/android/server/biometrics/AuthSession;->mContext:Landroid/content/Context;

    .line 59
    invoke-static {v1, v10, p0}, Landroid/hardware/face/FaceManager;->getAuthHelpMessage(Landroid/content/Context;II)Ljava/lang/String;

    .line 62
    move-result-object v1

    .line 63
    goto :goto_0

    .line 64
    :cond_3
    iget-object v1, v0, Lcom/android/server/biometrics/AuthSession;->mContext:Landroid/content/Context;

    .line 66
    invoke-static {v1, v10, p0}, Landroid/hardware/fingerprint/FingerprintManager;->getAcquiredString(Landroid/content/Context;II)Ljava/lang/String;

    .line 69
    move-result-object v1

    .line 70
    :goto_0
    const-string/jumbo v4, "sensorId: "

    .line 73
    const-string v5, " acquiredInfo: "

    .line 75
    const-string v6, " vendor: "

    .line 77
    invoke-static {v3, v10, v4, v5, v6}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    move-result-object v4

    .line 81
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    const-string v5, " message: "

    .line 86
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    move-result-object v4

    .line 96
    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    if-eqz v1, :cond_6

    .line 101
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 104
    move-result v4

    .line 105
    if-eqz v4, :cond_4

    .line 107
    goto :goto_1

    .line 108
    :cond_4
    :try_start_0
    iget-object v5, v0, Lcom/android/server/biometrics/AuthSession;->mStatusBarService:Lcom/android/server/biometrics/SemBiometricSysUiWrapper;

    .line 110
    invoke-virtual {v0, v3}, Lcom/android/server/biometrics/AuthSession;->sensorIdToModality(I)I

    .line 113
    move-result v6

    .line 114
    iget-object v3, v5, Lcom/android/server/biometrics/SemBiometricSysUiWrapper;->mSessions:Ljava/util/Map;

    .line 116
    new-instance v11, Lcom/android/server/biometrics/SemBiometricSysUiWrapper$$ExternalSyntheticLambda3;

    .line 118
    move-object v4, v11

    .line 119
    move v7, v10

    .line 120
    move v8, p0

    .line 121
    move-object v9, v1

    .line 122
    invoke-direct/range {v4 .. v9}, Lcom/android/server/biometrics/SemBiometricSysUiWrapper$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/biometrics/SemBiometricSysUiWrapper;IIILjava/lang/String;)V

    .line 125
    check-cast v3, Ljava/util/HashMap;

    .line 127
    invoke-virtual {v3, v11}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 130
    const/4 v3, 0x6

    .line 131
    if-ne v10, v3, :cond_5

    .line 133
    move v10, p0

    .line 134
    :cond_5
    iget-object p0, v0, Lcom/android/server/biometrics/AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    .line 136
    invoke-interface {p0, v10, v1}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onAcquired(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    goto :goto_1

    .line 140
    :catch_0
    move-exception p0

    .line 141
    const-string v0, "Remote exception"

    .line 143
    invoke-static {v2, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 146
    :cond_6
    :goto_1
    return-void
.end method
