.class public final synthetic Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(IJLjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 3
    iput-object p4, p0, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    .line 5
    iput-wide p2, p0, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda4;->f$1:J

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    .line 8
    check-cast v0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;

    .line 10
    iget-wide v1, p0, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda4;->f$1:J

    .line 12
    iget-object p0, v0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    .line 14
    invoke-virtual {p0, v1, v2}, Lcom/android/server/biometrics/BiometricService;->getAuthSessionIfCurrent(J)Lcom/android/server/biometrics/AuthSession;

    .line 17
    move-result-object v0

    .line 18
    const-string v1, "BiometricService"

    .line 20
    if-nez v0, :cond_0

    .line 22
    const-string/jumbo p0, "handleCancelAuthentication: AuthSession is not current"

    .line 25
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v2, 0x0

    .line 30
    invoke-virtual {v0, v2}, Lcom/android/server/biometrics/AuthSession;->onCancelAuthSession(Z)Z

    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_2

    .line 36
    const-string/jumbo v0, "handleCancelAuthentication: AuthSession finished"

    .line 39
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mAuthSession:Lcom/android/server/biometrics/AuthSession;

    .line 44
    if-eqz v0, :cond_1

    .line 46
    invoke-virtual {v0}, Lcom/android/server/biometrics/AuthSession;->destroy()V

    .line 49
    :cond_1
    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mAuthSession:Lcom/android/server/biometrics/AuthSession;

    .line 52
    :cond_2
    :goto_0
    return-void

    .line 53
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    .line 55
    check-cast v0, Lcom/android/server/biometrics/BiometricService;

    .line 57
    iget-wide v1, p0, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda4;->f$1:J

    .line 59
    invoke-virtual {v0, v1, v2}, Lcom/android/server/biometrics/BiometricService;->getAuthSessionIfCurrent(J)Lcom/android/server/biometrics/AuthSession;

    .line 62
    move-result-object p0

    .line 63
    const-string v1, "BiometricService"

    .line 65
    if-nez p0, :cond_3

    .line 67
    const-string/jumbo p0, "handleClientDied: AuthSession is not current"

    .line 70
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    goto :goto_3

    .line 74
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    .line 76
    const-string v3, "Session: "

    .line 78
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    move-result-object v2

    .line 88
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :try_start_0
    iget v1, p0, Lcom/android/server/biometrics/AuthSession;->mState:I

    .line 93
    const/4 v2, 0x2

    .line 94
    if-eq v1, v2, :cond_4

    .line 96
    const/4 v2, 0x3

    .line 97
    if-eq v1, v2, :cond_4

    .line 99
    iget-object v1, p0, Lcom/android/server/biometrics/AuthSession;->mStatusBarService:Lcom/android/server/biometrics/SemBiometricSysUiWrapper;

    .line 101
    iget-wide v2, p0, Lcom/android/server/biometrics/AuthSession;->mRequestId:J

    .line 103
    invoke-virtual {v1, v2, v3}, Lcom/android/server/biometrics/SemBiometricSysUiWrapper;->hideAuthenticationDialog(J)V

    .line 106
    goto :goto_2

    .line 107
    :catch_0
    move-exception p0

    .line 108
    goto :goto_1

    .line 109
    :cond_4
    const/16 v1, 0xa

    .line 111
    iput v1, p0, Lcom/android/server/biometrics/AuthSession;->mState:I

    .line 113
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthSession;->cancelAllSensors()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    goto :goto_3

    .line 117
    :goto_1
    const-string v1, "Remote Exception: "

    .line 119
    const-string v2, "BiometricService/AuthSession"

    .line 121
    invoke-static {v1, p0, v2}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 124
    :goto_2
    iget-object p0, v0, Lcom/android/server/biometrics/BiometricService;->mAuthSession:Lcom/android/server/biometrics/AuthSession;

    .line 126
    if-eqz p0, :cond_5

    .line 128
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthSession;->destroy()V

    .line 131
    :cond_5
    const/4 p0, 0x0

    .line 132
    iput-object p0, v0, Lcom/android/server/biometrics/BiometricService;->mAuthSession:Lcom/android/server/biometrics/AuthSession;

    .line 134
    :goto_3
    return-void

    .line 135
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
