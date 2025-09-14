.class public final Lcom/samsung/android/hardware/display/AfterimageCompensationService$ScreenWatchingReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

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
    .locals 4

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string p2, "android.intent.action.BOOT_COMPLETED"

    .line 6
    .line 7
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    if-eqz p2, :cond_1

    .line 12
    .line 13
    const-string p1, "AfterimageCompensationService"

    .line 14
    .line 15
    const-string p2, "ACTION_BOOT_COMPLETED"

    .line 16
    .line 17
    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 21
    .line 22
    iget-object p2, p1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mContext:Landroid/content/Context;

    .line 23
    .line 24
    const-string v0, "HqmManagerService"

    .line 25
    .line 26
    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    check-cast p2, Landroid/os/SemHqmManager;

    .line 31
    .line 32
    iput-object p2, p1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mSemHqmManager:Landroid/os/SemHqmManager;

    .line 33
    .line 34
    iget-object p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 35
    .line 36
    iget-object p2, p1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mContext:Landroid/content/Context;

    .line 37
    .line 38
    const-string/jumbo v0, "window"

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    check-cast p2, Landroid/view/WindowManager;

    .line 46
    .line 47
    iput-object p2, p1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mWindowManager:Landroid/view/WindowManager;

    .line 48
    .line 49
    iget-object p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 50
    .line 51
    iget-boolean p2, p1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfcStateCondition:Z

    .line 52
    .line 53
    if-eqz p2, :cond_0

    .line 54
    .line 55
    new-instance p2, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;

    .line 56
    .line 57
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 58
    .line 59
    invoke-direct {p2, v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;-><init>(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)V

    .line 60
    .line 61
    .line 62
    iput-object p2, p1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcThread:Ljava/lang/Thread;

    .line 63
    .line 64
    iget-object p0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 65
    .line 66
    iget-object p0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcThread:Ljava/lang/Thread;

    .line 67
    .line 68
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    .line 69
    .line 70
    .line 71
    const-string p0, "AfterimageCompensationService"

    .line 72
    .line 73
    const-string p1, "AFC Thread Start"

    .line 74
    .line 75
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_0
    const-string p1, "AfterimageCompensationService"

    .line 80
    .line 81
    new-instance p2, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    const-string v0, "AfcStateCondition is already done - "

    .line 84
    .line 85
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    iget-object p0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 89
    .line 90
    iget-boolean p0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfcStateCondition:Z

    .line 91
    .line 92
    invoke-static {p1, p2, p0}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 93
    .line 94
    .line 95
    :goto_0
    return-void

    .line 96
    :cond_1
    const-string p2, "android.intent.action.SCREEN_ON"

    .line 97
    .line 98
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result p2

    .line 102
    const/4 v0, 0x0

    .line 103
    const/16 v1, 0xa

    .line 104
    .line 105
    if-eqz p2, :cond_4

    .line 106
    .line 107
    const-string p1, "AfterimageCompensationService"

    .line 108
    .line 109
    const-string p2, "ACTION_SCREEN_ON"

    .line 110
    .line 111
    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    .line 113
    .line 114
    iget-object p0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 115
    .line 116
    iget-boolean p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfcStateCondition:Z

    .line 117
    .line 118
    if-eqz p1, :cond_3

    .line 119
    .line 120
    const/4 p1, 0x1

    .line 121
    iput-boolean p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfcThreadCondition:Z

    .line 122
    .line 123
    iput-boolean v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfcThreadAODCondition:Z

    .line 124
    .line 125
    iget-object p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcThread:Ljava/lang/Thread;

    .line 126
    .line 127
    if-eqz p1, :cond_2

    .line 128
    .line 129
    monitor-enter p1

    .line 130
    :try_start_0
    iget-object p2, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcThread:Ljava/lang/Thread;

    .line 131
    .line 132
    invoke-virtual {p2}, Ljava/lang/Object;->notify()V

    .line 133
    .line 134
    .line 135
    monitor-exit p1

    .line 136
    goto :goto_1

    .line 137
    :catchall_0
    move-exception p0

    .line 138
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    throw p0

    .line 140
    :cond_2
    :goto_1
    iget p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcType:I

    .line 141
    .line 142
    if-lt p1, v1, :cond_3

    .line 143
    .line 144
    iget-object p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcThread:Ljava/lang/Thread;

    .line 145
    .line 146
    if-eqz p1, :cond_3

    .line 147
    .line 148
    iget-boolean p2, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfcThreadTerminateCondition:Z

    .line 149
    .line 150
    if-eqz p2, :cond_3

    .line 151
    .line 152
    invoke-virtual {p1}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    sget-object p2, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    .line 157
    .line 158
    if-ne p1, p2, :cond_3

    .line 159
    .line 160
    new-instance p1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;

    .line 161
    .line 162
    invoke-direct {p1, p0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;-><init>(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)V

    .line 163
    .line 164
    .line 165
    iput-object p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcThread:Ljava/lang/Thread;

    .line 166
    .line 167
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 168
    .line 169
    .line 170
    const-string p1, "AfterimageCompensationService"

    .line 171
    .line 172
    const-string p2, "AFC Thread ReStart"

    .line 173
    .line 174
    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    .line 176
    .line 177
    iput-boolean v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfcThreadTerminateCondition:Z

    .line 178
    .line 179
    :cond_3
    return-void

    .line 180
    :cond_4
    const-string p2, "android.intent.action.SCREEN_OFF"

    .line 181
    .line 182
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    move-result p2

    .line 186
    if-eqz p2, :cond_6

    .line 187
    .line 188
    const-string p1, "AfterimageCompensationService"

    .line 189
    .line 190
    const-string p2, "ACTION_SCREEN_OFF"

    .line 191
    .line 192
    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    .line 194
    .line 195
    iget-object p0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 196
    .line 197
    iput-boolean v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfcThreadCondition:Z

    .line 198
    .line 199
    iget-boolean p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfcStateCondition:Z

    .line 200
    .line 201
    if-eqz p1, :cond_5

    .line 202
    .line 203
    iget p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcType:I

    .line 204
    .line 205
    if-lt p1, v1, :cond_5

    .line 206
    .line 207
    iget-object p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcThread:Ljava/lang/Thread;

    .line 208
    .line 209
    if-eqz p1, :cond_5

    .line 210
    .line 211
    monitor-enter p1

    .line 212
    :try_start_1
    iget-object p0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcThread:Ljava/lang/Thread;

    .line 213
    .line 214
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    .line 215
    .line 216
    .line 217
    monitor-exit p1

    .line 218
    goto :goto_2

    .line 219
    :catchall_1
    move-exception p0

    .line 220
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 221
    throw p0

    .line 222
    :cond_5
    :goto_2
    return-void

    .line 223
    :cond_6
    const-string p2, "android.intent.action.ACTION_SHUTDOWN"

    .line 224
    .line 225
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 226
    .line 227
    .line 228
    move-result p1

    .line 229
    if-eqz p1, :cond_e

    .line 230
    .line 231
    const-string p1, "AfterimageCompensationService"

    .line 232
    .line 233
    const-string p2, "ACTION_SHUTDOWN"

    .line 234
    .line 235
    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    .line 237
    .line 238
    iget-object p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 239
    .line 240
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 241
    .line 242
    .line 243
    iget-object p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 244
    .line 245
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 246
    .line 247
    .line 248
    iget-object p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 249
    .line 250
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 251
    .line 252
    .line 253
    iget-object p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 254
    .line 255
    iget-boolean p2, p1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfcStateCondition:Z

    .line 256
    .line 257
    const/16 v0, 0x14

    .line 258
    .line 259
    if-eqz p2, :cond_7

    .line 260
    .line 261
    iget v2, p1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcType:I

    .line 262
    .line 263
    const/4 v3, 0x6

    .line 264
    if-ne v2, v3, :cond_7

    .line 265
    .line 266
    iget p0, p1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfpcPeriodCount:I

    .line 267
    .line 268
    if-le p0, v0, :cond_e

    .line 269
    .line 270
    invoke-static {p0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataTerminate(I)V

    .line 271
    .line 272
    .line 273
    goto :goto_3

    .line 274
    :cond_7
    if-eqz p2, :cond_8

    .line 275
    .line 276
    iget v2, p1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcType:I

    .line 277
    .line 278
    const/4 v3, 0x7

    .line 279
    if-ne v2, v3, :cond_8

    .line 280
    .line 281
    iget p0, p1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfpcPeriodCount:I

    .line 282
    .line 283
    if-le p0, v0, :cond_e

    .line 284
    .line 285
    invoke-static {p0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataTerminate(I)V

    .line 286
    .line 287
    .line 288
    goto :goto_3

    .line 289
    :cond_8
    if-eqz p2, :cond_9

    .line 290
    .line 291
    iget v2, p1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcType:I

    .line 292
    .line 293
    const/16 v3, 0x8

    .line 294
    .line 295
    if-ne v2, v3, :cond_9

    .line 296
    .line 297
    iget p0, p1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfpcPeriodCount:I

    .line 298
    .line 299
    if-le p0, v0, :cond_e

    .line 300
    .line 301
    invoke-static {p0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataTerminate(I)V

    .line 302
    .line 303
    .line 304
    goto :goto_3

    .line 305
    :cond_9
    if-eqz p2, :cond_c

    .line 306
    .line 307
    iget v2, p1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcType:I

    .line 308
    .line 309
    const/16 v3, 0x9

    .line 310
    .line 311
    if-eq v2, v3, :cond_a

    .line 312
    .line 313
    const/16 v3, 0xb

    .line 314
    .line 315
    if-ne v2, v3, :cond_c

    .line 316
    .line 317
    :cond_a
    iget p1, p1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfpcPeriodCount:I

    .line 318
    .line 319
    if-le p1, v0, :cond_b

    .line 320
    .line 321
    invoke-static {p1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataTerminate(I)V

    .line 322
    .line 323
    .line 324
    :cond_b
    iget-object p0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 325
    .line 326
    iget p0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfpcPeriodCount_sub:I

    .line 327
    .line 328
    if-le p0, v0, :cond_e

    .line 329
    .line 330
    invoke-static {p0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataTerminateSub(I)V

    .line 331
    .line 332
    .line 333
    goto :goto_3

    .line 334
    :cond_c
    if-eqz p2, :cond_d

    .line 335
    .line 336
    iget p0, p1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcType:I

    .line 337
    .line 338
    if-ne p0, v1, :cond_d

    .line 339
    .line 340
    iget p0, p1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfpcPeriodCount:I

    .line 341
    .line 342
    if-le p0, v0, :cond_e

    .line 343
    .line 344
    invoke-static {p0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataTerminate(I)V

    .line 345
    .line 346
    .line 347
    goto :goto_3

    .line 348
    :cond_d
    if-eqz p2, :cond_e

    .line 349
    .line 350
    iget p0, p1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcType:I

    .line 351
    .line 352
    const/16 p2, 0xc

    .line 353
    .line 354
    if-ne p0, p2, :cond_e

    .line 355
    .line 356
    iget p0, p1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfpcPeriodCount:I

    .line 357
    .line 358
    if-le p0, v0, :cond_e

    .line 359
    .line 360
    invoke-static {p0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataTerminate(I)V

    .line 361
    .line 362
    .line 363
    :cond_e
    :goto_3
    return-void
.end method
