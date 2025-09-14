.class public final Lcom/android/server/biometrics/SemBiometricSysUiManager$1;
.super Lcom/samsung/android/biometrics/ISemBiometricSysUiCallback$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/SemBiometricSysUiManager;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/SemBiometricSysUiManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$1;->this$0:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/samsung/android/biometrics/ISemBiometricSysUiCallback$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onError(III)V
    .locals 8

    .line 1
    sget-boolean v0, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string/jumbo v0, "onError: "

    .line 6
    .line 7
    .line 8
    const-string v1, ", "

    .line 9
    .line 10
    invoke-static {p1, p2, v0, v1, v1}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "BiometricSysUiManager"

    .line 15
    .line 16
    invoke-static {v0, p3, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$1;->this$0:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mHandler:Landroid/os/Handler;

    .line 22
    .line 23
    new-instance v7, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda8;

    .line 24
    .line 25
    const/4 v6, 0x2

    .line 26
    move-object v1, v7

    .line 27
    move-object v2, p0

    .line 28
    move v3, p1

    .line 29
    move v4, p2

    .line 30
    move v5, p3

    .line 31
    invoke-direct/range {v1 .. v6}, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/biometrics/SemBiometricSysUiManager$1;IIII)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final onEvent(III)V
    .locals 8

    .line 1
    sget-boolean v0, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string/jumbo v0, "onEvent: "

    .line 6
    .line 7
    .line 8
    const-string v1, ", "

    .line 9
    .line 10
    invoke-static {p1, p2, v0, v1, v1}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "BiometricSysUiManager"

    .line 15
    .line 16
    invoke-static {v0, p3, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$1;->this$0:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mHandler:Landroid/os/Handler;

    .line 22
    .line 23
    new-instance v7, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda8;

    .line 24
    .line 25
    const/4 v6, 0x1

    .line 26
    move-object v1, v7

    .line 27
    move-object v2, p0

    .line 28
    move v3, p1

    .line 29
    move v4, p2

    .line 30
    move v5, p3

    .line 31
    invoke-direct/range {v1 .. v6}, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/biometrics/SemBiometricSysUiManager$1;IIII)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final onSysUiDismissed(II[B)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string/jumbo v0, "onSysUiDismissed: "

    .line 6
    .line 7
    .line 8
    const-string v1, ", "

    .line 9
    .line 10
    const-string v2, "BiometricSysUiManager"

    .line 11
    .line 12
    invoke-static {p1, p2, v0, v1, v2}, Lcom/android/server/asks/ASKSManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$1;->this$0:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mHandler:Landroid/os/Handler;

    .line 18
    .line 19
    new-instance v1, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda6;

    .line 20
    .line 21
    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/biometrics/SemBiometricSysUiManager$1;II[B)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final onTouchEvent(II)V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "BiometricSysUiManager"

    .line 6
    .line 7
    const-string/jumbo v1, "onTouchEvent: "

    .line 8
    .line 9
    .line 10
    const-string v2, ","

    .line 11
    .line 12
    invoke-static {p1, p2, v1, v2, v0}, Lcom/android/server/asks/ASKSManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object p0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$1;->this$0:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    .line 16
    .line 17
    monitor-enter p0

    .line 18
    :try_start_0
    iget-object p2, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mSessionList:Ljava/util/List;

    .line 19
    .line 20
    check-cast p2, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    .line 38
    :try_start_1
    iget-object v1, v0, Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;->mListener:Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiListener;

    .line 39
    .line 40
    if-eqz v1, :cond_1

    .line 41
    .line 42
    if-eqz p1, :cond_1

    .line 43
    .line 44
    iget v0, v0, Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;->mId:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :catch_0
    move-exception v0

    .line 48
    :try_start_2
    const-string v1, "BiometricSysUiManager"

    .line 49
    .line 50
    new-instance v2, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    const-string/jumbo v3, "notifySysUiTouchEvent: "

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :catchall_0
    move-exception p1

    .line 77
    goto :goto_1

    .line 78
    :cond_2
    monitor-exit p0

    .line 79
    return-void

    .line 80
    :goto_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 81
    throw p1
.end method
