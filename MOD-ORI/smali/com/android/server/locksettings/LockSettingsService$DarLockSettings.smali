.class public final Lcom/android/server/locksettings/LockSettingsService$DarLockSettings;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final service:Lcom/android/server/locksettings/LockSettingsService;

.field public final synthetic this$0:Lcom/android/server/locksettings/LockSettingsService;


# direct methods
.method public constructor <init>(Lcom/android/server/locksettings/LockSettingsService;Lcom/android/server/locksettings/LockSettingsService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsService$DarLockSettings;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/locksettings/LockSettingsService$DarLockSettings;->service:Lcom/android/server/locksettings/LockSettingsService;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final getSecureMode(I)I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$DarLockSettings;->service:Lcom/android/server/locksettings/LockSettingsService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService$DarLockSettings;->service:Lcom/android/server/locksettings/LockSettingsService;

    .line 7
    .line 8
    invoke-virtual {v1, p1}, Lcom/android/server/locksettings/LockSettingsService;->isSyntheticPasswordBasedCredentialLocked(I)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/4 v2, -0x1

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService$DarLockSettings;->service:Lcom/android/server/locksettings/LockSettingsService;

    .line 16
    .line 17
    invoke-virtual {v1, p1}, Lcom/android/server/locksettings/LockSettingsService;->getCurrentLskfBasedProtectorId(I)J

    .line 18
    .line 19
    .line 20
    move-result-wide v3

    .line 21
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$DarLockSettings;->service:Lcom/android/server/locksettings/LockSettingsService;

    .line 22
    .line 23
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 24
    .line 25
    iget-object p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 26
    .line 27
    const-string/jumbo v1, "pwd"

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, p1, v1, v3, v4}, Lcom/android/server/locksettings/LockSettingsStorage;->readSyntheticPasswordState(ILjava/lang/String;J)[B

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    if-nez p0, :cond_0

    .line 35
    .line 36
    new-instance p0, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    const-string/jumbo v1, "getSecureMode: encountered empty password data for user "

    .line 39
    .line 40
    .line 41
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    const-string p1, "SyntheticPasswordManager.SDP"

    .line 52
    .line 53
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    invoke-static {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->fromBytes([B)Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    iget v2, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->secureMode:I

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :catchall_0
    move-exception p0

    .line 65
    goto :goto_1

    .line 66
    :cond_1
    :goto_0
    monitor-exit v0

    .line 67
    return v2

    .line 68
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    throw p0
.end method

.method public final restoreEscrowDataIfNeededLocked(I)V
    .locals 12

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v6, p0, Lcom/android/server/locksettings/LockSettingsService$DarLockSettings;->service:Lcom/android/server/locksettings/LockSettingsService;

    .line 5
    .line 6
    iget-object v0, v6, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasEscrowData(I)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_2

    .line 20
    .line 21
    invoke-virtual {v6, p1}, Lcom/android/server/locksettings/LockSettingsService;->isKnoxAdminActivated(I)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_2

    .line 26
    .line 27
    return-void

    .line 28
    :cond_2
    invoke-static {v6}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$mgetDarManagerService(Lcom/android/server/locksettings/LockSettingsService;)Ljava/util/Optional;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    const-string/jumbo v1, "p1"

    .line 37
    .line 38
    .line 39
    const-string/jumbo v2, "e0"

    .line 40
    .line 41
    .line 42
    const/4 v7, 0x0

    .line 43
    if-eqz v0, :cond_6

    .line 44
    .line 45
    iget-object v0, v6, Lcom/android/server/locksettings/LockSettingsService;->mDarManagerService:Lcom/android/server/knox/dar/DarManagerService;

    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    if-eqz p1, :cond_3

    .line 51
    .line 52
    goto/16 :goto_0

    .line 53
    .line 54
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    const-string v4, "Get secured escrow data for user "

    .line 57
    .line 58
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    const-string v4, "DarManagerService"

    .line 69
    .line 70
    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    new-instance v3, Ljava/io/File;

    .line 74
    .line 75
    invoke-static {p1}, Landroid/os/Environment;->getDataSystemDeDirectory(I)Ljava/io/File;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    const-string/jumbo v8, "spblob"

    .line 80
    .line 81
    .line 82
    invoke-direct {v3, v5, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    new-instance v5, Ljava/io/File;

    .line 86
    .line 87
    const-wide/16 v8, 0x0

    .line 88
    .line 89
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 90
    .line 91
    .line 92
    move-result-object v10

    .line 93
    const-string/jumbo v11, "e0.bku"

    .line 94
    .line 95
    .line 96
    filled-new-array {v10, v11}, [Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v10

    .line 100
    const-string v11, "%016x.%s"

    .line 101
    .line 102
    invoke-static {v11, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v10

    .line 106
    invoke-direct {v5, v3, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    new-instance v10, Ljava/io/File;

    .line 110
    .line 111
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 112
    .line 113
    .line 114
    move-result-object v8

    .line 115
    const-string/jumbo v9, "p1.bku"

    .line 116
    .line 117
    .line 118
    filled-new-array {v8, v9}, [Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v8

    .line 122
    invoke-static {v11, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v8

    .line 126
    invoke-direct {v10, v3, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v3

    .line 133
    invoke-static {v3}, Lcom/android/server/knox/dar/DarManagerService;->fileRead(Ljava/lang/String;)[B

    .line 134
    .line 135
    .line 136
    move-result-object v3

    .line 137
    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v5

    .line 141
    invoke-static {v5}, Lcom/android/server/knox/dar/DarManagerService;->fileRead(Ljava/lang/String;)[B

    .line 142
    .line 143
    .line 144
    move-result-object v5

    .line 145
    filled-new-array {v3, v5}, [Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v8

    .line 149
    invoke-static {v8}, Lcom/android/server/knox/dar/SecureUtil;->isAnyoneEmptyHere([Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result v8

    .line 153
    if-eqz v8, :cond_4

    .line 154
    .line 155
    goto :goto_0

    .line 156
    :cond_4
    const-string v8, "SdpSecureDataKey"

    .line 157
    .line 158
    invoke-virtual {v0, v8, p1}, Lcom/android/server/knox/dar/DarManagerService;->getSpecificKeyViaProtector(Ljava/lang/String;I)[B

    .line 159
    .line 160
    .line 161
    move-result-object v8

    .line 162
    invoke-static {v8}, Lcom/android/server/knox/dar/SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    move-result v9

    .line 166
    if-eqz v9, :cond_5

    .line 167
    .line 168
    new-instance v0, Ljava/lang/Exception;

    .line 169
    .line 170
    const-string v3, "Unexpected failure while get secure data key"

    .line 171
    .line 172
    invoke-direct {v0, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    .line 181
    .line 182
    goto :goto_0

    .line 183
    :cond_5
    iget-object v9, v0, Lcom/android/server/knox/dar/DarManagerService;->mKeyProtector:Lcom/android/server/knox/dar/KeyProtector;

    .line 184
    .line 185
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 186
    .line 187
    .line 188
    invoke-static {v8, v3}, Lcom/android/server/knox/dar/KeyProtector;->decryptFast([B[B)[B

    .line 189
    .line 190
    .line 191
    move-result-object v3

    .line 192
    iget-object v0, v0, Lcom/android/server/knox/dar/DarManagerService;->mKeyProtector:Lcom/android/server/knox/dar/KeyProtector;

    .line 193
    .line 194
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 195
    .line 196
    .line 197
    invoke-static {v8, v5}, Lcom/android/server/knox/dar/KeyProtector;->decryptFast([B[B)[B

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    new-instance v5, Landroid/os/Bundle;

    .line 202
    .line 203
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v5, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v5, v1, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 210
    .line 211
    .line 212
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 213
    .line 214
    .line 215
    move-result-object v8

    .line 216
    invoke-static {v3}, Lcom/android/server/knox/dar/SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    .line 217
    .line 218
    .line 219
    move-result v3

    .line 220
    xor-int/lit8 v3, v3, 0x1

    .line 221
    .line 222
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 223
    .line 224
    .line 225
    move-result-object v3

    .line 226
    invoke-static {v0}, Lcom/android/server/knox/dar/SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    .line 227
    .line 228
    .line 229
    move-result v0

    .line 230
    xor-int/lit8 v0, v0, 0x1

    .line 231
    .line 232
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    filled-new-array {v8, v3, v0}, [Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    const-string v3, "Secured escrow data for user %d prepared [ Res : %b/%b ]"

    .line 241
    .line 242
    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    .line 248
    .line 249
    goto :goto_1

    .line 250
    :cond_6
    :goto_0
    move-object v5, v7

    .line 251
    :goto_1
    if-nez v5, :cond_7

    .line 252
    .line 253
    return-void

    .line 254
    :cond_7
    invoke-virtual {v5, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    .line 255
    .line 256
    .line 257
    move-result-object v2

    .line 258
    invoke-virtual {v5, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    .line 259
    .line 260
    .line 261
    move-result-object v8

    .line 262
    if-eqz v2, :cond_8

    .line 263
    .line 264
    if-eqz v8, :cond_8

    .line 265
    .line 266
    iget-object v9, v6, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 267
    .line 268
    const-string/jumbo v1, "e0"

    .line 269
    .line 270
    .line 271
    const-wide/16 v3, 0x0

    .line 272
    .line 273
    move-object v0, v9

    .line 274
    move v5, p1

    .line 275
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveState(Ljava/lang/String;[BJI)V

    .line 276
    .line 277
    .line 278
    const-string/jumbo v1, "p1"

    .line 279
    .line 280
    .line 281
    move-object v2, v8

    .line 282
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveState(Ljava/lang/String;[BJI)V

    .line 283
    .line 284
    .line 285
    :cond_8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 286
    .line 287
    .line 288
    move-result-object v0

    .line 289
    iget-object v1, v6, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 290
    .line 291
    invoke-virtual {v1, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasEscrowData(I)Z

    .line 292
    .line 293
    .line 294
    move-result v1

    .line 295
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 296
    .line 297
    .line 298
    move-result-object v1

    .line 299
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    .line 300
    .line 301
    .line 302
    move-result-object v0

    .line 303
    const-string v1, "Escrow data for user %d got restored [ Res : %b ]"

    .line 304
    .line 305
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v0

    .line 309
    invoke-static {v7, v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    .line 311
    .line 312
    return-void
.end method

.method public final saveEscrowDataIfNeededLocked(I)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$DarLockSettings;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    .line 2
    .line 3
    const-string/jumbo v1, "sdp-mdfppmode-for-system"

    .line 4
    .line 5
    .line 6
    const-wide/16 v2, 0x0

    .line 7
    .line 8
    const/4 v4, 0x0

    .line 9
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    .line 10
    .line 11
    .line 12
    move-result-wide v5

    .line 13
    const-wide/16 v7, 0x1

    .line 14
    .line 15
    cmp-long v5, v5, v7

    .line 16
    .line 17
    if-nez v5, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    .line 21
    .line 22
    .line 23
    move-result-wide v0

    .line 24
    const-wide/16 v2, 0x2

    .line 25
    .line 26
    cmp-long v0, v0, v2

    .line 27
    .line 28
    if-ltz v0, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    if-nez p1, :cond_2

    .line 32
    .line 33
    const/4 v0, 0x0

    .line 34
    const-string/jumbo v1, "saveEscrowDataIfNeededLocked for system"

    .line 35
    .line 36
    .line 37
    invoke-static {v0, v1}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$DarLockSettings;->service:Lcom/android/server/locksettings/LockSettingsService;

    .line 41
    .line 42
    invoke-static {p0}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$mgetDarManagerService(Lcom/android/server/locksettings/LockSettingsService;)Ljava/util/Optional;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    new-instance v0, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda10;

    .line 47
    .line 48
    const/4 v1, 0x1

    .line 49
    invoke-direct {v0, p1, v1}, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda10;-><init>(II)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 53
    .line 54
    .line 55
    :cond_2
    :goto_0
    return-void
.end method

.method public final setSecureFolderLockCredential(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;I)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 10

    .line 1
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$DarLockSettings;->service:Lcom/android/server/locksettings/LockSettingsService;

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v1, "Set credential for secure folder user "

    .line 6
    .line 7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->i(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    if-nez p1, :cond_0

    .line 22
    .line 23
    move-object v3, v0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->getCredential()[B

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    move-object v3, v1

    .line 30
    :goto_0
    if-nez p1, :cond_1

    .line 31
    .line 32
    move-object v5, v0

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    move-object v5, v1

    .line 43
    :goto_1
    if-nez p2, :cond_2

    .line 44
    .line 45
    move-object v7, v0

    .line 46
    goto :goto_2

    .line 47
    :cond_2
    invoke-virtual {p2}, Lcom/android/internal/widget/LockscreenCredential;->getCredential()[B

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    move-object v7, v1

    .line 52
    :goto_2
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    .line 54
    .line 55
    move-result-object v9

    .line 56
    const-string/jumbo v2, "credential"

    .line 57
    .line 58
    .line 59
    const-string/jumbo v4, "credentialType"

    .line 60
    .line 61
    .line 62
    const-string/jumbo v6, "savedCredential"

    .line 63
    .line 64
    .line 65
    const-string/jumbo v8, "userId"

    .line 66
    .line 67
    .line 68
    filled-new-array/range {v2 .. v9}, [Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-static {v1}, Lcom/android/server/knox/dar/sdp/SDPLog;->p([Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 76
    .line 77
    .line 78
    move-result-wide v1

    .line 79
    sget-object v3, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 80
    .line 81
    if-eqz p1, :cond_5

    .line 82
    .line 83
    :try_start_0
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    .line 84
    .line 85
    .line 86
    move-result v4

    .line 87
    if-nez v4, :cond_5

    .line 88
    .line 89
    if-eqz p2, :cond_3

    .line 90
    .line 91
    invoke-virtual {p2}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    .line 92
    .line 93
    .line 94
    move-result p2

    .line 95
    if-nez p2, :cond_3

    .line 96
    .line 97
    goto :goto_3

    .line 98
    :catchall_0
    move-exception p0

    .line 99
    goto :goto_7

    .line 100
    :catch_0
    move-exception p0

    .line 101
    goto :goto_5

    .line 102
    :cond_3
    invoke-virtual {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->isSyntheticPasswordBasedCredentialLocked(I)Z

    .line 103
    .line 104
    .line 105
    move-result p2

    .line 106
    if-eqz p2, :cond_4

    .line 107
    .line 108
    const-string p2, "Secure Folder already has sp based credential"

    .line 109
    .line 110
    invoke-static {v0, p2}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mDarLockSettings:Lcom/android/server/locksettings/LockSettingsService$DarLockSettings;

    .line 114
    .line 115
    invoke-virtual {p0, p1, p3}, Lcom/android/server/locksettings/LockSettingsService$DarLockSettings;->setSecureFolderLockViaProtector(Lcom/android/internal/widget/LockscreenCredential;I)Z

    .line 116
    .line 117
    .line 118
    move-result p0

    .line 119
    if-eqz p0, :cond_6

    .line 120
    .line 121
    sget-object v3, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 122
    .line 123
    goto :goto_4

    .line 124
    :cond_4
    invoke-virtual {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->isSyntheticPasswordBasedCredentialLocked(I)Z

    .line 125
    .line 126
    .line 127
    move-result p0

    .line 128
    xor-int/lit8 p0, p0, 0x1

    .line 129
    .line 130
    if-eqz p0, :cond_6

    .line 131
    .line 132
    const-string p0, "Secure Folder seems to need sp initialization first"

    .line 133
    .line 134
    invoke-static {v0, p0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    sget-object v3, Lcom/android/internal/widget/VerifyCredentialResponse;->SKIP:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 138
    .line 139
    goto :goto_4

    .line 140
    :cond_5
    :goto_3
    const-string p0, "Seems normal case, skip handling"

    .line 141
    .line 142
    invoke-static {v0, p0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    sget-object v3, Lcom/android/internal/widget/VerifyCredentialResponse;->SKIP:Lcom/android/internal/widget/VerifyCredentialResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    .line 147
    :cond_6
    :goto_4
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 148
    .line 149
    .line 150
    goto :goto_6

    .line 151
    :goto_5
    :try_start_1
    const-string p1, "Unexpected exception while set sf credential"

    .line 152
    .line 153
    invoke-static {p0, v0, p1}, Lcom/android/server/knox/dar/sdp/SDPLog;->e(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 154
    .line 155
    .line 156
    goto :goto_4

    .line 157
    :goto_6
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 158
    .line 159
    .line 160
    move-result-object p0

    .line 161
    invoke-virtual {v3}, Lcom/android/internal/widget/VerifyCredentialResponse;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object p0

    .line 169
    const-string p1, "Result of setting credential for secure folder user %d : %s"

    .line 170
    .line 171
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object p0

    .line 175
    invoke-static {v0, p0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    return-object v3

    .line 179
    :goto_7
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 180
    .line 181
    .line 182
    throw p0
.end method

.method public final setSecureFolderLockViaProtector(Lcom/android/internal/widget/LockscreenCredential;I)Z
    .locals 12

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Set credential via trusted domain for SecureFolder user "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->i(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    if-nez p1, :cond_0

    .line 19
    .line 20
    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move-object v0, p1

    .line 26
    :goto_0
    invoke-virtual {v0}, Lcom/android/internal/widget/LockscreenCredential;->getCredential()[B

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    if-nez p1, :cond_1

    .line 31
    .line 32
    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    move-object v0, p1

    .line 38
    :goto_1
    invoke-virtual {v0}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    const-string/jumbo v3, "credentialType"

    .line 51
    .line 52
    .line 53
    const-string/jumbo v5, "userId"

    .line 54
    .line 55
    .line 56
    const-string/jumbo v1, "credential,"

    .line 57
    .line 58
    .line 59
    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->p([Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$DarLockSettings;->service:Lcom/android/server/locksettings/LockSettingsService;

    .line 67
    .line 68
    invoke-static {v0}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$mgetDarManagerService(Lcom/android/server/locksettings/LockSettingsService;)Ljava/util/Optional;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    const-wide/16 v2, 0x0

    .line 77
    .line 78
    if-eqz v1, :cond_3

    .line 79
    .line 80
    iget-object v1, v0, Lcom/android/server/locksettings/LockSettingsService;->mDarManagerService:Lcom/android/server/knox/dar/DarManagerService;

    .line 81
    .line 82
    invoke-virtual {v1}, Lcom/android/server/knox/dar/DarManagerService;->checkSystemPermission()V

    .line 83
    .line 84
    .line 85
    const-string v4, "SdpTokenHandle"

    .line 86
    .line 87
    invoke-virtual {v1, v4, p2}, Lcom/android/server/knox/dar/DarManagerService;->getSpecificKeyViaProtector(Ljava/lang/String;I)[B

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    if-eqz v1, :cond_2

    .line 92
    .line 93
    sget-object v4, Lcom/android/server/knox/dar/sdp/security/BytesUtil;->DEFAULT_BYTE_ORDER:Ljava/nio/ByteOrder;

    .line 94
    .line 95
    const/16 v4, 0x8

    .line 96
    .line 97
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    sget-object v5, Lcom/android/server/knox/dar/sdp/security/BytesUtil;->DEFAULT_BYTE_ORDER:Ljava/nio/ByteOrder;

    .line 102
    .line 103
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v4, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getLong()J

    .line 113
    .line 114
    .line 115
    move-result-wide v4

    .line 116
    goto :goto_2

    .line 117
    :cond_2
    const-string v1, "DarManagerService"

    .line 118
    .line 119
    const-string/jumbo v4, "get SecureFolder Token Handle Failed"

    .line 120
    .line 121
    .line 122
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    .line 124
    .line 125
    move-wide v4, v2

    .line 126
    :goto_2
    move-wide v8, v4

    .line 127
    goto :goto_3

    .line 128
    :cond_3
    move-wide v8, v2

    .line 129
    :goto_3
    cmp-long v1, v8, v2

    .line 130
    .line 131
    const/4 v2, 0x0

    .line 132
    if-nez v1, :cond_4

    .line 133
    .line 134
    const-string p0, "Failed to get SecureFolder token handle"

    .line 135
    .line 136
    invoke-static {v2, p0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    goto :goto_4

    .line 140
    :cond_4
    iget-object v0, v0, Lcom/android/server/locksettings/LockSettingsService;->mDarManagerService:Lcom/android/server/knox/dar/DarManagerService;

    .line 141
    .line 142
    invoke-virtual {v0}, Lcom/android/server/knox/dar/DarManagerService;->checkSystemPermission()V

    .line 143
    .line 144
    .line 145
    const-string v1, "SdpResetToken"

    .line 146
    .line 147
    invoke-virtual {v0, v1, p2}, Lcom/android/server/knox/dar/DarManagerService;->getSpecificKeyViaProtector(Ljava/lang/String;I)[B

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    invoke-static {v0}, Lcom/android/server/knox/dar/SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    move-result v1

    .line 155
    if-eqz v1, :cond_5

    .line 156
    .line 157
    const-string p0, "Failed to get SecureFolder reset token"

    .line 158
    .line 159
    invoke-static {v2, p0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    :goto_4
    const/4 p0, 0x0

    .line 163
    goto :goto_5

    .line 164
    :cond_5
    iget-object v6, p0, Lcom/android/server/locksettings/LockSettingsService$DarLockSettings;->service:Lcom/android/server/locksettings/LockSettingsService;

    .line 165
    .line 166
    move-object v7, p1

    .line 167
    move-object v10, v0

    .line 168
    move v11, p2

    .line 169
    invoke-static/range {v6 .. v11}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$msetLockCredentialWithToken(Lcom/android/server/locksettings/LockSettingsService;Lcom/android/internal/widget/LockscreenCredential;J[BI)Z

    .line 170
    .line 171
    .line 172
    move-result p0

    .line 173
    invoke-static {v0}, Lcom/android/server/knox/dar/SecureUtil;->clear([B)V

    .line 174
    .line 175
    .line 176
    :goto_5
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 181
    .line 182
    .line 183
    move-result-object p2

    .line 184
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    const-string p2, "Result of setting credential via protector for SecureFolder user %d : [ res : %s ]"

    .line 189
    .line 190
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    invoke-static {v2, p1}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    return p0
.end method
