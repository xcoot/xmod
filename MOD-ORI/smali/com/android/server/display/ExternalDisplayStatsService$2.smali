.class public final Lcom/android/server/display/ExternalDisplayStatsService$2;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/ExternalDisplayStatsService;


# direct methods
.method public constructor <init>(Lcom/android/server/display/ExternalDisplayStatsService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/display/ExternalDisplayStatsService$2;->this$0:Lcom/android/server/display/ExternalDisplayStatsService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    .line 1
    iget-object p1, p0, Lcom/android/server/display/ExternalDisplayStatsService$2;->this$0:Lcom/android/server/display/ExternalDisplayStatsService;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/server/display/ExternalDisplayStatsService;->mExternalDisplayStates:Landroid/util/SparseIntArray;

    .line 4
    .line 5
    monitor-enter p1

    .line 6
    :try_start_0
    iget-object p2, p0, Lcom/android/server/display/ExternalDisplayStatsService$2;->this$0:Lcom/android/server/display/ExternalDisplayStatsService;

    .line 7
    .line 8
    iget-object p2, p2, Lcom/android/server/display/ExternalDisplayStatsService;->mExternalDisplayStates:Landroid/util/SparseIntArray;

    .line 9
    .line 10
    invoke-virtual {p2}, Landroid/util/SparseIntArray;->size()I

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    if-nez p2, :cond_0

    .line 15
    .line 16
    monitor-exit p1

    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    goto/16 :goto_7

    .line 20
    .line 21
    :cond_0
    const/4 p2, 0x0

    .line 22
    move v0, p2

    .line 23
    move v1, v0

    .line 24
    :goto_0
    iget-object v2, p0, Lcom/android/server/display/ExternalDisplayStatsService$2;->this$0:Lcom/android/server/display/ExternalDisplayStatsService;

    .line 25
    .line 26
    iget-object v2, v2, Lcom/android/server/display/ExternalDisplayStatsService;->mExternalDisplayStates:Landroid/util/SparseIntArray;

    .line 27
    .line 28
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-ge v0, v2, :cond_4

    .line 33
    .line 34
    iget-object v2, p0, Lcom/android/server/display/ExternalDisplayStatsService$2;->this$0:Lcom/android/server/display/ExternalDisplayStatsService;

    .line 35
    .line 36
    iget-object v3, v2, Lcom/android/server/display/ExternalDisplayStatsService;->mInjector:Lcom/android/server/display/ExternalDisplayStatsService$Injector;

    .line 37
    .line 38
    iget-object v2, v2, Lcom/android/server/display/ExternalDisplayStatsService;->mExternalDisplayStates:Landroid/util/SparseIntArray;

    .line 39
    .line 40
    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    iget-object v4, v3, Lcom/android/server/display/ExternalDisplayStatsService$Injector;->mPowerManager:Landroid/os/PowerManager;

    .line 45
    .line 46
    if-nez v4, :cond_1

    .line 47
    .line 48
    iget-object v4, v3, Lcom/android/server/display/ExternalDisplayStatsService$Injector;->mContext:Landroid/content/Context;

    .line 49
    .line 50
    const-class v5, Landroid/os/PowerManager;

    .line 51
    .line 52
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    check-cast v4, Landroid/os/PowerManager;

    .line 57
    .line 58
    iput-object v4, v3, Lcom/android/server/display/ExternalDisplayStatsService$Injector;->mPowerManager:Landroid/os/PowerManager;

    .line 59
    .line 60
    :cond_1
    iget-object v3, v3, Lcom/android/server/display/ExternalDisplayStatsService$Injector;->mPowerManager:Landroid/os/PowerManager;

    .line 61
    .line 62
    if-eqz v3, :cond_2

    .line 63
    .line 64
    invoke-virtual {v3, v2}, Landroid/os/PowerManager;->isInteractive(I)Z

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    if-eqz v2, :cond_3

    .line 69
    .line 70
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 71
    .line 72
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_4
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    iget-object p1, p0, Lcom/android/server/display/ExternalDisplayStatsService$2;->this$0:Lcom/android/server/display/ExternalDisplayStatsService;

    .line 77
    .line 78
    iget v0, p1, Lcom/android/server/display/ExternalDisplayStatsService;->mInteractiveExternalDisplays:I

    .line 79
    .line 80
    if-ne v0, v1, :cond_5

    .line 81
    .line 82
    return-void

    .line 83
    :cond_5
    const/16 v2, 0x326

    .line 84
    .line 85
    const/4 v3, 0x1

    .line 86
    if-nez v1, :cond_8

    .line 87
    .line 88
    iget-object v4, p1, Lcom/android/server/display/ExternalDisplayStatsService;->mExternalDisplayStates:Landroid/util/SparseIntArray;

    .line 89
    .line 90
    monitor-enter v4

    .line 91
    :goto_1
    :try_start_1
    iget-object v0, p1, Lcom/android/server/display/ExternalDisplayStatsService;->mExternalDisplayStates:Landroid/util/SparseIntArray;

    .line 92
    .line 93
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-ge p2, v0, :cond_7

    .line 98
    .line 99
    iget-object v0, p1, Lcom/android/server/display/ExternalDisplayStatsService;->mInjector:Lcom/android/server/display/ExternalDisplayStatsService$Injector;

    .line 100
    .line 101
    add-int/lit8 v5, p2, 0x1

    .line 102
    .line 103
    iget-boolean v6, p1, Lcom/android/server/display/ExternalDisplayStatsService;->mIsExternalDisplayUsedForAudio:Z

    .line 104
    .line 105
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    .line 107
    .line 108
    const/4 v0, 0x4

    .line 109
    invoke-static {v2, v0, v5, v6}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIZ)V

    .line 110
    .line 111
    .line 112
    sget-boolean v6, Lcom/android/server/display/ExternalDisplayStatsService;->DEBUG:Z

    .line 113
    .line 114
    if-eqz v6, :cond_6

    .line 115
    .line 116
    iget-object v6, p1, Lcom/android/server/display/ExternalDisplayStatsService;->mExternalDisplayStates:Landroid/util/SparseIntArray;

    .line 117
    .line 118
    invoke-virtual {v6, p2}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 119
    .line 120
    .line 121
    move-result p2

    .line 122
    iget-object v6, p1, Lcom/android/server/display/ExternalDisplayStatsService;->mExternalDisplayStates:Landroid/util/SparseIntArray;

    .line 123
    .line 124
    invoke-virtual {v6, p2, v3}, Landroid/util/SparseIntArray;->get(II)I

    .line 125
    .line 126
    .line 127
    move-result v6

    .line 128
    const-string v7, "ExternalDisplayStatsService"

    .line 129
    .line 130
    new-instance v8, Ljava/lang/StringBuilder;

    .line 131
    .line 132
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 133
    .line 134
    .line 135
    const-string/jumbo v9, "logExternalDisplayIdleStarted displayId="

    .line 136
    .line 137
    .line 138
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    const-string p2, " currentState="

    .line 145
    .line 146
    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    const-string p2, " countOfExternalDisplays="

    .line 153
    .line 154
    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    const-string p2, " state="

    .line 161
    .line 162
    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    const-string p2, " mIsExternalDisplayUsedForAudio="

    .line 169
    .line 170
    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    iget-boolean p2, p1, Lcom/android/server/display/ExternalDisplayStatsService;->mIsExternalDisplayUsedForAudio:Z

    .line 174
    .line 175
    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object p2

    .line 182
    invoke-static {v7, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    .line 184
    .line 185
    goto :goto_2

    .line 186
    :catchall_1
    move-exception p0

    .line 187
    goto :goto_3

    .line 188
    :cond_6
    :goto_2
    move p2, v5

    .line 189
    goto :goto_1

    .line 190
    :cond_7
    monitor-exit v4

    .line 191
    goto :goto_6

    .line 192
    :goto_3
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 193
    throw p0

    .line 194
    :cond_8
    const/4 v4, -0x1

    .line 195
    if-eq v4, v0, :cond_c

    .line 196
    .line 197
    iget-object v0, p1, Lcom/android/server/display/ExternalDisplayStatsService;->mExternalDisplayStates:Landroid/util/SparseIntArray;

    .line 198
    .line 199
    monitor-enter v0

    .line 200
    :cond_9
    :goto_4
    :try_start_2
    iget-object v4, p1, Lcom/android/server/display/ExternalDisplayStatsService;->mExternalDisplayStates:Landroid/util/SparseIntArray;

    .line 201
    .line 202
    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    .line 203
    .line 204
    .line 205
    move-result v4

    .line 206
    if-ge p2, v4, :cond_b

    .line 207
    .line 208
    iget-object v4, p1, Lcom/android/server/display/ExternalDisplayStatsService;->mExternalDisplayStates:Landroid/util/SparseIntArray;

    .line 209
    .line 210
    invoke-virtual {v4, p2}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 211
    .line 212
    .line 213
    move-result v4

    .line 214
    iget-object v5, p1, Lcom/android/server/display/ExternalDisplayStatsService;->mExternalDisplayStates:Landroid/util/SparseIntArray;

    .line 215
    .line 216
    invoke-virtual {v5, v4, v3}, Landroid/util/SparseIntArray;->get(II)I

    .line 217
    .line 218
    .line 219
    move-result v5

    .line 220
    if-ne v5, v3, :cond_a

    .line 221
    .line 222
    monitor-exit v0

    .line 223
    goto :goto_6

    .line 224
    :catchall_2
    move-exception p0

    .line 225
    goto :goto_5

    .line 226
    :cond_a
    iget-object v6, p1, Lcom/android/server/display/ExternalDisplayStatsService;->mInjector:Lcom/android/server/display/ExternalDisplayStatsService$Injector;

    .line 227
    .line 228
    add-int/lit8 p2, p2, 0x1

    .line 229
    .line 230
    iget-boolean v7, p1, Lcom/android/server/display/ExternalDisplayStatsService;->mIsExternalDisplayUsedForAudio:Z

    .line 231
    .line 232
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 233
    .line 234
    .line 235
    invoke-static {v2, v5, p2, v7}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIZ)V

    .line 236
    .line 237
    .line 238
    sget-boolean v6, Lcom/android/server/display/ExternalDisplayStatsService;->DEBUG:Z

    .line 239
    .line 240
    if-eqz v6, :cond_9

    .line 241
    .line 242
    const-string v6, "ExternalDisplayStatsService"

    .line 243
    .line 244
    new-instance v7, Ljava/lang/StringBuilder;

    .line 245
    .line 246
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 247
    .line 248
    .line 249
    const-string/jumbo v8, "logExternalDisplayIdleEnded displayId="

    .line 250
    .line 251
    .line 252
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    const-string v4, " state="

    .line 259
    .line 260
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    const-string v4, " countOfExternalDisplays="

    .line 267
    .line 268
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    const-string v4, " mIsExternalDisplayUsedForAudio="

    .line 275
    .line 276
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    iget-boolean v4, p1, Lcom/android/server/display/ExternalDisplayStatsService;->mIsExternalDisplayUsedForAudio:Z

    .line 280
    .line 281
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v4

    .line 288
    invoke-static {v6, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    .line 290
    .line 291
    goto :goto_4

    .line 292
    :cond_b
    monitor-exit v0

    .line 293
    goto :goto_6

    .line 294
    :goto_5
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 295
    throw p0

    .line 296
    :cond_c
    :goto_6
    iget-object p0, p0, Lcom/android/server/display/ExternalDisplayStatsService$2;->this$0:Lcom/android/server/display/ExternalDisplayStatsService;

    .line 297
    .line 298
    iput v1, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mInteractiveExternalDisplays:I

    .line 299
    .line 300
    return-void

    .line 301
    :goto_7
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 302
    throw p0
.end method
