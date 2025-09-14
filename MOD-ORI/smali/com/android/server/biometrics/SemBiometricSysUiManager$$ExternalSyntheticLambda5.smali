.class public final synthetic Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/SemBiometricSysUiManager;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:Z

.field public final synthetic f$4:I

.field public final synthetic f$5:Ljava/lang/String;

.field public final synthetic f$6:J

.field public final synthetic f$7:Landroid/os/Bundle;

.field public final synthetic f$8:Landroid/hardware/biometrics/PromptInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/SemBiometricSysUiManager;IIZILjava/lang/String;JLandroid/os/Bundle;Landroid/hardware/biometrics/PromptInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda5;->f$1:I

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda5;->f$2:I

    .line 9
    .line 10
    iput-boolean p4, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda5;->f$3:Z

    .line 11
    .line 12
    iput p5, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda5;->f$4:I

    .line 13
    .line 14
    iput-object p6, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda5;->f$5:Ljava/lang/String;

    .line 15
    .line 16
    iput-wide p7, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda5;->f$6:J

    .line 17
    .line 18
    iput-object p9, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda5;->f$7:Landroid/os/Bundle;

    .line 19
    .line 20
    iput-object p10, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda5;->f$8:Landroid/hardware/biometrics/PromptInfo;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    .line 2
    .line 3
    iget v2, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda5;->f$1:I

    .line 4
    .line 5
    iget v3, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda5;->f$2:I

    .line 6
    .line 7
    iget-boolean v6, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda5;->f$3:Z

    .line 8
    .line 9
    iget v7, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda5;->f$4:I

    .line 10
    .line 11
    iget-object v8, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda5;->f$5:Ljava/lang/String;

    .line 12
    .line 13
    iget-wide v9, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda5;->f$6:J

    .line 14
    .line 15
    iget-object v4, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda5;->f$7:Landroid/os/Bundle;

    .line 16
    .line 17
    iget-object v11, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda5;->f$8:Landroid/hardware/biometrics/PromptInfo;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    sget-boolean p0, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    .line 23
    .line 24
    const-string/jumbo v12, "show: "

    .line 25
    .line 26
    .line 27
    const-string v13, "BiometricSysUiManager"

    .line 28
    .line 29
    if-eqz p0, :cond_0

    .line 30
    .line 31
    const-string p0, ", "

    .line 32
    .line 33
    invoke-static {v2, v3, v12, p0, p0}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    invoke-static {v13, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    :cond_0
    invoke-virtual {v0, v2}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->findSessionId(I)Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    if-nez p0, :cond_1

    .line 70
    .line 71
    const-string/jumbo p0, "show: No exist ID, "

    .line 72
    .line 73
    .line 74
    invoke-static {v2, p0, v13}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_1
    :try_start_0
    iget-object v1, v0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mSysUiService:Lcom/samsung/android/biometrics/ISemBiometricSysUiService;

    .line 79
    .line 80
    iget-object v5, v0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mSysUiServiceReceiver:Lcom/android/server/biometrics/SemBiometricSysUiManager$1;

    .line 81
    .line 82
    invoke-interface/range {v1 .. v11}, Lcom/samsung/android/biometrics/ISemBiometricSysUiService;->showBiometricDialog(IILandroid/os/Bundle;Lcom/samsung/android/biometrics/ISemBiometricSysUiCallback;ZILjava/lang/String;JLandroid/hardware/biometrics/PromptInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :catch_0
    move-exception p0

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    invoke-direct {v1, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    invoke-static {v13, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    .line 105
    .line 106
    const/4 p0, -0x1

    .line 107
    invoke-virtual {v0, p0}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->sendConnectionError(I)V

    .line 108
    .line 109
    .line 110
    :goto_0
    return-void
.end method
