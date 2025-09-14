.class public final Lcom/android/server/pm/InstantAppResolverConnection;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# static fields
.field public static final BIND_SERVICE_TIMEOUT_MS:J

.field public static final CALL_SERVICE_TIMEOUT_MS:J

.field public static final DEBUG_INSTANT:Z


# instance fields
.field public final mBgHandler:Landroid/os/Handler;

.field public mBindState:I

.field public final mContext:Landroid/content/Context;

.field public final mGetInstantAppResolveInfoCaller:Lcom/android/server/pm/InstantAppResolverConnection$GetInstantAppResolveInfoCaller;

.field public final mIntent:Landroid/content/Intent;

.field public final mLock:Ljava/lang/Object;

.field public mRemoteInstance:Landroid/app/IInstantAppResolver;

.field public final mServiceConnection:Lcom/android/server/pm/InstantAppResolverConnection$MyServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-wide/16 v1, 0x1f4

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const-wide/16 v1, 0x12c

    .line 9
    .line 10
    :goto_0
    sput-wide v1, Lcom/android/server/pm/InstantAppResolverConnection;->BIND_SERVICE_TIMEOUT_MS:J

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    const-wide/16 v0, 0xc8

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_1
    const-wide/16 v0, 0x64

    .line 18
    .line 19
    :goto_1
    sput-wide v0, Lcom/android/server/pm/InstantAppResolverConnection;->CALL_SERVICE_TIMEOUT_MS:J

    .line 20
    .line 21
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 22
    .line 23
    sput-boolean v0, Lcom/android/server/pm/InstantAppResolverConnection;->DEBUG_INSTANT:Z

    .line 24
    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Lcom/android/server/pm/InstantAppResolverConnection$GetInstantAppResolveInfoCaller;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/android/server/pm/InstantAppResolverConnection$GetInstantAppResolveInfoCaller;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mGetInstantAppResolveInfoCaller:Lcom/android/server/pm/InstantAppResolverConnection$GetInstantAppResolveInfoCaller;

    .line 17
    .line 18
    new-instance v0, Lcom/android/server/pm/InstantAppResolverConnection$MyServiceConnection;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Lcom/android/server/pm/InstantAppResolverConnection$MyServiceConnection;-><init>(Lcom/android/server/pm/InstantAppResolverConnection;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mServiceConnection:Lcom/android/server/pm/InstantAppResolverConnection$MyServiceConnection;

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    iput v0, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mBindState:I

    .line 27
    .line 28
    iput-object p1, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mContext:Landroid/content/Context;

    .line 29
    .line 30
    new-instance p1, Landroid/content/Intent;

    .line 31
    .line 32
    const-string v0, "android.intent.action.RESOLVE_INSTANT_APP_PACKAGE"

    .line 33
    .line 34
    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    iput-object p1, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mIntent:Landroid/content/Intent;

    .line 42
    .line 43
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    iput-object p1, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mBgHandler:Landroid/os/Handler;

    .line 48
    .line 49
    return-void
.end method


# virtual methods
.method public final bind(Ljava/lang/String;)Landroid/app/IInstantAppResolver;
    .locals 12

    .line 1
    const-string v0, "["

    .line 2
    .line 3
    const-string v1, "["

    .line 4
    .line 5
    const-string v2, "["

    .line 6
    .line 7
    const-string v3, "["

    .line 8
    .line 9
    const-string v4, "["

    .line 10
    .line 11
    const-string v5, "["

    .line 12
    .line 13
    iget-object v6, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mLock:Ljava/lang/Object;

    .line 14
    .line 15
    monitor-enter v6

    .line 16
    :try_start_0
    iget-object v7, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mRemoteInstance:Landroid/app/IInstantAppResolver;

    .line 17
    .line 18
    if-eqz v7, :cond_0

    .line 19
    .line 20
    monitor-exit v6

    .line 21
    return-object v7

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    goto/16 :goto_8

    .line 24
    .line 25
    :cond_0
    iget v7, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mBindState:I

    .line 26
    .line 27
    const/4 v8, 0x2

    .line 28
    const/4 v9, 0x1

    .line 29
    const/4 v10, 0x0

    .line 30
    if-ne v7, v8, :cond_2

    .line 31
    .line 32
    sget-boolean v7, Lcom/android/server/pm/InstantAppResolverConnection;->DEBUG_INSTANT:Z

    .line 33
    .line 34
    if-eqz v7, :cond_1

    .line 35
    .line 36
    const-string v7, "PackageManager"

    .line 37
    .line 38
    new-instance v11, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v11, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v5, "] Previous bind timed out; waiting for connection"

    .line 47
    .line 48
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    invoke-static {v7, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    .line 57
    .line 58
    :cond_1
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/pm/InstantAppResolverConnection;->waitForBindLocked(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    iget-object v5, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mRemoteInstance:Landroid/app/IInstantAppResolver;
    :try_end_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    .line 63
    if-eqz v5, :cond_2

    .line 64
    .line 65
    :try_start_2
    monitor-exit v6

    .line 66
    return-object v5

    .line 67
    :catch_0
    move v5, v9

    .line 68
    goto :goto_0

    .line 69
    :cond_2
    move v5, v10

    .line 70
    :goto_0
    iget v7, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mBindState:I

    .line 71
    .line 72
    if-ne v7, v9, :cond_5

    .line 73
    .line 74
    sget-boolean v0, Lcom/android/server/pm/InstantAppResolverConnection;->DEBUG_INSTANT:Z

    .line 75
    .line 76
    if-eqz v0, :cond_3

    .line 77
    .line 78
    const-string v0, "PackageManager"

    .line 79
    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string v2, "] Another thread is binding; waiting for connection"

    .line 89
    .line 90
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/server/pm/InstantAppResolverConnection;->waitForBindLocked(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    iget-object p0, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mRemoteInstance:Landroid/app/IInstantAppResolver;

    .line 104
    .line 105
    if-eqz p0, :cond_4

    .line 106
    .line 107
    monitor-exit v6

    .line 108
    return-object p0

    .line 109
    :cond_4
    new-instance p0, Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;

    .line 110
    .line 111
    invoke-direct {p0, v9}, Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;-><init>(I)V

    .line 112
    .line 113
    .line 114
    throw p0

    .line 115
    :cond_5
    iput v9, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mBindState:I

    .line 116
    .line 117
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 118
    const/4 v4, 0x0

    .line 119
    if-eqz v5, :cond_7

    .line 120
    .line 121
    :try_start_3
    sget-boolean v5, Lcom/android/server/pm/InstantAppResolverConnection;->DEBUG_INSTANT:Z

    .line 122
    .line 123
    if-eqz v5, :cond_6

    .line 124
    .line 125
    const-string v5, "PackageManager"

    .line 126
    .line 127
    new-instance v6, Ljava/lang/StringBuilder;

    .line 128
    .line 129
    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    const-string v3, "] Previous connection never established; rebinding"

    .line 136
    .line 137
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v3

    .line 144
    invoke-static {v5, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 145
    .line 146
    .line 147
    goto :goto_1

    .line 148
    :catchall_1
    move-exception p1

    .line 149
    move v1, v10

    .line 150
    goto/16 :goto_5

    .line 151
    .line 152
    :cond_6
    :goto_1
    :try_start_4
    iget-object v3, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mContext:Landroid/content/Context;

    .line 153
    .line 154
    iget-object v5, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mServiceConnection:Lcom/android/server/pm/InstantAppResolverConnection$MyServiceConnection;

    .line 155
    .line 156
    invoke-virtual {v3, v5}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 157
    .line 158
    .line 159
    goto :goto_2

    .line 160
    :catch_1
    move-exception v3

    .line 161
    :try_start_5
    const-string v5, "PackageManager"

    .line 162
    .line 163
    new-instance v6, Ljava/lang/StringBuilder;

    .line 164
    .line 165
    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    const-string v2, "] Service already unbound"

    .line 172
    .line 173
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v2

    .line 180
    invoke-static {v5, v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 181
    .line 182
    .line 183
    :cond_7
    :goto_2
    sget-boolean v2, Lcom/android/server/pm/InstantAppResolverConnection;->DEBUG_INSTANT:Z

    .line 184
    .line 185
    if-eqz v2, :cond_8

    .line 186
    .line 187
    const-string v2, "PackageManager"

    .line 188
    .line 189
    new-instance v3, Ljava/lang/StringBuilder;

    .line 190
    .line 191
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    const-string v1, "] Binding to instant app resolver"

    .line 198
    .line 199
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    .line 208
    .line 209
    :cond_8
    iget-object v1, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mContext:Landroid/content/Context;

    .line 210
    .line 211
    iget-object v2, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mIntent:Landroid/content/Intent;

    .line 212
    .line 213
    iget-object v3, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mServiceConnection:Lcom/android/server/pm/InstantAppResolverConnection$MyServiceConnection;

    .line 214
    .line 215
    sget-object v5, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 216
    .line 217
    const v6, 0x4000001

    .line 218
    .line 219
    .line 220
    invoke-virtual {v1, v2, v3, v6, v5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 221
    .line 222
    .line 223
    move-result v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 224
    if-eqz v1, :cond_a

    .line 225
    .line 226
    :try_start_6
    iget-object v0, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mLock:Ljava/lang/Object;

    .line 227
    .line 228
    monitor-enter v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 229
    :try_start_7
    invoke-virtual {p0, p1}, Lcom/android/server/pm/InstantAppResolverConnection;->waitForBindLocked(Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    iget-object v4, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mRemoteInstance:Landroid/app/IInstantAppResolver;

    .line 233
    .line 234
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 235
    iget-object p1, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mLock:Ljava/lang/Object;

    .line 236
    .line 237
    monitor-enter p1

    .line 238
    if-eqz v1, :cond_9

    .line 239
    .line 240
    if-nez v4, :cond_9

    .line 241
    .line 242
    :try_start_8
    iput v8, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mBindState:I

    .line 243
    .line 244
    goto :goto_3

    .line 245
    :catchall_2
    move-exception p0

    .line 246
    goto :goto_4

    .line 247
    :cond_9
    iput v10, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mBindState:I

    .line 248
    .line 249
    :goto_3
    iget-object p0, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mLock:Ljava/lang/Object;

    .line 250
    .line 251
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 252
    .line 253
    .line 254
    monitor-exit p1

    .line 255
    return-object v4

    .line 256
    :goto_4
    monitor-exit p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 257
    throw p0

    .line 258
    :catchall_3
    move-exception p1

    .line 259
    :try_start_9
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 260
    :try_start_a
    throw p1

    .line 261
    :catchall_4
    move-exception p1

    .line 262
    goto :goto_5

    .line 263
    :cond_a
    const-string v2, "PackageManager"

    .line 264
    .line 265
    new-instance v3, Ljava/lang/StringBuilder;

    .line 266
    .line 267
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    const-string p1, "] Failed to bind to: "

    .line 274
    .line 275
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    iget-object p1, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mIntent:Landroid/content/Intent;

    .line 279
    .line 280
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object p1

    .line 287
    invoke-static {v2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    .line 289
    .line 290
    new-instance p1, Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;

    .line 291
    .line 292
    invoke-direct {p1, v9}, Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;-><init>(I)V

    .line 293
    .line 294
    .line 295
    throw p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 296
    :goto_5
    iget-object v0, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mLock:Ljava/lang/Object;

    .line 297
    .line 298
    monitor-enter v0

    .line 299
    if-eqz v1, :cond_b

    .line 300
    .line 301
    if-nez v4, :cond_b

    .line 302
    .line 303
    :try_start_b
    iput v8, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mBindState:I

    .line 304
    .line 305
    goto :goto_6

    .line 306
    :catchall_5
    move-exception p0

    .line 307
    goto :goto_7

    .line 308
    :cond_b
    iput v10, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mBindState:I

    .line 309
    .line 310
    :goto_6
    iget-object p0, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mLock:Ljava/lang/Object;

    .line 311
    .line 312
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 313
    .line 314
    .line 315
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 316
    throw p1

    .line 317
    :goto_7
    :try_start_c
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 318
    throw p0

    .line 319
    :goto_8
    :try_start_d
    monitor-exit v6
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 320
    throw p0
.end method

.method public final binderDied()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/server/pm/InstantAppResolverConnection;->DEBUG_INSTANT:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "PackageManager"

    .line 6
    .line 7
    const-string v1, "Binder to instant app resolver died"

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mLock:Ljava/lang/Object;

    .line 13
    .line 14
    monitor-enter v0

    .line 15
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/InstantAppResolverConnection;->handleBinderDiedLocked()V

    .line 16
    .line 17
    .line 18
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    iget-object v0, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mBgHandler:Landroid/os/Handler;

    .line 20
    .line 21
    new-instance v1, Lcom/android/server/pm/InstantAppResolverConnection$$ExternalSyntheticLambda0;

    .line 22
    .line 23
    invoke-direct {v1, p0}, Lcom/android/server/pm/InstantAppResolverConnection$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/InstantAppResolverConnection;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    throw p0
.end method

.method public final getInstantAppResolveInfoList(Landroid/content/pm/InstantAppRequestInfo;)Ljava/util/List;
    .locals 3

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-eq v0, v1, :cond_0

    .line 16
    .line 17
    :try_start_0
    invoke-virtual {p1}, Landroid/content/pm/InstantAppRequestInfo;->getToken()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 22
    .line 23
    .line 24
    move-result-wide v1
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 25
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/android/server/pm/InstantAppResolverConnection;->bind(Ljava/lang/String;)Landroid/app/IInstantAppResolver;

    .line 26
    .line 27
    .line 28
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 29
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 30
    .line 31
    .line 32
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mGetInstantAppResolveInfoCaller:Lcom/android/server/pm/InstantAppResolverConnection$GetInstantAppResolveInfoCaller;

    .line 33
    .line 34
    invoke-virtual {v1, v0, p1}, Lcom/android/server/pm/InstantAppResolverConnection$GetInstantAppResolveInfoCaller;->getInstantAppResolveInfoList(Landroid/app/IInstantAppResolver;Landroid/content/pm/InstantAppRequestInfo;)Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object p1
    :try_end_3
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 38
    iget-object v0, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mLock:Ljava/lang/Object;

    .line 39
    .line 40
    monitor-enter v0

    .line 41
    :try_start_4
    iget-object p0, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mLock:Ljava/lang/Object;

    .line 42
    .line 43
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 44
    .line 45
    .line 46
    monitor-exit v0

    .line 47
    return-object p1

    .line 48
    :catchall_0
    move-exception p0

    .line 49
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 50
    throw p0

    .line 51
    :catchall_1
    move-exception p1

    .line 52
    goto :goto_0

    .line 53
    :catch_0
    iget-object p1, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mLock:Ljava/lang/Object;

    .line 54
    .line 55
    monitor-enter p1

    .line 56
    :try_start_5
    iget-object p0, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mLock:Ljava/lang/Object;

    .line 57
    .line 58
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 59
    .line 60
    .line 61
    monitor-exit p1

    .line 62
    const/4 p0, 0x0

    .line 63
    return-object p0

    .line 64
    :catchall_2
    move-exception p0

    .line 65
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 66
    throw p0

    .line 67
    :catch_1
    :try_start_6
    new-instance p1, Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;

    .line 68
    .line 69
    const/4 v0, 0x2

    .line 70
    invoke-direct {p1, v0}, Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;-><init>(I)V

    .line 71
    .line 72
    .line 73
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 74
    :catchall_3
    move-exception p1

    .line 75
    :try_start_7
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 76
    .line 77
    .line 78
    throw p1
    :try_end_7
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 79
    :catch_2
    :try_start_8
    new-instance p1, Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;

    .line 80
    .line 81
    const/4 v0, 0x3

    .line 82
    invoke-direct {p1, v0}, Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;-><init>(I)V

    .line 83
    .line 84
    .line 85
    throw p1

    .line 86
    :catch_3
    new-instance p1, Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;

    .line 87
    .line 88
    const/4 v0, 0x1

    .line 89
    invoke-direct {p1, v0}, Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;-><init>(I)V

    .line 90
    .line 91
    .line 92
    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 93
    :goto_0
    iget-object v0, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mLock:Ljava/lang/Object;

    .line 94
    .line 95
    monitor-enter v0

    .line 96
    :try_start_9
    iget-object p0, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mLock:Ljava/lang/Object;

    .line 97
    .line 98
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 99
    .line 100
    .line 101
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 102
    throw p1

    .line 103
    :catchall_4
    move-exception p0

    .line 104
    :try_start_a
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 105
    throw p0

    .line 106
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    .line 107
    .line 108
    const-string p1, "Cannot invoke on the main thread"

    .line 109
    .line 110
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    throw p0
.end method

.method public final handleBinderDiedLocked()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mRemoteInstance:Landroid/app/IInstantAppResolver;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-interface {v0}, Landroid/app/IInstantAppResolver;->asBinder()Landroid/os/IBinder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    :catch_0
    :cond_0
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mRemoteInstance:Landroid/app/IInstantAppResolver;

    .line 15
    .line 16
    :try_start_1
    iget-object v0, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mContext:Landroid/content/Context;

    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mServiceConnection:Lcom/android/server/pm/InstantAppResolverConnection$MyServiceConnection;

    .line 19
    .line 20
    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 21
    .line 22
    .line 23
    :catch_1
    return-void
.end method

.method public final waitForBindLocked(Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :goto_0
    iget v2, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mBindState:I

    .line 6
    .line 7
    if-eqz v2, :cond_2

    .line 8
    .line 9
    iget-object v2, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mRemoteInstance:Landroid/app/IInstantAppResolver;

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 15
    .line 16
    .line 17
    move-result-wide v2

    .line 18
    sub-long/2addr v2, v0

    .line 19
    sget-wide v4, Lcom/android/server/pm/InstantAppResolverConnection;->BIND_SERVICE_TIMEOUT_MS:J

    .line 20
    .line 21
    sub-long/2addr v4, v2

    .line 22
    const-wide/16 v2, 0x0

    .line 23
    .line 24
    cmp-long v2, v4, v2

    .line 25
    .line 26
    if-lez v2, :cond_1

    .line 27
    .line 28
    iget-object v2, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mLock:Ljava/lang/Object;

    .line 29
    .line 30
    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    new-instance p0, Ljava/util/concurrent/TimeoutException;

    .line 35
    .line 36
    const-string v0, "["

    .line 37
    .line 38
    const-string v1, "] Didn\'t bind to resolver in time!"

    .line 39
    .line 40
    invoke-static {v0, p1, v1}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-direct {p0, p1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw p0

    .line 48
    :cond_2
    :goto_1
    return-void
.end method
