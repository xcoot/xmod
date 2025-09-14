.class public final Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/view/WindowManagerPolicyConstants$PointerEventListener;


# instance fields
.field public sCfmsService:Landroid/os/ICustomFrequencyManager;

.field public final synthetic this$0:Lcom/android/server/smartclip/SpenGestureManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/smartclip/SpenGestureManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final onPointerEvent(Landroid/view/MotionEvent;)V
    .locals 14

    .line 1
    const-string/jumbo v0, "onPointerEvent : total time = "

    .line 2
    .line 3
    .line 4
    const-string v1, "SpenGestureManagerService"

    .line 5
    .line 6
    const-string/jumbo v2, "onPointerEvent 4 : Action="

    .line 7
    .line 8
    .line 9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 10
    .line 11
    .line 12
    move-result-wide v3

    .line 13
    const-wide/32 v5, 0x3b9aca00

    .line 14
    .line 15
    .line 16
    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 17
    .line 18
    .line 19
    move-result v7

    .line 20
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    .line 21
    .line 22
    .line 23
    move-result v8

    .line 24
    sget-object v9, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    .line 25
    .line 26
    and-int/lit8 v8, v8, 0x20

    .line 27
    .line 28
    const/4 v9, 0x0

    .line 29
    const/4 v10, 0x1

    .line 30
    if-eqz v8, :cond_0

    .line 31
    .line 32
    move v8, v10

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move v8, v9

    .line 35
    :goto_0
    iget-object v11, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    .line 36
    .line 37
    iget v12, v11, Lcom/android/server/smartclip/SpenGestureManagerService;->mSpenUspLevel:I

    .line 38
    .line 39
    const/4 v13, 0x3

    .line 40
    if-lt v12, v13, :cond_a

    .line 41
    .line 42
    invoke-static {v11, p1, v7, v8}, Lcom/android/server/smartclip/SpenGestureManagerService;->-$$Nest$mprocessMotionEventForAirCMD(Lcom/android/server/smartclip/SpenGestureManagerService;Landroid/view/MotionEvent;IZ)V

    .line 43
    .line 44
    .line 45
    iget-object v11, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    .line 46
    .line 47
    iget-object v11, v11, Lcom/android/server/smartclip/SpenGestureManagerService;->mHoverListeners:Landroid/os/RemoteCallbackList;

    .line 48
    .line 49
    if-eqz v11, :cond_1

    .line 50
    .line 51
    invoke-virtual {v11}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    .line 52
    .line 53
    .line 54
    move-result v11

    .line 55
    if-lez v11, :cond_1

    .line 56
    .line 57
    iget-object v11, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    .line 58
    .line 59
    invoke-static {v11, p1, v7}, Lcom/android/server/smartclip/SpenGestureManagerService;->-$$Nest$mcheckHoverStay(Lcom/android/server/smartclip/SpenGestureManagerService;Landroid/view/MotionEvent;I)V

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :catchall_0
    move-exception p0

    .line 64
    goto/16 :goto_5

    .line 65
    .line 66
    :cond_1
    :goto_1
    const/4 v11, 0x2

    .line 67
    if-eqz v8, :cond_2

    .line 68
    .line 69
    const/4 v12, 0x7

    .line 70
    if-eq v7, v12, :cond_2

    .line 71
    .line 72
    if-eq v7, v11, :cond_2

    .line 73
    .line 74
    new-instance v12, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-direct {v12, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-static {v7}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v2, ", sideButtonPressed="

    .line 87
    .line 88
    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string v2, ", coverOpened="

    .line 95
    .line 96
    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    iget-object v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    .line 100
    .line 101
    iget-boolean v2, v2, Lcom/android/server/smartclip/SpenGestureManagerService;->mClearCoverOpened:Z

    .line 102
    .line 103
    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    :cond_2
    if-eqz v8, :cond_3

    .line 114
    .line 115
    iget-object v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    .line 116
    .line 117
    iget-boolean v2, v2, Lcom/android/server/smartclip/SpenGestureManagerService;->mClearCoverOpened:Z

    .line 118
    .line 119
    if-ne v2, v10, :cond_3

    .line 120
    .line 121
    move v2, v10

    .line 122
    goto :goto_2

    .line 123
    :cond_3
    move v2, v9

    .line 124
    :goto_2
    const/16 v8, 0x9

    .line 125
    .line 126
    if-ne v7, v8, :cond_4

    .line 127
    .line 128
    invoke-virtual {p0, v7}, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->sendEventToCfmsService(I)V

    .line 129
    .line 130
    .line 131
    new-instance v8, Landroid/os/Message;

    .line 132
    .line 133
    invoke-direct {v8}, Landroid/os/Message;-><init>()V

    .line 134
    .line 135
    .line 136
    const/16 v9, 0x301b

    .line 137
    .line 138
    iput v9, v8, Landroid/os/Message;->what:I

    .line 139
    .line 140
    iget-object v9, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    .line 141
    .line 142
    iget-object v9, v9, Lcom/android/server/smartclip/SpenGestureManagerService;->mHandler:Lcom/android/server/smartclip/SpenGestureManagerService$5;

    .line 143
    .line 144
    invoke-virtual {v9, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 145
    .line 146
    .line 147
    goto :goto_3

    .line 148
    :cond_4
    const/16 v8, 0xa

    .line 149
    .line 150
    const/16 v12, 0x3018

    .line 151
    .line 152
    if-ne v7, v8, :cond_5

    .line 153
    .line 154
    invoke-virtual {p0, v7}, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->sendEventToCfmsService(I)V

    .line 155
    .line 156
    .line 157
    new-instance v8, Landroid/os/Message;

    .line 158
    .line 159
    invoke-direct {v8}, Landroid/os/Message;-><init>()V

    .line 160
    .line 161
    .line 162
    iput v12, v8, Landroid/os/Message;->what:I

    .line 163
    .line 164
    iget-object v9, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    .line 165
    .line 166
    iget-object v9, v9, Lcom/android/server/smartclip/SpenGestureManagerService;->mHandler:Lcom/android/server/smartclip/SpenGestureManagerService$5;

    .line 167
    .line 168
    const-wide/16 v11, 0x32

    .line 169
    .line 170
    invoke-virtual {v9, v8, v11, v12}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 171
    .line 172
    .line 173
    goto :goto_3

    .line 174
    :cond_5
    if-nez v7, :cond_7

    .line 175
    .line 176
    iget-object v8, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    .line 177
    .line 178
    iget-object v8, v8, Lcom/android/server/smartclip/SpenGestureManagerService;->mHandler:Lcom/android/server/smartclip/SpenGestureManagerService$5;

    .line 179
    .line 180
    invoke-virtual {v8, v12}, Landroid/os/Handler;->hasMessages(I)Z

    .line 181
    .line 182
    .line 183
    move-result v8

    .line 184
    if-eqz v8, :cond_6

    .line 185
    .line 186
    iget-object v8, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    .line 187
    .line 188
    iget-object v8, v8, Lcom/android/server/smartclip/SpenGestureManagerService;->mHandler:Lcom/android/server/smartclip/SpenGestureManagerService$5;

    .line 189
    .line 190
    invoke-virtual {v8, v12}, Landroid/os/Handler;->removeMessages(I)V

    .line 191
    .line 192
    .line 193
    const-string v8, "[HOVER] sending hover exit br is canceled by touch event."

    .line 194
    .line 195
    invoke-static {v1, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    .line 197
    .line 198
    :cond_6
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getToolType(I)I

    .line 199
    .line 200
    .line 201
    move-result v8

    .line 202
    if-ne v8, v11, :cond_7

    .line 203
    .line 204
    invoke-virtual {p0, v7}, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->sendEventToCfmsService(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    .line 206
    .line 207
    :cond_7
    :goto_3
    if-ne v2, v10, :cond_a

    .line 208
    .line 209
    const-string/jumbo v2, "sec_unused_e-pen"

    .line 210
    .line 211
    .line 212
    packed-switch v7, :pswitch_data_0

    .line 213
    .line 214
    .line 215
    :pswitch_0
    :try_start_1
    const-string/jumbo p0, "onPointerEvent : default"

    .line 216
    .line 217
    .line 218
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    .line 220
    .line 221
    goto :goto_4

    .line 222
    :pswitch_1
    iget-object v7, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    .line 223
    .line 224
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 225
    .line 226
    .line 227
    invoke-static {p1}, Lcom/android/server/smartclip/SpenGestureManagerService;->getPenName(Landroid/view/MotionEvent;)Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v7

    .line 231
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 232
    .line 233
    .line 234
    move-result v2

    .line 235
    if-eqz v2, :cond_8

    .line 236
    .line 237
    goto :goto_4

    .line 238
    :cond_8
    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    .line 239
    .line 240
    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mGestureDetector:Landroid/view/GestureDetector;

    .line 241
    .line 242
    invoke-virtual {p0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 243
    .line 244
    .line 245
    goto :goto_4

    .line 246
    :pswitch_2
    iget-object v7, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    .line 247
    .line 248
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 249
    .line 250
    .line 251
    invoke-static {p1}, Lcom/android/server/smartclip/SpenGestureManagerService;->getPenName(Landroid/view/MotionEvent;)Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v7

    .line 255
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 256
    .line 257
    .line 258
    move-result v2

    .line 259
    if-eqz v2, :cond_9

    .line 260
    .line 261
    goto :goto_4

    .line 262
    :cond_9
    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    .line 263
    .line 264
    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mGestureDetector:Landroid/view/GestureDetector;

    .line 265
    .line 266
    invoke-virtual {p0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 267
    .line 268
    .line 269
    :cond_a
    :goto_4
    :pswitch_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 270
    .line 271
    .line 272
    move-result-wide p0

    .line 273
    sub-long/2addr p0, v3

    .line 274
    cmp-long v2, p0, v5

    .line 275
    .line 276
    if-lez v2, :cond_b

    .line 277
    .line 278
    new-instance v2, Ljava/lang/StringBuilder;

    .line 279
    .line 280
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object p0

    .line 290
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    .line 292
    .line 293
    :cond_b
    return-void

    .line 294
    :goto_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 295
    .line 296
    .line 297
    move-result-wide v7

    .line 298
    sub-long/2addr v7, v3

    .line 299
    cmp-long p1, v7, v5

    .line 300
    .line 301
    if-lez p1, :cond_c

    .line 302
    .line 303
    sget-object p1, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    .line 304
    .line 305
    new-instance p1, Ljava/lang/StringBuilder;

    .line 306
    .line 307
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    invoke-virtual {p1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 311
    .line 312
    .line 313
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object p1

    .line 317
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    .line 319
    .line 320
    :cond_c
    throw p0

    .line 321
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public final sendEventToCfmsService(I)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "CustomFrequencyManagerService"

    .line 6
    .line 7
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-static {v0}, Landroid/os/ICustomFrequencyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ICustomFrequencyManager;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catch_0
    move-exception p0

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->sCfmsService:Landroid/os/ICustomFrequencyManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    if-eqz p0, :cond_3

    .line 25
    .line 26
    const/16 v0, 0x9

    .line 27
    .line 28
    const-string v1, "HOVERING_EVENT"

    .line 29
    .line 30
    if-ne p1, v0, :cond_1

    .line 31
    .line 32
    :try_start_1
    const-string p1, "1"

    .line 33
    .line 34
    invoke-interface {p0, v1, p1}, Landroid/os/ICustomFrequencyManager;->sendCommandToSSRM(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    goto :goto_2

    .line 38
    :cond_1
    const/16 v0, 0xa

    .line 39
    .line 40
    if-ne p1, v0, :cond_2

    .line 41
    .line 42
    const-string p1, "0"

    .line 43
    .line 44
    invoke-interface {p0, v1, p1}, Landroid/os/ICustomFrequencyManager;->sendCommandToSSRM(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_2
    if-nez p1, :cond_3

    .line 49
    .line 50
    const-string p1, "3"

    .line 51
    .line 52
    invoke-interface {p0, v1, p1}, Landroid/os/ICustomFrequencyManager;->sendCommandToSSRM(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 53
    .line 54
    .line 55
    goto :goto_2

    .line 56
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 57
    .line 58
    .line 59
    :cond_3
    :goto_2
    return-void
.end method
