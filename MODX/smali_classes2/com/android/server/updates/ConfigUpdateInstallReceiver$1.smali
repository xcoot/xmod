.class public final Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;
.super Ljava/lang/Thread;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/updates/ConfigUpdateInstallReceiver;

.field public final synthetic val$context:Landroid/content/Context;

.field public final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Lcom/android/server/updates/ConfigUpdateInstallReceiver;Landroid/content/Intent;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->this$0:Lcom/android/server/updates/ConfigUpdateInstallReceiver;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->val$intent:Landroid/content/Intent;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->val$context:Landroid/content/Context;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    const-string v0, "ConfigUpdateInstallReceiver"

    .line 2
    .line 3
    const v1, 0xc864

    .line 4
    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    :try_start_0
    iget-object v3, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->this$0:Lcom/android/server/updates/ConfigUpdateInstallReceiver;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->val$intent:Landroid/content/Intent;

    .line 10
    .line 11
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    const-string v3, "VERSION"

    .line 15
    .line 16
    invoke-virtual {v4, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    if-eqz v3, :cond_6

    .line 21
    .line 22
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    iget-object v4, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->this$0:Lcom/android/server/updates/ConfigUpdateInstallReceiver;

    .line 31
    .line 32
    iget-object v5, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->val$intent:Landroid/content/Intent;

    .line 33
    .line 34
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    const-string v4, "REQUIRED_HASH"

    .line 38
    .line 39
    invoke-virtual {v5, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    if-eqz v4, :cond_5

    .line 44
    .line 45
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    iget-object v5, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->this$0:Lcom/android/server/updates/ConfigUpdateInstallReceiver;

    .line 50
    .line 51
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 52
    .line 53
    .line 54
    :try_start_1
    iget-object v5, v5, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->updateVersion:Ljava/io/File;

    .line 55
    .line 56
    invoke-virtual {v5}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    invoke-static {v5}, Llibcore/io/IoUtils;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    move-result v5
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 72
    goto :goto_0

    .line 73
    :catch_0
    :try_start_2
    const-string v5, "Couldn\'t find current metadata, assuming first update"

    .line 74
    .line 75
    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    move v5, v2

    .line 79
    :goto_0
    iget-object v6, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->this$0:Lcom/android/server/updates/ConfigUpdateInstallReceiver;

    .line 80
    .line 81
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 82
    .line 83
    .line 84
    :try_start_3
    iget-object v6, v6, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->updateContent:Ljava/io/File;

    .line 85
    .line 86
    invoke-virtual {v6}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v6

    .line 90
    invoke-static {v6}, Llibcore/io/IoUtils;->readFileAsByteArray(Ljava/lang/String;)[B

    .line 91
    .line 92
    .line 93
    move-result-object v6
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 94
    goto :goto_1

    .line 95
    :catch_1
    :try_start_4
    const-string v6, "Failed to read current content, assuming first update!"

    .line 96
    .line 97
    invoke-static {v0, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    const/4 v6, 0x0

    .line 101
    :goto_1
    if-nez v6, :cond_0

    .line 102
    .line 103
    const-string v6, "0"
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_0
    :try_start_5
    const-string v7, "SHA512"

    .line 107
    .line 108
    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 109
    .line 110
    .line 111
    move-result-object v7

    .line 112
    invoke-virtual {v7, v6}, Ljava/security/MessageDigest;->digest([B)[B

    .line 113
    .line 114
    .line 115
    move-result-object v6

    .line 116
    invoke-static {v6, v2}, Lcom/android/internal/util/HexDump;->toHexString([BZ)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v6
    :try_end_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 120
    :goto_2
    :try_start_6
    iget-object v7, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->this$0:Lcom/android/server/updates/ConfigUpdateInstallReceiver;

    .line 121
    .line 122
    invoke-virtual {v7, v5, v3}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->verifyVersion(II)Z

    .line 123
    .line 124
    .line 125
    move-result v5

    .line 126
    if-nez v5, :cond_1

    .line 127
    .line 128
    const-string p0, "Not installing, new version is <= current version"

    .line 129
    .line 130
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    .line 132
    .line 133
    goto/16 :goto_6

    .line 134
    .line 135
    :catch_2
    move-exception p0

    .line 136
    goto/16 :goto_5

    .line 137
    .line 138
    :cond_1
    iget-object v5, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->this$0:Lcom/android/server/updates/ConfigUpdateInstallReceiver;

    .line 139
    .line 140
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 141
    .line 142
    .line 143
    const-string v5, "NONE"

    .line 144
    .line 145
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result v5

    .line 149
    if-eqz v5, :cond_2

    .line 150
    .line 151
    const/4 v4, 0x1

    .line 152
    goto :goto_3

    .line 153
    :cond_2
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    move-result v4

    .line 157
    :goto_3
    if-nez v4, :cond_3

    .line 158
    .line 159
    const-string p0, "Current hash did not match required value"

    .line 160
    .line 161
    invoke-static {v1, p0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 162
    .line 163
    .line 164
    goto/16 :goto_6

    .line 165
    .line 166
    :cond_3
    const-string v4, "Found new update, installing..."

    .line 167
    .line 168
    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    .line 170
    .line 171
    iget-object v4, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->this$0:Lcom/android/server/updates/ConfigUpdateInstallReceiver;

    .line 172
    .line 173
    iget-object v5, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->val$context:Landroid/content/Context;

    .line 174
    .line 175
    iget-object v6, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->val$intent:Landroid/content/Intent;

    .line 176
    .line 177
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v6}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 181
    .line 182
    .line 183
    move-result-object v4

    .line 184
    if-eqz v4, :cond_4

    .line 185
    .line 186
    invoke-static {}, Landroid/os/Binder;->allowBlockingForCurrentThread()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 187
    .line 188
    .line 189
    :try_start_7
    new-instance v6, Ljava/io/BufferedInputStream;

    .line 190
    .line 191
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 192
    .line 193
    .line 194
    move-result-object v5

    .line 195
    invoke-virtual {v5, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    .line 196
    .line 197
    .line 198
    move-result-object v4

    .line 199
    invoke-direct {v6, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 200
    .line 201
    .line 202
    :try_start_8
    invoke-static {}, Landroid/os/Binder;->defaultBlockingForCurrentThread()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .line 203
    .line 204
    .line 205
    :try_start_9
    iget-object v4, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->this$0:Lcom/android/server/updates/ConfigUpdateInstallReceiver;

    .line 206
    .line 207
    invoke-virtual {v4, v6, v3}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->install(Ljava/io/InputStream;I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 208
    .line 209
    .line 210
    :try_start_a
    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->close()V

    .line 211
    .line 212
    .line 213
    const-string v3, "Installation successful"

    .line 214
    .line 215
    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    .line 217
    .line 218
    iget-object v3, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->this$0:Lcom/android/server/updates/ConfigUpdateInstallReceiver;

    .line 219
    .line 220
    iget-object p0, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->val$context:Landroid/content/Context;

    .line 221
    .line 222
    invoke-virtual {v3, p0}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->postInstall(Landroid/content/Context;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    .line 223
    .line 224
    .line 225
    goto :goto_6

    .line 226
    :catchall_0
    move-exception p0

    .line 227
    :try_start_b
    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 228
    .line 229
    .line 230
    goto :goto_4

    .line 231
    :catchall_1
    move-exception v3

    .line 232
    :try_start_c
    invoke-virtual {p0, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 233
    .line 234
    .line 235
    :goto_4
    throw p0

    .line 236
    :catchall_2
    move-exception p0

    .line 237
    invoke-static {}, Landroid/os/Binder;->defaultBlockingForCurrentThread()V

    .line 238
    .line 239
    .line 240
    throw p0

    .line 241
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 242
    .line 243
    const-string v3, "Missing required content path, ignoring."

    .line 244
    .line 245
    invoke-direct {p0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    throw p0

    .line 249
    :catch_3
    move-exception p0

    .line 250
    new-instance v3, Ljava/lang/AssertionError;

    .line 251
    .line 252
    invoke-direct {v3, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 253
    .line 254
    .line 255
    throw v3

    .line 256
    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 257
    .line 258
    const-string v3, "Missing required previous hash, ignoring."

    .line 259
    .line 260
    invoke-direct {p0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    throw p0

    .line 264
    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 265
    .line 266
    const-string v3, "Missing required version number, ignoring."

    .line 267
    .line 268
    invoke-direct {p0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    throw p0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2

    .line 272
    :goto_5
    const-string v3, "Could not update content!"

    .line 273
    .line 274
    invoke-static {v0, v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 275
    .line 276
    .line 277
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object p0

    .line 281
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 282
    .line 283
    .line 284
    move-result v0

    .line 285
    const/16 v3, 0x64

    .line 286
    .line 287
    if-le v0, v3, :cond_7

    .line 288
    .line 289
    const/16 v0, 0x63

    .line 290
    .line 291
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object p0

    .line 295
    :cond_7
    invoke-static {v1, p0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 296
    .line 297
    .line 298
    :goto_6
    return-void
.end method
