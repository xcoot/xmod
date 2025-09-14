.class public final synthetic Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 8
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;->mIsDozeMode:Z

    .line 10
    if-nez v0, :cond_0

    .line 12
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;->mAodController:Lcom/samsung/android/bio/fingerprint/ISemFingerprintAodController;

    .line 14
    if-eqz v0, :cond_0

    .line 16
    :try_start_0
    invoke-interface {v0}, Lcom/samsung/android/bio/fingerprint/ISemFingerprintAodController;->turnOnDozeMode()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    goto :goto_0

    .line 20
    :catch_0
    move-exception v0

    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    const-string/jumbo v2, "turnOnDozeMode: "

    .line 26
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object v0

    .line 40
    const-string v1, "SemFpAodController"

    .line 42
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    :cond_0
    :goto_0
    const/4 v0, 0x1

    .line 46
    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;->mIsDozeMode:Z

    .line 48
    return-void

    .line 49
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;->mIsHlpmMode:Z

    .line 51
    if-nez v0, :cond_1

    .line 53
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;->mAodController:Lcom/samsung/android/bio/fingerprint/ISemFingerprintAodController;

    .line 55
    if-eqz v0, :cond_1

    .line 57
    :try_start_1
    invoke-interface {v0}, Lcom/samsung/android/bio/fingerprint/ISemFingerprintAodController;->turnOnDozeHlpmMode()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 60
    goto :goto_1

    .line 61
    :catch_1
    move-exception v0

    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    .line 64
    const-string/jumbo v2, "turnOnDozeHlpmMode: "

    .line 67
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    move-result-object v0

    .line 81
    const-string v1, "SemFpAodController"

    .line 83
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_1
    :goto_1
    const/4 v0, 0x1

    .line 87
    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;->mIsHlpmMode:Z

    .line 89
    return-void

    .line 90
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;->mIsDozeMode:Z

    .line 92
    if-eqz v0, :cond_2

    .line 94
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;->mAodController:Lcom/samsung/android/bio/fingerprint/ISemFingerprintAodController;

    .line 96
    if-eqz v0, :cond_2

    .line 98
    :try_start_2
    invoke-interface {v0}, Lcom/samsung/android/bio/fingerprint/ISemFingerprintAodController;->turnOffDozeMode()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 101
    goto :goto_2

    .line 102
    :catch_2
    move-exception v0

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    .line 105
    const-string/jumbo v2, "turnOffDozeMode: "

    .line 108
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 111
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    .line 114
    move-result-object v0

    .line 115
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    move-result-object v0

    .line 122
    const-string v1, "SemFpAodController"

    .line 124
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_2
    :goto_2
    const/4 v0, 0x0

    .line 128
    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;->mIsDozeMode:Z

    .line 130
    return-void

    .line 131
    :pswitch_2
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;->mIsHlpmMode:Z

    .line 133
    if-eqz v0, :cond_3

    .line 135
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;->mAodController:Lcom/samsung/android/bio/fingerprint/ISemFingerprintAodController;

    .line 137
    if-eqz v0, :cond_3

    .line 139
    :try_start_3
    invoke-interface {v0}, Lcom/samsung/android/bio/fingerprint/ISemFingerprintAodController;->turnOffDozeHlpmMode()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 142
    goto :goto_3

    .line 143
    :catch_3
    move-exception v0

    .line 144
    new-instance v1, Ljava/lang/StringBuilder;

    .line 146
    const-string/jumbo v2, "turnOffDozeHlpmMode: "

    .line 149
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 152
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    .line 155
    move-result-object v0

    .line 156
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    move-result-object v0

    .line 163
    const-string v1, "SemFpAodController"

    .line 165
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_3
    :goto_3
    const/4 v0, 0x0

    .line 169
    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;->mIsHlpmMode:Z

    .line 171
    return-void

    .line 172
    :pswitch_3
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;->mAodController:Lcom/samsung/android/bio/fingerprint/ISemFingerprintAodController;

    .line 174
    if-eqz p0, :cond_4

    .line 176
    :try_start_4
    invoke-interface {p0}, Lcom/samsung/android/bio/fingerprint/ISemFingerprintAodController;->hideAodScreen()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    .line 179
    goto :goto_4

    .line 180
    :catch_4
    move-exception p0

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    .line 183
    const-string/jumbo v1, "hideAodScreen: "

    .line 186
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 189
    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    .line 192
    move-result-object p0

    .line 193
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 199
    move-result-object p0

    .line 200
    const-string v0, "SemFpAodController"

    .line 202
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :cond_4
    :goto_4
    return-void

    .line 206
    :pswitch_4
    const/4 v0, 0x0

    .line 207
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;->mAodController:Lcom/samsung/android/bio/fingerprint/ISemFingerprintAodController;

    .line 209
    return-void

    .line 210
    nop

    .line 211
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
