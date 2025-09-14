.class public final synthetic Lcom/android/server/am/AppStateBroadcaster$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/android/server/am/AppStateBroadcaster$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    .line 5
    .line 6
    iput p1, p0, Lcom/android/server/am/AppStateBroadcaster$$ExternalSyntheticLambda0;->f$1:I

    .line 7
    .line 8
    iput p2, p0, Lcom/android/server/am/AppStateBroadcaster$$ExternalSyntheticLambda0;->f$2:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/android/server/am/AppStateBroadcaster$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/am/AppStateBroadcaster$$ExternalSyntheticLambda0;->f$1:I

    .line 4
    .line 5
    iget p0, p0, Lcom/android/server/am/AppStateBroadcaster$$ExternalSyntheticLambda0;->f$2:I

    .line 6
    .line 7
    sget-boolean v2, Lcom/android/server/am/AppStateBroadcaster;->DEBUG:Z

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    const-string/jumbo v3, "sendApplicationStop("

    .line 12
    .line 13
    .line 14
    const-string v4, ", "

    .line 15
    .line 16
    const-string v5, ", "

    .line 17
    .line 18
    invoke-static {v1, v3, v0, v4, v5}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v4, ")"

    .line 26
    .line 27
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-static {v3}, Lcom/android/server/am/AppStateBroadcaster;->logOriginFunction(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    sget-boolean v3, Lcom/android/server/am/AppStateBroadcaster;->mIsBroadcastEnabled:Z

    .line 38
    .line 39
    if-eqz v3, :cond_c

    .line 40
    .line 41
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-nez v3, :cond_c

    .line 46
    .line 47
    if-ltz p0, :cond_c

    .line 48
    .line 49
    sget-object v3, Lcom/android/server/am/AppStateBroadcaster;->APP_TERM_REASONS:[Ljava/lang/String;

    .line 50
    .line 51
    array-length v4, v3

    .line 52
    if-ge p0, v4, :cond_c

    .line 53
    .line 54
    const-string/jumbo v4, "packageStopped appState is null; send app exit with stopReason="

    .line 55
    .line 56
    .line 57
    const-string v5, "Removing "

    .line 58
    .line 59
    const-string v6, "Removing process "

    .line 60
    .line 61
    const-string/jumbo v7, "packageStopped for "

    .line 62
    .line 63
    .line 64
    const-string v8, ""

    .line 65
    .line 66
    invoke-static {v0}, Lcom/android/server/am/AppStateBroadcaster;->stripPackageName(Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v9

    .line 70
    sget-object v10, Lcom/android/server/am/AppStateBroadcaster;->sKnownRunningPackages:Ljava/util/HashMap;

    .line 71
    .line 72
    monitor-enter v10

    .line 73
    if-eqz v2, :cond_1

    .line 74
    .line 75
    :try_start_0
    const-string v11, "AppStateBroadcaster"

    .line 76
    .line 77
    new-instance v12, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    invoke-direct {v12, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string v7, " with processId="

    .line 86
    .line 87
    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string v7, " stopReason="

    .line 94
    .line 95
    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v7

    .line 105
    invoke-static {v11, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :catchall_0
    move-exception p0

    .line 110
    goto/16 :goto_5

    .line 111
    .line 112
    :cond_1
    :goto_0
    invoke-virtual {v10, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v7

    .line 116
    check-cast v7, Lcom/android/server/am/ApplicationState;

    .line 117
    .line 118
    const/4 v11, 0x1

    .line 119
    const/4 v12, 0x0

    .line 120
    if-eqz v7, :cond_7

    .line 121
    .line 122
    if-eqz v2, :cond_2

    .line 123
    .line 124
    const-string v4, "AppStateBroadcaster"

    .line 125
    .line 126
    new-instance v13, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    invoke-direct {v13, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    const-string v6, ", packageName "

    .line 135
    .line 136
    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    const-string v6, " from rootPackage "

    .line 143
    .line 144
    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v6

    .line 154
    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    .line 156
    .line 157
    :cond_2
    iget v4, v7, Lcom/android/server/am/ApplicationState;->mStopReason:I

    .line 158
    .line 159
    invoke-static {p0, v4}, Ljava/lang/Math;->max(II)I

    .line 160
    .line 161
    .line 162
    move-result v4

    .line 163
    iput v4, v7, Lcom/android/server/am/ApplicationState;->mStopReason:I

    .line 164
    .line 165
    iget-object v4, v7, Lcom/android/server/am/ApplicationState;->mProcessIds:Ljava/util/HashSet;

    .line 166
    .line 167
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    invoke-virtual {v4, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    iget-object v1, v7, Lcom/android/server/am/ApplicationState;->mProcessIds:Ljava/util/HashSet;

    .line 175
    .line 176
    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    .line 177
    .line 178
    .line 179
    move-result v1

    .line 180
    if-eqz v1, :cond_5

    .line 181
    .line 182
    if-eqz v2, :cond_3

    .line 183
    .line 184
    const-string p0, "AppStateBroadcaster"

    .line 185
    .line 186
    new-instance v1, Ljava/lang/StringBuilder;

    .line 187
    .line 188
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    const-string v4, " from running packages"

    .line 195
    .line 196
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v1

    .line 203
    invoke-static {p0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    .line 205
    .line 206
    :cond_3
    sget-object p0, Lcom/android/server/am/AppStateBroadcaster;->mLastFocusAppName:Ljava/lang/String;

    .line 207
    .line 208
    if-eqz p0, :cond_4

    .line 209
    .line 210
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 211
    .line 212
    .line 213
    move-result p0

    .line 214
    if-eqz p0, :cond_4

    .line 215
    .line 216
    const/4 p0, 0x0

    .line 217
    sput-object p0, Lcom/android/server/am/AppStateBroadcaster;->mLastFocusAppName:Ljava/lang/String;

    .line 218
    .line 219
    move p0, v11

    .line 220
    goto :goto_1

    .line 221
    :cond_4
    move p0, v12

    .line 222
    :goto_1
    invoke-virtual {v10, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    iget v1, v7, Lcom/android/server/am/ApplicationState;->mStopReason:I

    .line 226
    .line 227
    aget-object v8, v3, v1

    .line 228
    .line 229
    goto :goto_3

    .line 230
    :cond_5
    const/4 v1, 0x2

    .line 231
    if-ge p0, v1, :cond_6

    .line 232
    .line 233
    invoke-virtual {v10, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    iget p0, v7, Lcom/android/server/am/ApplicationState;->mStopReason:I

    .line 237
    .line 238
    aget-object v8, v3, p0

    .line 239
    .line 240
    :goto_2
    move p0, v12

    .line 241
    goto :goto_3

    .line 242
    :cond_6
    move p0, v12

    .line 243
    move v11, p0

    .line 244
    goto :goto_3

    .line 245
    :cond_7
    if-eqz v2, :cond_8

    .line 246
    .line 247
    const-string v1, "AppStateBroadcaster"

    .line 248
    .line 249
    new-instance v5, Ljava/lang/StringBuilder;

    .line 250
    .line 251
    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v4

    .line 261
    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    .line 263
    .line 264
    :cond_8
    invoke-virtual {v10, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    aget-object v8, v3, p0

    .line 268
    .line 269
    goto :goto_2

    .line 270
    :goto_3
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    if-eqz p0, :cond_9

    .line 272
    .line 273
    invoke-static {v0}, Lcom/android/server/am/AppStateBroadcaster;->sendApplicationFocusLoss(Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    :cond_9
    if-eqz v11, :cond_c

    .line 277
    .line 278
    const-string p0, "AppStateBroadcaster"

    .line 279
    .line 280
    if-eqz v2, :cond_a

    .line 281
    .line 282
    const-string v0, " packageName : "

    .line 283
    .line 284
    const-string v1, " termReason : "

    .line 285
    .line 286
    invoke-static {v0, v9, v1, v8, p0}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    :cond_a
    sget-object v0, Lcom/android/server/am/AppStateBroadcaster;->mContext:Landroid/content/Context;

    .line 290
    .line 291
    if-eqz v0, :cond_b

    .line 292
    .line 293
    if-eqz v9, :cond_b

    .line 294
    .line 295
    if-eqz v8, :cond_b

    .line 296
    .line 297
    sget-object p0, Lcom/android/server/am/AppStateBroadcaster;->sPackages:[Ljava/lang/String;

    .line 298
    .line 299
    array-length v0, p0

    .line 300
    :goto_4
    if-ge v12, v0, :cond_c

    .line 301
    .line 302
    aget-object v1, p0, v12

    .line 303
    .line 304
    const-string/jumbo v2, "diagandroid.app.ApplicationState"

    .line 305
    .line 306
    .line 307
    invoke-static {v2, v1}, Lcom/android/server/ExplicitHealthCheckController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 308
    .line 309
    .line 310
    move-result-object v1

    .line 311
    const-string v2, "ApplicationPackageName"

    .line 312
    .line 313
    invoke-static {v9}, Lcom/android/server/am/AppStateBroadcaster;->stripPackageName(Ljava/lang/String;)Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v3

    .line 317
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 318
    .line 319
    .line 320
    const-string v2, "ApplicationState"

    .line 321
    .line 322
    const-string v3, "EXITED"

    .line 323
    .line 324
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 325
    .line 326
    .line 327
    const-string v2, "ApplicationTermReason"

    .line 328
    .line 329
    invoke-virtual {v1, v2, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 330
    .line 331
    .line 332
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 333
    .line 334
    .line 335
    move-result-wide v2

    .line 336
    const-string/jumbo v4, "oemIntentTimestamp"

    .line 337
    .line 338
    .line 339
    invoke-virtual {v1, v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 340
    .line 341
    .line 342
    sget-object v2, Lcom/android/server/am/AppStateBroadcaster;->mContext:Landroid/content/Context;

    .line 343
    .line 344
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 345
    .line 346
    const-string/jumbo v4, "diagandroid.app.receiveDetailedApplicationState"

    .line 347
    .line 348
    .line 349
    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 350
    .line 351
    .line 352
    add-int/lit8 v12, v12, 0x1

    .line 353
    .line 354
    goto :goto_4

    .line 355
    :cond_b
    if-eqz v2, :cond_c

    .line 356
    .line 357
    const-string v0, "Can\'t send broadcast mContext is null"

    .line 358
    .line 359
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    .line 361
    .line 362
    goto :goto_6

    .line 363
    :goto_5
    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 364
    throw p0

    .line 365
    :cond_c
    :goto_6
    return-void
.end method
