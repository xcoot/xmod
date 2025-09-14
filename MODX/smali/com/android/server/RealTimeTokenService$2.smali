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

    .line 3
    iput-object p1, p0, Lcom/android/server/RealTimeTokenService$2;->this$0:Lcom/android/server/RealTimeTokenService;

    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

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

    .line 4
    iget v2, p0, Lcom/android/server/RealTimeTokenService$2;->$r8$classId:I

    .line 6
    packed-switch v2, :pswitch_data_0

    .line 9
    const-string p2, "Boot Completed Receiver"

    .line 11
    invoke-static {v1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    iget-object p2, p0, Lcom/android/server/RealTimeTokenService$2;->this$0:Lcom/android/server/RealTimeTokenService;

    .line 16
    sget-object v1, Lcom/android/server/RealTimeTokenService;->mContext:Landroid/content/Context;

    .line 18
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 24
    move-result-wide v1

    .line 25
    iput-wide v1, p2, Lcom/android/server/RealTimeTokenService;->currentTime:J

    .line 27
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 30
    move-result-wide v1

    .line 31
    iput-wide v1, p2, Lcom/android/server/RealTimeTokenService;->elapsedTime:J

    .line 33
    iget-object p2, p0, Lcom/android/server/RealTimeTokenService$2;->this$0:Lcom/android/server/RealTimeTokenService;

    .line 35
    iget-wide v1, p2, Lcom/android/server/RealTimeTokenService;->currentTime:J

    .line 37
    iget-wide v3, p2, Lcom/android/server/RealTimeTokenService;->elapsedTime:J

    .line 39
    sub-long/2addr v1, v3

    .line 40
    iput-wide v1, p2, Lcom/android/server/RealTimeTokenService;->bootingTime:J

    .line 42
    invoke-static {p2, p1}, Lcom/android/server/RealTimeTokenService;->-$$Nest$misNetworkAvailable(Lcom/android/server/RealTimeTokenService;Landroid/content/Context;)Z

    .line 45
    move-result p1

    .line 46
    if-nez p1, :cond_1

    .line 48
    :try_start_0
    iget-object p1, p0, Lcom/android/server/RealTimeTokenService$2;->this$0:Lcom/android/server/RealTimeTokenService;

    .line 50
    iget-object p1, p1, Lcom/android/server/RealTimeTokenService;->mTimerObserve:Ljava/util/Timer;

    .line 52
    if-eqz p1, :cond_0

    .line 54
    invoke-virtual {p1}, Ljava/util/Timer;->cancel()V

    .line 57
    iget-object p1, p0, Lcom/android/server/RealTimeTokenService$2;->this$0:Lcom/android/server/RealTimeTokenService;

    .line 59
    iput-object v0, p1, Lcom/android/server/RealTimeTokenService;->mTimerObserve:Ljava/util/Timer;

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

    .line 66
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    new-instance p2, Lcom/android/server/RealTimeTokenService$1;

    .line 71
    invoke-direct {p2, p1}, Lcom/android/server/RealTimeTokenService$1;-><init>(Lcom/android/server/RealTimeTokenService;)V

    .line 74
    iput-object p2, p1, Lcom/android/server/RealTimeTokenService;->mTimerTask:Lcom/android/server/RealTimeTokenService$1;

    .line 76
    iget-object p1, p0, Lcom/android/server/RealTimeTokenService$2;->this$0:Lcom/android/server/RealTimeTokenService;

    .line 78
    new-instance p2, Ljava/util/Timer;

    .line 80
    invoke-direct {p2}, Ljava/util/Timer;-><init>()V

    .line 83
    iput-object p2, p1, Lcom/android/server/RealTimeTokenService;->mTimerObserve:Ljava/util/Timer;

    .line 85
    iget-object p0, p0, Lcom/android/server/RealTimeTokenService$2;->this$0:Lcom/android/server/RealTimeTokenService;

    .line 87
    iget-object v0, p0, Lcom/android/server/RealTimeTokenService;->mTimerObserve:Ljava/util/Timer;

    .line 89
    iget-object v1, p0, Lcom/android/server/RealTimeTokenService;->mTimerTask:Lcom/android/server/RealTimeTokenService$1;

    .line 91
    const-wide/16 v2, 0x0

    .line 93
    const-wide/32 v4, 0x1499700

    .line 96
    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    goto :goto_2

    .line 100
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 103
    :cond_1
    :goto_2
    return-void

    .line 104
    :pswitch_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 107
    const-string p1, "Time has changed"

    .line 109
    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object p1, p0, Lcom/android/server/RealTimeTokenService$2;->this$0:Lcom/android/server/RealTimeTokenService;

    .line 114
    sget-object p2, Lcom/android/server/RealTimeTokenService;->mContext:Landroid/content/Context;

    .line 116
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 119
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 122
    move-result-wide v2

    .line 123
    iput-wide v2, p1, Lcom/android/server/RealTimeTokenService;->currentTime:J

    .line 125
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 128
    move-result-wide v2

    .line 129
    iput-wide v2, p1, Lcom/android/server/RealTimeTokenService;->elapsedTime:J

    .line 131
    iget-object p1, p0, Lcom/android/server/RealTimeTokenService$2;->this$0:Lcom/android/server/RealTimeTokenService;

    .line 133
    iget-wide v2, p1, Lcom/android/server/RealTimeTokenService;->bootingTime:J

    .line 135
    iget-wide p1, p1, Lcom/android/server/RealTimeTokenService;->elapsedTime:J

    .line 137
    add-long/2addr v2, p1

    .line 138
    const-wide/16 p1, 0x3e8

    .line 140
    div-long/2addr v2, p1

    .line 141
    const-string/jumbo p1, "setUserTime: "

    .line 144
    const-string/jumbo p2, "|"

    .line 147
    invoke-static {p1, v2, v3, p2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    move-result-object p1

    .line 151
    iget-object v0, p0, Lcom/android/server/RealTimeTokenService$2;->this$0:Lcom/android/server/RealTimeTokenService;

    .line 153
    iget-wide v4, v0, Lcom/android/server/RealTimeTokenService;->bootingTime:J

    .line 155
    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    iget-object p2, p0, Lcom/android/server/RealTimeTokenService$2;->this$0:Lcom/android/server/RealTimeTokenService;

    .line 163
    iget-wide v4, p2, Lcom/android/server/RealTimeTokenService;->elapsedTime:J

    .line 165
    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 168
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 171
    move-result-object p1

    .line 172
    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-object p0, p0, Lcom/android/server/RealTimeTokenService$2;->this$0:Lcom/android/server/RealTimeTokenService;

    .line 177
    invoke-virtual {p0, v2, v3}, Lcom/android/server/RealTimeTokenService;->setUserTime(J)I

    .line 180
    move-result p0

    .line 181
    if-gez p0, :cond_2

    .line 183
    const-string/jumbo p1, "setUserTime failed: "

    .line 186
    invoke-static {p0, p1, v1}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 189
    :cond_2
    return-void

    .line 190
    :pswitch_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 193
    move-result-object p2

    .line 194
    const-string v2, "Broadcast NetWork received:"

    .line 196
    invoke-static {v2, p2, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    :try_start_1
    iget-object p2, p0, Lcom/android/server/RealTimeTokenService$2;->this$0:Lcom/android/server/RealTimeTokenService;

    .line 201
    invoke-static {p2, p1}, Lcom/android/server/RealTimeTokenService;->-$$Nest$misNetworkAvailable(Lcom/android/server/RealTimeTokenService;Landroid/content/Context;)Z

    .line 204
    move-result p1

    .line 205
    if-nez p1, :cond_3

    .line 207
    iget-object p1, p0, Lcom/android/server/RealTimeTokenService$2;->this$0:Lcom/android/server/RealTimeTokenService;

    .line 209
    invoke-virtual {p1}, Lcom/android/server/RealTimeTokenService;->getActiveTokenNumber()I

    .line 212
    move-result p1

    .line 213
    if-lez p1, :cond_3

    .line 215
    const-string p1, "Start RTTS Time Observer"

    .line 217
    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object p1, p0, Lcom/android/server/RealTimeTokenService$2;->this$0:Lcom/android/server/RealTimeTokenService;

    .line 222
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 225
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 228
    move-result-wide v0

    .line 229
    iput-wide v0, p1, Lcom/android/server/RealTimeTokenService;->currentTime:J

    .line 231
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 234
    move-result-wide v0

    .line 235
    iput-wide v0, p1, Lcom/android/server/RealTimeTokenService;->elapsedTime:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 237
    :try_start_2
    iget-object p1, p0, Lcom/android/server/RealTimeTokenService$2;->this$0:Lcom/android/server/RealTimeTokenService;

    .line 239
    iget-object p2, p1, Lcom/android/server/RealTimeTokenService;->mTimerObserve:Ljava/util/Timer;

    .line 241
    if-nez p2, :cond_5

    .line 243
    new-instance p2, Lcom/android/server/RealTimeTokenService$1;

    .line 245
    invoke-direct {p2, p1}, Lcom/android/server/RealTimeTokenService$1;-><init>(Lcom/android/server/RealTimeTokenService;)V

    .line 248
    iput-object p2, p1, Lcom/android/server/RealTimeTokenService;->mTimerTask:Lcom/android/server/RealTimeTokenService$1;

    .line 250
    iget-object p1, p0, Lcom/android/server/RealTimeTokenService$2;->this$0:Lcom/android/server/RealTimeTokenService;

    .line 252
    new-instance p2, Ljava/util/Timer;

    .line 254
    invoke-direct {p2}, Ljava/util/Timer;-><init>()V

    .line 257
    iput-object p2, p1, Lcom/android/server/RealTimeTokenService;->mTimerObserve:Ljava/util/Timer;

    .line 259
    iget-object p0, p0, Lcom/android/server/RealTimeTokenService$2;->this$0:Lcom/android/server/RealTimeTokenService;

    .line 261
    iget-object v0, p0, Lcom/android/server/RealTimeTokenService;->mTimerObserve:Ljava/util/Timer;

    .line 263
    iget-object v1, p0, Lcom/android/server/RealTimeTokenService;->mTimerTask:Lcom/android/server/RealTimeTokenService$1;

    .line 265
    const-wide/16 v2, 0x0

    .line 267
    const-wide/32 v4, 0x1499700

    .line 270
    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 273
    goto :goto_5

    .line 274
    :catch_1
    move-exception p0

    .line 275
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

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

    .line 283
    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 286
    :try_start_4
    iget-object p1, p0, Lcom/android/server/RealTimeTokenService$2;->this$0:Lcom/android/server/RealTimeTokenService;

    .line 288
    iget-object p1, p1, Lcom/android/server/RealTimeTokenService;->mTimerObserve:Ljava/util/Timer;

    .line 290
    if-eqz p1, :cond_4

    .line 292
    invoke-virtual {p1}, Ljava/util/Timer;->cancel()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 295
    goto :goto_3

    .line 296
    :catch_3
    move-exception p1

    .line 297
    :try_start_5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 300
    :cond_4
    :goto_3
    iget-object p0, p0, Lcom/android/server/RealTimeTokenService$2;->this$0:Lcom/android/server/RealTimeTokenService;

    .line 302
    iput-object v0, p0, Lcom/android/server/RealTimeTokenService;->mTimerObserve:Ljava/util/Timer;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 304
    goto :goto_5

    .line 305
    :goto_4
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

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
