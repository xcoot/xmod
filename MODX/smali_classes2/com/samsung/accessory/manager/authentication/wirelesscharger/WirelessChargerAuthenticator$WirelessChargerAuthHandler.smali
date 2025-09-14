.class public final Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator$WirelessChargerAuthHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;


# direct methods
.method public constructor <init>(Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;Landroid/os/Looper;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator$WirelessChargerAuthHandler;->this$0:Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    const/4 v0, 0x1

    .line 5
    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 7

    .line 1
    sget v0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->$r8$clinit:I

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v1, "handleMessage: "

    .line 6
    .line 7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator$WirelessChargerAuthHandler;->this$0:Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;

    .line 11
    .line 12
    iget v2, p1, Landroid/os/Message;->what:I

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-static {v2}, Lcom/samsung/accessory/manager/authentication/LocalAuthenticator;->convertMsg(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string v1, "SAccessoryManager_WirelessChargerAuthenticator"

    .line 29
    .line 30
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    iget v0, p1, Landroid/os/Message;->what:I

    .line 34
    .line 35
    const/4 v2, 0x4

    .line 36
    const/4 v3, 0x2

    .line 37
    const/4 v4, 0x0

    .line 38
    const/4 v5, 0x5

    .line 39
    const/4 v6, 0x1

    .line 40
    packed-switch v0, :pswitch_data_0

    .line 41
    .line 42
    .line 43
    goto/16 :goto_6

    .line 44
    .line 45
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator$WirelessChargerAuthHandler;->this$0:Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;

    .line 46
    .line 47
    iget-object v0, v0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mWirelessChargerAuthHandler:Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator$WirelessChargerAuthHandler;

    .line 48
    .line 49
    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 50
    .line 51
    .line 52
    iget v0, p1, Landroid/os/Message;->what:I

    .line 53
    .line 54
    if-ne v0, v5, :cond_0

    .line 55
    .line 56
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator$WirelessChargerAuthHandler;->this$0:Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;

    .line 57
    .line 58
    iget v2, v0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mFailuresCount:I

    .line 59
    .line 60
    add-int/2addr v2, v6

    .line 61
    iput v2, v0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mFailuresCount:I

    .line 62
    .line 63
    const-string v0, "authentication is timed out!"

    .line 64
    .line 65
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    :cond_0
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator$WirelessChargerAuthHandler;->this$0:Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;

    .line 69
    .line 70
    iget-object v1, v0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mAuthenticationTask:Lcom/samsung/accessory/manager/SAccessoryManager$1;

    .line 71
    .line 72
    iget-object v0, v0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mCurrentSession:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    .line 73
    .line 74
    invoke-virtual {v1, v0}, Lcom/samsung/accessory/manager/SAccessoryManager$1;->stop(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)V

    .line 75
    .line 76
    .line 77
    iget v0, p1, Landroid/os/Message;->what:I

    .line 78
    .line 79
    const/4 v1, 0x6

    .line 80
    if-ne v0, v1, :cond_1

    .line 81
    .line 82
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator$WirelessChargerAuthHandler;->this$0:Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;

    .line 83
    .line 84
    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->removeAuthenticationTimeOuts()V

    .line 85
    .line 86
    .line 87
    move v4, v6

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator$WirelessChargerAuthHandler;->this$0:Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;

    .line 89
    .line 90
    iget v1, v0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->wirelessChargerState:I

    .line 91
    .line 92
    const/16 v2, 0x65

    .line 93
    .line 94
    if-ne v1, v6, :cond_2

    .line 95
    .line 96
    invoke-virtual {v0, v2}, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->setWirelessChargerVerified(I)V

    .line 97
    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_2
    iget p1, p1, Landroid/os/Message;->what:I

    .line 101
    .line 102
    if-ne p1, v5, :cond_3

    .line 103
    .line 104
    iget p1, v0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mFailuresCount:I

    .line 105
    .line 106
    if-gt p1, v6, :cond_4

    .line 107
    .line 108
    :cond_3
    if-eqz v4, :cond_7

    .line 109
    .line 110
    :cond_4
    iget p1, v0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->auth_result:I

    .line 111
    .line 112
    const/4 v1, -0x2

    .line 113
    if-ne p1, v1, :cond_6

    .line 114
    .line 115
    if-eq p1, v2, :cond_5

    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_5
    const/16 p1, 0x66

    .line 119
    .line 120
    invoke-virtual {v0, p1}, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->setWirelessChargerVerified(I)V

    .line 121
    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_6
    :goto_0
    invoke-virtual {v0, p1}, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->setWirelessChargerVerified(I)V

    .line 125
    .line 126
    .line 127
    :cond_7
    :goto_1
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator$WirelessChargerAuthHandler;->this$0:Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;

    .line 128
    .line 129
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mResult:Ljava/util/concurrent/atomic/AtomicReference;

    .line 130
    .line 131
    const/4 p1, 0x0

    .line 132
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 133
    .line 134
    .line 135
    goto/16 :goto_6

    .line 136
    .line 137
    :pswitch_2
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator$WirelessChargerAuthHandler;->this$0:Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;

    .line 138
    .line 139
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 140
    .line 141
    .line 142
    const-string v0, "handleAuthResponse"

    .line 143
    .line 144
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    .line 146
    .line 147
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mWirelessChargerAuthWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 148
    .line 149
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 150
    .line 151
    .line 152
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 153
    .line 154
    check-cast p1, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;

    .line 155
    .line 156
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mResult:Ljava/util/concurrent/atomic/AtomicReference;

    .line 157
    .line 158
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {p1}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getResultBundle()Landroid/os/Bundle;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    const-string/jumbo v0, "reason"

    .line 166
    .line 167
    .line 168
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 169
    .line 170
    .line 171
    move-result p1

    .line 172
    iput p1, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->auth_result:I

    .line 173
    .line 174
    const-string v0, "auth reason = "

    .line 175
    .line 176
    invoke-static {p1, v0, v1}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    if-nez p1, :cond_8

    .line 180
    .line 181
    goto :goto_2

    .line 182
    :cond_8
    if-ne p1, v6, :cond_9

    .line 183
    .line 184
    goto :goto_2

    .line 185
    :cond_9
    const/16 v0, 0xb

    .line 186
    .line 187
    if-eq p1, v0, :cond_10

    .line 188
    .line 189
    const/16 v0, 0x1e

    .line 190
    .line 191
    if-ne p1, v0, :cond_a

    .line 192
    .line 193
    goto/16 :goto_3

    .line 194
    .line 195
    :cond_a
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mWirelessChargerAuthHandler:Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator$WirelessChargerAuthHandler;

    .line 196
    .line 197
    const/16 v1, 0x1f

    .line 198
    .line 199
    if-ne p1, v1, :cond_b

    .line 200
    .line 201
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->removeAuthenticationTimeOuts()V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 205
    .line 206
    .line 207
    goto :goto_2

    .line 208
    :cond_b
    const/16 v1, 0xc

    .line 209
    .line 210
    if-ne p1, v1, :cond_c

    .line 211
    .line 212
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->removeAuthenticationTimeOuts()V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 216
    .line 217
    .line 218
    goto :goto_2

    .line 219
    :cond_c
    const/16 v1, 0xd

    .line 220
    .line 221
    if-ne p1, v1, :cond_f

    .line 222
    .line 223
    iget v1, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mRetryCounterWhenBusy:I

    .line 224
    .line 225
    if-ge v1, v3, :cond_e

    .line 226
    .line 227
    invoke-virtual {v0, v5}, Landroid/os/Handler;->hasMessages(I)Z

    .line 228
    .line 229
    .line 230
    move-result v1

    .line 231
    if-eqz v1, :cond_e

    .line 232
    .line 233
    iget p1, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mRetryCounterWhenBusy:I

    .line 234
    .line 235
    add-int/2addr p1, v6

    .line 236
    iput p1, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mRetryCounterWhenBusy:I

    .line 237
    .line 238
    iget-boolean p1, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mSystemReady:Z

    .line 239
    .line 240
    if-nez p1, :cond_d

    .line 241
    .line 242
    goto :goto_4

    .line 243
    :cond_d
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->removeAuthenticationTimeOuts()V

    .line 247
    .line 248
    .line 249
    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mWirelessChargerAuthHandler:Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator$WirelessChargerAuthHandler;

    .line 250
    .line 251
    const-wide/32 v1, 0xea60

    .line 252
    .line 253
    .line 254
    invoke-virtual {p1, v5, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 255
    .line 256
    .line 257
    const-wide/16 v1, 0x1388

    .line 258
    .line 259
    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 260
    .line 261
    .line 262
    goto :goto_4

    .line 263
    :cond_e
    iput v4, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mRetryCounterWhenBusy:I

    .line 264
    .line 265
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->removeAuthenticationTimeOuts()V

    .line 266
    .line 267
    .line 268
    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 269
    .line 270
    .line 271
    :goto_2
    invoke-virtual {p0, p1}, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->setWirelessChargerVerified(I)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->removeAuthenticationTimeOuts()V

    .line 275
    .line 276
    .line 277
    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mWirelessChargerAuthHandler:Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator$WirelessChargerAuthHandler;

    .line 278
    .line 279
    invoke-virtual {p1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 280
    .line 281
    .line 282
    const-wide/16 v0, 0x0

    .line 283
    .line 284
    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 285
    .line 286
    .line 287
    goto :goto_4

    .line 288
    :cond_f
    const/16 v1, 0x5a

    .line 289
    .line 290
    if-ne p1, v1, :cond_11

    .line 291
    .line 292
    invoke-virtual {v0, v5}, Landroid/os/Handler;->hasMessages(I)Z

    .line 293
    .line 294
    .line 295
    move-result p1

    .line 296
    if-eqz p1, :cond_11

    .line 297
    .line 298
    const-wide/16 v0, 0x12c

    .line 299
    .line 300
    invoke-virtual {p0, v0, v1, v4}, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->startAuthentication$2(JZ)V

    .line 301
    .line 302
    .line 303
    goto :goto_4

    .line 304
    :cond_10
    :goto_3
    const-string p1, "do nothing.."

    .line 305
    .line 306
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    .line 308
    .line 309
    :cond_11
    :goto_4
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mWirelessChargerAuthWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 310
    .line 311
    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 312
    .line 313
    .line 314
    goto/16 :goto_6

    .line 315
    .line 316
    :pswitch_3
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator$WirelessChargerAuthHandler;->this$0:Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;

    .line 317
    .line 318
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 319
    .line 320
    check-cast p1, Ljava/lang/Boolean;

    .line 321
    .line 322
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 323
    .line 324
    .line 325
    move-result p1

    .line 326
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 327
    .line 328
    .line 329
    const-string v0, "handleAuthStart"

    .line 330
    .line 331
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    .line 333
    .line 334
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mWirelessChargerAuthWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 335
    .line 336
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 337
    .line 338
    .line 339
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mAuthenticationTask:Lcom/samsung/accessory/manager/SAccessoryManager$1;

    .line 340
    .line 341
    iget-object v3, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mCurrentSession:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    .line 342
    .line 343
    invoke-virtual {v0, v3}, Lcom/samsung/accessory/manager/SAccessoryManager$1;->getSessionState(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)I

    .line 344
    .line 345
    .line 346
    move-result v0

    .line 347
    const/4 v3, 0x7

    .line 348
    if-eq v0, v3, :cond_12

    .line 349
    .line 350
    if-eq v0, v6, :cond_12

    .line 351
    .line 352
    const-string/jumbo p1, "session is busy"

    .line 353
    .line 354
    .line 355
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    .line 357
    .line 358
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mWirelessChargerAuthWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 359
    .line 360
    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 361
    .line 362
    .line 363
    goto/16 :goto_6

    .line 364
    .line 365
    :cond_12
    if-eqz p1, :cond_13

    .line 366
    .line 367
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->removeAuthenticationTimeOuts()V

    .line 368
    .line 369
    .line 370
    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mWirelessChargerAuthHandler:Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator$WirelessChargerAuthHandler;

    .line 371
    .line 372
    const-wide/16 v0, 0x6978

    .line 373
    .line 374
    invoke-virtual {p1, v5, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 375
    .line 376
    .line 377
    iput-boolean v6, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mPreparing:Z

    .line 378
    .line 379
    :cond_13
    new-instance p1, Landroid/os/Message;

    .line 380
    .line 381
    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    .line 382
    .line 383
    .line 384
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mAuthenticationTask:Lcom/samsung/accessory/manager/SAccessoryManager$1;

    .line 385
    .line 386
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mCurrentSession:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    .line 387
    .line 388
    invoke-virtual {v0, v1}, Lcom/samsung/accessory/manager/SAccessoryManager$1;->getSessionState(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)I

    .line 389
    .line 390
    .line 391
    move-result v0

    .line 392
    if-ne v0, v3, :cond_14

    .line 393
    .line 394
    const-string v0, "connectivity_type"

    .line 395
    .line 396
    invoke-static {v2, v0}, Lcom/android/server/SystemUpdateManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Landroid/os/Bundle;

    .line 397
    .line 398
    .line 399
    move-result-object v0

    .line 400
    iput-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 401
    .line 402
    invoke-virtual {p1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 403
    .line 404
    .line 405
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mAuthenticationTask:Lcom/samsung/accessory/manager/SAccessoryManager$1;

    .line 406
    .line 407
    invoke-virtual {v0, p1}, Lcom/samsung/accessory/manager/SAccessoryManager$1;->start(Landroid/os/Message;)V

    .line 408
    .line 409
    .line 410
    goto :goto_5

    .line 411
    :cond_14
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mCurrentSession:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    .line 412
    .line 413
    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 414
    .line 415
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mAuthenticationTask:Lcom/samsung/accessory/manager/SAccessoryManager$1;

    .line 416
    .line 417
    invoke-virtual {v0, p1}, Lcom/samsung/accessory/manager/SAccessoryManager$1;->start(Landroid/os/Message;)V

    .line 418
    .line 419
    .line 420
    :goto_5
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mWirelessChargerAuthWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 421
    .line 422
    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 423
    .line 424
    .line 425
    goto :goto_6

    .line 426
    :pswitch_4
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator$WirelessChargerAuthHandler;->this$0:Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;

    .line 427
    .line 428
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 429
    .line 430
    .line 431
    const-string p1, "Initialize wirelesscharger authenticator"

    .line 432
    .line 433
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    .line 435
    .line 436
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    .line 437
    .line 438
    .line 439
    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mContext:Landroid/content/Context;

    .line 440
    .line 441
    const-string/jumbo v0, "power"

    .line 442
    .line 443
    .line 444
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 445
    .line 446
    .line 447
    move-result-object p1

    .line 448
    check-cast p1, Landroid/os/PowerManager;

    .line 449
    .line 450
    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mPowerManager:Landroid/os/PowerManager;

    .line 451
    .line 452
    invoke-virtual {p1, v6, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 453
    .line 454
    .line 455
    move-result-object p1

    .line 456
    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mWirelessChargerAuthWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 457
    .line 458
    invoke-virtual {p1, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 459
    .line 460
    .line 461
    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mPowerManager:Landroid/os/PowerManager;

    .line 462
    .line 463
    const-string v0, "SAccessoryManager_WirelessChargerAuthenticatorDetachTimeoutWakeLock"

    .line 464
    .line 465
    invoke-virtual {p1, v6, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 466
    .line 467
    .line 468
    move-result-object p1

    .line 469
    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mSafetyDetachTimeoutWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 470
    .line 471
    invoke-virtual {p1, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 472
    .line 473
    .line 474
    new-instance p1, Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;

    .line 475
    .line 476
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 477
    .line 478
    .line 479
    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mMsgHelper:Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;

    .line 480
    .line 481
    iput-boolean v6, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mSystemReady:Z

    .line 482
    .line 483
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mAuthenticationTask:Lcom/samsung/accessory/manager/SAccessoryManager$1;

    .line 484
    .line 485
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/SAccessoryManager$1;->authenticationReady()V

    .line 486
    .line 487
    .line 488
    :goto_6
    return-void

    .line 489
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
