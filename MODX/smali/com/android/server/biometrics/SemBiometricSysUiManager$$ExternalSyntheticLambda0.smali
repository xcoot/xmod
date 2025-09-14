.class public final synthetic Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/biometrics/SemBiometricSysUiManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/SemBiometricSysUiManager;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object p0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    const-string v0, "BiometricSysUiManager"

    .line 13
    const-string/jumbo v1, "handle binding timeout"

    .line 16
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    const/4 v0, 0x0

    .line 20
    const/4 v1, 0x2

    .line 21
    invoke-virtual {p0, v0, v1, v1}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->notifySysUiErrorEvent(III)V

    .line 24
    invoke-virtual {p0}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->unBind()V

    .line 27
    return-void

    .line 28
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    .line 30
    monitor-enter v0

    .line 31
    :try_start_0
    iget-object p0, v0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mSessionList:Ljava/util/List;

    .line 33
    check-cast p0, Ljava/util/ArrayList;

    .line 35
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 38
    move-result p0

    .line 39
    if-eqz p0, :cond_0

    .line 41
    iget-boolean p0, v0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mIsConnected:Z

    .line 43
    if-eqz p0, :cond_0

    .line 45
    iget-object p0, v0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mKeepBind:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 47
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 50
    move-result p0

    .line 51
    if-nez p0, :cond_0

    .line 53
    invoke-virtual {v0}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->unBind()V

    .line 56
    goto :goto_0

    .line 57
    :catchall_0
    move-exception p0

    .line 58
    goto :goto_1

    .line 59
    :cond_0
    :goto_0
    monitor-exit v0

    .line 60
    return-void

    .line 61
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    throw p0

    .line 63
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    .line 65
    monitor-enter v0

    .line 66
    :try_start_1
    iget-object p0, v0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mPendingCommand:Ljava/util/List;

    .line 68
    check-cast p0, Ljava/util/ArrayList;

    .line 70
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 73
    move-result-object p0

    .line 74
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 77
    move-result v1

    .line 78
    if-eqz v1, :cond_1

    .line 80
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 83
    move-result-object v1

    .line 84
    check-cast v1, Ljava/lang/Runnable;

    .line 86
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 89
    goto :goto_2

    .line 90
    :catchall_1
    move-exception p0

    .line 91
    goto :goto_3

    .line 92
    :cond_1
    iget-object p0, v0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mPendingCommand:Ljava/util/List;

    .line 94
    check-cast p0, Ljava/util/ArrayList;

    .line 96
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 99
    monitor-exit v0

    .line 100
    return-void

    .line 101
    :goto_3
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 102
    throw p0

    .line 103
    :pswitch_2
    iget-object p0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    .line 105
    const/4 v0, 0x0

    .line 106
    const/4 v1, 0x1

    .line 107
    invoke-virtual {p0, v0, v1, v0}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->notifySysUiErrorEvent(III)V

    .line 110
    invoke-virtual {p0}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->cleanup()V

    .line 113
    return-void

    .line 114
    nop

    .line 115
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
