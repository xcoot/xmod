.class public final Lcom/android/server/ibs/sqd/IbsQuickDim$IntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;


# direct methods
.method public constructor <init>(Lcom/android/server/ibs/sqd/IbsQuickDim;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$IntentReceiver;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance p0, Landroid/content/IntentFilter;

    .line 7
    .line 8
    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p0, p1, Lcom/android/server/ibs/sqd/IbsQuickDim;->mFilter:Landroid/content/IntentFilter;

    .line 12
    .line 13
    const-string v0, "android.intent.action.SCREEN_OFF"

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object p0, p1, Lcom/android/server/ibs/sqd/IbsQuickDim;->mFilter:Landroid/content/IntentFilter;

    .line 19
    .line 20
    const-string v0, "android.intent.action.SCREEN_ON"

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object p0, p1, Lcom/android/server/ibs/sqd/IbsQuickDim;->mFilter:Landroid/content/IntentFilter;

    .line 26
    .line 27
    const-string v0, "android.intent.action.ACTION_POWER_CONNECTED"

    .line 28
    .line 29
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object p0, p1, Lcom/android/server/ibs/sqd/IbsQuickDim;->mFilter:Landroid/content/IntentFilter;

    .line 33
    .line 34
    const-string v0, "android.intent.action.ACTION_POWER_DISCONNECTED"

    .line 35
    .line 36
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object p0, p1, Lcom/android/server/ibs/sqd/IbsQuickDim;->mFilter:Landroid/content/IntentFilter;

    .line 40
    .line 41
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    .line 42
    .line 43
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget-object p0, p1, Lcom/android/server/ibs/sqd/IbsQuickDim;->mFilter:Landroid/content/IntentFilter;

    .line 47
    .line 48
    const-string/jumbo v0, "com.samsung.server.PowerManagerService.action.USER_ACTIVITY"

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    new-instance p0, Landroid/content/IntentFilter;

    .line 55
    .line 56
    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 57
    .line 58
    .line 59
    iput-object p0, p1, Lcom/android/server/ibs/sqd/IbsQuickDim;->mPkgFilter:Landroid/content/IntentFilter;

    .line 60
    .line 61
    const-string v0, "android.intent.action.PACKAGE_FULLY_REMOVED"

    .line 62
    .line 63
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    iget-object p0, p1, Lcom/android/server/ibs/sqd/IbsQuickDim;->mPkgFilter:Landroid/content/IntentFilter;

    .line 67
    .line 68
    const-string/jumbo p1, "package"

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    .line 1
    const-string p1, "android.intent.action.SCREEN_OFF"

    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    const/4 v0, 0x2

    .line 12
    const/4 v1, 0x4

    .line 13
    const/4 v2, 0x0

    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    iget-object p1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$IntentReceiver;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    .line 17
    .line 18
    iget-object p1, p1, Lcom/android/server/ibs/sqd/IbsQuickDim;->mLock:Ljava/lang/Object;

    .line 19
    .line 20
    monitor-enter p1

    .line 21
    :try_start_0
    iget-object p2, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$IntentReceiver;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    .line 22
    .line 23
    iput-boolean v2, p2, Lcom/android/server/ibs/sqd/IbsQuickDim;->mScreenOn:Z

    .line 24
    .line 25
    invoke-virtual {p2}, Lcom/android/server/ibs/sqd/IbsQuickDim;->quitDimMode()V

    .line 26
    .line 27
    .line 28
    iget-object p2, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$IntentReceiver;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    .line 29
    .line 30
    iget-object p2, p2, Lcom/android/server/ibs/sqd/IbsQuickDim;->mQkDimHandler:Lcom/android/server/ibs/sqd/IbsQuickDim$qkDimHandler;

    .line 31
    .line 32
    invoke-virtual {p2, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 33
    .line 34
    .line 35
    sget-boolean p2, Lcom/android/server/ibs/sqd/IbsQuickDim;->DEBUG:Z

    .line 36
    .line 37
    if-eqz p2, :cond_0

    .line 38
    .line 39
    const-string p2, "IbsQuickDim"

    .line 40
    .line 41
    const-string/jumbo v1, "screen off "

    .line 42
    .line 43
    .line 44
    invoke-static {p2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catchall_0
    move-exception p0

    .line 49
    goto :goto_1

    .line 50
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$IntentReceiver;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    .line 51
    .line 52
    iput v0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mQuickDimMode:I

    .line 53
    .line 54
    monitor-exit p1

    .line 55
    goto/16 :goto_5

    .line 56
    .line 57
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    throw p0

    .line 59
    :cond_1
    const-string p1, "android.intent.action.SCREEN_ON"

    .line 60
    .line 61
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    const/4 v3, 0x1

    .line 70
    if-eqz p1, :cond_2

    .line 71
    .line 72
    iget-object p0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$IntentReceiver;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    .line 73
    .line 74
    iput-boolean v3, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mScreenOn:Z

    .line 75
    .line 76
    goto/16 :goto_5

    .line 77
    .line 78
    :cond_2
    const-string p1, "android.intent.action.ACTION_POWER_CONNECTED"

    .line 79
    .line 80
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    if-eqz p1, :cond_4

    .line 89
    .line 90
    sget-boolean p1, Lcom/android/server/ibs/sqd/IbsQuickDim;->DEBUG:Z

    .line 91
    .line 92
    if-eqz p1, :cond_3

    .line 93
    .line 94
    const-string p1, "IbsQuickDim"

    .line 95
    .line 96
    const-string p2, "POWER_CONNECTED"

    .line 97
    .line 98
    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    .line 100
    .line 101
    :cond_3
    iget-object p0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$IntentReceiver;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    .line 102
    .line 103
    iput-boolean v3, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mCharging:Z

    .line 104
    .line 105
    goto/16 :goto_5

    .line 106
    .line 107
    :cond_4
    const-string p1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    .line 108
    .line 109
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result p1

    .line 117
    if-eqz p1, :cond_6

    .line 118
    .line 119
    sget-boolean p1, Lcom/android/server/ibs/sqd/IbsQuickDim;->DEBUG:Z

    .line 120
    .line 121
    if-eqz p1, :cond_5

    .line 122
    .line 123
    const-string p1, "IbsQuickDim"

    .line 124
    .line 125
    const-string p2, "POWER_DISCONNECTED"

    .line 126
    .line 127
    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    .line 129
    .line 130
    :cond_5
    iget-object p1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$IntentReceiver;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    .line 131
    .line 132
    iput-boolean v2, p1, Lcom/android/server/ibs/sqd/IbsQuickDim;->mCharging:Z

    .line 133
    .line 134
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 135
    .line 136
    .line 137
    move-result-wide v0

    .line 138
    iput-wide v0, p1, Lcom/android/server/ibs/sqd/IbsQuickDim;->mChargingFinishTime:J

    .line 139
    .line 140
    iget-object p0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$IntentReceiver;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    .line 141
    .line 142
    const/4 p1, 0x0

    .line 143
    iput p1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mSQDPowerSave:F

    .line 144
    .line 145
    goto/16 :goto_5

    .line 146
    .line 147
    :cond_6
    const-string/jumbo p1, "com.samsung.server.PowerManagerService.action.USER_ACTIVITY"

    .line 148
    .line 149
    .line 150
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    move-result p1

    .line 158
    if-eqz p1, :cond_c

    .line 159
    .line 160
    const-string/jumbo p1, "status"

    .line 161
    .line 162
    .line 163
    const/4 v2, -0x1

    .line 164
    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 165
    .line 166
    .line 167
    move-result p1

    .line 168
    iget-object p0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$IntentReceiver;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    .line 169
    .line 170
    const-string p2, "BroadcastReceiver flag = "

    .line 171
    .line 172
    iget-object v4, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mLock:Ljava/lang/Object;

    .line 173
    .line 174
    monitor-enter v4

    .line 175
    :try_start_1
    sget-boolean v5, Lcom/android/server/ibs/sqd/IbsQuickDim;->DEBUG:Z

    .line 176
    .line 177
    if-eqz v5, :cond_7

    .line 178
    .line 179
    const-string v6, "IbsQuickDim"

    .line 180
    .line 181
    new-instance v7, Ljava/lang/StringBuilder;

    .line 182
    .line 183
    invoke-direct {v7, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object p2

    .line 193
    invoke-static {v6, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    .line 195
    .line 196
    goto :goto_2

    .line 197
    :catchall_1
    move-exception p0

    .line 198
    goto :goto_4

    .line 199
    :cond_7
    :goto_2
    if-ne p1, v0, :cond_9

    .line 200
    .line 201
    invoke-virtual {p0}, Lcom/android/server/ibs/sqd/IbsQuickDim;->removeAllmessage()V

    .line 202
    .line 203
    .line 204
    if-eqz v5, :cond_8

    .line 205
    .line 206
    const-string p1, "IbsQuickDim"

    .line 207
    .line 208
    const-string p2, "PMS set dim"

    .line 209
    .line 210
    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    .line 212
    .line 213
    :cond_8
    iput v3, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mQuickDimMode:I

    .line 214
    .line 215
    goto :goto_3

    .line 216
    :cond_9
    if-ne p1, v3, :cond_b

    .line 217
    .line 218
    invoke-virtual {p0}, Lcom/android/server/ibs/sqd/IbsQuickDim;->quitDimMode()V

    .line 219
    .line 220
    .line 221
    invoke-virtual {p0}, Lcom/android/server/ibs/sqd/IbsQuickDim;->removeAllmessage()V

    .line 222
    .line 223
    .line 224
    iput v2, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mLastFPS:I

    .line 225
    .line 226
    if-eqz v5, :cond_a

    .line 227
    .line 228
    const-string p1, "IbsQuickDim"

    .line 229
    .line 230
    const-string/jumbo p2, "pause check dim"

    .line 231
    .line 232
    .line 233
    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    .line 235
    .line 236
    :cond_a
    iput v1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mQuickDimMode:I

    .line 237
    .line 238
    :cond_b
    :goto_3
    monitor-exit v4

    .line 239
    goto :goto_5

    .line 240
    :goto_4
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 241
    throw p0

    .line 242
    :cond_c
    const-string p1, "android.intent.action.BOOT_COMPLETED"

    .line 243
    .line 244
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 249
    .line 250
    .line 251
    move-result p1

    .line 252
    if-eqz p1, :cond_d

    .line 253
    .line 254
    iget-object p0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$IntentReceiver;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    .line 255
    .line 256
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 257
    .line 258
    .line 259
    const-string p1, "IbsQuickDim"

    .line 260
    .line 261
    const-string/jumbo p2, "handleBootComplete"

    .line 262
    .line 263
    .line 264
    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    .line 266
    .line 267
    iget-object p1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mQkDimHandler:Lcom/android/server/ibs/sqd/IbsQuickDim$qkDimHandler;

    .line 268
    .line 269
    new-instance p2, Lcom/android/server/ibs/sqd/IbsQuickDim$$ExternalSyntheticLambda0;

    .line 270
    .line 271
    const/4 v0, 0x1

    .line 272
    invoke-direct {p2, p0, v0}, Lcom/android/server/ibs/sqd/IbsQuickDim$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/ibs/sqd/IbsQuickDim;I)V

    .line 273
    .line 274
    .line 275
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 276
    .line 277
    .line 278
    goto :goto_5

    .line 279
    :cond_d
    const-string p1, "android.intent.action.PACKAGE_FULLY_REMOVED"

    .line 280
    .line 281
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v0

    .line 285
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 286
    .line 287
    .line 288
    move-result p1

    .line 289
    if-eqz p1, :cond_e

    .line 290
    .line 291
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 292
    .line 293
    .line 294
    move-result-object p1

    .line 295
    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    .line 296
    .line 297
    .line 298
    move-result-object p1

    .line 299
    new-instance p2, Lcom/android/server/ibs/sqd/IbsQuickDim$$ExternalSyntheticLambda1;

    .line 300
    .line 301
    const/4 v0, 0x1

    .line 302
    invoke-direct {p2, v0, p0}, Lcom/android/server/ibs/sqd/IbsQuickDim$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 303
    .line 304
    .line 305
    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 306
    .line 307
    .line 308
    :cond_e
    :goto_5
    return-void
.end method
