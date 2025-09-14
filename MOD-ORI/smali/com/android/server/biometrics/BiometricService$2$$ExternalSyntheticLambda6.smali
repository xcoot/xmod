.class public final synthetic Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/biometrics/BiometricService$2;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/BiometricService$2;JI)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda6;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/biometrics/BiometricService$2;

    .line 4
    .line 5
    iput-wide p2, p0, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda6;->f$1:J

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda6;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/biometrics/BiometricService$2;

    .line 7
    .line 8
    iget-wide v1, p0, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda6;->f$1:J

    .line 9
    .line 10
    iget-object p0, v0, Lcom/android/server/biometrics/BiometricService$2;->this$0:Lcom/android/server/biometrics/BiometricService;

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    const-string/jumbo v0, "onDeviceCredentialPressed"

    .line 16
    .line 17
    .line 18
    const-string v3, "BiometricService"

    .line 19
    .line 20
    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v1, v2}, Lcom/android/server/biometrics/BiometricService;->getAuthSessionIfCurrent(J)Lcom/android/server/biometrics/AuthSession;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    if-nez p0, :cond_0

    .line 28
    .line 29
    const-string/jumbo p0, "handleOnDeviceCredentialPressed: AuthSession is not current"

    .line 30
    .line 31
    .line 32
    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthSession;->hasAuthenticatedAndConfirmed()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    const-string p0, "BiometricService/AuthSession"

    .line 43
    .line 44
    const-string/jumbo v0, "onDeviceCredentialPressed after successful auth"

    .line 45
    .line 46
    .line 47
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthSession;->cancelAllSensors()V

    .line 52
    .line 53
    .line 54
    const/16 v0, 0x9

    .line 55
    .line 56
    iput v0, p0, Lcom/android/server/biometrics/AuthSession;->mState:I

    .line 57
    .line 58
    :goto_0
    return-void

    .line 59
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/biometrics/BiometricService$2;

    .line 60
    .line 61
    iget-wide v1, p0, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda6;->f$1:J

    .line 62
    .line 63
    iget-object p0, v0, Lcom/android/server/biometrics/BiometricService$2;->this$0:Lcom/android/server/biometrics/BiometricService;

    .line 64
    .line 65
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    const-string v0, "BiometricService"

    .line 69
    .line 70
    const-string/jumbo v3, "handleOnStartFingerprintNow"

    .line 71
    .line 72
    .line 73
    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, v1, v2}, Lcom/android/server/biometrics/BiometricService;->getAuthSessionIfCurrent(J)Lcom/android/server/biometrics/AuthSession;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    if-nez p0, :cond_2

    .line 81
    .line 82
    const-string/jumbo p0, "handleOnStartFingerprintNow: AuthSession is not current"

    .line 83
    .line 84
    .line 85
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_2
    iget v0, p0, Lcom/android/server/biometrics/AuthSession;->mState:I

    .line 90
    .line 91
    const/4 v1, 0x2

    .line 92
    if-eq v0, v1, :cond_3

    .line 93
    .line 94
    const/4 v1, 0x3

    .line 95
    if-eq v0, v1, :cond_3

    .line 96
    .line 97
    const/4 v1, 0x4

    .line 98
    if-eq v0, v1, :cond_3

    .line 99
    .line 100
    const/4 v1, 0x6

    .line 101
    if-eq v0, v1, :cond_3

    .line 102
    .line 103
    const/16 v1, 0x8

    .line 104
    .line 105
    if-eq v0, v1, :cond_3

    .line 106
    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    const-string/jumbo v1, "onStartFingerprint, started from unexpected state: "

    .line 110
    .line 111
    .line 112
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    iget v1, p0, Lcom/android/server/biometrics/AuthSession;->mState:I

    .line 116
    .line 117
    const-string v2, "BiometricService/AuthSession"

    .line 118
    .line 119
    invoke-static {v0, v1, v2}, Lcom/android/server/HeapdumpWatcher$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 120
    .line 121
    .line 122
    :cond_3
    new-instance v0, Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda1;

    .line 123
    .line 124
    const/4 v1, 0x4

    .line 125
    invoke-direct {v0, v1}, Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda1;-><init>(I)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/AuthSession;->startAllPreparedSensors(Ljava/util/function/Function;)V

    .line 129
    .line 130
    .line 131
    :goto_1
    return-void

    .line 132
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/biometrics/BiometricService$2;

    .line 133
    .line 134
    iget-wide v1, p0, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda6;->f$1:J

    .line 135
    .line 136
    iget-object p0, v0, Lcom/android/server/biometrics/BiometricService$2;->this$0:Lcom/android/server/biometrics/BiometricService;

    .line 137
    .line 138
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 139
    .line 140
    .line 141
    const-string v0, "BiometricService"

    .line 142
    .line 143
    const-string/jumbo v3, "onTryAgainPressed"

    .line 144
    .line 145
    .line 146
    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    .line 148
    .line 149
    invoke-virtual {p0, v1, v2}, Lcom/android/server/biometrics/BiometricService;->getAuthSessionIfCurrent(J)Lcom/android/server/biometrics/AuthSession;

    .line 150
    .line 151
    .line 152
    move-result-object p0

    .line 153
    if-nez p0, :cond_4

    .line 154
    .line 155
    const-string/jumbo p0, "handleOnTryAgainPressed: AuthSession is not current"

    .line 156
    .line 157
    .line 158
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    .line 160
    .line 161
    goto/16 :goto_4

    .line 162
    .line 163
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthSession;->hasAuthenticatedAndConfirmed()Z

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    const-string v1, "BiometricService/AuthSession"

    .line 168
    .line 169
    if-eqz v0, :cond_5

    .line 170
    .line 171
    const-string/jumbo p0, "onTryAgainPressed after successful auth"

    .line 172
    .line 173
    .line 174
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    .line 176
    .line 177
    goto :goto_4

    .line 178
    :cond_5
    iget v0, p0, Lcom/android/server/biometrics/AuthSession;->mState:I

    .line 179
    .line 180
    const/4 v2, 0x4

    .line 181
    if-eq v0, v2, :cond_6

    .line 182
    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    .line 184
    .line 185
    const-string/jumbo v2, "onTryAgainPressed, state: "

    .line 186
    .line 187
    .line 188
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    iget v2, p0, Lcom/android/server/biometrics/AuthSession;->mState:I

    .line 192
    .line 193
    invoke-static {v0, v2, v1}, Lcom/android/server/HeapdumpWatcher$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 194
    .line 195
    .line 196
    :cond_6
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/biometrics/AuthSession;->mUseSwitchingMode:Z

    .line 197
    .line 198
    const/4 v2, 0x1

    .line 199
    if-eqz v0, :cond_a

    .line 200
    .line 201
    iget-object v0, p0, Lcom/android/server/biometrics/AuthSession;->mCurrentSensor:Lcom/android/server/biometrics/BiometricSensor;

    .line 202
    .line 203
    if-nez v0, :cond_7

    .line 204
    .line 205
    const-string/jumbo p0, "onTryAgainPressed: current sensor is null"

    .line 206
    .line 207
    .line 208
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    .line 210
    .line 211
    goto :goto_4

    .line 212
    :catch_0
    move-exception p0

    .line 213
    goto :goto_3

    .line 214
    :cond_7
    iget-object v0, p0, Lcom/android/server/biometrics/AuthSession;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 215
    .line 216
    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->semGetPrivilegedFlag()I

    .line 217
    .line 218
    .line 219
    move-result v0

    .line 220
    and-int/2addr v0, v2

    .line 221
    if-eqz v0, :cond_8

    .line 222
    .line 223
    goto :goto_2

    .line 224
    :cond_8
    iget-object v0, p0, Lcom/android/server/biometrics/AuthSession;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 225
    .line 226
    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->semGetPrivilegedFlag()I

    .line 227
    .line 228
    .line 229
    move-result v0

    .line 230
    and-int/lit8 v0, v0, 0x40

    .line 231
    .line 232
    if-eqz v0, :cond_9

    .line 233
    .line 234
    :goto_2
    const/4 v0, -0x1

    .line 235
    iput v0, p0, Lcom/android/server/biometrics/AuthSession;->mAuthenticatedSensorId:I

    .line 236
    .line 237
    :cond_9
    iget-object v0, p0, Lcom/android/server/biometrics/AuthSession;->mCurrentSensor:Lcom/android/server/biometrics/BiometricSensor;

    .line 238
    .line 239
    new-instance v3, Ljava/lang/StringBuilder;

    .line 240
    .line 241
    const-string v4, "Sensor("

    .line 242
    .line 243
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    iget v4, v0, Lcom/android/server/biometrics/BiometricSensor;->id:I

    .line 247
    .line 248
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    const-string v4, ") now in STATE_STOPPED"

    .line 252
    .line 253
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v3

    .line 260
    const-string v4, "BiometricService/Sensor"

    .line 261
    .line 262
    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    .line 264
    .line 265
    const/4 v3, 0x5

    .line 266
    iput v3, v0, Lcom/android/server/biometrics/BiometricSensor;->mSensorState:I

    .line 267
    .line 268
    iget-object v0, p0, Lcom/android/server/biometrics/AuthSession;->mCurrentSensor:Lcom/android/server/biometrics/BiometricSensor;

    .line 269
    .line 270
    invoke-virtual {p0, v0, v2}, Lcom/android/server/biometrics/AuthSession;->setSensorsToStateWaitingForCookie(Lcom/android/server/biometrics/BiometricSensor;Z)V

    .line 271
    .line 272
    .line 273
    goto :goto_4

    .line 274
    :cond_a
    invoke-virtual {p0, v2}, Lcom/android/server/biometrics/AuthSession;->setSensorsToStateWaitingForCookie(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    .line 276
    .line 277
    goto :goto_4

    .line 278
    :goto_3
    const-string v0, "RemoteException: "

    .line 279
    .line 280
    invoke-static {v0, p0, v1}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    :goto_4
    return-void

    .line 284
    nop

    .line 285
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
