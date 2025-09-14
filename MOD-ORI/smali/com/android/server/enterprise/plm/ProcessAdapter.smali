.class public final Lcom/android/server/enterprise/plm/ProcessAdapter;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mKeepAliveImpl:Lcom/android/server/enterprise/plm/impl/BindServiceImpl;

.field public mStateDelegate:Lcom/android/server/enterprise/plm/IStateDelegate;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/android/server/enterprise/plm/impl/BindServiceImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/android/server/enterprise/plm/ProcessAdapter;->mKeepAliveImpl:Lcom/android/server/enterprise/plm/impl/BindServiceImpl;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 1
    const-string v0, "Invalid message "

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string/jumbo v2, "handleMessage : "

    .line 6
    .line 7
    .line 8
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget v2, p1, Landroid/os/Message;->what:I

    .line 12
    .line 13
    const-string v3, "ProcessAdapter"

    .line 14
    .line 15
    invoke-static {v1, v2, v3}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I

    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    if-eq v1, v2, :cond_4

    .line 22
    .line 23
    const/4 v2, 0x2

    .line 24
    if-eq v1, v2, :cond_3

    .line 25
    .line 26
    const/4 v2, 0x3

    .line 27
    if-eq v1, v2, :cond_2

    .line 28
    .line 29
    const/4 v2, 0x4

    .line 30
    if-eq v1, v2, :cond_1

    .line 31
    .line 32
    const/4 v2, 0x5

    .line 33
    if-eq v1, v2, :cond_0

    .line 34
    .line 35
    new-instance p0, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget p1, p1, Landroid/os/Message;->what:I

    .line 41
    .line 42
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :catchall_0
    move-exception p0

    .line 54
    goto :goto_0

    .line 55
    :cond_0
    sget-object p1, Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;->UPDATE:Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;

    .line 56
    .line 57
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/plm/ProcessAdapter;->tryKeepAlive(Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;)V

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_1
    sget-object p1, Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;->DEATH:Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;

    .line 62
    .line 63
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/plm/ProcessAdapter;->tryKeepAlive(Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;)V

    .line 64
    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_2
    sget-object p1, Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;->ALIVE:Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;

    .line 68
    .line 69
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/plm/ProcessAdapter;->tryKeepAlive(Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;)V

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_3
    sget-object p1, Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;->STOP:Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;

    .line 74
    .line 75
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/plm/ProcessAdapter;->tryKeepAlive(Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;)V

    .line 76
    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_4
    sget-object p1, Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;->START:Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;

    .line 80
    .line 81
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/plm/ProcessAdapter;->tryKeepAlive(Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    .line 91
    .line 92
    :goto_1
    return-void
.end method

.method public final tryKeepAlive(Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;)V
    .locals 13

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "tryKeepAlive("

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    const-string v1, ", "

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lcom/android/server/enterprise/plm/ProcessAdapter;->mKeepAliveImpl:Lcom/android/server/enterprise/plm/impl/BindServiceImpl;

    .line 18
    .line 19
    iget-object v2, v1, Lcom/android/server/enterprise/plm/impl/BindServiceImpl;->mProcessContext:Lcom/android/server/enterprise/plm/context/ProcessContext;

    .line 20
    .line 21
    invoke-virtual {v2}, Lcom/android/server/enterprise/plm/context/ProcessContext;->getDisplayName()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v2, ")"

    .line 29
    .line 30
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const-string v2, "ProcessAdapter"

    .line 38
    .line 39
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    const/4 v3, -0x1

    .line 47
    const/4 v4, 0x1

    .line 48
    iget-object v5, v1, Lcom/android/server/enterprise/plm/impl/BindServiceImpl;->mProcessContext:Lcom/android/server/enterprise/plm/context/ProcessContext;

    .line 49
    .line 50
    const-string v6, ":"

    .line 51
    .line 52
    const/4 v7, 0x0

    .line 53
    const-string v8, "KeepAliveImpl"

    .line 54
    .line 55
    if-eqz v0, :cond_3

    .line 56
    .line 57
    if-eq v0, v4, :cond_2

    .line 58
    .line 59
    const/4 v9, 0x2

    .line 60
    if-eq v0, v9, :cond_0

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_0
    const-string/jumbo v0, "set "

    .line 64
    .line 65
    .line 66
    :try_start_0
    iget-object v9, v1, Lcom/android/server/enterprise/plm/impl/BindServiceImpl;->mContext:Landroid/content/Context;

    .line 67
    .line 68
    const-string v10, "activity"

    .line 69
    .line 70
    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v9

    .line 74
    check-cast v9, Landroid/app/ActivityManager;

    .line 75
    .line 76
    invoke-virtual {v1}, Lcom/android/server/enterprise/plm/impl/BindServiceImpl;->getConnectionHelper()Lcom/android/server/enterprise/plm/impl/ConnectionHelper;

    .line 77
    .line 78
    .line 79
    move-result-object v10

    .line 80
    iget-object v10, v10, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->mBinder:Landroid/os/IBinder;

    .line 81
    .line 82
    invoke-virtual {v1}, Lcom/android/server/enterprise/plm/impl/BindServiceImpl;->getConnectionHelper()Lcom/android/server/enterprise/plm/impl/ConnectionHelper;

    .line 83
    .line 84
    .line 85
    move-result-object v11

    .line 86
    iget-object v12, v11, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->mBinder:Landroid/os/IBinder;

    .line 87
    .line 88
    if-eqz v12, :cond_1

    .line 89
    .line 90
    iget v11, v11, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->mProcessId:I

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_1
    move v11, v3

    .line 94
    :goto_0
    if-eqz v9, :cond_4

    .line 95
    .line 96
    if-eqz v10, :cond_4

    .line 97
    .line 98
    if-eq v11, v3, :cond_4

    .line 99
    .line 100
    new-instance v12, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    invoke-direct {v12, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v5}, Lcom/android/server/enterprise/plm/context/ProcessContext;->getPackageName()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    const-string v0, " important"

    .line 119
    .line 120
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-static {v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    .line 129
    .line 130
    invoke-virtual {v9, v10, v11, v4}, Landroid/app/ActivityManager;->semSetProcessImportant(Landroid/os/IBinder;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    .line 132
    .line 133
    goto :goto_1

    .line 134
    :catchall_0
    move-exception v0

    .line 135
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    .line 141
    .line 142
    goto :goto_1

    .line 143
    :cond_2
    iput-object v7, v1, Lcom/android/server/enterprise/plm/impl/BindServiceImpl;->mObserver:Landroid/os/Handler;

    .line 144
    .line 145
    invoke-virtual {p0, v7}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    goto :goto_1

    .line 149
    :cond_3
    iput-object p0, v1, Lcom/android/server/enterprise/plm/impl/BindServiceImpl;->mObserver:Landroid/os/Handler;

    .line 150
    .line 151
    const/4 v0, 0x3

    .line 152
    iput v0, v1, Lcom/android/server/enterprise/plm/impl/BindServiceImpl;->mAliveEvent:I

    .line 153
    .line 154
    const/4 v0, 0x4

    .line 155
    iput v0, v1, Lcom/android/server/enterprise/plm/impl/BindServiceImpl;->mDeathEvent:I

    .line 156
    .line 157
    :cond_4
    :goto_1
    sget-object v0, Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;->STOP:Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;

    .line 158
    .line 159
    const/4 v9, 0x0

    .line 160
    if-eq p1, v0, :cond_5

    .line 161
    .line 162
    iget-object p0, p0, Lcom/android/server/enterprise/plm/ProcessAdapter;->mStateDelegate:Lcom/android/server/enterprise/plm/IStateDelegate;

    .line 163
    .line 164
    :try_start_1
    iget-object p1, v1, Lcom/android/server/enterprise/plm/impl/BindServiceImpl;->mProcessContext:Lcom/android/server/enterprise/plm/context/ProcessContext;

    .line 165
    .line 166
    invoke-virtual {p1, p0}, Lcom/android/server/enterprise/plm/context/ProcessContext;->needToKeepAlive(Lcom/android/server/enterprise/plm/IStateDelegate;)Z

    .line 167
    .line 168
    .line 169
    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 170
    goto :goto_2

    .line 171
    :catchall_1
    move-exception p0

    .line 172
    const-string p1, "BindServiceImpl"

    .line 173
    .line 174
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object p0

    .line 178
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    .line 180
    .line 181
    move p0, v9

    .line 182
    :goto_2
    if-eqz p0, :cond_5

    .line 183
    .line 184
    move p0, v4

    .line 185
    goto :goto_3

    .line 186
    :cond_5
    move p0, v9

    .line 187
    :goto_3
    const-string/jumbo p1, "needToKeepAlive : "

    .line 188
    .line 189
    .line 190
    invoke-static {p1, v2, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 191
    .line 192
    .line 193
    const-string p1, "Utils"

    .line 194
    .line 195
    const-string v0, " : "

    .line 196
    .line 197
    if-eqz p0, :cond_9

    .line 198
    .line 199
    invoke-virtual {v5}, Lcom/android/server/enterprise/plm/context/ProcessContext;->getPackageName()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object p0

    .line 203
    :try_start_2
    invoke-virtual {v1, p0}, Lcom/android/server/enterprise/plm/impl/BindServiceImpl;->hasPackage(Ljava/lang/String;)Z

    .line 204
    .line 205
    .line 206
    move-result v3

    .line 207
    if-eqz v3, :cond_8

    .line 208
    .line 209
    iget-object v3, v1, Lcom/android/server/enterprise/plm/impl/BindServiceImpl;->mContext:Landroid/content/Context;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 210
    .line 211
    :try_start_3
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 212
    .line 213
    .line 214
    move-result-object v3

    .line 215
    invoke-virtual {v3, p0}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    .line 216
    .line 217
    .line 218
    move-result p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 219
    goto :goto_4

    .line 220
    :catchall_2
    move-exception v3

    .line 221
    :try_start_4
    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v3

    .line 225
    invoke-static {p1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    .line 227
    .line 228
    move p1, v9

    .line 229
    :goto_4
    if-ne p1, v4, :cond_6

    .line 230
    .line 231
    move p1, v4

    .line 232
    goto :goto_5

    .line 233
    :cond_6
    move p1, v9

    .line 234
    :goto_5
    if-eqz p1, :cond_7

    .line 235
    .line 236
    invoke-virtual {v1}, Lcom/android/server/enterprise/plm/impl/BindServiceImpl;->start()Z

    .line 237
    .line 238
    .line 239
    move-result p1

    .line 240
    goto :goto_6

    .line 241
    :catchall_3
    move-exception p1

    .line 242
    goto :goto_7

    .line 243
    :cond_7
    move p1, v4

    .line 244
    :goto_6
    invoke-virtual {v1, p0, v4}, Lcom/android/server/enterprise/plm/impl/BindServiceImpl;->setPackageEnabled(Ljava/lang/String;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 245
    .line 246
    .line 247
    move v9, p1

    .line 248
    goto :goto_8

    .line 249
    :goto_7
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object p1

    .line 253
    invoke-static {v8, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    .line 255
    .line 256
    :cond_8
    :goto_8
    new-instance p1, Ljava/lang/StringBuilder;

    .line 257
    .line 258
    const-string/jumbo v1, "start process "

    .line 259
    .line 260
    .line 261
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object p0

    .line 277
    invoke-static {v8, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    .line 279
    .line 280
    if-nez v9, :cond_10

    .line 281
    .line 282
    const-string/jumbo p0, "failed to start keep alive"

    .line 283
    .line 284
    .line 285
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    .line 287
    .line 288
    goto/16 :goto_10

    .line 289
    .line 290
    :cond_9
    const-string/jumbo p0, "kill process "

    .line 291
    .line 292
    .line 293
    invoke-virtual {v5}, Lcom/android/server/enterprise/plm/context/ProcessContext;->getPackageName()Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v5

    .line 297
    :try_start_5
    invoke-virtual {v1, v5}, Lcom/android/server/enterprise/plm/impl/BindServiceImpl;->hasPackage(Ljava/lang/String;)Z

    .line 298
    .line 299
    .line 300
    move-result v10

    .line 301
    if-eqz v10, :cond_e

    .line 302
    .line 303
    invoke-virtual {v1}, Lcom/android/server/enterprise/plm/impl/BindServiceImpl;->getConnectionHelper()Lcom/android/server/enterprise/plm/impl/ConnectionHelper;

    .line 304
    .line 305
    .line 306
    move-result-object v10

    .line 307
    iget-object v10, v10, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->mBinder:Landroid/os/IBinder;

    .line 308
    .line 309
    if-eqz v10, :cond_a

    .line 310
    .line 311
    move v10, v4

    .line 312
    goto :goto_9

    .line 313
    :cond_a
    move v10, v9

    .line 314
    :goto_9
    if-eqz v10, :cond_b

    .line 315
    .line 316
    invoke-virtual {v1}, Lcom/android/server/enterprise/plm/impl/BindServiceImpl;->getConnectionHelper()Lcom/android/server/enterprise/plm/impl/ConnectionHelper;

    .line 317
    .line 318
    .line 319
    move-result-object v10

    .line 320
    iget-object v11, v10, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->mBinder:Landroid/os/IBinder;

    .line 321
    .line 322
    if-eqz v11, :cond_b

    .line 323
    .line 324
    iget v10, v10, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->mProcessId:I

    .line 325
    .line 326
    goto :goto_a

    .line 327
    :cond_b
    move v10, v3

    .line 328
    :goto_a
    iget-object v11, v1, Lcom/android/server/enterprise/plm/impl/BindServiceImpl;->mContext:Landroid/content/Context;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 329
    .line 330
    :try_start_6
    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 331
    .line 332
    .line 333
    move-result-object v11

    .line 334
    invoke-virtual {v11, v5}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    .line 335
    .line 336
    .line 337
    move-result p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 338
    goto :goto_b

    .line 339
    :catchall_4
    move-exception v11

    .line 340
    :try_start_7
    invoke-virtual {v11}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object v11

    .line 344
    invoke-static {p1, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    .line 346
    .line 347
    move p1, v9

    .line 348
    :goto_b
    if-ne p1, v4, :cond_c

    .line 349
    .line 350
    move p1, v4

    .line 351
    goto :goto_c

    .line 352
    :cond_c
    move p1, v9

    .line 353
    :goto_c
    if-eqz p1, :cond_d

    .line 354
    .line 355
    iget-object p1, v1, Lcom/android/server/enterprise/plm/impl/BindServiceImpl;->mConnectionHelper:Lcom/android/server/enterprise/plm/impl/ConnectionHelper;

    .line 356
    .line 357
    if-eqz p1, :cond_d

    .line 358
    .line 359
    new-instance v11, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$$ExternalSyntheticLambda1;

    .line 360
    .line 361
    invoke-direct {v11, p1}, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/enterprise/plm/impl/ConnectionHelper;)V

    .line 362
    .line 363
    .line 364
    invoke-virtual {p1, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 365
    .line 366
    .line 367
    iput-object v7, v1, Lcom/android/server/enterprise/plm/impl/BindServiceImpl;->mConnectionHelper:Lcom/android/server/enterprise/plm/impl/ConnectionHelper;

    .line 368
    .line 369
    :cond_d
    invoke-virtual {v1, v5, v9}, Lcom/android/server/enterprise/plm/impl/BindServiceImpl;->setPackageEnabled(Ljava/lang/String;Z)V

    .line 370
    .line 371
    .line 372
    if-eq v10, v3, :cond_f

    .line 373
    .line 374
    iget-object p1, v1, Lcom/android/server/enterprise/plm/impl/BindServiceImpl;->mProcessContext:Lcom/android/server/enterprise/plm/context/ProcessContext;

    .line 375
    .line 376
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 377
    .line 378
    .line 379
    new-instance p1, Ljava/lang/StringBuilder;

    .line 380
    .line 381
    invoke-direct {p1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 382
    .line 383
    .line 384
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    .line 386
    .line 387
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    .line 389
    .line 390
    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 391
    .line 392
    .line 393
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object p0

    .line 397
    invoke-static {v8, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    .line 399
    .line 400
    invoke-static {v10}, Landroid/os/Process;->killProcess(I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 401
    .line 402
    .line 403
    goto :goto_d

    .line 404
    :catchall_5
    move-exception p0

    .line 405
    goto :goto_e

    .line 406
    :cond_e
    move v4, v9

    .line 407
    :cond_f
    :goto_d
    move v9, v4

    .line 408
    goto :goto_f

    .line 409
    :goto_e
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 410
    .line 411
    .line 412
    move-result-object p0

    .line 413
    invoke-static {v8, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    .line 415
    .line 416
    :goto_f
    new-instance p0, Ljava/lang/StringBuilder;

    .line 417
    .line 418
    const-string/jumbo p1, "stop process "

    .line 419
    .line 420
    .line 421
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 422
    .line 423
    .line 424
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    .line 426
    .line 427
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    .line 429
    .line 430
    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 431
    .line 432
    .line 433
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 434
    .line 435
    .line 436
    move-result-object p0

    .line 437
    invoke-static {v8, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    .line 439
    .line 440
    if-nez v9, :cond_10

    .line 441
    .line 442
    const-string/jumbo p0, "failed to stop keep alive"

    .line 443
    .line 444
    .line 445
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    .line 447
    .line 448
    :cond_10
    :goto_10
    return-void
.end method
