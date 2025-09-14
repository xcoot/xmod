.class public final Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;


# direct methods
.method public constructor <init>(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeReceiver;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    .line 1
    const/4 p1, 0x5

    .line 2
    const/4 v0, 0x6

    .line 3
    if-eqz p2, :cond_9

    .line 5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    if-nez v1, :cond_0

    .line 11
    goto/16 :goto_1

    .line 13
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    const-string v2, "action is >> "

    .line 17
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    move-result-object v1

    .line 31
    const-string v2, "SleepModePolicyController"

    .line 33
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    const-string/jumbo v3, "sendCheckStatusMessage"

    .line 46
    const/16 v4, 0x9

    .line 48
    const-string/jumbo v5, "sendExitSleepModeMessage"

    .line 51
    const/4 v6, -0x1

    .line 52
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 55
    move-result v7

    .line 56
    sparse-switch v7, :sswitch_data_0

    .line 59
    goto/16 :goto_0

    .line 61
    :sswitch_0
    const-string v7, "android.intent.action.REBOOT"

    .line 63
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    move-result v1

    .line 67
    if-nez v1, :cond_1

    .line 69
    goto :goto_0

    .line 70
    :cond_1
    const/4 v6, 0x7

    .line 71
    goto :goto_0

    .line 72
    :sswitch_1
    const-string v7, "android.intent.action.ACTION_SHUTDOWN"

    .line 74
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    move-result v1

    .line 78
    if-nez v1, :cond_2

    .line 80
    goto :goto_0

    .line 81
    :cond_2
    move v6, v0

    .line 82
    goto :goto_0

    .line 83
    :sswitch_2
    const-string v7, "android.intent.action.PACKAGE_FULLY_REMOVED"

    .line 85
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 88
    move-result v1

    .line 89
    if-nez v1, :cond_3

    .line 91
    goto :goto_0

    .line 92
    :cond_3
    move v6, p1

    .line 93
    goto :goto_0

    .line 94
    :sswitch_3
    const-string v7, "android.intent.action.ACTION_POWER_CONNECTED"

    .line 96
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 99
    move-result v1

    .line 100
    if-nez v1, :cond_4

    .line 102
    goto :goto_0

    .line 103
    :cond_4
    const/4 v6, 0x4

    .line 104
    goto :goto_0

    .line 105
    :sswitch_4
    const-string v7, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    .line 107
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 110
    move-result v1

    .line 111
    if-nez v1, :cond_5

    .line 113
    goto :goto_0

    .line 114
    :cond_5
    const/4 v6, 0x3

    .line 115
    goto :goto_0

    .line 116
    :sswitch_5
    const-string v7, "android.intent.action.BOOT_COMPLETED"

    .line 118
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 121
    move-result v1

    .line 122
    if-nez v1, :cond_6

    .line 124
    goto :goto_0

    .line 125
    :cond_6
    const/4 v6, 0x2

    .line 126
    goto :goto_0

    .line 127
    :sswitch_6
    const-string v7, "android.intent.action.TIME_SET"

    .line 129
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 132
    move-result v1

    .line 133
    if-nez v1, :cond_7

    .line 135
    goto :goto_0

    .line 136
    :cond_7
    const/4 v6, 0x1

    .line 137
    goto :goto_0

    .line 138
    :sswitch_7
    const-string v7, "android.intent.action.SCREEN_ON"

    .line 140
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 143
    move-result v1

    .line 144
    if-nez v1, :cond_8

    .line 146
    goto :goto_0

    .line 147
    :cond_8
    const/4 v6, 0x0

    .line 148
    :goto_0
    packed-switch v6, :pswitch_data_0

    .line 151
    goto/16 :goto_1

    .line 153
    :pswitch_0
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeReceiver;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    .line 155
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 158
    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mHandler:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeHandler;

    .line 163
    if-eqz p0, :cond_9

    .line 165
    invoke-virtual {p0, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 168
    move-result-object p1

    .line 169
    const-string/jumbo p2, "reason_reboot"

    .line 172
    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 174
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 177
    goto/16 :goto_1

    .line 179
    :pswitch_1
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeReceiver;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    .line 181
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 184
    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mHandler:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeHandler;

    .line 189
    if-eqz p0, :cond_9

    .line 191
    invoke-virtual {p0, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 194
    move-result-object p1

    .line 195
    const-string/jumbo p2, "reason_shutdown"

    .line 198
    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 200
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 203
    goto/16 :goto_1

    .line 205
    :pswitch_2
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeReceiver;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    .line 207
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 210
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 213
    move-result-object p1

    .line 214
    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    .line 217
    move-result-object p1

    .line 218
    new-instance p2, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$$ExternalSyntheticLambda2;

    .line 220
    invoke-direct {p2, p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;)V

    .line 223
    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 226
    goto/16 :goto_1

    .line 228
    :pswitch_3
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeReceiver;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    .line 230
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 233
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mHandler:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeHandler;

    .line 238
    if-eqz p0, :cond_9

    .line 240
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 243
    move-result-object p1

    .line 244
    const-string/jumbo p2, "reason_charging"

    .line 247
    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 249
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 252
    goto :goto_1

    .line 253
    :pswitch_4
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeReceiver;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    .line 255
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 258
    const-string/jumbo p2, "sendIdleChangedMessage"

    .line 261
    invoke-static {v2, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mHandler:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeHandler;

    .line 266
    if-eqz p0, :cond_9

    .line 268
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 271
    move-result-object p1

    .line 272
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 275
    goto :goto_1

    .line 276
    :pswitch_5
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeReceiver;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    .line 278
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 281
    const-string/jumbo p1, "sendBootCompleteMessage"

    .line 284
    invoke-static {v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mHandler:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeHandler;

    .line 289
    if-eqz p0, :cond_9

    .line 291
    const/16 p1, 0xe

    .line 293
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 296
    move-result-object p1

    .line 297
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 300
    goto :goto_1

    .line 301
    :pswitch_6
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeReceiver;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    .line 303
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 306
    const-string/jumbo p1, "sendTimeChangedMessage"

    .line 309
    invoke-static {v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mHandler:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeHandler;

    .line 314
    if-eqz p0, :cond_9

    .line 316
    const/16 p1, 0x8

    .line 318
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 321
    move-result-object p1

    .line 322
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 325
    goto :goto_1

    .line 326
    :pswitch_7
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeReceiver;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    .line 328
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 331
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mHandler:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeHandler;

    .line 336
    if-eqz p0, :cond_9

    .line 338
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 341
    move-result-object p1

    .line 342
    const-string/jumbo p2, "reason_screen_on"

    .line 345
    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 347
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 350
    :cond_9
    :goto_1
    return-void

    .line 351
    :sswitch_data_0
    .sparse-switch
        -0x56ac2893 -> :sswitch_7
        0x1e1f7f95 -> :sswitch_6
        0x2f94f923 -> :sswitch_5
        0x33e5d967 -> :sswitch_4
        0x3cbf870b -> :sswitch_3
        0x5e33a4ad -> :sswitch_2
        0x741706da -> :sswitch_1
        0x79950caa -> :sswitch_0
    .end sparse-switch

    .line 385
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
