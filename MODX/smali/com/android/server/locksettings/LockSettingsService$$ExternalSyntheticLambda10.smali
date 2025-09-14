.class public final synthetic Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda10;->$r8$classId:I

    .line 3
    iput p1, p0, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda10;->f$0:I

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 7

    .line 1
    iget v0, p0, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda10;->$r8$classId:I

    .line 3
    iget p0, p0, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda10;->f$0:I

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 8
    check-cast p1, Lcom/android/server/knox/dar/DarManagerService;

    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    if-eqz p0, :cond_0

    .line 15
    goto/16 :goto_1

    .line 17
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 19
    const-string v1, "Save secured escrow data for user "

    .line 21
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    move-result-object v0

    .line 31
    const-string v1, "DarManagerService"

    .line 33
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    new-instance v0, Ljava/io/File;

    .line 38
    invoke-static {p0}, Landroid/os/Environment;->getDataSystemDeDirectory(I)Ljava/io/File;

    .line 41
    move-result-object v2

    .line 42
    const-string/jumbo v3, "spblob"

    .line 45
    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 48
    new-instance v2, Ljava/io/File;

    .line 50
    const-wide/16 v3, 0x0

    .line 52
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 55
    move-result-object v5

    .line 56
    const-string/jumbo v6, "e0"

    .line 59
    filled-new-array {v5, v6}, [Ljava/lang/Object;

    .line 62
    move-result-object v5

    .line 63
    const-string v6, "%016x.%s"

    .line 65
    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 68
    move-result-object v5

    .line 69
    invoke-direct {v2, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 72
    new-instance v5, Ljava/io/File;

    .line 74
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 77
    move-result-object v3

    .line 78
    const-string/jumbo v4, "p1"

    .line 81
    filled-new-array {v3, v4}, [Ljava/lang/Object;

    .line 84
    move-result-object v3

    .line 85
    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 88
    move-result-object v3

    .line 89
    invoke-direct {v5, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 92
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 95
    move-result v0

    .line 96
    if-eqz v0, :cond_4

    .line 98
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    .line 101
    move-result v0

    .line 102
    if-nez v0, :cond_1

    .line 104
    goto/16 :goto_0

    .line 106
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 109
    move-result-object v0

    .line 110
    invoke-static {v0}, Lcom/android/server/knox/dar/DarManagerService;->fileRead(Ljava/lang/String;)[B

    .line 113
    move-result-object v0

    .line 114
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 117
    move-result-object v3

    .line 118
    invoke-static {v3}, Lcom/android/server/knox/dar/DarManagerService;->fileRead(Ljava/lang/String;)[B

    .line 121
    move-result-object v3

    .line 122
    filled-new-array {v0, v3}, [Ljava/lang/Object;

    .line 125
    move-result-object v4

    .line 126
    invoke-static {v4}, Lcom/android/server/knox/dar/SecureUtil;->isAnyoneEmptyHere([Ljava/lang/Object;)Z

    .line 129
    move-result v4

    .line 130
    if-eqz v4, :cond_2

    .line 132
    goto/16 :goto_1

    .line 134
    :cond_2
    const-string v4, "SdpSecureDataKey"

    .line 136
    invoke-virtual {p1, v4, p0}, Lcom/android/server/knox/dar/DarManagerService;->getSpecificKeyViaProtector(Ljava/lang/String;I)[B

    .line 139
    move-result-object v4

    .line 140
    invoke-static {v4}, Lcom/android/server/knox/dar/SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    .line 143
    move-result v6

    .line 144
    if-eqz v6, :cond_3

    .line 146
    new-instance p0, Ljava/lang/Exception;

    .line 148
    const-string p1, "Unexpected failure while get secure data key"

    .line 150
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 156
    move-result-object p0

    .line 157
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    goto/16 :goto_1

    .line 162
    :cond_3
    iget-object v6, p1, Lcom/android/server/knox/dar/DarManagerService;->mKeyProtector:Lcom/android/server/knox/dar/KeyProtector;

    .line 164
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 167
    invoke-static {v4, v0}, Lcom/android/server/knox/dar/KeyProtector;->encryptFast([B[B)[B

    .line 170
    move-result-object v0

    .line 171
    iget-object p1, p1, Lcom/android/server/knox/dar/DarManagerService;->mKeyProtector:Lcom/android/server/knox/dar/KeyProtector;

    .line 173
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 176
    invoke-static {v4, v3}, Lcom/android/server/knox/dar/KeyProtector;->encryptFast([B[B)[B

    .line 179
    move-result-object p1

    .line 180
    new-instance v3, Ljava/lang/StringBuilder;

    .line 182
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 185
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 188
    move-result-object v2

    .line 189
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    const-string v2, ".bku"

    .line 194
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 200
    move-result-object v3

    .line 201
    invoke-static {v3, v0}, Lcom/android/server/knox/dar/DarManagerService;->fileWrite(Ljava/lang/String;[B)Z

    .line 204
    move-result v0

    .line 205
    new-instance v3, Ljava/lang/StringBuilder;

    .line 207
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 210
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 213
    move-result-object v4

    .line 214
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 223
    move-result-object v2

    .line 224
    invoke-static {v2, p1}, Lcom/android/server/knox/dar/DarManagerService;->fileWrite(Ljava/lang/String;[B)Z

    .line 227
    move-result p1

    .line 228
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 231
    move-result-object p0

    .line 232
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 235
    move-result-object v0

    .line 236
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 239
    move-result-object p1

    .line 240
    filled-new-array {p0, v0, p1}, [Ljava/lang/Object;

    .line 243
    move-result-object p0

    .line 244
    const-string p1, "Escrow data for SYSTEM user %d got secured [ Res : %b/%b ]"

    .line 246
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 249
    move-result-object p0

    .line 250
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    goto :goto_1

    .line 254
    :cond_4
    :goto_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 257
    move-result p0

    .line 258
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    .line 261
    move-result p1

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    .line 264
    const-string v2, "Escrow data doesn\'t exist [ "

    .line 266
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 269
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 272
    const-string p0, "/"

    .line 274
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 280
    const-string p0, " ]"

    .line 282
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 288
    move-result-object p0

    .line 289
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    :goto_1
    return-void

    .line 293
    :pswitch_0
    check-cast p1, Lcom/android/server/pm/PersonaManagerService;

    .line 295
    iget-object v0, p1, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 297
    iget-object p1, p1, Lcom/android/server/pm/PersonaManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 299
    sget-object v1, Lcom/android/server/knox/ContainerDependencyWrapper;->sInstance:Lcom/android/server/knox/ContainerDependencyWrapper;

    .line 301
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 304
    move-result-object v1

    .line 305
    const-string/jumbo v2, "knox_finger_print_plus"

    .line 308
    const/4 v3, 0x0

    .line 309
    invoke-static {v1, v2, v3, p0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 312
    move-result v1

    .line 313
    const/4 v4, 0x1

    .line 314
    if-ne v1, v4, :cond_5

    .line 316
    invoke-virtual {p1, p0}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricType(I)I

    .line 319
    move-result p1

    .line 320
    if-nez p1, :cond_5

    .line 322
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 325
    move-result-object p1

    .line 326
    invoke-static {p1, v2, v3, p0}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 329
    const-string p0, "ContainerDependencyWrapper"

    .line 331
    const-string/jumbo p1, "unset two-factor setting value."

    .line 334
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    :cond_5
    return-void

    .line 338
    nop

    .line 339
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
