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

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;->mIsDozeMode:Z

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;->mAodController:Lcom/samsung/android/bio/fingerprint/ISemFingerprintAodController;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    :try_start_0
    invoke-interface {v0}, Lcom/samsung/android/bio/fingerprint/ISemFingerprintAodController;->turnOnDozeMode()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catch_0
    move-exception v0

    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string/jumbo v2, "turnOnDozeMode: "

    .line 24
    .line 25
    .line 26
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const-string v1, "SemFpAodController"

    .line 41
    .line 42
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    :cond_0
    :goto_0
    const/4 v0, 0x1

    .line 46
    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;->mIsDozeMode:Z

    .line 47
    .line 48
    return-void

    .line 49
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;->mIsHlpmMode:Z

    .line 50
    .line 51
    if-nez v0, :cond_1

    .line 52
    .line 53
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;->mAodController:Lcom/samsung/android/bio/fingerprint/ISemFingerprintAodController;

    .line 54
    .line 55
    if-eqz v0, :cond_1

    .line 56
    .line 57
    :try_start_1
    invoke-interface {v0}, Lcom/samsung/android/bio/fingerprint/ISemFingerprintAodController;->turnOnDozeHlpmMode()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :catch_1
    move-exception v0

    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    const-string/jumbo v2, "turnOnDozeHlpmMode: "

    .line 65
    .line 66
    .line 67
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    const-string v1, "SemFpAodController"

    .line 82
    .line 83
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    :cond_1
    :goto_1
    const/4 v0, 0x1

    .line 87
    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;->mIsHlpmMode:Z

    .line 88
    .line 89
    return-void

    .line 90
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;->mIsDozeMode:Z

    .line 91
    .line 92
    if-eqz v0, :cond_2

    .line 93
    .line 94
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;->mAodController:Lcom/samsung/android/bio/fingerprint/ISemFingerprintAodController;

    .line 95
    .line 96
    if-eqz v0, :cond_2

    .line 97
    .line 98
    :try_start_2
    invoke-interface {v0}, Lcom/samsung/android/bio/fingerprint/ISemFingerprintAodController;->turnOffDozeMode()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 99
    .line 100
    .line 101
    goto :goto_2

    .line 102
    :catch_2
    move-exception v0

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    const-string/jumbo v2, "turnOffDozeMode: "

    .line 106
    .line 107
    .line 108
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    const-string v1, "SemFpAodController"

    .line 123
    .line 124
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    .line 126
    .line 127
    :cond_2
    :goto_2
    const/4 v0, 0x0

    .line 128
    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;->mIsDozeMode:Z

    .line 129
    .line 130
    return-void

    .line 131
    :pswitch_2
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;->mIsHlpmMode:Z

    .line 132
    .line 133
    if-eqz v0, :cond_3

    .line 134
    .line 135
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;->mAodController:Lcom/samsung/android/bio/fingerprint/ISemFingerprintAodController;

    .line 136
    .line 137
    if-eqz v0, :cond_3

    .line 138
    .line 139
    :try_start_3
    invoke-interface {v0}, Lcom/samsung/android/bio/fingerprint/ISemFingerprintAodController;->turnOffDozeHlpmMode()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 140
    .line 141
    .line 142
    goto :goto_3

    .line 143
    :catch_3
    move-exception v0

    .line 144
    new-instance v1, Ljava/lang/StringBuilder;

    .line 145
    .line 146
    const-string/jumbo v2, "turnOffDozeHlpmMode: "

    .line 147
    .line 148
    .line 149
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    const-string v1, "SemFpAodController"

    .line 164
    .line 165
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    .line 167
    .line 168
    :cond_3
    :goto_3
    const/4 v0, 0x0

    .line 169
    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;->mIsHlpmMode:Z

    .line 170
    .line 171
    return-void

    .line 172
    :pswitch_3
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;->mAodController:Lcom/samsung/android/bio/fingerprint/ISemFingerprintAodController;

    .line 173
    .line 174
    if-eqz p0, :cond_4

    .line 175
    .line 176
    :try_start_4
    invoke-interface {p0}, Lcom/samsung/android/bio/fingerprint/ISemFingerprintAodController;->hideAodScreen()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    .line 177
    .line 178
    .line 179
    goto :goto_4

    .line 180
    :catch_4
    move-exception p0

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    .line 182
    .line 183
    const-string/jumbo v1, "hideAodScreen: "

    .line 184
    .line 185
    .line 186
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object p0

    .line 193
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object p0

    .line 200
    const-string v0, "SemFpAodController"

    .line 201
    .line 202
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    .line 204
    .line 205
    :cond_4
    :goto_4
    return-void

    .line 206
    :pswitch_4
    const/4 v0, 0x0

    .line 207
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;->mAodController:Lcom/samsung/android/bio/fingerprint/ISemFingerprintAodController;

    .line 208
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
