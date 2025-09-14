.class public final Lcom/android/server/RealTimeTokenService$2;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/RealTimeTokenService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/RealTimeTokenService;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/RealTimeTokenService$2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/RealTimeTokenService$2;->this$0:Lcom/android/server/RealTimeTokenService;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "RealTimeTokenService"

    .line 3
    .line 4
    iget v2, p0, Lcom/android/server/RealTimeTokenService$2;->$r8$classId:I

    .line 5
    .line 6
    packed-switch v2, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    const-string p2, "Boot Completed Receiver"

    .line 10
    .line 11
    invoke-static {v1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    iget-object p2, p0, Lcom/android/server/RealTimeTokenService$2;->this$0:Lcom/android/server/RealTimeTokenService;

    .line 15
    .line 16
    sget-object v1, Lcom/android/server/RealTimeTokenService;->mContext:Landroid/content/Context;

    .line 17
    .line 18
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 22
    .line 23
    .line 24
    move-result-wide v1

    .line 25
    iput-wide v1, p2, Lcom/android/server/RealTimeTokenService;->currentTime:J

    .line 26
    .line 27
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 28
    .line 29
    .line 30
    move-result-wide v1

    .line 31
    iput-wide v1, p2, Lcom/android/server/RealTimeTokenService;->elapsedTime:J

    .line 32
    .line 33
    iget-object p2, p0, Lcom/android/server/RealTimeTokenService$2;->this$0:Lcom/android/server/RealTimeTokenService;

    .line 34
    .line 35
    iget-wide v1, p2, Lcom/android/server/RealTimeTokenService;->currentTime:J

    .line 36
    .line 37
    iget-wide v3, p2, Lcom/android/server/RealTimeTokenService;->elapsedTime:J

    .line 38
    .line 39
    sub-long/2addr v1, v3

    .line 40
    iput-wide v1, p2, Lcom/android/server/RealTimeTokenService;->bootingTime:J

    .line 41
    .line 42
    invoke-static {p2, p1}, Lcom/android/server/RealTimeTokenService;->-$$Nest$misNetworkAvailable(Lcom/android/server/RealTimeTokenService;Landroid/content/Context;)Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-nez p1, :cond_1

    .line 47
    .line 48
    :try_start_0
    iget-object p1, p0, Lcom/android/server/RealTimeTokenService$2;->this$0:Lcom/android/server/RealTimeTokenService;

    .line 49
    .line 50
    iget-object p1, p1, Lcom/android/server/RealTimeTokenService;->mTimerObserve:Ljava/util/Timer;

    .line 51
    .line 52
    if-eqz p1, :cond_0

    .line 53
    .line 54
    invoke-virtual {p1}, Ljava/util/Timer;->cancel()V

    .line 55
    .line 56
    .line 57
    iget-object p1, p0, Lcom/android/server/RealTimeTokenService$2;->this$0:Lcom/android/server/RealTimeTokenService;

    .line 58
    .line 59
    iput-object v0, p1, Lcom/android/server/RealTimeTokenService;->mTimerObserve:Ljava/util/Timer;

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :catch_0
    move-exception p0

    .line 63
    goto :goto_1

    .line 64
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/android/server/RealTimeTokenService$2;->this$0:Lcom/android/server/RealTimeTokenService;

    .line 65
    .line 66
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    new-instance p2, Lcom/android/server/RealTimeTokenService$1;

    .line 70
    .line 71
    invoke-direct {p2, p1}, Lcom/android/server/RealTimeTokenService$1;-><init>(Lcom/android/server/RealTimeTokenService;)V

    .line 72
    .line 73
    .line 74
    iput-object p2, p1, Lcom/android/server/RealTimeTokenService;->mTimerTask:Lcom/android/server/RealTimeTokenService$1;

    .line 75
    .line 76
    iget-object p1, p0, Lcom/android/server/RealTimeTokenService$2;->this$0:Lcom/android/server/RealTimeTokenService;

    .line 77
    .line 78
    new-instance p2, Ljava/util/Timer;

    .line 79
    .line 80
    invoke-direct {p2}, Ljava/util/Timer;-><init>()V

    .line 81
    .line 82
    .line 83
    iput-object p2, p1, Lcom/android/server/RealTimeTokenService;->mTimerObserve:Ljava/util/Timer;

    .line 84
    .line 85
    iget-object p0, p0, Lcom/android/server/RealTimeTokenService$2;->this$0:Lcom/android/server/RealTimeTokenService;

    .line 86
    .line 87
    iget-object v0, p0, Lcom/android/server/RealTimeTokenService;->mTimerObserve:Ljava/util/Timer;

    .line 88
    .line 89
    iget-object v1, p0, Lcom/android/server/RealTimeTokenService;->mTimerTask:Lcom/android/server/RealTimeTokenService$1;

    .line 90
    .line 91
    const-wide/16 v2, 0x0

    .line 92
    .line 93
    const-wide/32 v4, 0x1499700

    .line 94
    .line 95
    .line 96
    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    .line 98
    .line 99
    goto :goto_2

    .line 100
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 101
    .line 102
    .line 103
    :cond_1
    :goto_2
    return-void

    .line 104
    :pswitch_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    const-string p1, "Time has changed"

    .line 108
    .line 109
    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    .line 111
    .line 112
    iget-object p1, p0, Lcom/android/server/RealTimeTokenService$2;->this$0:Lcom/android/server/RealTimeTokenService;

    .line 113
    .line 114
    sget-object p2, Lcom/android/server/RealTimeTokenService;->mContext:Landroid/content/Context;

    .line 115
    .line 116
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 117
    .line 118
    .line 119
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 120
    .line 121
    .line 122
    move-result-wide v2

    .line 123
    iput-wide v2, p1, Lcom/android/server/RealTimeTokenService;->currentTime:J

    .line 124
    .line 125
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 126
    .line 127
    .line 128
    move-result-wide v2

    .line 129
    iput-wide v2, p1, Lcom/android/server/RealTimeTokenService;->elapsedTime:J

    .line 130
    .line 131
    iget-object p1, p0, Lcom/android/server/RealTimeTokenService$2;->this$0:Lcom/android/server/RealTimeTokenService;

    .line 132
    .line 133
    iget-wide v2, p1, Lcom/android/server/RealTimeTokenService;->bootingTime:J

    .line 134
    .line 135
    iget-wide p1, p1, Lcom/android/server/RealTimeTokenService;->elapsedTime:J

    .line 136
    .line 137
    add-long/2addr v2, p1

    .line 138
    const-wide/16 p1, 0x3e8

    .line 139
    .line 140
    div-long/2addr v2, p1

    .line 141
    const-string/jumbo p1, "setUserTime: "

    .line 142
    .line 143
    .line 144
    const-string/jumbo p2, "|"

    .line 145
    .line 146
    .line 147
    invoke-static {p1, v2, v3, p2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    iget-object v0, p0, Lcom/android/server/RealTimeTokenService$2;->this$0:Lcom/android/server/RealTimeTokenService;

    .line 152
    .line 153
    iget-wide v4, v0, Lcom/android/server/RealTimeTokenService;->bootingTime:J

    .line 154
    .line 155
    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    iget-object p2, p0, Lcom/android/server/RealTimeTokenService$2;->this$0:Lcom/android/server/RealTimeTokenService;

    .line 162
    .line 163
    iget-wide v4, p2, Lcom/android/server/RealTimeTokenService;->elapsedTime:J

    .line 164
    .line 165
    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    .line 174
    .line 175
    iget-object p0, p0, Lcom/android/server/RealTimeTokenService$2;->this$0:Lcom/android/server/RealTimeTokenService;

    .line 176
    .line 177
    invoke-virtual {p0, v2, v3}, Lcom/android/server/RealTimeTokenService;->setUserTime(J)I

    .line 178
    .line 179
    .line 180
    move-result p0

    .line 181
    if-gez p0, :cond_2

    .line 182
    .line 183
    const-string/jumbo p1, "setUserTime failed: "

    .line 184
    .line 185
    .line 186
    invoke-static {p0, p1, v1}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    :cond_2
    return-void

    .line 190
    :pswitch_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object p2

    .line 194
    const-string v2, "Broadcast NetWork received:"

    .line 195
    .line 196
    invoke-static {v2, p2, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    :try_start_1
    iget-object p2, p0, Lcom/android/server/RealTimeTokenService$2;->this$0:Lcom/android/server/RealTimeTokenService;

    .line 200
    .line 201
    invoke-static {p2, p1}, Lcom/android/server/RealTimeTokenService;->-$$Nest$misNetworkAvailable(Lcom/android/server/RealTimeTokenService;Landroid/content/Context;)Z

    .line 202
    .line 203
    .line 204
    move-result p1

    .line 205
    if-nez p1, :cond_3

    .line 206
    .line 207
    iget-object p1, p0, Lcom/android/server/RealTimeTokenService$2;->this$0:Lcom/android/server/RealTimeTokenService;

    .line 208
    .line 209
    invoke-virtual {p1}, Lcom/android/server/RealTimeTokenService;->getActiveTokenNumber()I

    .line 210
    .line 211
    .line 212
    move-result p1

    .line 213
    if-lez p1, :cond_3

    .line 214
    .line 215
    const-string p1, "Start RTTS Time Observer"

    .line 216
    .line 217
    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    .line 219
    .line 220
    iget-object p1, p0, Lcom/android/server/RealTimeTokenService$2;->this$0:Lcom/android/server/RealTimeTokenService;

    .line 221
    .line 222
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 223
    .line 224
    .line 225
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 226
    .line 227
    .line 228
    move-result-wide v0

    .line 229
    iput-wide v0, p1, Lcom/android/server/RealTimeTokenService;->currentTime:J

    .line 230
    .line 231
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 232
    .line 233
    .line 234
    move-result-wide v0

    .line 235
    iput-wide v0, p1, Lcom/android/server/RealTimeTokenService;->elapsedTime:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 236
    .line 237
    :try_start_2
    iget-object p1, p0, Lcom/android/server/RealTimeTokenService$2;->this$0:Lcom/android/server/RealTimeTokenService;

    .line 238
    .line 239
    iget-object p2, p1, Lcom/android/server/RealTimeTokenService;->mTimerObserve:Ljava/util/Timer;

    .line 240
    .line 241
    if-nez p2, :cond_5

    .line 242
    .line 243
    new-instance p2, Lcom/android/server/RealTimeTokenService$1;

    .line 244
    .line 245
    invoke-direct {p2, p1}, Lcom/android/server/RealTimeTokenService$1;-><init>(Lcom/android/server/RealTimeTokenService;)V

    .line 246
    .line 247
    .line 248
    iput-object p2, p1, Lcom/android/server/RealTimeTokenService;->mTimerTask:Lcom/android/server/RealTimeTokenService$1;

    .line 249
    .line 250
    iget-object p1, p0, Lcom/android/server/RealTimeTokenService$2;->this$0:Lcom/android/server/RealTimeTokenService;

    .line 251
    .line 252
    new-instance p2, Ljava/util/Timer;

    .line 253
    .line 254
    invoke-direct {p2}, Ljava/util/Timer;-><init>()V

    .line 255
    .line 256
    .line 257
    iput-object p2, p1, Lcom/android/server/RealTimeTokenService;->mTimerObserve:Ljava/util/Timer;

    .line 258
    .line 259
    iget-object p0, p0, Lcom/android/server/RealTimeTokenService$2;->this$0:Lcom/android/server/RealTimeTokenService;

    .line 260
    .line 261
    iget-object v0, p0, Lcom/android/server/RealTimeTokenService;->mTimerObserve:Ljava/util/Timer;

    .line 262
    .line 263
    iget-object v1, p0, Lcom/android/server/RealTimeTokenService;->mTimerTask:Lcom/android/server/RealTimeTokenService$1;

    .line 264
    .line 265
    const-wide/16 v2, 0x0

    .line 266
    .line 267
    const-wide/32 v4, 0x1499700

    .line 268
    .line 269
    .line 270
    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 271
    .line 272
    .line 273
    goto :goto_5

    .line 274
    :catch_1
    move-exception p0

    .line 275
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 276
    .line 277
    .line 278
    goto :goto_5

    .line 279
    :catch_2
    move-exception p0

    .line 280
    goto :goto_4

    .line 281
    :cond_3
    const-string p1, "Stop RTTS Time Observer"

    .line 282
    .line 283
    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 284
    .line 285
    .line 286
    :try_start_4
    iget-object p1, p0, Lcom/android/server/RealTimeTokenService$2;->this$0:Lcom/android/server/RealTimeTokenService;

    .line 287
    .line 288
    iget-object p1, p1, Lcom/android/server/RealTimeTokenService;->mTimerObserve:Ljava/util/Timer;

    .line 289
    .line 290
    if-eqz p1, :cond_4

    .line 291
    .line 292
    invoke-virtual {p1}, Ljava/util/Timer;->cancel()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 293
    .line 294
    .line 295
    goto :goto_3

    .line 296
    :catch_3
    move-exception p1

    .line 297
    :try_start_5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 298
    .line 299
    .line 300
    :cond_4
    :goto_3
    iget-object p0, p0, Lcom/android/server/RealTimeTokenService$2;->this$0:Lcom/android/server/RealTimeTokenService;

    .line 301
    .line 302
    iput-object v0, p0, Lcom/android/server/RealTimeTokenService;->mTimerObserve:Ljava/util/Timer;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 303
    .line 304
    goto :goto_5

    .line 305
    :goto_4
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 306
    .line 307
    .line 308
    :cond_5
    :goto_5
    return-void

    .line 309
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
