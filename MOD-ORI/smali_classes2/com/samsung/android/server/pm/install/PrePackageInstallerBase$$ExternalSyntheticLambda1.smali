.class public final synthetic Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 15

    .line 1
    iget v0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$ApkFile;

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$ApkFile;->getFile()Ljava/io/File;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {v0, p0}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->getCachedPackageArchiveInfo(Ljava/io/File;)Landroid/content/pm/PackageInfo;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0

    .line 24
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v0, Ljava/io/File;

    .line 27
    .line 28
    iget-object p0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;

    .line 29
    .line 30
    iget-object v1, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mPackageInstallerService:Lcom/android/server/pm/PackageInstallerService;

    .line 31
    .line 32
    const-string v2, "Write : "

    .line 33
    .line 34
    new-instance v3, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string v4, "!@INSTALL ------------------ "

    .line 37
    .line 38
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    iget-object v4, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mLogMsg:Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$LocalIntentReceiver;

    .line 53
    .line 54
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    invoke-static {v3}, Lcom/samsung/android/server/pm/PmLog;->logDebugInfo(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v4, v3}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$LocalIntentReceiver;->out(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    :try_start_0
    new-instance v3, Landroid/content/pm/PackageInstaller$SessionParams;

    .line 64
    .line 65
    const/4 v5, 0x1

    .line 66
    invoke-direct {v3, v5}, Landroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V

    .line 67
    .line 68
    .line 69
    iget v5, v3, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 70
    .line 71
    const/high16 v6, 0x4000000

    .line 72
    .line 73
    or-int/2addr v5, v6

    .line 74
    iput v5, v3, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 75
    .line 76
    iget v5, v3, Landroid/content/pm/PackageInstaller$SessionParams;->sessionFlags:I

    .line 77
    .line 78
    const/high16 v6, 0x2000000

    .line 79
    .line 80
    or-int/2addr v5, v6

    .line 81
    iput v5, v3, Landroid/content/pm/PackageInstaller$SessionParams;->sessionFlags:I

    .line 82
    .line 83
    const-string v5, "PrePackageInstaller"

    .line 84
    .line 85
    iget-object p0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mContext:Landroid/content/Context;

    .line 86
    .line 87
    invoke-virtual {p0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    const/4 v6, 0x0

    .line 92
    invoke-virtual {v1, v3, v5, p0, v6}, Lcom/android/server/pm/PackageInstallerService;->createSession(Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;Ljava/lang/String;I)I

    .line 93
    .line 94
    .line 95
    move-result p0

    .line 96
    new-instance v3, Landroid/content/pm/PackageInstaller$Session;

    .line 97
    .line 98
    invoke-virtual {v1, p0}, Lcom/android/server/pm/PackageInstallerService;->openSession(I)Landroid/content/pm/IPackageInstallerSession;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    invoke-direct {v3, p0}, Landroid/content/pm/PackageInstaller$Session;-><init>(Landroid/content/pm/IPackageInstallerSession;)V

    .line 103
    .line 104
    .line 105
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 106
    .line 107
    .line 108
    move-result-wide v13

    .line 109
    new-instance p0, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    invoke-virtual {v4, p0}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$LocalIntentReceiver;->out(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 126
    .line 127
    .line 128
    :try_start_1
    new-instance p0, Ljava/io/FileInputStream;

    .line 129
    .line 130
    invoke-direct {p0, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 131
    .line 132
    .line 133
    :try_start_2
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v8

    .line 137
    invoke-virtual {v0}, Ljava/io/File;->length()J

    .line 138
    .line 139
    .line 140
    move-result-wide v11

    .line 141
    const-wide/16 v9, 0x0

    .line 142
    .line 143
    move-object v7, v3

    .line 144
    invoke-virtual/range {v7 .. v12}, Landroid/content/pm/PackageInstaller$Session;->openWrite(Ljava/lang/String;JJ)Ljava/io/OutputStream;

    .line 145
    .line 146
    .line 147
    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 148
    const/high16 v2, 0x10000

    .line 149
    .line 150
    :try_start_3
    new-array v2, v2, [B

    .line 151
    .line 152
    :goto_0
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    .line 153
    .line 154
    .line 155
    move-result v5

    .line 156
    const/4 v7, -0x1

    .line 157
    if-eq v5, v7, :cond_0

    .line 158
    .line 159
    invoke-virtual {v1, v2, v6, v5}, Ljava/io/OutputStream;->write([BII)V

    .line 160
    .line 161
    .line 162
    goto :goto_0

    .line 163
    :catchall_0
    move-exception v2

    .line 164
    goto :goto_2

    .line 165
    :cond_0
    invoke-virtual {v3, v1}, Landroid/content/pm/PackageInstaller$Session;->fsync(Ljava/io/OutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 166
    .line 167
    .line 168
    if-eqz v1, :cond_1

    .line 169
    .line 170
    :try_start_4
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 171
    .line 172
    .line 173
    goto :goto_1

    .line 174
    :catchall_1
    move-exception v1

    .line 175
    goto :goto_4

    .line 176
    :cond_1
    :goto_1
    :try_start_5
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 177
    .line 178
    .line 179
    goto :goto_7

    .line 180
    :catch_0
    move-exception p0

    .line 181
    goto :goto_6

    .line 182
    :goto_2
    if-eqz v1, :cond_2

    .line 183
    .line 184
    :try_start_6
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 185
    .line 186
    .line 187
    goto :goto_3

    .line 188
    :catchall_2
    move-exception v1

    .line 189
    :try_start_7
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 190
    .line 191
    .line 192
    :cond_2
    :goto_3
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 193
    :goto_4
    :try_start_8
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 194
    .line 195
    .line 196
    goto :goto_5

    .line 197
    :catchall_3
    move-exception p0

    .line 198
    :try_start_9
    invoke-virtual {v1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 199
    .line 200
    .line 201
    :goto_5
    throw v1
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    .line 202
    :goto_6
    :try_start_a
    new-instance v1, Ljava/lang/StringBuilder;

    .line 203
    .line 204
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    const-string p0, " : ignored"

    .line 211
    .line 212
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object p0

    .line 219
    invoke-virtual {v4, p0}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$LocalIntentReceiver;->out(Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    :goto_7
    new-instance p0, Ljava/lang/StringBuilder;

    .line 223
    .line 224
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 225
    .line 226
    .line 227
    const-string v1, "Write "

    .line 228
    .line 229
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    const-string v0, " Done :"

    .line 240
    .line 241
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 245
    .line 246
    .line 247
    move-result-wide v0

    .line 248
    sub-long/2addr v0, v13

    .line 249
    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    const-string/jumbo v0, "ms"

    .line 253
    .line 254
    .line 255
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object p0

    .line 262
    invoke-virtual {v4, p0}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$LocalIntentReceiver;->out(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    .line 263
    .line 264
    .line 265
    goto :goto_8

    .line 266
    :catch_1
    move-exception p0

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    .line 268
    .line 269
    const-string v1, "error #2, "

    .line 270
    .line 271
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object p0

    .line 281
    invoke-virtual {v4, p0}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$LocalIntentReceiver;->out(Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    const/4 v3, 0x0

    .line 285
    :goto_8
    return-object v3

    .line 286
    nop

    .line 287
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
