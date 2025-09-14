.class public final Lcom/android/server/power/ScreenCurtainController$DisplayAssistantHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/ScreenCurtainController;


# direct methods
.method public constructor <init>(Lcom/android/server/power/ScreenCurtainController;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/power/ScreenCurtainController$DisplayAssistantHandler;->this$0:Lcom/android/server/power/ScreenCurtainController;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 9

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eq v0, v2, :cond_5

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    if-eq v0, v2, :cond_3

    .line 9
    .line 10
    const/4 v2, 0x3

    .line 11
    if-eq v0, v2, :cond_0

    .line 12
    .line 13
    goto/16 :goto_4

    .line 14
    .line 15
    :cond_0
    iget-object p0, p0, Lcom/android/server/power/ScreenCurtainController$DisplayAssistantHandler;->this$0:Lcom/android/server/power/ScreenCurtainController;

    .line 16
    .line 17
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast p1, Ljava/lang/Integer;

    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    const-string v0, "ScreenCurtainController"

    .line 29
    .line 30
    new-instance v2, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string v3, "handleDisableScreenCurtain: "

    .line 33
    .line 34
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    packed-switch p1, :pswitch_data_0

    .line 38
    .line 39
    .line 40
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    goto :goto_0

    .line 45
    :pswitch_0
    const-string v3, "fold state"

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :pswitch_1
    const-string v3, "death"

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :pswitch_2
    const-string/jumbo v3, "pen"

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :pswitch_3
    const-string v3, "bixby"

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :pswitch_4
    const-string/jumbo v3, "screen off"

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :pswitch_5
    const-string v3, "audio"

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :pswitch_6
    const-string/jumbo v3, "notification"

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :pswitch_7
    const-string v3, "call"

    .line 70
    .line 71
    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    invoke-static {v0, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    iget-object v0, p0, Lcom/android/server/power/ScreenCurtainController;->mLock:Ljava/lang/Object;

    .line 82
    .line 83
    monitor-enter v0

    .line 84
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/power/ScreenCurtainController;->mScreenCurtainEnabled:Z

    .line 85
    .line 86
    if-eqz v2, :cond_2

    .line 87
    .line 88
    const/4 v2, 0x7

    .line 89
    if-ne p1, v2, :cond_1

    .line 90
    .line 91
    iget-object v2, p0, Lcom/android/server/power/ScreenCurtainController;->mToken:Landroid/os/IBinder;

    .line 92
    .line 93
    invoke-virtual {p0, v1, v1, v2, v1}, Lcom/android/server/power/ScreenCurtainController;->setScreenCurtainEnabledLocked(IILandroid/os/IBinder;Z)V

    .line 94
    .line 95
    .line 96
    goto :goto_1

    .line 97
    :catchall_0
    move-exception p0

    .line 98
    goto :goto_2

    .line 99
    :cond_1
    :goto_1
    iput p1, p0, Lcom/android/server/power/ScreenCurtainController;->mLastScreenCurtainDisabledReason:I

    .line 100
    .line 101
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    iget-object p1, p0, Lcom/android/server/power/ScreenCurtainController;->mServiceIntent:Landroid/content/Intent;

    .line 103
    .line 104
    const-string v0, "StopService"

    .line 105
    .line 106
    const-string/jumbo v1, "service_state"

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    .line 111
    .line 112
    iget-object p1, p0, Lcom/android/server/power/ScreenCurtainController;->mContext:Landroid/content/Context;

    .line 113
    .line 114
    iget-object p0, p0, Lcom/android/server/power/ScreenCurtainController;->mServiceIntent:Landroid/content/Intent;

    .line 115
    .line 116
    invoke-virtual {p1, p0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 117
    .line 118
    .line 119
    goto/16 :goto_4

    .line 120
    .line 121
    :cond_2
    :try_start_1
    monitor-exit v0

    .line 122
    goto/16 :goto_4

    .line 123
    .line 124
    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 125
    throw p0

    .line 126
    :cond_3
    iget-object p0, p0, Lcom/android/server/power/ScreenCurtainController$DisplayAssistantHandler;->this$0:Lcom/android/server/power/ScreenCurtainController;

    .line 127
    .line 128
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 129
    .line 130
    .line 131
    const-string p1, "ScreenCurtainController"

    .line 132
    .line 133
    const-string v0, "handleAutoEnableScreenCurtain"

    .line 134
    .line 135
    invoke-static {p1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    .line 137
    .line 138
    iget-object v0, p0, Lcom/android/server/power/ScreenCurtainController;->mLock:Ljava/lang/Object;

    .line 139
    .line 140
    monitor-enter v0

    .line 141
    :try_start_2
    iget-wide v1, p0, Lcom/android/server/power/ScreenCurtainController;->mLastScreenCurtainDisabledTime:J

    .line 142
    .line 143
    iget-wide v3, p0, Lcom/android/server/power/ScreenCurtainController;->mLastUserActivityTime:J

    .line 144
    .line 145
    cmp-long p1, v1, v3

    .line 146
    .line 147
    if-gez p1, :cond_4

    .line 148
    .line 149
    monitor-exit v0

    .line 150
    goto/16 :goto_4

    .line 151
    .line 152
    :catchall_1
    move-exception p0

    .line 153
    goto :goto_3

    .line 154
    :cond_4
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 155
    iget-object p1, p0, Lcom/android/server/power/ScreenCurtainController;->mServiceIntent:Landroid/content/Intent;

    .line 156
    .line 157
    const-string v0, "StartService"

    .line 158
    .line 159
    const-string/jumbo v1, "service_state"

    .line 160
    .line 161
    .line 162
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 163
    .line 164
    .line 165
    iget-object p1, p0, Lcom/android/server/power/ScreenCurtainController;->mContext:Landroid/content/Context;

    .line 166
    .line 167
    iget-object p0, p0, Lcom/android/server/power/ScreenCurtainController;->mServiceIntent:Landroid/content/Intent;

    .line 168
    .line 169
    invoke-virtual {p1, p0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 170
    .line 171
    .line 172
    goto :goto_4

    .line 173
    :goto_3
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 174
    throw p0

    .line 175
    :cond_5
    iget-object p0, p0, Lcom/android/server/power/ScreenCurtainController$DisplayAssistantHandler;->this$0:Lcom/android/server/power/ScreenCurtainController;

    .line 176
    .line 177
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 178
    .line 179
    check-cast p1, Ljava/lang/Boolean;

    .line 180
    .line 181
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 182
    .line 183
    .line 184
    move-result p1

    .line 185
    if-eqz p1, :cond_7

    .line 186
    .line 187
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 188
    .line 189
    .line 190
    new-instance v5, Landroid/content/IntentFilter;

    .line 191
    .line 192
    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 193
    .line 194
    .line 195
    const-string p1, "com.samsung.android.bixby.intent.action.CLIENT_VIEW_STATE_UPDATED"

    .line 196
    .line 197
    invoke-virtual {v5, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    const-string p1, "com.samsung.pen.INSERT"

    .line 201
    .line 202
    invoke-virtual {v5, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    const-string p1, "android.samsung.media.action.AUDIO_MODE"

    .line 206
    .line 207
    invoke-virtual {v5, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    const-string p1, "android.intent.action.SCREEN_OFF"

    .line 211
    .line 212
    invoke-virtual {v5, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    iget-object v3, p0, Lcom/android/server/power/ScreenCurtainController;->mContext:Landroid/content/Context;

    .line 216
    .line 217
    iget-object v4, p0, Lcom/android/server/power/ScreenCurtainController;->mReceiver:Lcom/android/server/power/ScreenCurtainController$2;

    .line 218
    .line 219
    iget-object v7, p0, Lcom/android/server/power/ScreenCurtainController;->mHandler:Lcom/android/server/power/ScreenCurtainController$DisplayAssistantHandler;

    .line 220
    .line 221
    const/4 v8, 0x2

    .line 222
    const/4 v6, 0x0

    .line 223
    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 224
    .line 225
    .line 226
    :try_start_4
    iget-object p1, p0, Lcom/android/server/power/ScreenCurtainController;->mNotificationListener:Lcom/android/server/power/ScreenCurtainController$NotificationListener;

    .line 227
    .line 228
    iget-object v0, p0, Lcom/android/server/power/ScreenCurtainController;->mContext:Landroid/content/Context;

    .line 229
    .line 230
    new-instance v3, Landroid/content/ComponentName;

    .line 231
    .line 232
    iget-object v4, p0, Lcom/android/server/power/ScreenCurtainController;->mContext:Landroid/content/Context;

    .line 233
    .line 234
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v4

    .line 238
    const-class v5, Lcom/android/server/power/ScreenCurtainController;

    .line 239
    .line 240
    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v5

    .line 244
    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    const/4 v4, -0x1

    .line 248
    invoke-virtual {p1, v0, v3, v4}, Landroid/service/notification/NotificationListenerService;->registerAsSystemService(Landroid/content/Context;Landroid/content/ComponentName;I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 249
    .line 250
    .line 251
    :catch_0
    iget-object p0, p0, Lcom/android/server/power/ScreenCurtainController;->mHqmDataDispatcher:Lcom/android/server/power/HqmDataDispatcher;

    .line 252
    .line 253
    invoke-virtual {p0, v1}, Lcom/android/server/power/HqmDataDispatcher;->getDisplayStat(I)Lcom/android/server/power/HqmDataDispatcher$DisplayStat;

    .line 254
    .line 255
    .line 256
    move-result-object p0

    .line 257
    iget-boolean p1, p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenCurtainEnabled:Z

    .line 258
    .line 259
    if-nez p1, :cond_6

    .line 260
    .line 261
    iget-wide v0, p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenCurtainCount:J

    .line 262
    .line 263
    const-wide/16 v3, 0x1

    .line 264
    .line 265
    add-long/2addr v0, v3

    .line 266
    iput-wide v0, p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenCurtainCount:J

    .line 267
    .line 268
    iget-object p1, p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenCurtainTimer:Lcom/android/server/power/HqmDataDispatcher$Timer;

    .line 269
    .line 270
    invoke-virtual {p1}, Lcom/android/server/power/HqmDataDispatcher$Timer;->start()V

    .line 271
    .line 272
    .line 273
    :cond_6
    iput-boolean v2, p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenCurtainEnabled:Z

    .line 274
    .line 275
    goto :goto_4

    .line 276
    :cond_7
    iget-object p1, p0, Lcom/android/server/power/ScreenCurtainController;->mContext:Landroid/content/Context;

    .line 277
    .line 278
    iget-object v0, p0, Lcom/android/server/power/ScreenCurtainController;->mReceiver:Lcom/android/server/power/ScreenCurtainController$2;

    .line 279
    .line 280
    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 281
    .line 282
    .line 283
    :try_start_5
    iget-object p0, p0, Lcom/android/server/power/ScreenCurtainController;->mNotificationListener:Lcom/android/server/power/ScreenCurtainController$NotificationListener;

    .line 284
    .line 285
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->unregisterAsSystemService()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    .line 286
    .line 287
    .line 288
    :catch_1
    :goto_4
    return-void

    .line 289
    :pswitch_data_0
    .packed-switch 0x1
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
