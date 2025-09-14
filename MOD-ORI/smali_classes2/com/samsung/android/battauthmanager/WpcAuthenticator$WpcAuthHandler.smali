.class public final Lcom/samsung/android/battauthmanager/WpcAuthenticator$WpcAuthHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/battauthmanager/WpcAuthenticator;


# direct methods
.method public constructor <init>(Lcom/samsung/android/battauthmanager/WpcAuthenticator;Landroid/os/Looper;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator$WpcAuthHandler;->this$0:Lcom/samsung/android/battauthmanager/WpcAuthenticator;

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

.method public static getNameOfMsgWhat(I)Ljava/lang/String;
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const-string p0, "MSG_AUTH_STOP"

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    if-ne v0, p0, :cond_1

    .line 8
    .line 9
    const-string p0, "MSG_AUTH_START"

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_1
    const/4 v0, 0x2

    .line 13
    if-ne v0, p0, :cond_2

    .line 14
    .line 15
    const-string p0, "MSG_AUTH_REQ_DIGEST"

    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_2
    const/4 v0, 0x3

    .line 19
    if-ne v0, p0, :cond_3

    .line 20
    .line 21
    const-string p0, "MSG_AUTH_GET_AND_CHECK_DIGEST"

    .line 22
    .line 23
    return-object p0

    .line 24
    :cond_3
    const/4 v0, 0x4

    .line 25
    if-ne v0, p0, :cond_4

    .line 26
    .line 27
    const-string p0, "MSG_AUTH_REQ_CERT_CHAIN"

    .line 28
    .line 29
    return-object p0

    .line 30
    :cond_4
    const/4 v0, 0x5

    .line 31
    if-ne v0, p0, :cond_5

    .line 32
    .line 33
    const-string p0, "MSG_AUTH_GET_AND_VERIFY_CERT_CHAIN"

    .line 34
    .line 35
    return-object p0

    .line 36
    :cond_5
    const/4 v0, 0x7

    .line 37
    if-ne v0, p0, :cond_6

    .line 38
    .line 39
    const-string p0, "MSG_AUTH_REQ_CHALLENGE"

    .line 40
    .line 41
    return-object p0

    .line 42
    :cond_6
    const/16 v0, 0x8

    .line 43
    .line 44
    if-ne v0, p0, :cond_7

    .line 45
    .line 46
    const-string p0, "MSG_AUTH_GET_AND_VERIFY_CHALLENGE"

    .line 47
    .line 48
    return-object p0

    .line 49
    :cond_7
    const/16 v0, 0x3e8

    .line 50
    .line 51
    if-ne v0, p0, :cond_8

    .line 52
    .line 53
    const-string p0, "MSG_AUTH_TIMEOUT"

    .line 54
    .line 55
    return-object p0

    .line 56
    :cond_8
    const-string v0, ""

    .line 57
    .line 58
    invoke-static {p0, v0}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    return-object p0
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v3, "handleMessage: "

    .line 8
    .line 9
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget v3, v0, Landroid/os/Message;->what:I

    .line 13
    .line 14
    invoke-static {v3}, Lcom/samsung/android/battauthmanager/WpcAuthenticator$WpcAuthHandler;->getNameOfMsgWhat(I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    const-string v3, "BattAuthManager_WpcAuthenticator"

    .line 26
    .line 27
    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    iget v2, v0, Landroid/os/Message;->what:I

    .line 31
    .line 32
    const/4 v4, 0x0

    .line 33
    const/4 v5, 0x0

    .line 34
    iget-object v6, v1, Lcom/samsung/android/battauthmanager/WpcAuthenticator$WpcAuthHandler;->this$0:Lcom/samsung/android/battauthmanager/WpcAuthenticator;

    .line 35
    .line 36
    if-eqz v2, :cond_1e

    .line 37
    .line 38
    const/4 v7, 0x1

    .line 39
    const/4 v8, 0x2

    .line 40
    if-eq v2, v7, :cond_1c

    .line 41
    .line 42
    const/16 v9, 0x3e8

    .line 43
    .line 44
    if-eq v2, v8, :cond_1a

    .line 45
    .line 46
    const/4 v10, 0x3

    .line 47
    const/4 v11, 0x7

    .line 48
    const/4 v12, 0x4

    .line 49
    if-eq v2, v10, :cond_13

    .line 50
    .line 51
    if-eq v2, v12, :cond_11

    .line 52
    .line 53
    const/4 v13, 0x5

    .line 54
    const/16 v14, 0x8

    .line 55
    .line 56
    if-eq v2, v13, :cond_6

    .line 57
    .line 58
    if-eq v2, v11, :cond_4

    .line 59
    .line 60
    if-eq v2, v14, :cond_1

    .line 61
    .line 62
    if-eq v2, v9, :cond_0

    .line 63
    .line 64
    goto/16 :goto_e

    .line 65
    .line 66
    :cond_0
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    new-instance v2, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    const-string v4, "handleMessage, timeout after "

    .line 75
    .line 76
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    invoke-static {v6, v5}, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->-$$Nest$msetAuthPass(Lcom/samsung/android/battauthmanager/WpcAuthenticator;Z)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 93
    .line 94
    .line 95
    goto/16 :goto_e

    .line 96
    .line 97
    :cond_1
    invoke-virtual {v1, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 98
    .line 99
    .line 100
    iget-object v0, v6, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->mBattAuthHelper:Lcom/samsung/android/battauthmanager/BattAuthHelper;

    .line 101
    .line 102
    invoke-virtual {v0}, Lcom/samsung/android/battauthmanager/BattAuthHelper;->readDataFromBattMisc()[B

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    if-nez v2, :cond_2

    .line 107
    .line 108
    const-string v0, "getAndVerifyChallenge, challengeAuth is invalid"

    .line 109
    .line 110
    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    :goto_0
    move v7, v5

    .line 114
    goto :goto_1

    .line 115
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    const-string v8, "getAndVerifyChallenge, challengeAuth : "

    .line 118
    .line 119
    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-static {v2}, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->byteArrayToString([B)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v8

    .line 126
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v4

    .line 133
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    .line 135
    .line 136
    iget-object v4, v6, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->certChainHash:[B

    .line 137
    .line 138
    iget-object v8, v6, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->productPublicKey:[B

    .line 139
    .line 140
    iget-object v9, v6, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->requestChallenge:[B

    .line 141
    .line 142
    invoke-virtual {v0, v4, v8, v9, v2}, Lcom/samsung/android/battauthmanager/BattAuthHelper;->verifyChallengeAuth([B[B[B[B)Z

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    if-nez v0, :cond_3

    .line 147
    .line 148
    const-string v0, "getAndVerifyChallenge,  challenge verification failed"

    .line 149
    .line 150
    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    .line 152
    .line 153
    goto :goto_0

    .line 154
    :cond_3
    const-string v0, "getAndVerifyChallenge, challenge verification succeeded"

    .line 155
    .line 156
    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    .line 158
    .line 159
    :goto_1
    invoke-static {v6, v7}, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->-$$Nest$msetAuthPass(Lcom/samsung/android/battauthmanager/WpcAuthenticator;Z)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v1, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 163
    .line 164
    .line 165
    goto/16 :goto_e

    .line 166
    .line 167
    :cond_4
    iget-object v2, v6, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->mBattAuthHelper:Lcom/samsung/android/battauthmanager/BattAuthHelper;

    .line 168
    .line 169
    invoke-virtual {v2, v5, v7}, Lcom/samsung/android/battauthmanager/BattAuthHelper;->makeChallengeReq(II)[B

    .line 170
    .line 171
    .line 172
    move-result-object v4

    .line 173
    iput-object v4, v6, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->requestChallenge:[B

    .line 174
    .line 175
    new-instance v4, Ljava/lang/StringBuilder;

    .line 176
    .line 177
    const-string/jumbo v7, "requestChallengeAuth, reqMsg : "

    .line 178
    .line 179
    .line 180
    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    iget-object v7, v6, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->requestChallenge:[B

    .line 184
    .line 185
    invoke-static {v7}, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->byteArrayToString([B)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v7

    .line 189
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v4

    .line 196
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    .line 198
    .line 199
    iget-object v4, v6, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->requestChallenge:[B

    .line 200
    .line 201
    invoke-virtual {v2, v4}, Lcom/samsung/android/battauthmanager/BattAuthHelper;->writeDataToBattMisc([B)I

    .line 202
    .line 203
    .line 204
    move-result v2

    .line 205
    iget-object v4, v6, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->requestChallenge:[B

    .line 206
    .line 207
    array-length v4, v4

    .line 208
    if-eq v2, v4, :cond_5

    .line 209
    .line 210
    const-string/jumbo v0, "requestChallengeAuth, failed to write challenge request"

    .line 211
    .line 212
    .line 213
    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    .line 215
    .line 216
    invoke-static {v6, v5}, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->-$$Nest$msetAuthPass(Lcom/samsung/android/battauthmanager/WpcAuthenticator;Z)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v1, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 220
    .line 221
    .line 222
    goto/16 :goto_e

    .line 223
    .line 224
    :cond_5
    const-string v2, "handleMessage: successfully requested challenge"

    .line 225
    .line 226
    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    .line 228
    .line 229
    iget v0, v0, Landroid/os/Message;->what:I

    .line 230
    .line 231
    invoke-static {v0}, Lcom/samsung/android/battauthmanager/WpcAuthenticator$WpcAuthHandler;->getNameOfMsgWhat(I)Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    invoke-virtual {v1, v9, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    const-wide/32 v2, 0x15f90

    .line 240
    .line 241
    .line 242
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 243
    .line 244
    .line 245
    sget-object v0, Lcom/samsung/android/battauthmanager/WpcAuthenticator$AuthStatus;->WAIT_CHALLENGE_AUTH:Lcom/samsung/android/battauthmanager/WpcAuthenticator$AuthStatus;

    .line 246
    .line 247
    iput-object v0, v6, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->status:Lcom/samsung/android/battauthmanager/WpcAuthenticator$AuthStatus;

    .line 248
    .line 249
    goto/16 :goto_e

    .line 250
    .line 251
    :cond_6
    invoke-virtual {v1, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 252
    .line 253
    .line 254
    iget-object v2, v6, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->mBattAuthHelper:Lcom/samsung/android/battauthmanager/BattAuthHelper;

    .line 255
    .line 256
    invoke-virtual {v2}, Lcom/samsung/android/battauthmanager/BattAuthHelper;->readDataFromBattMisc()[B

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    new-instance v9, Ljava/lang/StringBuilder;

    .line 261
    .line 262
    const-string v13, "getAndVerifyCertChain, receivedBytes : "

    .line 263
    .line 264
    invoke-direct {v9, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    invoke-static {v0}, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->byteArrayToString([B)Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v13

    .line 271
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v9

    .line 278
    invoke-static {v3, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    .line 280
    .line 281
    const/4 v9, -0x1

    .line 282
    if-eqz v0, :cond_e

    .line 283
    .line 284
    array-length v13, v0

    .line 285
    if-eqz v13, :cond_e

    .line 286
    .line 287
    aget-byte v13, v0, v5

    .line 288
    .line 289
    const/16 v15, 0x12

    .line 290
    .line 291
    if-eq v13, v15, :cond_7

    .line 292
    .line 293
    goto/16 :goto_5

    .line 294
    .line 295
    :cond_7
    iget-object v13, v6, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->certChainList:Ljava/util/ArrayList;

    .line 296
    .line 297
    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    .line 298
    .line 299
    .line 300
    move-result v13

    .line 301
    if-eqz v13, :cond_9

    .line 302
    .line 303
    array-length v13, v0

    .line 304
    if-ge v13, v10, :cond_8

    .line 305
    .line 306
    const-string v0, "getAndVerifyCertChain: cannot find whole length"

    .line 307
    .line 308
    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    .line 310
    .line 311
    goto/16 :goto_6

    .line 312
    .line 313
    :cond_8
    aget-byte v10, v0, v7

    .line 314
    .line 315
    and-int/lit16 v10, v10, 0xff

    .line 316
    .line 317
    shl-int/2addr v10, v14

    .line 318
    aget-byte v8, v0, v8

    .line 319
    .line 320
    and-int/lit16 v8, v8, 0xff

    .line 321
    .line 322
    or-int/2addr v8, v10

    .line 323
    iput v8, v6, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->wholeCertChainLength:I

    .line 324
    .line 325
    new-instance v8, Ljava/lang/StringBuilder;

    .line 326
    .line 327
    const-string v10, "getAndVerifyCertChain: whole certChainLength : "

    .line 328
    .line 329
    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 330
    .line 331
    .line 332
    iget v10, v6, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->wholeCertChainLength:I

    .line 333
    .line 334
    invoke-static {v8, v10, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 335
    .line 336
    .line 337
    iget v8, v6, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->wholeCertChainLength:I

    .line 338
    .line 339
    const/16 v10, 0x329

    .line 340
    .line 341
    if-le v8, v10, :cond_9

    .line 342
    .line 343
    const-string v0, "getAndVerifyCertChain: certChainLength is too long"

    .line 344
    .line 345
    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    .line 347
    .line 348
    goto/16 :goto_6

    .line 349
    .line 350
    :cond_9
    :goto_2
    array-length v8, v0

    .line 351
    if-ge v7, v8, :cond_a

    .line 352
    .line 353
    iget-object v8, v6, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->certChainList:Ljava/util/ArrayList;

    .line 354
    .line 355
    aget-byte v10, v0, v7

    .line 356
    .line 357
    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 358
    .line 359
    .line 360
    move-result-object v10

    .line 361
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 362
    .line 363
    .line 364
    add-int/lit8 v7, v7, 0x1

    .line 365
    .line 366
    goto :goto_2

    .line 367
    :cond_a
    iget v0, v6, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->wholeCertChainLength:I

    .line 368
    .line 369
    iget-object v7, v6, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->certChainList:Ljava/util/ArrayList;

    .line 370
    .line 371
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 372
    .line 373
    .line 374
    move-result v7

    .line 375
    sub-int/2addr v0, v7

    .line 376
    new-instance v7, Ljava/lang/StringBuilder;

    .line 377
    .line 378
    const-string v8, "getAndVerifyCertChain: saved cert chain len : "

    .line 379
    .line 380
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 381
    .line 382
    .line 383
    iget-object v8, v6, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->certChainList:Ljava/util/ArrayList;

    .line 384
    .line 385
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 386
    .line 387
    .line 388
    move-result v8

    .line 389
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 390
    .line 391
    .line 392
    const-string v8, ", need more len : "

    .line 393
    .line 394
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    .line 396
    .line 397
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 398
    .line 399
    .line 400
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 401
    .line 402
    .line 403
    move-result-object v7

    .line 404
    invoke-static {v3, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    .line 406
    .line 407
    if-eqz v0, :cond_b

    .line 408
    .line 409
    move v9, v0

    .line 410
    goto/16 :goto_6

    .line 411
    .line 412
    :cond_b
    iget-object v0, v6, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->certChainList:Ljava/util/ArrayList;

    .line 413
    .line 414
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 415
    .line 416
    .line 417
    move-result v0

    .line 418
    new-array v7, v0, [B

    .line 419
    .line 420
    move v0, v5

    .line 421
    :goto_3
    iget-object v8, v6, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->certChainList:Ljava/util/ArrayList;

    .line 422
    .line 423
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 424
    .line 425
    .line 426
    move-result v8

    .line 427
    if-ge v0, v8, :cond_c

    .line 428
    .line 429
    iget-object v8, v6, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->certChainList:Ljava/util/ArrayList;

    .line 430
    .line 431
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 432
    .line 433
    .line 434
    move-result-object v8

    .line 435
    check-cast v8, Ljava/lang/Byte;

    .line 436
    .line 437
    invoke-virtual {v8}, Ljava/lang/Byte;->byteValue()B

    .line 438
    .line 439
    .line 440
    move-result v8

    .line 441
    aput-byte v8, v7, v0

    .line 442
    .line 443
    add-int/lit8 v0, v0, 0x1

    .line 444
    .line 445
    goto :goto_3

    .line 446
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    .line 447
    .line 448
    const-string v8, "getAndVerifyCertChain, whole chain  : "

    .line 449
    .line 450
    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 451
    .line 452
    .line 453
    invoke-static {v7}, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->byteArrayToString([B)Ljava/lang/String;

    .line 454
    .line 455
    .line 456
    move-result-object v8

    .line 457
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    .line 459
    .line 460
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 461
    .line 462
    .line 463
    move-result-object v0

    .line 464
    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    .line 466
    .line 467
    :try_start_0
    const-string v0, "SHA-256"

    .line 468
    .line 469
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 470
    .line 471
    .line 472
    move-result-object v0

    .line 473
    invoke-virtual {v0, v7}, Ljava/security/MessageDigest;->update([B)V

    .line 474
    .line 475
    .line 476
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    .line 477
    .line 478
    .line 479
    move-result-object v4
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 480
    goto :goto_4

    .line 481
    :catch_0
    move-exception v0

    .line 482
    const-string v8, "getSha256Hash: NoSuchAlgorithmException"

    .line 483
    .line 484
    invoke-static {v3, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 485
    .line 486
    .line 487
    :goto_4
    iput-object v4, v6, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->certChainHash:[B

    .line 488
    .line 489
    invoke-virtual {v2, v7}, Lcom/samsung/android/battauthmanager/BattAuthHelper;->verifyWpcCertChain([B)[B

    .line 490
    .line 491
    .line 492
    move-result-object v0

    .line 493
    iput-object v0, v6, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->productPublicKey:[B

    .line 494
    .line 495
    if-nez v0, :cond_d

    .line 496
    .line 497
    const-string v0, "getAndVerifyCertChain: failed to verify certificate chain again"

    .line 498
    .line 499
    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    .line 501
    .line 502
    goto :goto_6

    .line 503
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    .line 504
    .line 505
    const-string v2, "getAndVerifyCertChain, verified, pubKey : "

    .line 506
    .line 507
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 508
    .line 509
    .line 510
    iget-object v2, v6, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->productPublicKey:[B

    .line 511
    .line 512
    invoke-static {v2}, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->byteArrayToString([B)Ljava/lang/String;

    .line 513
    .line 514
    .line 515
    move-result-object v2

    .line 516
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    .line 518
    .line 519
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 520
    .line 521
    .line 522
    move-result-object v0

    .line 523
    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    .line 525
    .line 526
    move v9, v5

    .line 527
    goto :goto_6

    .line 528
    :cond_e
    :goto_5
    const-string v0, "getAndVerifyCertChain: certificate chain has invalid header"

    .line 529
    .line 530
    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    .line 532
    .line 533
    :goto_6
    if-lez v9, :cond_f

    .line 534
    .line 535
    const-string v0, "handleMessage: more data needed for authentication"

    .line 536
    .line 537
    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    .line 539
    .line 540
    invoke-virtual {v1, v12}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 541
    .line 542
    .line 543
    goto/16 :goto_e

    .line 544
    .line 545
    :cond_f
    if-gez v9, :cond_10

    .line 546
    .line 547
    invoke-static {v6, v5}, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->-$$Nest$msetAuthPass(Lcom/samsung/android/battauthmanager/WpcAuthenticator;Z)V

    .line 548
    .line 549
    .line 550
    invoke-virtual {v1, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 551
    .line 552
    .line 553
    goto/16 :goto_e

    .line 554
    .line 555
    :cond_10
    const-string v0, "handleMessage: successfully verified certificate"

    .line 556
    .line 557
    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    .line 559
    .line 560
    invoke-virtual {v1, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 561
    .line 562
    .line 563
    goto/16 :goto_e

    .line 564
    .line 565
    :cond_11
    iget-object v2, v6, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->certChainList:Ljava/util/ArrayList;

    .line 566
    .line 567
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 568
    .line 569
    .line 570
    move-result v2

    .line 571
    div-int/lit16 v13, v2, 0x100

    .line 572
    .line 573
    rem-int/lit16 v15, v2, 0x100

    .line 574
    .line 575
    const/4 v14, 0x0

    .line 576
    const/16 v16, 0x0

    .line 577
    .line 578
    iget-object v10, v6, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->mBattAuthHelper:Lcom/samsung/android/battauthmanager/BattAuthHelper;

    .line 579
    .line 580
    const/4 v11, 0x0

    .line 581
    const/4 v12, 0x1

    .line 582
    invoke-virtual/range {v10 .. v16}, Lcom/samsung/android/battauthmanager/BattAuthHelper;->makeGetCertReq(IIIIII)[B

    .line 583
    .line 584
    .line 585
    move-result-object v4

    .line 586
    const-string/jumbo v7, "requestCertChain, offset: "

    .line 587
    .line 588
    .line 589
    const-string v8, ", length: 0, reqMsg : "

    .line 590
    .line 591
    invoke-static {v2, v7, v8}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 592
    .line 593
    .line 594
    move-result-object v2

    .line 595
    invoke-static {v4}, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->byteArrayToString([B)Ljava/lang/String;

    .line 596
    .line 597
    .line 598
    move-result-object v7

    .line 599
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 600
    .line 601
    .line 602
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 603
    .line 604
    .line 605
    move-result-object v2

    .line 606
    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    .line 608
    .line 609
    iget-object v2, v6, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->mBattAuthHelper:Lcom/samsung/android/battauthmanager/BattAuthHelper;

    .line 610
    .line 611
    invoke-virtual {v2, v4}, Lcom/samsung/android/battauthmanager/BattAuthHelper;->writeDataToBattMisc([B)I

    .line 612
    .line 613
    .line 614
    move-result v2

    .line 615
    array-length v4, v4

    .line 616
    if-eq v2, v4, :cond_12

    .line 617
    .line 618
    const-string/jumbo v0, "requestCertChain: failed to write certificate chain request"

    .line 619
    .line 620
    .line 621
    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    .line 623
    .line 624
    invoke-static {v6, v5}, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->-$$Nest$msetAuthPass(Lcom/samsung/android/battauthmanager/WpcAuthenticator;Z)V

    .line 625
    .line 626
    .line 627
    invoke-virtual {v1, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 628
    .line 629
    .line 630
    goto/16 :goto_e

    .line 631
    .line 632
    :cond_12
    const-string v2, "handleMessage: successfully requested certificate"

    .line 633
    .line 634
    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    .line 636
    .line 637
    iget v0, v0, Landroid/os/Message;->what:I

    .line 638
    .line 639
    invoke-static {v0}, Lcom/samsung/android/battauthmanager/WpcAuthenticator$WpcAuthHandler;->getNameOfMsgWhat(I)Ljava/lang/String;

    .line 640
    .line 641
    .line 642
    move-result-object v0

    .line 643
    invoke-virtual {v1, v9, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 644
    .line 645
    .line 646
    move-result-object v0

    .line 647
    const-wide/32 v2, 0x493e0

    .line 648
    .line 649
    .line 650
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 651
    .line 652
    .line 653
    sget-object v0, Lcom/samsung/android/battauthmanager/WpcAuthenticator$AuthStatus;->WAIT_CERT_CHAIN:Lcom/samsung/android/battauthmanager/WpcAuthenticator$AuthStatus;

    .line 654
    .line 655
    iput-object v0, v6, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->status:Lcom/samsung/android/battauthmanager/WpcAuthenticator$AuthStatus;

    .line 656
    .line 657
    goto/16 :goto_e

    .line 658
    .line 659
    :cond_13
    invoke-virtual {v1, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 660
    .line 661
    .line 662
    iget-object v0, v6, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->mBattAuthHelper:Lcom/samsung/android/battauthmanager/BattAuthHelper;

    .line 663
    .line 664
    invoke-virtual {v0}, Lcom/samsung/android/battauthmanager/BattAuthHelper;->readDataFromBattMisc()[B

    .line 665
    .line 666
    .line 667
    move-result-object v0

    .line 668
    new-instance v2, Ljava/lang/StringBuilder;

    .line 669
    .line 670
    const-string v4, "getAndCheckDigests, digest : "

    .line 671
    .line 672
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 673
    .line 674
    .line 675
    invoke-static {v0}, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->byteArrayToString([B)Ljava/lang/String;

    .line 676
    .line 677
    .line 678
    move-result-object v4

    .line 679
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 680
    .line 681
    .line 682
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 683
    .line 684
    .line 685
    move-result-object v2

    .line 686
    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    .line 688
    .line 689
    array-length v2, v0

    .line 690
    const/16 v4, 0x22

    .line 691
    .line 692
    if-eq v2, v4, :cond_14

    .line 693
    .line 694
    new-instance v2, Ljava/lang/StringBuilder;

    .line 695
    .line 696
    const-string v4, "getAndCheckDigests: incorrect length of digest: "

    .line 697
    .line 698
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 699
    .line 700
    .line 701
    array-length v0, v0

    .line 702
    invoke-static {v2, v0, v3}, Lcom/android/server/VaultKeeperService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 703
    .line 704
    .line 705
    goto/16 :goto_d

    .line 706
    .line 707
    :cond_14
    array-length v2, v0

    .line 708
    invoke-static {v0, v8, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 709
    .line 710
    .line 711
    move-result-object v2

    .line 712
    invoke-static {}, Ljava/util/Base64;->getEncoder()Ljava/util/Base64$Encoder;

    .line 713
    .line 714
    .line 715
    move-result-object v0

    .line 716
    invoke-virtual {v0, v2}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    .line 717
    .line 718
    .line 719
    move-result-object v0

    .line 720
    const-string v4, "getAndCheckDigests, b64ResMsg : "

    .line 721
    .line 722
    invoke-static {v4, v0, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    .line 724
    .line 725
    new-array v4, v5, [Ljava/lang/String;

    .line 726
    .line 727
    const-string v8, "/efs/Battery/qi_digests/cached_digests"

    .line 728
    .line 729
    invoke-static {v8, v4}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    .line 730
    .line 731
    .line 732
    move-result-object v4

    .line 733
    new-array v5, v5, [Ljava/nio/file/LinkOption;

    .line 734
    .line 735
    invoke-static {v4, v5}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    .line 736
    .line 737
    .line 738
    move-result v5

    .line 739
    const-string v8, ""

    .line 740
    .line 741
    if-nez v5, :cond_15

    .line 742
    .line 743
    const-string/jumbo v0, "searchDigest, digest file not found : /efs/Battery/qi_digests/cached_digests"

    .line 744
    .line 745
    .line 746
    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    .line 748
    .line 749
    goto :goto_c

    .line 750
    :cond_15
    :try_start_1
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 751
    .line 752
    invoke-static {v4, v5}, Ljava/nio/file/Files;->newBufferedReader(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Ljava/io/BufferedReader;

    .line 753
    .line 754
    .line 755
    move-result-object v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 756
    :goto_7
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 757
    .line 758
    .line 759
    move-result-object v5

    .line 760
    if-eqz v5, :cond_17

    .line 761
    .line 762
    new-instance v9, Ljava/lang/StringBuilder;

    .line 763
    .line 764
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 765
    .line 766
    .line 767
    const-string/jumbo v10, "searchDigest, line : "

    .line 768
    .line 769
    .line 770
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 771
    .line 772
    .line 773
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 774
    .line 775
    .line 776
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 777
    .line 778
    .line 779
    move-result-object v9

    .line 780
    invoke-static {v3, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    .line 782
    .line 783
    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 784
    .line 785
    .line 786
    move-result v9

    .line 787
    if-eqz v9, :cond_16

    .line 788
    .line 789
    new-instance v0, Ljava/lang/StringBuilder;

    .line 790
    .line 791
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 792
    .line 793
    .line 794
    const-string/jumbo v9, "searchDigest, match found! "

    .line 795
    .line 796
    .line 797
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 798
    .line 799
    .line 800
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 801
    .line 802
    .line 803
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 804
    .line 805
    .line 806
    move-result-object v0

    .line 807
    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 808
    .line 809
    .line 810
    move-object v8, v5

    .line 811
    goto :goto_8

    .line 812
    :catchall_0
    move-exception v0

    .line 813
    move-object v5, v0

    .line 814
    goto :goto_9

    .line 815
    :cond_16
    add-int/lit8 v7, v7, 0x1

    .line 816
    .line 817
    goto :goto_7

    .line 818
    :cond_17
    :goto_8
    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 819
    .line 820
    .line 821
    goto :goto_c

    .line 822
    :catch_1
    move-exception v0

    .line 823
    goto :goto_b

    .line 824
    :goto_9
    if-eqz v4, :cond_18

    .line 825
    .line 826
    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 827
    .line 828
    .line 829
    goto :goto_a

    .line 830
    :catchall_1
    move-exception v0

    .line 831
    move-object v4, v0

    .line 832
    :try_start_5
    invoke-virtual {v5, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 833
    .line 834
    .line 835
    :cond_18
    :goto_a
    throw v5
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 836
    :goto_b
    const-string/jumbo v4, "searchDigest"

    .line 837
    .line 838
    .line 839
    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 840
    .line 841
    .line 842
    :goto_c
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    .line 843
    .line 844
    .line 845
    move-result v0

    .line 846
    if-eqz v0, :cond_19

    .line 847
    .line 848
    const-string v0, "getAndCheckDigests, not found cached digests"

    .line 849
    .line 850
    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    .line 852
    .line 853
    :goto_d
    const-string v0, "handleMessage: checking digest failed, requesting certificate chain"

    .line 854
    .line 855
    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    .line 857
    .line 858
    invoke-virtual {v1, v12}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 859
    .line 860
    .line 861
    goto/16 :goto_e

    .line 862
    .line 863
    :cond_19
    array-length v0, v2

    .line 864
    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 865
    .line 866
    .line 867
    move-result-object v0

    .line 868
    iput-object v0, v6, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->certChainHash:[B

    .line 869
    .line 870
    const/16 v0, 0x2c

    .line 871
    .line 872
    invoke-virtual {v8, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 873
    .line 874
    .line 875
    move-result-object v0

    .line 876
    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    .line 877
    .line 878
    .line 879
    move-result-object v2

    .line 880
    invoke-virtual {v2, v0}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    .line 881
    .line 882
    .line 883
    move-result-object v0

    .line 884
    array-length v2, v0

    .line 885
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 886
    .line 887
    .line 888
    move-result-object v0

    .line 889
    iput-object v0, v6, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->productPublicKey:[B

    .line 890
    .line 891
    invoke-virtual {v1, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 892
    .line 893
    .line 894
    goto/16 :goto_e

    .line 895
    .line 896
    :cond_1a
    iget-object v2, v6, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->mBattAuthHelper:Lcom/samsung/android/battauthmanager/BattAuthHelper;

    .line 897
    .line 898
    invoke-virtual {v2, v7, v7}, Lcom/samsung/android/battauthmanager/BattAuthHelper;->makeGetDigestsReq(BI)[B

    .line 899
    .line 900
    .line 901
    move-result-object v4

    .line 902
    new-instance v7, Ljava/lang/StringBuilder;

    .line 903
    .line 904
    const-string/jumbo v8, "requestDigests, reqMsg : "

    .line 905
    .line 906
    .line 907
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 908
    .line 909
    .line 910
    invoke-static {v4}, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->byteArrayToString([B)Ljava/lang/String;

    .line 911
    .line 912
    .line 913
    move-result-object v8

    .line 914
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 915
    .line 916
    .line 917
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 918
    .line 919
    .line 920
    move-result-object v7

    .line 921
    invoke-static {v3, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    .line 923
    .line 924
    invoke-virtual {v2, v4}, Lcom/samsung/android/battauthmanager/BattAuthHelper;->writeDataToBattMisc([B)I

    .line 925
    .line 926
    .line 927
    move-result v2

    .line 928
    array-length v4, v4

    .line 929
    if-eq v2, v4, :cond_1b

    .line 930
    .line 931
    const-string/jumbo v0, "requestDigests: failed to write digest request"

    .line 932
    .line 933
    .line 934
    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    .line 936
    .line 937
    const-string v0, "handleMessage, requestDigests failed"

    .line 938
    .line 939
    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    .line 941
    .line 942
    invoke-static {v6, v5}, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->-$$Nest$msetAuthPass(Lcom/samsung/android/battauthmanager/WpcAuthenticator;Z)V

    .line 943
    .line 944
    .line 945
    invoke-virtual {v1, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 946
    .line 947
    .line 948
    goto :goto_e

    .line 949
    :cond_1b
    const-string v2, "handleMessage: successfully requested digests"

    .line 950
    .line 951
    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    .line 953
    .line 954
    iget v0, v0, Landroid/os/Message;->what:I

    .line 955
    .line 956
    invoke-static {v0}, Lcom/samsung/android/battauthmanager/WpcAuthenticator$WpcAuthHandler;->getNameOfMsgWhat(I)Ljava/lang/String;

    .line 957
    .line 958
    .line 959
    move-result-object v0

    .line 960
    invoke-virtual {v1, v9, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 961
    .line 962
    .line 963
    move-result-object v0

    .line 964
    const-wide/32 v2, 0xea60

    .line 965
    .line 966
    .line 967
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 968
    .line 969
    .line 970
    sget-object v0, Lcom/samsung/android/battauthmanager/WpcAuthenticator$AuthStatus;->WAIT_DIGEST:Lcom/samsung/android/battauthmanager/WpcAuthenticator$AuthStatus;

    .line 971
    .line 972
    iput-object v0, v6, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->status:Lcom/samsung/android/battauthmanager/WpcAuthenticator$AuthStatus;

    .line 973
    .line 974
    goto :goto_e

    .line 975
    :cond_1c
    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 976
    .line 977
    .line 978
    iget-object v0, v6, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->mAuthWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 979
    .line 980
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    .line 981
    .line 982
    .line 983
    move-result v0

    .line 984
    if-nez v0, :cond_1d

    .line 985
    .line 986
    iget-object v0, v6, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->mAuthWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 987
    .line 988
    const-wide/32 v2, 0x124f80

    .line 989
    .line 990
    .line 991
    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 992
    .line 993
    .line 994
    :cond_1d
    invoke-virtual {v1, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 995
    .line 996
    .line 997
    iget-object v0, v6, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->certChainList:Ljava/util/ArrayList;

    .line 998
    .line 999
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1000
    .line 1001
    .line 1002
    iput v5, v6, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->wholeCertChainLength:I

    .line 1003
    .line 1004
    goto :goto_e

    .line 1005
    :cond_1e
    const-string v0, "handleMessage, auth stop"

    .line 1006
    .line 1007
    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    .line 1009
    .line 1010
    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1011
    .line 1012
    .line 1013
    iget-object v0, v6, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->mAuthWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1014
    .line 1015
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    .line 1016
    .line 1017
    .line 1018
    move-result v0

    .line 1019
    if-eqz v0, :cond_1f

    .line 1020
    .line 1021
    iget-object v0, v6, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->mAuthWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1022
    .line 1023
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1024
    .line 1025
    .line 1026
    :cond_1f
    sget-object v0, Lcom/samsung/android/battauthmanager/WpcAuthenticator$AuthStatus;->STATUS_NONE:Lcom/samsung/android/battauthmanager/WpcAuthenticator$AuthStatus;

    .line 1027
    .line 1028
    iput-object v0, v6, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->status:Lcom/samsung/android/battauthmanager/WpcAuthenticator$AuthStatus;

    .line 1029
    .line 1030
    iget-object v0, v6, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->certChainList:Ljava/util/ArrayList;

    .line 1031
    .line 1032
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1033
    .line 1034
    .line 1035
    iput v5, v6, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->wholeCertChainLength:I

    .line 1036
    .line 1037
    :goto_e
    return-void
.end method
