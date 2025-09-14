.class Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;
.super Ljava/lang/Thread;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mHandler:Landroid/os/Handler;

.field public mInputStream:Ljava/io/InputStream;

.field public mOutputStream:Ljava/io/OutputStream;

.field public mSocket:Landroid/net/LocalSocket;

.field public mStopped:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/adb/AdbDebuggingManager;->SYSTEM_TICKER:Lcom/android/server/adb/AdbDebuggingManager$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const-string v0, "AdbDebuggingManager"

    .line 4
    .line 5
    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final closeSocketLocked()V
    .locals 5

    .line 1
    sget-object v0, Lcom/android/server/adb/AdbDebuggingManager;->SYSTEM_TICKER:Lcom/android/server/adb/AdbDebuggingManager$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const-string v0, "Closing socket"

    .line 4
    .line 5
    const-string v1, "AdbDebuggingManager"

    .line 6
    .line 7
    invoke-static {v1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    :try_start_0
    iget-object v2, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->mOutputStream:Ljava/io/OutputStream;

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->mOutputStream:Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catch_0
    move-exception v2

    .line 22
    sget-object v3, Lcom/android/server/adb/AdbDebuggingManager;->SYSTEM_TICKER:Lcom/android/server/adb/AdbDebuggingManager$$ExternalSyntheticLambda0;

    .line 23
    .line 24
    new-instance v3, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string v4, "Failed closing output stream: "

    .line 27
    .line 28
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-static {v1, v2}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    :cond_0
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->mSocket:Landroid/net/LocalSocket;

    .line 42
    .line 43
    if-eqz v2, :cond_1

    .line 44
    .line 45
    invoke-virtual {v2}, Landroid/net/LocalSocket;->close()V

    .line 46
    .line 47
    .line 48
    iput-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->mSocket:Landroid/net/LocalSocket;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :catch_1
    move-exception v0

    .line 52
    sget-object v2, Lcom/android/server/adb/AdbDebuggingManager;->SYSTEM_TICKER:Lcom/android/server/adb/AdbDebuggingManager$$ExternalSyntheticLambda0;

    .line 53
    .line 54
    new-instance v2, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    const-string v3, "Failed closing socket: "

    .line 57
    .line 58
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-static {v1, v0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    :cond_1
    :goto_1
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->mHandler:Landroid/os/Handler;

    .line 72
    .line 73
    const/16 v0, 0x1b

    .line 74
    .line 75
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 76
    .line 77
    .line 78
    return-void
.end method

.method public final listenToSocket()V
    .locals 12

    .line 1
    const/high16 v0, 0x10000

    .line 2
    .line 3
    :try_start_0
    new-array v0, v0, [B

    .line 4
    .line 5
    :goto_0
    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->mInputStream:Ljava/io/InputStream;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x2

    .line 12
    if-ge v1, v2, :cond_0

    .line 13
    .line 14
    sget-object v0, Lcom/android/server/adb/AdbDebuggingManager;->SYSTEM_TICKER:Lcom/android/server/adb/AdbDebuggingManager$$ExternalSyntheticLambda0;

    .line 15
    .line 16
    const-string v0, "AdbDebuggingManager"

    .line 17
    .line 18
    new-instance v2, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string v3, "Read failed with count "

    .line 24
    .line 25
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    goto/16 :goto_1

    .line 39
    .line 40
    :catchall_0
    move-exception v0

    .line 41
    goto/16 :goto_3

    .line 42
    .line 43
    :catch_0
    move-exception v0

    .line 44
    goto/16 :goto_2

    .line 45
    .line 46
    :cond_0
    const/4 v3, 0x0

    .line 47
    aget-byte v4, v0, v3

    .line 48
    .line 49
    const/16 v5, 0x50

    .line 50
    .line 51
    const/16 v6, 0x4b

    .line 52
    .line 53
    const/4 v7, 0x1

    .line 54
    if-ne v4, v5, :cond_1

    .line 55
    .line 56
    aget-byte v5, v0, v7

    .line 57
    .line 58
    if-ne v5, v6, :cond_1

    .line 59
    .line 60
    new-instance v3, Ljava/lang/String;

    .line 61
    .line 62
    invoke-static {v0, v2, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V

    .line 67
    .line 68
    .line 69
    sget-object v1, Lcom/android/server/adb/AdbDebuggingManager;->SYSTEM_TICKER:Lcom/android/server/adb/AdbDebuggingManager$$ExternalSyntheticLambda0;

    .line 70
    .line 71
    const-string v1, "AdbDebuggingManager"

    .line 72
    .line 73
    new-instance v2, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    .line 78
    const-string v4, "Received public key: "

    .line 79
    .line 80
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    invoke-static {v1, v2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    .line 92
    .line 93
    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->mHandler:Landroid/os/Handler;

    .line 94
    .line 95
    const/4 v2, 0x5

    .line 96
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    iput-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 101
    .line 102
    iget-object v2, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->mHandler:Landroid/os/Handler;

    .line 103
    .line 104
    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 105
    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_1
    const/16 v5, 0x44

    .line 109
    .line 110
    const/4 v8, 0x7

    .line 111
    const/16 v9, 0x43

    .line 112
    .line 113
    if-ne v4, v5, :cond_2

    .line 114
    .line 115
    aget-byte v5, v0, v7

    .line 116
    .line 117
    if-ne v5, v9, :cond_2

    .line 118
    .line 119
    new-instance v3, Ljava/lang/String;

    .line 120
    .line 121
    invoke-static {v0, v2, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V

    .line 126
    .line 127
    .line 128
    sget-object v1, Lcom/android/server/adb/AdbDebuggingManager;->SYSTEM_TICKER:Lcom/android/server/adb/AdbDebuggingManager$$ExternalSyntheticLambda0;

    .line 129
    .line 130
    const-string v1, "AdbDebuggingManager"

    .line 131
    .line 132
    new-instance v2, Ljava/lang/StringBuilder;

    .line 133
    .line 134
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    .line 136
    .line 137
    const-string v4, "Received disconnected message: "

    .line 138
    .line 139
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    invoke-static {v1, v2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    .line 151
    .line 152
    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->mHandler:Landroid/os/Handler;

    .line 153
    .line 154
    invoke-virtual {v1, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    iput-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 159
    .line 160
    iget-object v2, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->mHandler:Landroid/os/Handler;

    .line 161
    .line 162
    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 163
    .line 164
    .line 165
    goto/16 :goto_0

    .line 166
    .line 167
    :cond_2
    const/16 v5, 0xa

    .line 168
    .line 169
    if-ne v4, v9, :cond_3

    .line 170
    .line 171
    aget-byte v9, v0, v7

    .line 172
    .line 173
    if-ne v9, v6, :cond_3

    .line 174
    .line 175
    new-instance v3, Ljava/lang/String;

    .line 176
    .line 177
    invoke-static {v0, v2, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 178
    .line 179
    .line 180
    move-result-object v1

    .line 181
    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V

    .line 182
    .line 183
    .line 184
    sget-object v1, Lcom/android/server/adb/AdbDebuggingManager;->SYSTEM_TICKER:Lcom/android/server/adb/AdbDebuggingManager$$ExternalSyntheticLambda0;

    .line 185
    .line 186
    const-string v1, "AdbDebuggingManager"

    .line 187
    .line 188
    new-instance v2, Ljava/lang/StringBuilder;

    .line 189
    .line 190
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 191
    .line 192
    .line 193
    const-string v4, "Received connected key message: "

    .line 194
    .line 195
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v2

    .line 205
    invoke-static {v1, v2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    .line 207
    .line 208
    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->mHandler:Landroid/os/Handler;

    .line 209
    .line 210
    invoke-virtual {v1, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 211
    .line 212
    .line 213
    move-result-object v1

    .line 214
    iput-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 215
    .line 216
    iget-object v2, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->mHandler:Landroid/os/Handler;

    .line 217
    .line 218
    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 219
    .line 220
    .line 221
    goto/16 :goto_0

    .line 222
    .line 223
    :cond_3
    const/4 v6, 0x3

    .line 224
    const/16 v9, 0x57

    .line 225
    .line 226
    if-ne v4, v9, :cond_6

    .line 227
    .line 228
    aget-byte v10, v0, v7

    .line 229
    .line 230
    const/16 v11, 0x45

    .line 231
    .line 232
    if-ne v10, v11, :cond_6

    .line 233
    .line 234
    aget-byte v2, v0, v2

    .line 235
    .line 236
    new-instance v3, Ljava/lang/String;

    .line 237
    .line 238
    invoke-static {v0, v6, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 239
    .line 240
    .line 241
    move-result-object v1

    .line 242
    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V

    .line 243
    .line 244
    .line 245
    if-nez v2, :cond_4

    .line 246
    .line 247
    sget-object v1, Lcom/android/server/adb/AdbDebuggingManager;->SYSTEM_TICKER:Lcom/android/server/adb/AdbDebuggingManager$$ExternalSyntheticLambda0;

    .line 248
    .line 249
    const-string v1, "AdbDebuggingManager"

    .line 250
    .line 251
    new-instance v2, Ljava/lang/StringBuilder;

    .line 252
    .line 253
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 254
    .line 255
    .line 256
    const-string v4, "Received USB TLS connected key message: "

    .line 257
    .line 258
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v2

    .line 268
    invoke-static {v1, v2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    .line 270
    .line 271
    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->mHandler:Landroid/os/Handler;

    .line 272
    .line 273
    invoke-virtual {v1, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 274
    .line 275
    .line 276
    move-result-object v1

    .line 277
    iput-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 278
    .line 279
    iget-object v2, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->mHandler:Landroid/os/Handler;

    .line 280
    .line 281
    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 282
    .line 283
    .line 284
    goto/16 :goto_0

    .line 285
    .line 286
    :cond_4
    if-ne v2, v7, :cond_5

    .line 287
    .line 288
    sget-object v1, Lcom/android/server/adb/AdbDebuggingManager;->SYSTEM_TICKER:Lcom/android/server/adb/AdbDebuggingManager$$ExternalSyntheticLambda0;

    .line 289
    .line 290
    const-string v1, "AdbDebuggingManager"

    .line 291
    .line 292
    new-instance v2, Ljava/lang/StringBuilder;

    .line 293
    .line 294
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 295
    .line 296
    .line 297
    const-string v4, "Received WIFI TLS connected key message: "

    .line 298
    .line 299
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    .line 301
    .line 302
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    .line 304
    .line 305
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v2

    .line 309
    invoke-static {v1, v2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    .line 311
    .line 312
    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->mHandler:Landroid/os/Handler;

    .line 313
    .line 314
    const/16 v2, 0x16

    .line 315
    .line 316
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 317
    .line 318
    .line 319
    move-result-object v1

    .line 320
    iput-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 321
    .line 322
    iget-object v2, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->mHandler:Landroid/os/Handler;

    .line 323
    .line 324
    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 325
    .line 326
    .line 327
    goto/16 :goto_0

    .line 328
    .line 329
    :cond_5
    sget-object v1, Lcom/android/server/adb/AdbDebuggingManager;->SYSTEM_TICKER:Lcom/android/server/adb/AdbDebuggingManager$$ExternalSyntheticLambda0;

    .line 330
    .line 331
    const-string v1, "AdbDebuggingManager"

    .line 332
    .line 333
    new-instance v3, Ljava/lang/StringBuilder;

    .line 334
    .line 335
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 336
    .line 337
    .line 338
    const-string v4, "Got unknown transport type from adbd ("

    .line 339
    .line 340
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    .line 342
    .line 343
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 344
    .line 345
    .line 346
    const-string v2, ")"

    .line 347
    .line 348
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    .line 350
    .line 351
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object v2

    .line 355
    invoke-static {v1, v2}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    .line 357
    .line 358
    goto/16 :goto_0

    .line 359
    .line 360
    :cond_6
    if-ne v4, v9, :cond_9

    .line 361
    .line 362
    aget-byte v4, v0, v7

    .line 363
    .line 364
    const/16 v5, 0x46

    .line 365
    .line 366
    if-ne v4, v5, :cond_9

    .line 367
    .line 368
    aget-byte v2, v0, v2

    .line 369
    .line 370
    new-instance v3, Ljava/lang/String;

    .line 371
    .line 372
    invoke-static {v0, v6, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 373
    .line 374
    .line 375
    move-result-object v1

    .line 376
    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V

    .line 377
    .line 378
    .line 379
    if-nez v2, :cond_7

    .line 380
    .line 381
    sget-object v1, Lcom/android/server/adb/AdbDebuggingManager;->SYSTEM_TICKER:Lcom/android/server/adb/AdbDebuggingManager$$ExternalSyntheticLambda0;

    .line 382
    .line 383
    const-string v1, "AdbDebuggingManager"

    .line 384
    .line 385
    new-instance v2, Ljava/lang/StringBuilder;

    .line 386
    .line 387
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 388
    .line 389
    .line 390
    const-string v4, "Received USB TLS disconnect message: "

    .line 391
    .line 392
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    .line 394
    .line 395
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    .line 397
    .line 398
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 399
    .line 400
    .line 401
    move-result-object v2

    .line 402
    invoke-static {v1, v2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    .line 404
    .line 405
    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->mHandler:Landroid/os/Handler;

    .line 406
    .line 407
    invoke-virtual {v1, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 408
    .line 409
    .line 410
    move-result-object v1

    .line 411
    iput-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 412
    .line 413
    iget-object v2, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->mHandler:Landroid/os/Handler;

    .line 414
    .line 415
    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 416
    .line 417
    .line 418
    goto/16 :goto_0

    .line 419
    .line 420
    :cond_7
    if-ne v2, v7, :cond_8

    .line 421
    .line 422
    sget-object v1, Lcom/android/server/adb/AdbDebuggingManager;->SYSTEM_TICKER:Lcom/android/server/adb/AdbDebuggingManager$$ExternalSyntheticLambda0;

    .line 423
    .line 424
    const-string v1, "AdbDebuggingManager"

    .line 425
    .line 426
    new-instance v2, Ljava/lang/StringBuilder;

    .line 427
    .line 428
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 429
    .line 430
    .line 431
    const-string v4, "Received WIFI TLS disconnect key message: "

    .line 432
    .line 433
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    .line 435
    .line 436
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    .line 438
    .line 439
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 440
    .line 441
    .line 442
    move-result-object v2

    .line 443
    invoke-static {v1, v2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    .line 445
    .line 446
    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->mHandler:Landroid/os/Handler;

    .line 447
    .line 448
    const/16 v2, 0x17

    .line 449
    .line 450
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 451
    .line 452
    .line 453
    move-result-object v1

    .line 454
    iput-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 455
    .line 456
    iget-object v2, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->mHandler:Landroid/os/Handler;

    .line 457
    .line 458
    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 459
    .line 460
    .line 461
    goto/16 :goto_0

    .line 462
    .line 463
    :cond_8
    sget-object v1, Lcom/android/server/adb/AdbDebuggingManager;->SYSTEM_TICKER:Lcom/android/server/adb/AdbDebuggingManager$$ExternalSyntheticLambda0;

    .line 464
    .line 465
    const-string v1, "AdbDebuggingManager"

    .line 466
    .line 467
    new-instance v3, Ljava/lang/StringBuilder;

    .line 468
    .line 469
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 470
    .line 471
    .line 472
    const-string v4, "Got unknown transport type from adbd ("

    .line 473
    .line 474
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    .line 476
    .line 477
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 478
    .line 479
    .line 480
    const-string v2, ")"

    .line 481
    .line 482
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    .line 484
    .line 485
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 486
    .line 487
    .line 488
    move-result-object v2

    .line 489
    invoke-static {v1, v2}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    .line 491
    .line 492
    goto/16 :goto_0

    .line 493
    .line 494
    :cond_9
    sget-object v1, Lcom/android/server/adb/AdbDebuggingManager;->SYSTEM_TICKER:Lcom/android/server/adb/AdbDebuggingManager$$ExternalSyntheticLambda0;

    .line 495
    .line 496
    const-string v1, "AdbDebuggingManager"

    .line 497
    .line 498
    new-instance v4, Ljava/lang/StringBuilder;

    .line 499
    .line 500
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 501
    .line 502
    .line 503
    const-string v5, "Wrong message: "

    .line 504
    .line 505
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    .line 507
    .line 508
    new-instance v5, Ljava/lang/String;

    .line 509
    .line 510
    invoke-static {v0, v3, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 511
    .line 512
    .line 513
    move-result-object v0

    .line 514
    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([B)V

    .line 515
    .line 516
    .line 517
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    .line 519
    .line 520
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 521
    .line 522
    .line 523
    move-result-object v0

    .line 524
    invoke-static {v1, v0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 525
    .line 526
    .line 527
    :goto_1
    monitor-enter p0

    .line 528
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->closeSocketLocked()V

    .line 529
    .line 530
    .line 531
    monitor-exit p0

    .line 532
    return-void

    .line 533
    :catchall_1
    move-exception v0

    .line 534
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 535
    throw v0

    .line 536
    :goto_2
    :try_start_2
    sget-object v1, Lcom/android/server/adb/AdbDebuggingManager;->SYSTEM_TICKER:Lcom/android/server/adb/AdbDebuggingManager$$ExternalSyntheticLambda0;

    .line 537
    .line 538
    const-string v1, "AdbDebuggingManager"

    .line 539
    .line 540
    const-string v2, "Communication error: "

    .line 541
    .line 542
    invoke-static {v1, v2, v0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 543
    .line 544
    .line 545
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 546
    :goto_3
    monitor-enter p0

    .line 547
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->closeSocketLocked()V

    .line 548
    .line 549
    .line 550
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 551
    throw v0

    .line 552
    :catchall_2
    move-exception v0

    .line 553
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 554
    throw v0
.end method

.method public final openSocketLocked()V
    .locals 4

    .line 1
    const-string v0, "AdbDebuggingManager"

    .line 2
    .line 3
    :try_start_0
    new-instance v1, Landroid/net/LocalSocketAddress;

    .line 4
    .line 5
    const-string v2, "adbd"

    .line 6
    .line 7
    sget-object v3, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    .line 8
    .line 9
    invoke-direct {v1, v2, v3}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 10
    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    iput-object v2, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->mInputStream:Ljava/io/InputStream;

    .line 14
    .line 15
    sget-object v2, Lcom/android/server/adb/AdbDebuggingManager;->SYSTEM_TICKER:Lcom/android/server/adb/AdbDebuggingManager$$ExternalSyntheticLambda0;

    .line 16
    .line 17
    const-string v2, "Creating socket"

    .line 18
    .line 19
    invoke-static {v0, v2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    new-instance v2, Landroid/net/LocalSocket;

    .line 23
    .line 24
    const/4 v3, 0x3

    .line 25
    invoke-direct {v2, v3}, Landroid/net/LocalSocket;-><init>(I)V

    .line 26
    .line 27
    .line 28
    iput-object v2, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->mSocket:Landroid/net/LocalSocket;

    .line 29
    .line 30
    invoke-virtual {v2, v1}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->mSocket:Landroid/net/LocalSocket;

    .line 34
    .line 35
    invoke-virtual {v1}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    iput-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->mOutputStream:Ljava/io/OutputStream;

    .line 40
    .line 41
    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->mSocket:Landroid/net/LocalSocket;

    .line 42
    .line 43
    invoke-virtual {v1}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    iput-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->mInputStream:Ljava/io/InputStream;

    .line 48
    .line 49
    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->mHandler:Landroid/os/Handler;

    .line 50
    .line 51
    const/16 v2, 0x1a

    .line 52
    .line 53
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :catch_0
    move-exception v1

    .line 58
    sget-object v2, Lcom/android/server/adb/AdbDebuggingManager;->SYSTEM_TICKER:Lcom/android/server/adb/AdbDebuggingManager$$ExternalSyntheticLambda0;

    .line 59
    .line 60
    new-instance v2, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    const-string v3, "Caught an exception opening the socket: "

    .line 63
    .line 64
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-static {v0, v2}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->closeSocketLocked()V

    .line 78
    .line 79
    .line 80
    throw v1
.end method

.method public final run()V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/server/adb/AdbDebuggingManager;->SYSTEM_TICKER:Lcom/android/server/adb/AdbDebuggingManager$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const-string v0, "AdbDebuggingManager"

    .line 4
    .line 5
    const-string v1, "Entering thread"

    .line 6
    .line 7
    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    :goto_0
    monitor-enter p0

    .line 11
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->mStopped:Z

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    sget-object v0, Lcom/android/server/adb/AdbDebuggingManager;->SYSTEM_TICKER:Lcom/android/server/adb/AdbDebuggingManager$$ExternalSyntheticLambda0;

    .line 16
    .line 17
    const-string v0, "AdbDebuggingManager"

    .line 18
    .line 19
    const-string v1, "Exiting thread"

    .line 20
    .line 21
    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    return-void

    .line 26
    :catchall_0
    move-exception v0

    .line 27
    goto :goto_2

    .line 28
    :cond_0
    const-wide/16 v0, 0x3e8

    .line 29
    .line 30
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->openSocketLocked()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    .line 32
    .line 33
    goto :goto_1

    .line 34
    :catch_0
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 35
    .line 36
    .line 37
    :goto_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 38
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->listenToSocket()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catch_1
    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :goto_2
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 47
    throw v0
.end method

.method public final sendResponse(Ljava/lang/String;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->mStopped:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->mOutputStream:Ljava/io/OutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    goto :goto_1

    .line 20
    :catch_0
    move-exception p1

    .line 21
    :try_start_2
    sget-object v0, Lcom/android/server/adb/AdbDebuggingManager;->SYSTEM_TICKER:Lcom/android/server/adb/AdbDebuggingManager$$ExternalSyntheticLambda0;

    .line 22
    .line 23
    const-string v0, "AdbDebuggingManager"

    .line 24
    .line 25
    const-string v1, "Failed to write response:"

    .line 26
    .line 27
    invoke-static {v0, v1, p1}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 28
    .line 29
    .line 30
    :cond_0
    :goto_0
    monitor-exit p0

    .line 31
    return-void

    .line 32
    :goto_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 33
    throw p1
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    return-void
.end method
