.class public final Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;


# direct methods
.method public constructor <init>(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;Landroid/os/Looper;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

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
    sget v0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->$r8$clinit:I

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v1, "handleMessage : "

    .line 6
    .line 7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    .line 11
    .line 12
    iget v2, p1, Landroid/os/Message;->what:I

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-static {v2}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->convertMsg(I)Ljava/lang/String;

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
    const-string v1, "SAccessoryManager_AuthenticationSession"

    .line 29
    .line 30
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    iget p1, p1, Landroid/os/Message;->what:I

    .line 34
    .line 35
    const-string v0, "connect"

    .line 36
    .line 37
    const/16 v2, 0xc

    .line 38
    .line 39
    const/4 v3, 0x2

    .line 40
    const/4 v4, 0x1

    .line 41
    const/4 v5, 0x3

    .line 42
    const/4 v6, 0x0

    .line 43
    packed-switch p1, :pswitch_data_0

    .line 44
    .line 45
    .line 46
    :pswitch_0
    goto/16 :goto_3

    .line 47
    .line 48
    :pswitch_1
    const-string/jumbo p1, "session is timed out!"

    .line 49
    .line 50
    .line 51
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    .line 55
    .line 56
    const/16 v0, 0x1f

    .line 57
    .line 58
    invoke-virtual {p1, v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->replayAuthfail(I)V

    .line 59
    .line 60
    .line 61
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    .line 62
    .line 63
    invoke-static {p0, v4}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->-$$Nest$mhandleStopSession(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;Z)V

    .line 64
    .line 65
    .line 66
    goto/16 :goto_3

    .line 67
    .line 68
    :pswitch_2
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    .line 69
    .line 70
    invoke-static {p0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->-$$Nest$mhandleTearDown(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)V

    .line 71
    .line 72
    .line 73
    goto/16 :goto_3

    .line 74
    .line 75
    :pswitch_3
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    .line 76
    .line 77
    invoke-static {p0, v6}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->-$$Nest$mhandleStopSession(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;Z)V

    .line 78
    .line 79
    .line 80
    goto/16 :goto_3

    .line 81
    .line 82
    :pswitch_4
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    .line 83
    .line 84
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    .line 86
    .line 87
    const-string p1, "handleStartSession"

    .line 88
    .line 89
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->getSessionState()I

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    if-eq p1, v4, :cond_0

    .line 97
    .line 98
    new-instance p1, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    const-string v0, "can\'t start session, state = "

    .line 101
    .line 102
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    iget v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mState:I

    .line 106
    .line 107
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    .line 116
    .line 117
    const/16 p1, 0x1e

    .line 118
    .line 119
    invoke-virtual {p0, p1}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->replayAuthfail(I)V

    .line 120
    .line 121
    .line 122
    goto/16 :goto_3

    .line 123
    .line 124
    :cond_0
    invoke-virtual {p0, v3}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->setState(I)V

    .line 125
    .line 126
    .line 127
    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mSessionEventListener:Lcom/samsung/accessory/manager/SAccessoryManager$1;

    .line 128
    .line 129
    if-eqz p1, :cond_1

    .line 130
    .line 131
    invoke-virtual {p1, v4, p0}, Lcom/samsung/accessory/manager/SAccessoryManager$1;->onSessionEvent(ILcom/samsung/accessory/manager/authentication/AuthenticationSession;)V

    .line 132
    .line 133
    .line 134
    :cond_1
    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    .line 135
    .line 136
    if-nez p1, :cond_2

    .line 137
    .line 138
    new-instance p1, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;

    .line 139
    .line 140
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mContext:Landroid/content/Context;

    .line 141
    .line 142
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mResult:Lcom/samsung/accessory/manager/authentication/AuthenticationResult;

    .line 143
    .line 144
    iget v1, v1, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mConnectivityType:I

    .line 145
    .line 146
    invoke-direct {p1, v0, v1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;-><init>(Landroid/content/Context;I)V

    .line 147
    .line 148
    .line 149
    :try_start_0
    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    .line 151
    goto :goto_0

    .line 152
    :catch_0
    move-exception p1

    .line 153
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 154
    .line 155
    .line 156
    goto :goto_0

    .line 157
    :cond_2
    const-string p1, "authenticator is not null, so initialize interrupt parameter"

    .line 158
    .line 159
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    .line 161
    .line 162
    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    .line 163
    .line 164
    check-cast p1, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;

    .line 165
    .line 166
    iput-boolean v6, p1, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->isInterrupted:Z

    .line 167
    .line 168
    :goto_0
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mSessionHandler:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;

    .line 169
    .line 170
    invoke-virtual {p0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 171
    .line 172
    .line 173
    goto/16 :goto_3

    .line 174
    .line 175
    :pswitch_5
    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    .line 176
    .line 177
    iget-object v0, p1, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mSessionEventListener:Lcom/samsung/accessory/manager/SAccessoryManager$1;

    .line 178
    .line 179
    if-eqz v0, :cond_3

    .line 180
    .line 181
    invoke-virtual {v0, v3, p1}, Lcom/samsung/accessory/manager/SAccessoryManager$1;->onSessionEvent(ILcom/samsung/accessory/manager/authentication/AuthenticationSession;)V

    .line 182
    .line 183
    .line 184
    :cond_3
    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    .line 185
    .line 186
    iput-boolean v6, p1, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mTurnedOffWhileRunning:Z

    .line 187
    .line 188
    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    .line 189
    .line 190
    new-instance v0, Ljava/lang/Thread;

    .line 191
    .line 192
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    .line 193
    .line 194
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 195
    .line 196
    .line 197
    iput-object v0, p1, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mSessionThread:Ljava/lang/Thread;

    .line 198
    .line 199
    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    .line 200
    .line 201
    iget-object p1, p1, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mSessionThread:Ljava/lang/Thread;

    .line 202
    .line 203
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 204
    .line 205
    .line 206
    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    .line 207
    .line 208
    iget-object p1, p1, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    .line 209
    .line 210
    if-eqz p1, :cond_4

    .line 211
    .line 212
    invoke-virtual {p1, v5}, Lcom/samsung/accessory/manager/authentication/Authenticator;->setSessionState(I)V

    .line 213
    .line 214
    .line 215
    :cond_4
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    .line 216
    .line 217
    invoke-virtual {p0, v5}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->setState(I)V

    .line 218
    .line 219
    .line 220
    goto/16 :goto_3

    .line 221
    .line 222
    :pswitch_6
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    .line 223
    .line 224
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 225
    .line 226
    .line 227
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    .line 229
    .line 230
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    .line 231
    .line 232
    if-nez p0, :cond_5

    .line 233
    .line 234
    goto/16 :goto_3

    .line 235
    .line 236
    :cond_5
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/Authenticator;->mConnectivity:Lcom/samsung/accessory/manager/connectivity/Connectivity;

    .line 237
    .line 238
    if-eqz p0, :cond_14

    .line 239
    .line 240
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/connectivity/Connectivity;->connect()V

    .line 241
    .line 242
    .line 243
    goto/16 :goto_3

    .line 244
    .line 245
    :pswitch_7
    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    .line 246
    .line 247
    invoke-virtual {p1}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->getSessionState()I

    .line 248
    .line 249
    .line 250
    move-result p1

    .line 251
    if-ne p1, v5, :cond_14

    .line 252
    .line 253
    const-string p1, "Connectivity is turned off while authentication is running!"

    .line 254
    .line 255
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    .line 257
    .line 258
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    .line 259
    .line 260
    iput-boolean v4, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mTurnedOffWhileRunning:Z

    .line 261
    .line 262
    goto/16 :goto_3

    .line 263
    .line 264
    :pswitch_8
    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    .line 265
    .line 266
    iget-object p1, p1, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 267
    .line 268
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 269
    .line 270
    .line 271
    move-result p1

    .line 272
    if-eqz p1, :cond_6

    .line 273
    .line 274
    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    .line 275
    .line 276
    iget-object p1, p1, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 277
    .line 278
    invoke-virtual {p1, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 279
    .line 280
    .line 281
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    .line 282
    .line 283
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mSessionHandler:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;

    .line 284
    .line 285
    const/16 p1, 0xd

    .line 286
    .line 287
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 288
    .line 289
    .line 290
    goto/16 :goto_3

    .line 291
    .line 292
    :cond_6
    const-string p0, "Connectivity is disabled by user"

    .line 293
    .line 294
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    .line 296
    .line 297
    goto/16 :goto_3

    .line 298
    .line 299
    :pswitch_9
    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    .line 300
    .line 301
    iget-object p1, p1, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 302
    .line 303
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 304
    .line 305
    .line 306
    move-result p1

    .line 307
    if-eqz p1, :cond_8

    .line 308
    .line 309
    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    .line 310
    .line 311
    iget-object p1, p1, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    .line 312
    .line 313
    if-eqz p1, :cond_7

    .line 314
    .line 315
    iget-object p1, p1, Lcom/samsung/accessory/manager/authentication/Authenticator;->mConnectivity:Lcom/samsung/accessory/manager/connectivity/Connectivity;

    .line 316
    .line 317
    if-eqz p1, :cond_7

    .line 318
    .line 319
    invoke-virtual {p1}, Lcom/samsung/accessory/manager/connectivity/Connectivity;->isEnabledInternally()Z

    .line 320
    .line 321
    .line 322
    move-result p1

    .line 323
    if-eqz p1, :cond_7

    .line 324
    .line 325
    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    .line 326
    .line 327
    iget-object p1, p1, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    .line 328
    .line 329
    iget-object p1, p1, Lcom/samsung/accessory/manager/authentication/Authenticator;->mConnectivity:Lcom/samsung/accessory/manager/connectivity/Connectivity;

    .line 330
    .line 331
    invoke-virtual {p1}, Lcom/samsung/accessory/manager/connectivity/Connectivity;->disable()Z

    .line 332
    .line 333
    .line 334
    move-result p1

    .line 335
    if-nez p1, :cond_7

    .line 336
    .line 337
    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    .line 338
    .line 339
    invoke-virtual {p1, v2}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->replayAuthfail(I)V

    .line 340
    .line 341
    .line 342
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    .line 343
    .line 344
    invoke-static {p0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->-$$Nest$mhandleTearDown(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)V

    .line 345
    .line 346
    .line 347
    goto/16 :goto_3

    .line 348
    .line 349
    :cond_7
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    .line 350
    .line 351
    iput v5, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mInternalState:I

    .line 352
    .line 353
    goto/16 :goto_3

    .line 354
    .line 355
    :cond_8
    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    .line 356
    .line 357
    iget-object p1, p1, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mConnectAfterEnable:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 358
    .line 359
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 360
    .line 361
    .line 362
    move-result p1

    .line 363
    if-eqz p1, :cond_14

    .line 364
    .line 365
    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    .line 366
    .line 367
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 368
    .line 369
    .line 370
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    .line 372
    .line 373
    iget-object p1, p1, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    .line 374
    .line 375
    if-nez p1, :cond_9

    .line 376
    .line 377
    goto :goto_1

    .line 378
    :cond_9
    iget-object p1, p1, Lcom/samsung/accessory/manager/authentication/Authenticator;->mConnectivity:Lcom/samsung/accessory/manager/connectivity/Connectivity;

    .line 379
    .line 380
    if-eqz p1, :cond_a

    .line 381
    .line 382
    invoke-virtual {p1}, Lcom/samsung/accessory/manager/connectivity/Connectivity;->connect()V

    .line 383
    .line 384
    .line 385
    :cond_a
    :goto_1
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    .line 386
    .line 387
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mConnectAfterEnable:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 388
    .line 389
    invoke-virtual {p0, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 390
    .line 391
    .line 392
    goto/16 :goto_3

    .line 393
    .line 394
    :pswitch_a
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    .line 395
    .line 396
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 397
    .line 398
    .line 399
    const-string p1, "handleSetConnection"

    .line 400
    .line 401
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    .line 403
    .line 404
    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    .line 405
    .line 406
    if-nez p1, :cond_b

    .line 407
    .line 408
    const-string p1, "mAuthenticator is null"

    .line 409
    .line 410
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    .line 412
    .line 413
    invoke-virtual {p0, v2}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->replayAuthfail(I)V

    .line 414
    .line 415
    .line 416
    goto/16 :goto_3

    .line 417
    .line 418
    :cond_b
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->getSessionState()I

    .line 419
    .line 420
    .line 421
    move-result p1

    .line 422
    if-eq p1, v3, :cond_c

    .line 423
    .line 424
    const-string/jumbo p0, "session is stopped!"

    .line 425
    .line 426
    .line 427
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    .line 429
    .line 430
    goto/16 :goto_3

    .line 431
    .line 432
    :cond_c
    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    .line 433
    .line 434
    iget-object v0, p1, Lcom/samsung/accessory/manager/authentication/Authenticator;->mConnectivity:Lcom/samsung/accessory/manager/connectivity/Connectivity;

    .line 435
    .line 436
    if-eqz v0, :cond_d

    .line 437
    .line 438
    goto :goto_2

    .line 439
    :cond_d
    iget v0, p1, Lcom/samsung/accessory/manager/authentication/Authenticator;->mType:I

    .line 440
    .line 441
    if-eq v0, v4, :cond_11

    .line 442
    .line 443
    if-eq v0, v3, :cond_10

    .line 444
    .line 445
    if-eq v0, v5, :cond_f

    .line 446
    .line 447
    const/4 v2, 0x4

    .line 448
    if-eq v0, v2, :cond_e

    .line 449
    .line 450
    goto :goto_2

    .line 451
    :cond_e
    new-instance v0, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;

    .line 452
    .line 453
    iget-object v2, p1, Lcom/samsung/accessory/manager/authentication/Authenticator;->mContext:Landroid/content/Context;

    .line 454
    .line 455
    invoke-direct {v0, v2}, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;-><init>(Landroid/content/Context;)V

    .line 456
    .line 457
    .line 458
    iput-object v0, p1, Lcom/samsung/accessory/manager/authentication/Authenticator;->mConnectivity:Lcom/samsung/accessory/manager/connectivity/Connectivity;

    .line 459
    .line 460
    goto :goto_2

    .line 461
    :cond_f
    new-instance v0, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity;

    .line 462
    .line 463
    iget-object v2, p1, Lcom/samsung/accessory/manager/authentication/Authenticator;->mContext:Landroid/content/Context;

    .line 464
    .line 465
    invoke-direct {v0, v2}, Lcom/samsung/accessory/manager/connectivity/Connectivity;-><init>(Landroid/content/Context;)V

    .line 466
    .line 467
    .line 468
    new-instance v2, Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;

    .line 469
    .line 470
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 471
    .line 472
    .line 473
    iput-object v2, v0, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity;->mMsgHelper:Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;

    .line 474
    .line 475
    iput-object v0, p1, Lcom/samsung/accessory/manager/authentication/Authenticator;->mConnectivity:Lcom/samsung/accessory/manager/connectivity/Connectivity;

    .line 476
    .line 477
    goto :goto_2

    .line 478
    :cond_10
    new-instance v0, Lcom/samsung/accessory/manager/connectivity/BTConnectivity;

    .line 479
    .line 480
    iget-object v2, p1, Lcom/samsung/accessory/manager/authentication/Authenticator;->mContext:Landroid/content/Context;

    .line 481
    .line 482
    invoke-direct {v0, v2}, Lcom/samsung/accessory/manager/connectivity/BTConnectivity;-><init>(Landroid/content/Context;)V

    .line 483
    .line 484
    .line 485
    iput-object v0, p1, Lcom/samsung/accessory/manager/authentication/Authenticator;->mConnectivity:Lcom/samsung/accessory/manager/connectivity/Connectivity;

    .line 486
    .line 487
    goto :goto_2

    .line 488
    :cond_11
    new-instance v0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;

    .line 489
    .line 490
    iget-object v2, p1, Lcom/samsung/accessory/manager/authentication/Authenticator;->mContext:Landroid/content/Context;

    .line 491
    .line 492
    invoke-direct {v0, v2}, Lcom/samsung/accessory/manager/connectivity/Connectivity;-><init>(Landroid/content/Context;)V

    .line 493
    .line 494
    .line 495
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 496
    .line 497
    invoke-direct {v2, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 498
    .line 499
    .line 500
    iput-object v2, v0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->mEnableRequest:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 501
    .line 502
    iput-object v0, p1, Lcom/samsung/accessory/manager/authentication/Authenticator;->mConnectivity:Lcom/samsung/accessory/manager/connectivity/Connectivity;

    .line 503
    .line 504
    :goto_2
    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    .line 505
    .line 506
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mConnectivityStateCallback:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$1;

    .line 507
    .line 508
    iget-object p1, p1, Lcom/samsung/accessory/manager/authentication/Authenticator;->mConnectivity:Lcom/samsung/accessory/manager/connectivity/Connectivity;

    .line 509
    .line 510
    invoke-virtual {p1, v0}, Lcom/samsung/accessory/manager/connectivity/Connectivity;->setStateChangedCallback(Lcom/samsung/accessory/manager/authentication/AuthenticationSession$1;)V

    .line 511
    .line 512
    .line 513
    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    .line 514
    .line 515
    invoke-virtual {p1, v3}, Lcom/samsung/accessory/manager/authentication/Authenticator;->setSessionState(I)V

    .line 516
    .line 517
    .line 518
    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    .line 519
    .line 520
    iget-object p1, p1, Lcom/samsung/accessory/manager/authentication/Authenticator;->mConnectivity:Lcom/samsung/accessory/manager/connectivity/Connectivity;

    .line 521
    .line 522
    invoke-virtual {p1}, Lcom/samsung/accessory/manager/connectivity/Connectivity;->isEnabled()Z

    .line 523
    .line 524
    .line 525
    move-result p1

    .line 526
    if-eqz p1, :cond_12

    .line 527
    .line 528
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mSessionHandler:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;

    .line 529
    .line 530
    const/4 p1, 0x7

    .line 531
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 532
    .line 533
    .line 534
    goto :goto_3

    .line 535
    :cond_12
    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    .line 536
    .line 537
    iget-object p1, p1, Lcom/samsung/accessory/manager/authentication/Authenticator;->mConnectivity:Lcom/samsung/accessory/manager/connectivity/Connectivity;

    .line 538
    .line 539
    invoke-virtual {p1}, Lcom/samsung/accessory/manager/connectivity/Connectivity;->enable()Z

    .line 540
    .line 541
    .line 542
    move-result p1

    .line 543
    if-eqz p1, :cond_13

    .line 544
    .line 545
    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mConnectAfterEnable:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 546
    .line 547
    invoke-virtual {p1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 548
    .line 549
    .line 550
    const/4 p1, 0x5

    .line 551
    iput p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mInternalState:I

    .line 552
    .line 553
    goto :goto_3

    .line 554
    :cond_13
    const-string p1, "enable fail"

    .line 555
    .line 556
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    .line 558
    .line 559
    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    .line 560
    .line 561
    invoke-virtual {p1, v4}, Lcom/samsung/accessory/manager/authentication/Authenticator;->setSessionState(I)V

    .line 562
    .line 563
    .line 564
    invoke-virtual {p0, v4}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->setState(I)V

    .line 565
    .line 566
    .line 567
    const/16 p1, 0xa

    .line 568
    .line 569
    invoke-virtual {p0, p1}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->replayAuthfail(I)V

    .line 570
    .line 571
    .line 572
    :cond_14
    :goto_3
    return-void

    .line 573
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
