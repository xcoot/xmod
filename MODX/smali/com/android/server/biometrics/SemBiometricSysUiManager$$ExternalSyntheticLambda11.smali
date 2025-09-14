.class public final synthetic Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/biometrics/SemBiometricSysUiManager;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:I

.field public final synthetic f$5:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/SemBiometricSysUiManager;IIII)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda11;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda11;->f$0:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    iput p2, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda11;->f$1:I

    iput p3, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda11;->f$2:I

    iput p4, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda11;->f$3:I

    iput p5, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda11;->f$4:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda11;->f$5:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/biometrics/SemBiometricSysUiManager;IIIILjava/lang/String;)V
    .locals 1

    .line 2
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda11;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda11;->f$0:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    iput p2, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda11;->f$1:I

    iput p3, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda11;->f$2:I

    iput p4, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda11;->f$3:I

    iput p5, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda11;->f$4:I

    iput-object p6, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda11;->f$5:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda11;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda11;->f$0:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    .line 8
    iget v2, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda11;->f$1:I

    .line 10
    iget v3, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda11;->f$2:I

    .line 12
    iget v4, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda11;->f$3:I

    .line 14
    iget v5, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda11;->f$4:I

    .line 16
    iget-object v6, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda11;->f$5:Ljava/lang/String;

    .line 18
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    sget-boolean p0, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    .line 23
    const-string v7, "BiometricSysUiManager"

    .line 25
    if-eqz p0, :cond_0

    .line 27
    const-string/jumbo p0, "onBiometricHelp: session Id = ["

    .line 30
    const-string v1, "]"

    .line 32
    invoke-static {v2, p0, v1, v7}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    :cond_0
    invoke-virtual {v0, v2}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->findSessionId(I)Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;

    .line 38
    move-result-object p0

    .line 39
    if-nez p0, :cond_1

    .line 41
    const-string/jumbo p0, "onBiometricHelp: No exist ID, "

    .line 44
    invoke-static {v2, p0, v7}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 47
    goto :goto_0

    .line 48
    :cond_1
    :try_start_0
    iget-object v1, v0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mSysUiService:Lcom/samsung/android/biometrics/ISemBiometricSysUiService;

    .line 50
    invoke-interface/range {v1 .. v6}, Lcom/samsung/android/biometrics/ISemBiometricSysUiService;->onBiometricHelp(IIIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    goto :goto_0

    .line 54
    :catch_0
    move-exception p0

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    .line 57
    const-string/jumbo v1, "onBiometricHelp: "

    .line 60
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    invoke-static {p0, v0, v7}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 66
    :goto_0
    return-void

    .line 67
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda11;->f$0:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    .line 69
    iget v2, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda11;->f$1:I

    .line 71
    iget v3, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda11;->f$2:I

    .line 73
    iget v4, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda11;->f$3:I

    .line 75
    iget v5, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda11;->f$4:I

    .line 77
    iget-object v6, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda11;->f$5:Ljava/lang/String;

    .line 79
    invoke-virtual {v0, v2}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->findSessionId(I)Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;

    .line 82
    move-result-object p0

    .line 83
    const-string v7, "BiometricSysUiManager"

    .line 85
    if-nez p0, :cond_2

    .line 87
    const-string/jumbo p0, "onBiometricError: No exist ID, "

    .line 90
    invoke-static {v2, p0, v7}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 93
    goto :goto_1

    .line 94
    :cond_2
    :try_start_1
    iget-object v1, v0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mSysUiService:Lcom/samsung/android/biometrics/ISemBiometricSysUiService;

    .line 96
    invoke-interface/range {v1 .. v6}, Lcom/samsung/android/biometrics/ISemBiometricSysUiService;->onBiometricError(IIIILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 99
    goto :goto_1

    .line 100
    :catch_1
    move-exception p0

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    .line 103
    const-string/jumbo v1, "onBiometricError: "

    .line 106
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 109
    invoke-static {p0, v0, v7}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 112
    :goto_1
    return-void

    .line 113
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
