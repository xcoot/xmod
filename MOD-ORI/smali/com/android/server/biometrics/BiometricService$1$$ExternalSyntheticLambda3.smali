.class public final synthetic Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/biometrics/BiometricService$1;

.field public final synthetic f$1:J

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:I

.field public final synthetic f$5:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/BiometricService$1;JIIIII)V
    .locals 0

    .line 1
    iput p8, p0, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/biometrics/BiometricService$1;

    .line 4
    .line 5
    iput-wide p2, p0, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda3;->f$1:J

    .line 6
    .line 7
    iput p4, p0, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda3;->f$2:I

    .line 8
    .line 9
    iput p5, p0, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda3;->f$3:I

    .line 10
    .line 11
    iput p6, p0, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda3;->f$4:I

    .line 12
    .line 13
    iput p7, p0, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda3;->f$5:I

    .line 14
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget v0, p0, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/biometrics/BiometricService$1;

    .line 7
    .line 8
    iget-wide v1, p0, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda3;->f$1:J

    .line 9
    .line 10
    iget v3, p0, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda3;->f$2:I

    .line 11
    .line 12
    iget v4, p0, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda3;->f$3:I

    .line 13
    .line 14
    iget v5, p0, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda3;->f$4:I

    .line 15
    .line 16
    iget p0, p0, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda3;->f$5:I

    .line 17
    .line 18
    iget-object v0, v0, Lcom/android/server/biometrics/BiometricService$1;->this$0:Lcom/android/server/biometrics/BiometricService;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    new-instance v6, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string/jumbo v7, "handleAuthenticationTimedOut(), sensorId: "

    .line 26
    .line 27
    .line 28
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v7, ", cookie: "

    .line 35
    .line 36
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v4, ", error: "

    .line 43
    .line 44
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v4, ", vendorCode: "

    .line 51
    .line 52
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    const-string v6, "BiometricService"

    .line 63
    .line 64
    invoke-static {v6, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v1, v2}, Lcom/android/server/biometrics/BiometricService;->getAuthSessionIfCurrent(J)Lcom/android/server/biometrics/AuthSession;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    if-nez v0, :cond_0

    .line 72
    .line 73
    const-string/jumbo p0, "handleAuthenticationTimedOut: AuthSession is not current"

    .line 74
    .line 75
    .line 76
    invoke-static {v6, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/biometrics/AuthSession;->hasAuthenticatedAndConfirmed()Z

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    const-string v2, "BiometricService/AuthSession"

    .line 85
    .line 86
    if-eqz v1, :cond_1

    .line 87
    .line 88
    const-string/jumbo p0, "onAuthenticationTimedOut after successful auth"

    .line 89
    .line 90
    .line 91
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_1
    :try_start_0
    iget-object v1, v0, Lcom/android/server/biometrics/AuthSession;->mStatusBarService:Lcom/android/server/biometrics/SemBiometricSysUiWrapper;

    .line 96
    .line 97
    invoke-virtual {v0, v3}, Lcom/android/server/biometrics/AuthSession;->sensorIdToModality(I)I

    .line 98
    .line 99
    .line 100
    move-result v4

    .line 101
    invoke-virtual {v1, v4, v5, p0}, Lcom/android/server/biometrics/SemBiometricSysUiWrapper;->onBiometricError(III)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, v3}, Lcom/android/server/biometrics/AuthSession;->pauseSensorIfSupported(I)Z

    .line 105
    .line 106
    .line 107
    const/4 p0, 0x4

    .line 108
    iput p0, v0, Lcom/android/server/biometrics/AuthSession;->mState:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    .line 110
    goto :goto_0

    .line 111
    :catch_0
    move-exception p0

    .line 112
    const-string v0, "RemoteException"

    .line 113
    .line 114
    invoke-static {v2, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 115
    .line 116
    .line 117
    :goto_0
    return-void

    .line 118
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/biometrics/BiometricService$1;

    .line 119
    .line 120
    iget-wide v1, p0, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda3;->f$1:J

    .line 121
    .line 122
    iget v3, p0, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda3;->f$2:I

    .line 123
    .line 124
    iget v4, p0, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda3;->f$3:I

    .line 125
    .line 126
    iget v5, p0, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda3;->f$4:I

    .line 127
    .line 128
    iget p0, p0, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda3;->f$5:I

    .line 129
    .line 130
    iget-object v0, v0, Lcom/android/server/biometrics/BiometricService$1;->this$0:Lcom/android/server/biometrics/BiometricService;

    .line 131
    .line 132
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 133
    .line 134
    .line 135
    new-instance v6, Ljava/lang/StringBuilder;

    .line 136
    .line 137
    const-string/jumbo v7, "handleOnError() sensorId: "

    .line 138
    .line 139
    .line 140
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    const-string v7, ", cookie: "

    .line 147
    .line 148
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    const-string v7, ", error: "

    .line 155
    .line 156
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    const-string v7, ", vendorCode: "

    .line 163
    .line 164
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v6

    .line 174
    const-string v7, "BiometricService"

    .line 175
    .line 176
    invoke-static {v7, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    .line 178
    .line 179
    invoke-virtual {v0, v1, v2}, Lcom/android/server/biometrics/BiometricService;->getAuthSessionIfCurrent(J)Lcom/android/server/biometrics/AuthSession;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    if-nez v1, :cond_2

    .line 184
    .line 185
    const-string/jumbo p0, "handleOnError: AuthSession is not current"

    .line 186
    .line 187
    .line 188
    invoke-static {v7, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    .line 190
    .line 191
    goto :goto_3

    .line 192
    :cond_2
    :try_start_1
    invoke-virtual {v1, v3, v4, v5, p0}, Lcom/android/server/biometrics/AuthSession;->onErrorReceived(IIII)Z

    .line 193
    .line 194
    .line 195
    move-result p0

    .line 196
    if-eqz p0, :cond_4

    .line 197
    .line 198
    const-string/jumbo p0, "handleOnError: AuthSession finished"

    .line 199
    .line 200
    .line 201
    invoke-static {v7, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    .line 203
    .line 204
    iget-object p0, v0, Lcom/android/server/biometrics/BiometricService;->mAuthSession:Lcom/android/server/biometrics/AuthSession;

    .line 205
    .line 206
    if-eqz p0, :cond_3

    .line 207
    .line 208
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthSession;->destroy()V

    .line 209
    .line 210
    .line 211
    goto :goto_1

    .line 212
    :catch_1
    move-exception p0

    .line 213
    goto :goto_2

    .line 214
    :cond_3
    :goto_1
    const/4 p0, 0x0

    .line 215
    iput-object p0, v0, Lcom/android/server/biometrics/BiometricService;->mAuthSession:Lcom/android/server/biometrics/AuthSession;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 216
    .line 217
    goto :goto_3

    .line 218
    :goto_2
    const-string v0, "RemoteException"

    .line 219
    .line 220
    invoke-static {v7, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 221
    .line 222
    .line 223
    :cond_4
    :goto_3
    return-void

    .line 224
    nop

    .line 225
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
