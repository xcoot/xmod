.class public final synthetic Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(IILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda9;->$r8$classId:I

    .line 2
    .line 3
    iput-object p3, p0, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda9;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    iput p1, p0, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda9;->f$1:I

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
    .locals 12

    .line 1
    iget v0, p0, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda9;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda9;->f$0:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lcom/android/server/locksettings/LockSettingsService$4;

    .line 9
    .line 10
    iget p0, p0, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda9;->f$1:I

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    :try_start_0
    iget-object v1, v0, Lcom/android/server/locksettings/LockSettingsService$4;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    .line 16
    .line 17
    iget-object v1, v1, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    .line 18
    .line 19
    invoke-static {p0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getUserProperties(Landroid/os/UserHandle;)Landroid/content/pm/UserProperties;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    invoke-virtual {v1}, Landroid/content/pm/UserProperties;->getAllowStoppingUserWithDelayedLocking()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    iget-object v1, v0, Lcom/android/server/locksettings/LockSettingsService$4;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    .line 36
    .line 37
    iget-object v1, v1, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    .line 38
    .line 39
    invoke-static {v1}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->getDefaultFlags(Landroid/content/Context;)I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    iget-object v0, v0, Lcom/android/server/locksettings/LockSettingsService$4;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    .line 44
    .line 45
    invoke-virtual {v0, v1, p0}, Lcom/android/server/locksettings/LockSettingsService;->requireStrongAuth(II)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :catch_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    const-string v0, "LockSettingsService"

    .line 58
    .line 59
    const-string v1, "User %d does not exist or has been removed"

    .line 60
    .line 61
    invoke-static {v0, v1, p0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    :cond_0
    :goto_0
    return-void

    .line 65
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda9;->f$0:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast v0, Lcom/android/server/locksettings/LockSettingsService;

    .line 68
    .line 69
    iget p0, p0, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda9;->f$1:I

    .line 70
    .line 71
    invoke-virtual {v0, p0}, Lcom/android/server/locksettings/LockSettingsService;->unlockUser(I)V

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda9;->f$0:Ljava/lang/Object;

    .line 76
    .line 77
    check-cast v0, Lcom/android/server/locksettings/LockSettingsService;

    .line 78
    .line 79
    iget p0, p0, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda9;->f$1:I

    .line 80
    .line 81
    iget-object v1, v0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    .line 82
    .line 83
    iget-object v2, v1, Lcom/android/server/locksettings/LockSettingsService$Injector;->mContext:Landroid/content/Context;

    .line 84
    .line 85
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    const-string v3, "android.hardware.fingerprint"

    .line 90
    .line 91
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    const/4 v3, 0x0

    .line 96
    if-eqz v2, :cond_1

    .line 97
    .line 98
    iget-object v1, v1, Lcom/android/server/locksettings/LockSettingsService$Injector;->mContext:Landroid/content/Context;

    .line 99
    .line 100
    const-string/jumbo v2, "fingerprint"

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    check-cast v1, Landroid/hardware/fingerprint/FingerprintManager;

    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_1
    move-object v1, v3

    .line 111
    :goto_1
    const-string v2, "LockSettingsService"

    .line 112
    .line 113
    const-wide/16 v4, 0x2710

    .line 114
    .line 115
    const/4 v6, 0x1

    .line 116
    if-eqz v1, :cond_2

    .line 117
    .line 118
    invoke-virtual {v1}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    .line 119
    .line 120
    .line 121
    move-result v7

    .line 122
    if-eqz v7, :cond_2

    .line 123
    .line 124
    invoke-virtual {v1, p0}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    .line 125
    .line 126
    .line 127
    move-result v7

    .line 128
    if-eqz v7, :cond_2

    .line 129
    .line 130
    new-instance v7, Ljava/util/concurrent/CountDownLatch;

    .line 131
    .line 132
    invoke-direct {v7, v6}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 133
    .line 134
    .line 135
    new-instance v8, Lcom/android/server/locksettings/LockSettingsService$6;

    .line 136
    .line 137
    invoke-direct {v8, v7}, Lcom/android/server/locksettings/LockSettingsService$6;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v1, p0, v8}, Landroid/hardware/fingerprint/FingerprintManager;->removeAll(ILandroid/hardware/fingerprint/FingerprintManager$RemovalCallback;)V

    .line 141
    .line 142
    .line 143
    :try_start_1
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 144
    .line 145
    invoke-virtual {v7, v4, v5, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 146
    .line 147
    .line 148
    goto :goto_2

    .line 149
    :catch_1
    move-exception v1

    .line 150
    const-string v7, "Latch interrupted when removing fingerprint"

    .line 151
    .line 152
    invoke-static {v2, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 153
    .line 154
    .line 155
    :cond_2
    :goto_2
    iget-object v1, v0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    .line 156
    .line 157
    iget-object v7, v1, Lcom/android/server/locksettings/LockSettingsService$Injector;->mContext:Landroid/content/Context;

    .line 158
    .line 159
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 160
    .line 161
    .line 162
    move-result-object v7

    .line 163
    const-string v8, "android.hardware.biometrics.face"

    .line 164
    .line 165
    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 166
    .line 167
    .line 168
    move-result v7

    .line 169
    if-eqz v7, :cond_3

    .line 170
    .line 171
    iget-object v1, v1, Lcom/android/server/locksettings/LockSettingsService$Injector;->mContext:Landroid/content/Context;

    .line 172
    .line 173
    const-string/jumbo v7, "face"

    .line 174
    .line 175
    .line 176
    invoke-virtual {v1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    check-cast v1, Landroid/hardware/face/FaceManager;

    .line 181
    .line 182
    goto :goto_3

    .line 183
    :cond_3
    move-object v1, v3

    .line 184
    :goto_3
    const-string v7, "Latch interrupted when removing face"

    .line 185
    .line 186
    if-eqz v1, :cond_4

    .line 187
    .line 188
    invoke-virtual {v1}, Landroid/hardware/face/FaceManager;->isHardwareDetected()Z

    .line 189
    .line 190
    .line 191
    move-result v8

    .line 192
    if-eqz v8, :cond_4

    .line 193
    .line 194
    invoke-virtual {v1, p0}, Landroid/hardware/face/FaceManager;->hasEnrolledTemplates(I)Z

    .line 195
    .line 196
    .line 197
    move-result v8

    .line 198
    if-eqz v8, :cond_5

    .line 199
    .line 200
    new-instance v8, Ljava/util/concurrent/CountDownLatch;

    .line 201
    .line 202
    invoke-direct {v8, v6}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 203
    .line 204
    .line 205
    new-instance v6, Lcom/android/server/locksettings/LockSettingsService$7;

    .line 206
    .line 207
    invoke-direct {v6, v8}, Lcom/android/server/locksettings/LockSettingsService$7;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v1, p0, v6}, Landroid/hardware/face/FaceManager;->removeAll(ILandroid/hardware/face/FaceManager$RemovalCallback;)V

    .line 211
    .line 212
    .line 213
    :try_start_2
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 214
    .line 215
    invoke-virtual {v8, v4, v5, p0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    .line 216
    .line 217
    .line 218
    goto :goto_4

    .line 219
    :catch_2
    move-exception p0

    .line 220
    invoke-static {v2, v7, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 221
    .line 222
    .line 223
    goto :goto_4

    .line 224
    :cond_4
    iget-object v1, v0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    .line 225
    .line 226
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 227
    .line 228
    .line 229
    move-result-object v1

    .line 230
    const-string/jumbo v8, "com.samsung.android.bio.face"

    .line 231
    .line 232
    .line 233
    invoke-virtual {v1, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 234
    .line 235
    .line 236
    move-result v1

    .line 237
    if-eqz v1, :cond_5

    .line 238
    .line 239
    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    .line 240
    .line 241
    .line 242
    move-result v1

    .line 243
    if-eqz v1, :cond_5

    .line 244
    .line 245
    iget-object v1, v0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    .line 246
    .line 247
    invoke-static {v1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->createInstance(Landroid/content/Context;)Lcom/samsung/android/bio/face/SemBioFaceManager;

    .line 248
    .line 249
    .line 250
    move-result-object v1

    .line 251
    if-eqz v1, :cond_5

    .line 252
    .line 253
    invoke-virtual {v1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->isHardwareDetected()Z

    .line 254
    .line 255
    .line 256
    move-result v8

    .line 257
    if-eqz v8, :cond_5

    .line 258
    .line 259
    invoke-virtual {v1, p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->hasEnrolledFaces(I)Z

    .line 260
    .line 261
    .line 262
    move-result v8

    .line 263
    if-eqz v8, :cond_5

    .line 264
    .line 265
    invoke-virtual {v1, p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->setActiveUser(I)V

    .line 266
    .line 267
    .line 268
    new-instance v8, Ljava/util/concurrent/CountDownLatch;

    .line 269
    .line 270
    invoke-direct {v8, v6}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 271
    .line 272
    .line 273
    new-instance v6, Landroid/hardware/face/Face;

    .line 274
    .line 275
    const/4 v9, 0x0

    .line 276
    const-wide/16 v10, 0x0

    .line 277
    .line 278
    invoke-direct {v6, v3, v9, v10, v11}, Landroid/hardware/face/Face;-><init>(Ljava/lang/CharSequence;IJ)V

    .line 279
    .line 280
    .line 281
    new-instance v9, Lcom/samsung/android/bio/face/SemBioFace;

    .line 282
    .line 283
    invoke-direct {v9, v6}, Lcom/samsung/android/bio/face/SemBioFace;-><init>(Landroid/hardware/face/Face;)V

    .line 284
    .line 285
    .line 286
    new-instance v6, Lcom/android/server/locksettings/LockSettingsService$8;

    .line 287
    .line 288
    invoke-direct {v6, v8}, Lcom/android/server/locksettings/LockSettingsService$8;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    .line 289
    .line 290
    .line 291
    invoke-virtual {v1, v9, p0, v6}, Lcom/samsung/android/bio/face/SemBioFaceManager;->remove(Lcom/samsung/android/bio/face/SemBioFace;ILcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;)V

    .line 292
    .line 293
    .line 294
    :try_start_3
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 295
    .line 296
    invoke-virtual {v8, v4, v5, p0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3

    .line 297
    .line 298
    .line 299
    goto :goto_4

    .line 300
    :catch_3
    move-exception p0

    .line 301
    invoke-static {v2, v7, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 302
    .line 303
    .line 304
    :cond_5
    :goto_4
    iget-object p0, v0, Lcom/android/server/locksettings/LockSettingsService;->mMaintenanceModeCallback:Ljava/util/function/Consumer;

    .line 305
    .line 306
    if-eqz p0, :cond_6

    .line 307
    .line 308
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 309
    .line 310
    invoke-interface {p0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 311
    .line 312
    .line 313
    iput-object v3, v0, Lcom/android/server/locksettings/LockSettingsService;->mMaintenanceModeCallback:Ljava/util/function/Consumer;

    .line 314
    .line 315
    :cond_6
    return-void

    .line 316
    nop

    .line 317
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
