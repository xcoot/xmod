.class public final synthetic Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/enterprise/security/PasswordPolicy;

.field public final synthetic f$1:I

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/enterprise/security/PasswordPolicy;IZI)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda7;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    iput p2, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda7;->f$1:I

    iput-boolean p3, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda7;->f$2:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/enterprise/security/PasswordPolicy;ZI)V
    .locals 1

    .line 2
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda7;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    iput-boolean p2, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda7;->f$2:Z

    iput p3, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda7;->f$1:I

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda7;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    .line 7
    .line 8
    iget v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda7;->f$1:I

    .line 9
    .line 10
    iget-boolean p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda7;->f$2:Z

    .line 11
    .line 12
    iget-object v0, v0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    .line 13
    .line 14
    invoke-static {v0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    new-instance v2, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string/jumbo v3, "excludeExternalStorageForFailedPasswordsWipeAsUser() userId = "

    .line 24
    .line 25
    .line 26
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v3, ", exclude = "

    .line 33
    .line 34
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    const-string v3, "SystemUIAdapter"

    .line 45
    .line 46
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    invoke-static {}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isCalledFromSystem()Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-nez v2, :cond_0

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_0
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    .line 57
    .line 58
    sget-object v4, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mContext:Landroid/content/Context;

    .line 59
    .line 60
    invoke-direct {v2, v4}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    new-instance v4, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    const-string/jumbo v5, "setMultifactorAuthEnabled() excludeExternalStorageForFailedPasswordsWipeAsUser = "

    .line 70
    .line 71
    .line 72
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getCurrentUserId()I

    .line 86
    .line 87
    .line 88
    move-result v4

    .line 89
    if-eq v1, v4, :cond_1

    .line 90
    .line 91
    if-eqz v2, :cond_1

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_1
    :try_start_0
    iget-object v0, v0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallbacks:Ljava/util/HashMap;

    .line 95
    .line 96
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    if-eqz v1, :cond_3

    .line 109
    .line 110
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    check-cast v1, Ljava/util/Map$Entry;

    .line 115
    .line 116
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    check-cast v1, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;

    .line 121
    .line 122
    if-eqz v1, :cond_2

    .line 123
    .line 124
    invoke-interface {v1, p0}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;->excludeExternalStorageForFailedPasswordsWipe(Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 125
    .line 126
    .line 127
    goto :goto_0

    .line 128
    :catch_0
    move-exception p0

    .line 129
    const-string/jumbo v0, "excludeExternalStorageForFailedPasswordsWipe() Failed with RemoteException"

    .line 130
    .line 131
    .line 132
    invoke-static {v3, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 133
    .line 134
    .line 135
    goto :goto_1

    .line 136
    :catch_1
    const-string/jumbo p0, "excludeExternalStorageForFailedPasswordsWipe() failed with NullPointerException."

    .line 137
    .line 138
    .line 139
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    .line 141
    .line 142
    :catch_2
    :cond_3
    :goto_1
    return-void

    .line 143
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    .line 144
    .line 145
    iget v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda7;->f$1:I

    .line 146
    .line 147
    iget-boolean p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda7;->f$2:Z

    .line 148
    .line 149
    iget-object v0, v0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    .line 150
    .line 151
    invoke-static {v0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 156
    .line 157
    .line 158
    new-instance v2, Ljava/lang/StringBuilder;

    .line 159
    .line 160
    const-string/jumbo v3, "setPasswordVisibilityEnabledAsUser() userId = "

    .line 161
    .line 162
    .line 163
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    const-string v3, ", allow = "

    .line 170
    .line 171
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v2

    .line 181
    const-string v3, "SystemUIAdapter"

    .line 182
    .line 183
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    .line 185
    .line 186
    invoke-static {}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isCalledFromSystem()Z

    .line 187
    .line 188
    .line 189
    move-result v2

    .line 190
    if-nez v2, :cond_4

    .line 191
    .line 192
    goto :goto_3

    .line 193
    :cond_4
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    .line 194
    .line 195
    sget-object v4, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mContext:Landroid/content/Context;

    .line 196
    .line 197
    invoke-direct {v2, v4}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v2, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    .line 201
    .line 202
    .line 203
    move-result v2

    .line 204
    new-instance v4, Ljava/lang/StringBuilder;

    .line 205
    .line 206
    const-string/jumbo v5, "setPasswordVisibilityEnabledAsUser() isSeparateProfileChallengeEnabled = "

    .line 207
    .line 208
    .line 209
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v4

    .line 219
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    .line 221
    .line 222
    invoke-virtual {v0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getCurrentUserId()I

    .line 223
    .line 224
    .line 225
    move-result v4

    .line 226
    if-eq v1, v4, :cond_5

    .line 227
    .line 228
    if-eqz v2, :cond_5

    .line 229
    .line 230
    goto :goto_3

    .line 231
    :cond_5
    :try_start_1
    iget-object v0, v0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallbacks:Ljava/util/HashMap;

    .line 232
    .line 233
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    :cond_6
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 242
    .line 243
    .line 244
    move-result v1

    .line 245
    if-eqz v1, :cond_7

    .line 246
    .line 247
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    move-result-object v1

    .line 251
    check-cast v1, Ljava/util/Map$Entry;

    .line 252
    .line 253
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    move-result-object v1

    .line 257
    check-cast v1, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;

    .line 258
    .line 259
    if-eqz v1, :cond_6

    .line 260
    .line 261
    invoke-interface {v1, p0}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;->setPasswordVisibilityEnabled(Z)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 262
    .line 263
    .line 264
    goto :goto_2

    .line 265
    :catch_3
    move-exception p0

    .line 266
    const-string/jumbo v0, "setPasswordVisibilityEnabled() Failed with RemoteException"

    .line 267
    .line 268
    .line 269
    invoke-static {v3, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 270
    .line 271
    .line 272
    goto :goto_3

    .line 273
    :catch_4
    const-string/jumbo p0, "setPasswordVisibilityEnabled() failed with NullPointerException."

    .line 274
    .line 275
    .line 276
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    .line 278
    .line 279
    :catch_5
    :cond_7
    :goto_3
    return-void

    .line 280
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    .line 281
    .line 282
    iget v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda7;->f$1:I

    .line 283
    .line 284
    iget-boolean p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda7;->f$2:Z

    .line 285
    .line 286
    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/security/PasswordPolicy;->isPasswordVisibilityEnabledAsUser(I)Z

    .line 287
    .line 288
    .line 289
    move-result v2

    .line 290
    const/4 v3, 0x0

    .line 291
    const-string/jumbo v4, "show_password"

    .line 292
    .line 293
    .line 294
    const-string v5, "PasswordPolicy"

    .line 295
    .line 296
    if-eqz v2, :cond_8

    .line 297
    .line 298
    if-nez p0, :cond_8

    .line 299
    .line 300
    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/security/PasswordPolicy;->isPersona(I)Z

    .line 301
    .line 302
    .line 303
    move-result p0

    .line 304
    if-nez p0, :cond_8

    .line 305
    .line 306
    const-string/jumbo p0, "do not putIntForUser"

    .line 307
    .line 308
    .line 309
    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    .line 311
    .line 312
    iget-object p0, v0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    .line 313
    .line 314
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 315
    .line 316
    .line 317
    move-result-object p0

    .line 318
    invoke-static {p0, v4, v3, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 319
    .line 320
    .line 321
    :cond_8
    iget-object p0, v0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    .line 322
    .line 323
    const-string/jumbo v2, "user"

    .line 324
    .line 325
    .line 326
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 327
    .line 328
    .line 329
    move-result-object p0

    .line 330
    check-cast p0, Landroid/os/UserManager;

    .line 331
    .line 332
    invoke-virtual {p0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 333
    .line 334
    .line 335
    move-result-object p0

    .line 336
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    .line 337
    .line 338
    .line 339
    move-result p0

    .line 340
    if-eqz p0, :cond_9

    .line 341
    .line 342
    new-instance p0, Lcom/android/internal/widget/LockPatternUtils;

    .line 343
    .line 344
    iget-object v2, v0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    .line 345
    .line 346
    invoke-direct {p0, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 347
    .line 348
    .line 349
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    .line 350
    .line 351
    .line 352
    move-result p0

    .line 353
    if-nez p0, :cond_9

    .line 354
    .line 355
    const-string p0, "!hasSeparateChallenge"

    .line 356
    .line 357
    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    .line 359
    .line 360
    iget-object p0, v0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    .line 361
    .line 362
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 363
    .line 364
    .line 365
    move-result-object p0

    .line 366
    invoke-static {p0, v4, v3, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 367
    .line 368
    .line 369
    :cond_9
    return-void

    .line 370
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    .line 371
    .line 372
    iget-boolean v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda7;->f$2:Z

    .line 373
    .line 374
    iget p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda7;->f$1:I

    .line 375
    .line 376
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 377
    .line 378
    .line 379
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    .line 380
    .line 381
    iget-object v3, v0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    .line 382
    .line 383
    invoke-direct {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 384
    .line 385
    .line 386
    invoke-virtual {v2, v1, p0}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(ZI)V

    .line 387
    .line 388
    .line 389
    iget-object v2, v0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    .line 390
    .line 391
    const-string/jumbo v3, "user"

    .line 392
    .line 393
    .line 394
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 395
    .line 396
    .line 397
    move-result-object v2

    .line 398
    check-cast v2, Landroid/os/UserManager;

    .line 399
    .line 400
    invoke-virtual {v2, p0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 401
    .line 402
    .line 403
    move-result-object v3

    .line 404
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    .line 405
    .line 406
    .line 407
    move-result v3

    .line 408
    if-eqz v3, :cond_a

    .line 409
    .line 410
    new-instance v3, Lcom/android/internal/widget/LockPatternUtils;

    .line 411
    .line 412
    iget-object v4, v0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    .line 413
    .line 414
    invoke-direct {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 415
    .line 416
    .line 417
    invoke-virtual {v3, p0}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    .line 418
    .line 419
    .line 420
    move-result v3

    .line 421
    if-nez v3, :cond_a

    .line 422
    .line 423
    invoke-virtual {v2, p0}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    .line 424
    .line 425
    .line 426
    move-result-object p0

    .line 427
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    .line 428
    .line 429
    iget-object v0, v0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    .line 430
    .line 431
    invoke-direct {v2, v0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 432
    .line 433
    .line 434
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    .line 435
    .line 436
    .line 437
    move-result-object p0

    .line 438
    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    .line 439
    .line 440
    .line 441
    move-result p0

    .line 442
    invoke-virtual {v2, v1, p0}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(ZI)V

    .line 443
    .line 444
    .line 445
    :cond_a
    return-void

    .line 446
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    .line 447
    .line 448
    iget v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda7;->f$1:I

    .line 449
    .line 450
    iget-boolean p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda7;->f$2:Z

    .line 451
    .line 452
    iget-object v0, v0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    .line 453
    .line 454
    invoke-static {v0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    .line 455
    .line 456
    .line 457
    move-result-object v0

    .line 458
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 459
    .line 460
    .line 461
    const-string/jumbo v2, "setMultifactorAuthEnabled()"

    .line 462
    .line 463
    .line 464
    const-string v3, "SystemUIAdapter"

    .line 465
    .line 466
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    .line 468
    .line 469
    invoke-static {}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isCalledFromSystem()Z

    .line 470
    .line 471
    .line 472
    move-result v2

    .line 473
    if-nez v2, :cond_b

    .line 474
    .line 475
    goto :goto_7

    .line 476
    :cond_b
    invoke-virtual {v0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getCurrentUserId()I

    .line 477
    .line 478
    .line 479
    move-result v2

    .line 480
    if-eq v1, v2, :cond_c

    .line 481
    .line 482
    goto :goto_7

    .line 483
    :cond_c
    :try_start_2
    iget-object v0, v0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallbacks:Ljava/util/HashMap;

    .line 484
    .line 485
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 486
    .line 487
    .line 488
    move-result-object v0

    .line 489
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 490
    .line 491
    .line 492
    move-result-object v0

    .line 493
    :cond_d
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 494
    .line 495
    .line 496
    move-result v1

    .line 497
    if-eqz v1, :cond_e

    .line 498
    .line 499
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 500
    .line 501
    .line 502
    move-result-object v1

    .line 503
    check-cast v1, Ljava/util/Map$Entry;

    .line 504
    .line 505
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 506
    .line 507
    .line 508
    move-result-object v1

    .line 509
    check-cast v1, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;

    .line 510
    .line 511
    if-eqz v1, :cond_d

    .line 512
    .line 513
    invoke-interface {v1, p0}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;->setMultifactorAuthEnabled(Z)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    .line 514
    .line 515
    .line 516
    goto :goto_4

    .line 517
    :catch_6
    move-exception p0

    .line 518
    goto :goto_5

    .line 519
    :catch_7
    move-exception p0

    .line 520
    goto :goto_6

    .line 521
    :goto_5
    const-string/jumbo v0, "setMultifactorAuthEnabled() Failed with Exception"

    .line 522
    .line 523
    .line 524
    invoke-static {v3, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 525
    .line 526
    .line 527
    goto :goto_7

    .line 528
    :goto_6
    const-string/jumbo v0, "setMultifactorAuthEnabled() Failed with RemoteException"

    .line 529
    .line 530
    .line 531
    invoke-static {v3, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 532
    .line 533
    .line 534
    goto :goto_7

    .line 535
    :catch_8
    const-string/jumbo p0, "setMultifactorAuthEnabled() failed with NullPointerException."

    .line 536
    .line 537
    .line 538
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    .line 540
    .line 541
    :cond_e
    :goto_7
    return-void

    .line 542
    nop

    .line 543
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
