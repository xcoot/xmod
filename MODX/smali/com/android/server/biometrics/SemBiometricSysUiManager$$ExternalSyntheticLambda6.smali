.class public final synthetic Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/SemBiometricSysUiManager$1;II[B)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda6;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    iput p2, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda6;->f$1:I

    iput p3, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda6;->f$2:I

    iput-object p4, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda6;->f$3:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/biometrics/SemBiometricSysUiManager;II)V
    .locals 1

    .line 2
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda6;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    iput p2, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda6;->f$1:I

    iput p3, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda6;->f$2:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda6;->f$3:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/biometrics/SemBiometricSysUiManager;IILandroid/os/Bundle;)V
    .locals 1

    .line 3
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda6;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    iput p2, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda6;->f$1:I

    iput p3, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda6;->f$2:I

    iput-object p4, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda6;->f$3:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda6;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    .line 8
    check-cast v0, Lcom/android/server/biometrics/SemBiometricSysUiManager$1;

    .line 10
    iget v1, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda6;->f$1:I

    .line 12
    iget v2, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda6;->f$2:I

    .line 14
    iget-object p0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda6;->f$3:Ljava/lang/Object;

    .line 16
    check-cast p0, [B

    .line 18
    iget-object v0, v0, Lcom/android/server/biometrics/SemBiometricSysUiManager$1;->this$0:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    .line 20
    monitor-enter v0

    .line 21
    :try_start_0
    iget-object v3, v0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mSessionList:Ljava/util/List;

    .line 23
    check-cast v3, Ljava/util/ArrayList;

    .line 25
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 28
    move-result-object v3

    .line 29
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    move-result v4

    .line 33
    if-eqz v4, :cond_2

    .line 35
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    move-result-object v4

    .line 39
    check-cast v4, Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    :try_start_1
    iget-object v5, v4, Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;->mListener:Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiListener;

    .line 43
    if-eqz v5, :cond_0

    .line 45
    if-eqz v1, :cond_1

    .line 47
    iget v4, v4, Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;->mId:I

    .line 49
    if-ne v1, v4, :cond_0

    .line 51
    :cond_1
    invoke-interface {v5, v2, p0}, Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiListener;->onDismissed(I[B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    goto :goto_0

    .line 55
    :catchall_0
    move-exception p0

    .line 56
    goto :goto_1

    .line 57
    :catch_0
    move-exception v4

    .line 58
    :try_start_2
    const-string v5, "BiometricSysUiManager"

    .line 60
    new-instance v6, Ljava/lang/StringBuilder;

    .line 62
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    const-string/jumbo v7, "notifySysUiDismissedEvent: "

    .line 68
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 74
    move-result-object v4

    .line 75
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    move-result-object v4

    .line 82
    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    goto :goto_0

    .line 86
    :cond_2
    monitor-exit v0

    .line 87
    return-void

    .line 88
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 89
    throw p0

    .line 90
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    .line 92
    check-cast v0, Lcom/android/server/biometrics/SemBiometricSysUiManager;

    .line 94
    iget v1, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda6;->f$1:I

    .line 96
    iget v2, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda6;->f$2:I

    .line 98
    iget-object p0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda6;->f$3:Ljava/lang/Object;

    .line 100
    check-cast p0, Landroid/os/Bundle;

    .line 102
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    :try_start_3
    iget-object v0, v0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mSysUiService:Lcom/samsung/android/biometrics/ISemBiometricSysUiService;

    .line 107
    const/4 v3, 0x0

    .line 108
    invoke-interface {v0, v3, v1, v2, p0}, Lcom/samsung/android/biometrics/ISemBiometricSysUiService;->sendCommand(IIILandroid/os/Bundle;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 111
    goto :goto_2

    .line 112
    :catch_1
    move-exception p0

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    .line 115
    const-string/jumbo v1, "sendCommand: "

    .line 118
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 121
    const-string v1, "BiometricSysUiManager"

    .line 123
    invoke-static {p0, v0, v1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 126
    :goto_2
    return-void

    .line 127
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    .line 129
    check-cast v0, Lcom/android/server/biometrics/SemBiometricSysUiManager;

    .line 131
    iget v1, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda6;->f$1:I

    .line 133
    iget v2, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda6;->f$2:I

    .line 135
    iget-object p0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda6;->f$3:Ljava/lang/Object;

    .line 137
    check-cast p0, Landroid/os/Bundle;

    .line 139
    iget-object v3, v0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mSessionList:Ljava/util/List;

    .line 141
    check-cast v3, Ljava/util/ArrayList;

    .line 143
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 146
    move-result v3

    .line 147
    const-string v4, "BiometricSysUiManager"

    .line 149
    if-eqz v3, :cond_3

    .line 151
    const-string/jumbo p0, "sendCommandIfSessionExist: No exist Session"

    .line 154
    invoke-static {v4, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    goto :goto_3

    .line 158
    :cond_3
    :try_start_4
    iget-object v0, v0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mSysUiService:Lcom/samsung/android/biometrics/ISemBiometricSysUiService;

    .line 160
    const/4 v3, 0x0

    .line 161
    invoke-interface {v0, v3, v1, v2, p0}, Lcom/samsung/android/biometrics/ISemBiometricSysUiService;->sendCommand(IIILandroid/os/Bundle;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 164
    goto :goto_3

    .line 165
    :catch_2
    move-exception p0

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    .line 168
    const-string/jumbo v1, "sendCommandIfSessionExist: "

    .line 171
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 174
    invoke-static {p0, v0, v4}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 177
    :goto_3
    return-void

    .line 178
    nop

    .line 179
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
