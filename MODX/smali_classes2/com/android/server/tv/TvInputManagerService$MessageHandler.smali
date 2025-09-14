.class public final Lcom/android/server/tv/TvInputManagerService$MessageHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mContentResolver:Landroid/content/ContentResolver;

.field public final synthetic this$0:Lcom/android/server/tv/TvInputManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/tv/TvInputManagerService;Landroid/content/ContentResolver;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/tv/TvInputManagerService$MessageHandler;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 2
    .line 3
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/tv/TvInputManagerService$MessageHandler;->mContentResolver:Landroid/content/ContentResolver;

    .line 7
    .line 8
    return-void
.end method

.method public static replaceEscapeCharacters(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    array-length v1, p0

    .line 11
    const/4 v2, 0x0

    .line 12
    :goto_0
    if-ge v2, v1, :cond_1

    .line 13
    .line 14
    aget-char v3, p0, v2

    .line 15
    .line 16
    const-string v4, "%=,"

    .line 17
    .line 18
    invoke-virtual {v4, v3}, Ljava/lang/String;->indexOf(I)I

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    if-ltz v4, :cond_0

    .line 23
    .line 24
    const/16 v4, 0x25

    .line 25
    .line 26
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    add-int/lit8 v2, v2, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    return-object p0
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 8

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_3

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    if-eq v0, v1, :cond_2

    .line 8
    .line 9
    const/4 v1, 0x3

    .line 10
    if-eq v0, v1, :cond_1

    .line 11
    .line 12
    const/4 v1, 0x4

    .line 13
    if-eq v0, v1, :cond_0

    .line 14
    .line 15
    const-string p0, "TvInputManagerService"

    .line 16
    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string/jumbo v1, "unhandled message code: "

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget p1, p1, Landroid/os/Message;->what:I

    .line 26
    .line 27
    invoke-static {v0, p1, p0}, Lcom/android/server/HeapdumpWatcher$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 28
    .line 29
    .line 30
    goto/16 :goto_3

    .line 31
    .line 32
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 35
    .line 36
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v0, Ljava/lang/Integer;

    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$MessageHandler;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 45
    .line 46
    iget-object v1, v1, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    .line 47
    .line 48
    monitor-enter v1

    .line 49
    :try_start_0
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$MessageHandler;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 50
    .line 51
    invoke-static {p0, v0}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mupdateHardwareTvInputServiceBindingLocked(Lcom/android/server/tv/TvInputManagerService;I)V

    .line 52
    .line 53
    .line 54
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 56
    .line 57
    .line 58
    goto/16 :goto_3

    .line 59
    .line 60
    :catchall_0
    move-exception p0

    .line 61
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    throw p0

    .line 63
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast p1, Landroid/content/ContentResolver;

    .line 66
    .line 67
    iput-object p1, p0, Lcom/android/server/tv/TvInputManagerService$MessageHandler;->mContentResolver:Landroid/content/ContentResolver;

    .line 68
    .line 69
    goto/16 :goto_3

    .line 70
    .line 71
    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 74
    .line 75
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 76
    .line 77
    check-cast v0, Landroid/os/IBinder;

    .line 78
    .line 79
    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 80
    .line 81
    check-cast v1, Ljava/lang/Long;

    .line 82
    .line 83
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    .line 85
    .line 86
    new-instance v2, Landroid/content/ContentValues;

    .line 87
    .line 88
    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 89
    .line 90
    .line 91
    const-string/jumbo v3, "watch_end_time_utc_millis"

    .line 92
    .line 93
    .line 94
    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 95
    .line 96
    .line 97
    const-string/jumbo v1, "session_token"

    .line 98
    .line 99
    .line 100
    invoke-interface {v0}, Landroid/os/IBinder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-virtual {v2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    :try_start_2
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$MessageHandler;->mContentResolver:Landroid/content/ContentResolver;

    .line 108
    .line 109
    sget-object v0, Landroid/media/tv/TvContract$WatchedPrograms;->CONTENT_URI:Landroid/net/Uri;

    .line 110
    .line 111
    invoke-virtual {p0, v0, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    .line 112
    .line 113
    .line 114
    goto :goto_0

    .line 115
    :catch_0
    move-exception p0

    .line 116
    const-string v0, "TvInputManagerService"

    .line 117
    .line 118
    const-string v1, "error in insert db for MSG_LOG_WATCH_END"

    .line 119
    .line 120
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 121
    .line 122
    .line 123
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 124
    .line 125
    .line 126
    goto/16 :goto_3

    .line 127
    .line 128
    :cond_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 129
    .line 130
    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 131
    .line 132
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 133
    .line 134
    check-cast v0, Ljava/lang/String;

    .line 135
    .line 136
    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 137
    .line 138
    check-cast v1, Ljava/lang/Long;

    .line 139
    .line 140
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 141
    .line 142
    .line 143
    iget-object v2, p1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 144
    .line 145
    check-cast v2, Ljava/lang/Long;

    .line 146
    .line 147
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 148
    .line 149
    .line 150
    iget-object v3, p1, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 151
    .line 152
    check-cast v3, Landroid/os/Bundle;

    .line 153
    .line 154
    iget-object v4, p1, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    .line 155
    .line 156
    check-cast v4, Landroid/os/IBinder;

    .line 157
    .line 158
    new-instance v5, Landroid/content/ContentValues;

    .line 159
    .line 160
    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 161
    .line 162
    .line 163
    const-string/jumbo v6, "package_name"

    .line 164
    .line 165
    .line 166
    invoke-virtual {v5, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    const-string/jumbo v0, "watch_start_time_utc_millis"

    .line 170
    .line 171
    .line 172
    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 173
    .line 174
    .line 175
    const-string v0, "channel_id"

    .line 176
    .line 177
    invoke-virtual {v5, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 178
    .line 179
    .line 180
    if-eqz v3, :cond_7

    .line 181
    .line 182
    const-string/jumbo v0, "tune_params"

    .line 183
    .line 184
    .line 185
    new-instance v1, Ljava/lang/StringBuilder;

    .line 186
    .line 187
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    .line 191
    .line 192
    .line 193
    move-result-object v2

    .line 194
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 195
    .line 196
    .line 197
    move-result-object v2

    .line 198
    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 199
    .line 200
    .line 201
    move-result v6

    .line 202
    if-eqz v6, :cond_6

    .line 203
    .line 204
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object v6

    .line 208
    check-cast v6, Ljava/lang/String;

    .line 209
    .line 210
    invoke-virtual {v3, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object v7

    .line 214
    if-nez v7, :cond_5

    .line 215
    .line 216
    goto :goto_1

    .line 217
    :cond_5
    invoke-static {v6}, Lcom/android/server/tv/TvInputManagerService$MessageHandler;->replaceEscapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v6

    .line 221
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    const-string v6, "="

    .line 225
    .line 226
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v6

    .line 233
    invoke-static {v6}, Lcom/android/server/tv/TvInputManagerService$MessageHandler;->replaceEscapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v6

    .line 237
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 241
    .line 242
    .line 243
    move-result v6

    .line 244
    if-eqz v6, :cond_4

    .line 245
    .line 246
    const-string v6, ", "

    .line 247
    .line 248
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    goto :goto_1

    .line 252
    :cond_6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v1

    .line 256
    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    :cond_7
    const-string/jumbo v0, "session_token"

    .line 260
    .line 261
    .line 262
    invoke-interface {v4}, Landroid/os/IBinder;->toString()Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v1

    .line 266
    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    :try_start_3
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$MessageHandler;->mContentResolver:Landroid/content/ContentResolver;

    .line 270
    .line 271
    sget-object v0, Landroid/media/tv/TvContract$WatchedPrograms;->CONTENT_URI:Landroid/net/Uri;

    .line 272
    .line 273
    invoke-virtual {p0, v0, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1

    .line 274
    .line 275
    .line 276
    goto :goto_2

    .line 277
    :catch_1
    move-exception p0

    .line 278
    const-string v0, "TvInputManagerService"

    .line 279
    .line 280
    const-string v1, "error in insert db for MSG_LOG_WATCH_START"

    .line 281
    .line 282
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 283
    .line 284
    .line 285
    :goto_2
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 286
    .line 287
    .line 288
    :goto_3
    return-void
.end method
