.class public final Lcom/android/server/trust/TrustAgentWrapper$3;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/trust/TrustAgentWrapper;


# direct methods
.method public constructor <init>(Lcom/android/server/trust/TrustAgentWrapper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget v2, v1, Landroid/os/Message;->what:I

    .line 6
    .line 7
    const/4 v3, 0x2

    .line 8
    const-string v4, "escrow_token"

    .line 9
    .line 10
    const-string v5, "TrustManagerService"

    .line 11
    .line 12
    const-string v6, "handle"

    .line 13
    .line 14
    const/4 v7, 0x0

    .line 15
    const-string/jumbo v8, "user_id"

    .line 16
    .line 17
    .line 18
    const-string v9, "TrustAgentWrapper"

    .line 19
    .line 20
    const/4 v10, 0x1

    .line 21
    const/4 v11, 0x0

    .line 22
    iget-object v12, v0, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    .line 23
    .line 24
    packed-switch v2, :pswitch_data_0

    .line 25
    .line 26
    .line 27
    goto/16 :goto_9

    .line 28
    .line 29
    :pswitch_0
    iput-boolean v11, v12, Lcom/android/server/trust/TrustAgentWrapper;->mTrusted:Z

    .line 30
    .line 31
    iput-boolean v11, v12, Lcom/android/server/trust/TrustAgentWrapper;->mTrustable:Z

    .line 32
    .line 33
    iget-object v0, v12, Lcom/android/server/trust/TrustAgentWrapper;->mTrustManagerService:Lcom/android/server/trust/TrustManagerService;

    .line 34
    .line 35
    iget v1, v12, Lcom/android/server/trust/TrustAgentWrapper;->mUserId:I

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Lcom/android/server/trust/TrustManagerService;->updateTrust(I)V

    .line 38
    .line 39
    .line 40
    iget-object v0, v0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 41
    .line 42
    const/16 v2, 0x100

    .line 43
    .line 44
    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/LockPatternUtils;->requireStrongAuth(II)V

    .line 45
    .line 46
    .line 47
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-interface {v0, v7}, Landroid/view/IWindowManager;->lockNow(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .line 53
    .line 54
    goto/16 :goto_9

    .line 55
    .line 56
    :catch_0
    const-string v0, "Error locking screen when called from trust agent"

    .line 57
    .line 58
    invoke-static {v5, v0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    goto/16 :goto_9

    .line 62
    .line 63
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    const-string/jumbo v1, "message"

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    iget-object v2, v12, Lcom/android/server/trust/TrustAgentWrapper;->mTrustManagerService:Lcom/android/server/trust/TrustManagerService;

    .line 75
    .line 76
    sget-boolean v0, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    .line 77
    .line 78
    if-eqz v0, :cond_0

    .line 79
    .line 80
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    const-string/jumbo v3, "onTrustError("

    .line 86
    .line 87
    .line 88
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string v3, ")"

    .line 95
    .line 96
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    .line 105
    .line 106
    :cond_0
    :goto_0
    iget-object v0, v2, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    .line 107
    .line 108
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    if-ge v11, v0, :cond_14

    .line 113
    .line 114
    :try_start_1
    iget-object v0, v2, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    .line 115
    .line 116
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    check-cast v0, Landroid/app/trust/ITrustListener;

    .line 121
    .line 122
    invoke-interface {v0, v1}, Landroid/app/trust/ITrustListener;->onTrustError(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 123
    .line 124
    .line 125
    goto :goto_1

    .line 126
    :catch_1
    move-exception v0

    .line 127
    const-string v3, "Exception while notifying TrustListener."

    .line 128
    .line 129
    invoke-static {v5, v3, v0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 130
    .line 131
    .line 132
    goto :goto_1

    .line 133
    :catch_2
    const-string v0, "Removing dead TrustListener."

    .line 134
    .line 135
    invoke-static {v5, v0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    .line 137
    .line 138
    iget-object v0, v2, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    .line 139
    .line 140
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    add-int/lit8 v11, v11, -0x1

    .line 144
    .line 145
    :goto_1
    add-int/2addr v11, v10

    .line 146
    goto :goto_0

    .line 147
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    .line 152
    .line 153
    .line 154
    move-result-wide v2

    .line 155
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 160
    .line 161
    .line 162
    move-result v0

    .line 163
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    iget-object v4, v12, Lcom/android/server/trust/TrustAgentWrapper;->mTrustManagerService:Lcom/android/server/trust/TrustManagerService;

    .line 172
    .line 173
    iget-object v4, v4, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 174
    .line 175
    invoke-virtual {v4, v2, v3, v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->unlockUserWithToken(J[BI)Z

    .line 176
    .line 177
    .line 178
    goto/16 :goto_9

    .line 179
    .line 180
    :pswitch_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    .line 185
    .line 186
    .line 187
    move-result-wide v2

    .line 188
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 193
    .line 194
    .line 195
    move-result v0

    .line 196
    iget-object v1, v12, Lcom/android/server/trust/TrustAgentWrapper;->mTrustManagerService:Lcom/android/server/trust/TrustManagerService;

    .line 197
    .line 198
    iget-object v1, v1, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 199
    .line 200
    invoke-virtual {v1, v2, v3, v0}, Lcom/android/internal/widget/LockPatternUtils;->isEscrowTokenActive(JI)Z

    .line 201
    .line 202
    .line 203
    move-result v0

    .line 204
    :try_start_2
    iget-object v1, v12, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    .line 205
    .line 206
    if-eqz v1, :cond_14

    .line 207
    .line 208
    invoke-interface {v1, v2, v3, v0}, Landroid/service/trust/ITrustAgentService;->onTokenStateReceived(JI)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_3

    .line 209
    .line 210
    .line 211
    goto/16 :goto_9

    .line 212
    .line 213
    :catch_3
    move-exception v0

    .line 214
    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->onError(Ljava/lang/Exception;)V

    .line 215
    .line 216
    .line 217
    goto/16 :goto_9

    .line 218
    .line 219
    :pswitch_4
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    .line 224
    .line 225
    .line 226
    move-result-wide v2

    .line 227
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 232
    .line 233
    .line 234
    move-result v0

    .line 235
    iget-object v1, v12, Lcom/android/server/trust/TrustAgentWrapper;->mTrustManagerService:Lcom/android/server/trust/TrustManagerService;

    .line 236
    .line 237
    iget-object v1, v1, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 238
    .line 239
    invoke-virtual {v1, v2, v3, v0}, Lcom/android/internal/widget/LockPatternUtils;->removeEscrowToken(JI)Z

    .line 240
    .line 241
    .line 242
    move-result v0

    .line 243
    :try_start_3
    iget-object v1, v12, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    .line 244
    .line 245
    if-eqz v1, :cond_14

    .line 246
    .line 247
    invoke-interface {v1, v2, v3, v0}, Landroid/service/trust/ITrustAgentService;->onEscrowTokenRemoved(JZ)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_4

    .line 248
    .line 249
    .line 250
    goto/16 :goto_9

    .line 251
    .line 252
    :catch_4
    move-exception v0

    .line 253
    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->onError(Ljava/lang/Exception;)V

    .line 254
    .line 255
    .line 256
    goto/16 :goto_9

    .line 257
    .line 258
    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    .line 263
    .line 264
    .line 265
    move-result-object v0

    .line 266
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 267
    .line 268
    .line 269
    move-result-object v1

    .line 270
    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 271
    .line 272
    .line 273
    move-result v1

    .line 274
    iget-object v2, v12, Lcom/android/server/trust/TrustAgentWrapper;->mTrustManagerService:Lcom/android/server/trust/TrustManagerService;

    .line 275
    .line 276
    iget-object v3, v2, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 277
    .line 278
    new-instance v4, Lcom/android/server/trust/TrustManagerService$$ExternalSyntheticLambda1;

    .line 279
    .line 280
    invoke-direct {v4, v2}, Lcom/android/server/trust/TrustManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/trust/TrustManagerService;)V

    .line 281
    .line 282
    .line 283
    invoke-virtual {v3, v0, v1, v4}, Lcom/android/internal/widget/LockPatternUtils;->addEscrowToken([BILcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;)J

    .line 284
    .line 285
    .line 286
    move-result-wide v2

    .line 287
    :try_start_4
    iget-object v4, v12, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    .line 288
    .line 289
    if-eqz v4, :cond_1

    .line 290
    .line 291
    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 292
    .line 293
    .line 294
    move-result-object v5

    .line 295
    invoke-interface {v4, v0, v2, v3, v5}, Landroid/service/trust/ITrustAgentService;->onEscrowTokenAdded([BJLandroid/os/UserHandle;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_5

    .line 296
    .line 297
    .line 298
    goto/16 :goto_9

    .line 299
    .line 300
    :catch_5
    move-exception v0

    .line 301
    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->onError(Ljava/lang/Exception;)V

    .line 302
    .line 303
    .line 304
    :cond_1
    iget-object v0, v12, Lcom/android/server/trust/TrustAgentWrapper;->mTrustManagerService:Lcom/android/server/trust/TrustManagerService;

    .line 305
    .line 306
    iget-object v0, v0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 307
    .line 308
    invoke-virtual {v0, v2, v3, v1}, Lcom/android/internal/widget/LockPatternUtils;->removeEscrowToken(JI)Z

    .line 309
    .line 310
    .line 311
    goto/16 :goto_9

    .line 312
    .line 313
    :pswitch_6
    iget v0, v1, Landroid/os/Message;->arg1:I

    .line 314
    .line 315
    if-eqz v0, :cond_2

    .line 316
    .line 317
    goto :goto_2

    .line 318
    :cond_2
    move v10, v11

    .line 319
    :goto_2
    iput-boolean v10, v12, Lcom/android/server/trust/TrustAgentWrapper;->mManagingTrust:Z

    .line 320
    .line 321
    if-nez v10, :cond_3

    .line 322
    .line 323
    iput-boolean v11, v12, Lcom/android/server/trust/TrustAgentWrapper;->mTrusted:Z

    .line 324
    .line 325
    iput-boolean v11, v12, Lcom/android/server/trust/TrustAgentWrapper;->mDisplayTrustGrantedMessage:Z

    .line 326
    .line 327
    iput-object v7, v12, Lcom/android/server/trust/TrustAgentWrapper;->mMessage:Ljava/lang/CharSequence;

    .line 328
    .line 329
    :cond_3
    iget-object v0, v12, Lcom/android/server/trust/TrustAgentWrapper;->mTrustManagerService:Lcom/android/server/trust/TrustManagerService;

    .line 330
    .line 331
    iget-object v1, v0, Lcom/android/server/trust/TrustManagerService;->mArchive:Lcom/android/server/trust/TrustArchive;

    .line 332
    .line 333
    iget-object v2, v12, Lcom/android/server/trust/TrustAgentWrapper;->mName:Landroid/content/ComponentName;

    .line 334
    .line 335
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 336
    .line 337
    .line 338
    new-instance v3, Lcom/android/server/trust/TrustArchive$Event;

    .line 339
    .line 340
    const/4 v14, 0x6

    .line 341
    const/16 v20, 0x0

    .line 342
    .line 343
    iget v15, v12, Lcom/android/server/trust/TrustAgentWrapper;->mUserId:I

    .line 344
    .line 345
    const/16 v17, 0x0

    .line 346
    .line 347
    const-wide/16 v18, 0x0

    .line 348
    .line 349
    move-object v13, v3

    .line 350
    move-object/from16 v16, v2

    .line 351
    .line 352
    move/from16 v21, v10

    .line 353
    .line 354
    invoke-direct/range {v13 .. v21}, Lcom/android/server/trust/TrustArchive$Event;-><init>(IILandroid/content/ComponentName;Ljava/lang/String;JIZ)V

    .line 355
    .line 356
    .line 357
    invoke-virtual {v1, v3}, Lcom/android/server/trust/TrustArchive;->addEvent(Lcom/android/server/trust/TrustArchive$Event;)V

    .line 358
    .line 359
    .line 360
    iget v1, v12, Lcom/android/server/trust/TrustAgentWrapper;->mUserId:I

    .line 361
    .line 362
    invoke-virtual {v0, v1}, Lcom/android/server/trust/TrustManagerService;->updateTrust(I)V

    .line 363
    .line 364
    .line 365
    goto/16 :goto_9

    .line 366
    .line 367
    :pswitch_7
    iget-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 368
    .line 369
    check-cast v0, Landroid/os/IBinder;

    .line 370
    .line 371
    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 372
    .line 373
    if-eqz v1, :cond_4

    .line 374
    .line 375
    goto :goto_3

    .line 376
    :cond_4
    move v10, v11

    .line 377
    :goto_3
    iget-object v1, v12, Lcom/android/server/trust/TrustAgentWrapper;->mSetTrustAgentFeaturesToken:Landroid/os/IBinder;

    .line 378
    .line 379
    if-ne v1, v0, :cond_6

    .line 380
    .line 381
    iput-object v7, v12, Lcom/android/server/trust/TrustAgentWrapper;->mSetTrustAgentFeaturesToken:Landroid/os/IBinder;

    .line 382
    .line 383
    iget-boolean v0, v12, Lcom/android/server/trust/TrustAgentWrapper;->mTrustDisabledByDpm:Z

    .line 384
    .line 385
    if-eqz v0, :cond_14

    .line 386
    .line 387
    if-eqz v10, :cond_14

    .line 388
    .line 389
    sget-boolean v0, Lcom/android/server/trust/TrustAgentWrapper;->DEBUG:Z

    .line 390
    .line 391
    if-eqz v0, :cond_5

    .line 392
    .line 393
    new-instance v0, Ljava/lang/StringBuilder;

    .line 394
    .line 395
    const-string v1, "Re-enabling agent because it acknowledged enabled features: "

    .line 396
    .line 397
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 398
    .line 399
    .line 400
    iget-object v1, v12, Lcom/android/server/trust/TrustAgentWrapper;->mName:Landroid/content/ComponentName;

    .line 401
    .line 402
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 403
    .line 404
    .line 405
    move-result-object v1

    .line 406
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    .line 408
    .line 409
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 410
    .line 411
    .line 412
    move-result-object v0

    .line 413
    invoke-static {v9, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    .line 415
    .line 416
    :cond_5
    iput-boolean v11, v12, Lcom/android/server/trust/TrustAgentWrapper;->mTrustDisabledByDpm:Z

    .line 417
    .line 418
    iget-object v0, v12, Lcom/android/server/trust/TrustAgentWrapper;->mTrustManagerService:Lcom/android/server/trust/TrustManagerService;

    .line 419
    .line 420
    iget v1, v12, Lcom/android/server/trust/TrustAgentWrapper;->mUserId:I

    .line 421
    .line 422
    invoke-virtual {v0, v1}, Lcom/android/server/trust/TrustManagerService;->updateTrust(I)V

    .line 423
    .line 424
    .line 425
    goto/16 :goto_9

    .line 426
    .line 427
    :cond_6
    sget-boolean v0, Lcom/android/server/trust/TrustAgentWrapper;->DEBUG:Z

    .line 428
    .line 429
    if-eqz v0, :cond_14

    .line 430
    .line 431
    new-instance v0, Ljava/lang/StringBuilder;

    .line 432
    .line 433
    const-string v1, "Ignoring MSG_SET_TRUST_AGENT_FEATURES_COMPLETED with obsolete token: "

    .line 434
    .line 435
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 436
    .line 437
    .line 438
    iget-object v1, v12, Lcom/android/server/trust/TrustAgentWrapper;->mName:Landroid/content/ComponentName;

    .line 439
    .line 440
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 441
    .line 442
    .line 443
    move-result-object v1

    .line 444
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    .line 446
    .line 447
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 448
    .line 449
    .line 450
    move-result-object v0

    .line 451
    invoke-static {v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    .line 453
    .line 454
    goto/16 :goto_9

    .line 455
    .line 456
    :pswitch_8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 457
    .line 458
    const-string v1, "Connection attempt to agent "

    .line 459
    .line 460
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 461
    .line 462
    .line 463
    iget-object v1, v12, Lcom/android/server/trust/TrustAgentWrapper;->mName:Landroid/content/ComponentName;

    .line 464
    .line 465
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 466
    .line 467
    .line 468
    move-result-object v1

    .line 469
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    .line 471
    .line 472
    const-string v1, " timed out, rebinding"

    .line 473
    .line 474
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    .line 476
    .line 477
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 478
    .line 479
    .line 480
    move-result-object v0

    .line 481
    invoke-static {v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    .line 483
    .line 484
    invoke-virtual {v12}, Lcom/android/server/trust/TrustAgentWrapper;->destroy()V

    .line 485
    .line 486
    .line 487
    iget-object v0, v12, Lcom/android/server/trust/TrustAgentWrapper;->mName:Landroid/content/ComponentName;

    .line 488
    .line 489
    iget-object v1, v12, Lcom/android/server/trust/TrustAgentWrapper;->mTrustManagerService:Lcom/android/server/trust/TrustManagerService;

    .line 490
    .line 491
    iget-object v2, v1, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    .line 492
    .line 493
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    .line 494
    .line 495
    .line 496
    move-result v2

    .line 497
    sub-int/2addr v2, v10

    .line 498
    :goto_4
    iget v3, v12, Lcom/android/server/trust/TrustAgentWrapper;->mUserId:I

    .line 499
    .line 500
    if-ltz v2, :cond_9

    .line 501
    .line 502
    iget-object v4, v1, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    .line 503
    .line 504
    invoke-virtual {v4, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 505
    .line 506
    .line 507
    move-result-object v4

    .line 508
    check-cast v4, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    .line 509
    .line 510
    iget-object v6, v4, Lcom/android/server/trust/TrustManagerService$AgentInfo;->component:Landroid/content/ComponentName;

    .line 511
    .line 512
    invoke-virtual {v0, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 513
    .line 514
    .line 515
    move-result v6

    .line 516
    if-eqz v6, :cond_8

    .line 517
    .line 518
    iget v6, v4, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    .line 519
    .line 520
    if-ne v3, v6, :cond_8

    .line 521
    .line 522
    new-instance v3, Ljava/lang/StringBuilder;

    .line 523
    .line 524
    const-string v6, "Resetting agent "

    .line 525
    .line 526
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 527
    .line 528
    .line 529
    iget-object v6, v4, Lcom/android/server/trust/TrustManagerService$AgentInfo;->component:Landroid/content/ComponentName;

    .line 530
    .line 531
    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 532
    .line 533
    .line 534
    move-result-object v6

    .line 535
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    .line 537
    .line 538
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 539
    .line 540
    .line 541
    move-result-object v3

    .line 542
    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    .line 544
    .line 545
    iget-object v3, v4, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    .line 546
    .line 547
    invoke-virtual {v3}, Lcom/android/server/trust/TrustAgentWrapper;->isManagingTrust()Z

    .line 548
    .line 549
    .line 550
    move-result v3

    .line 551
    if-eqz v3, :cond_7

    .line 552
    .line 553
    move v11, v10

    .line 554
    :cond_7
    iget-object v3, v4, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    .line 555
    .line 556
    invoke-virtual {v3}, Lcom/android/server/trust/TrustAgentWrapper;->destroy()V

    .line 557
    .line 558
    .line 559
    iget-object v3, v1, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    .line 560
    .line 561
    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    .line 562
    .line 563
    .line 564
    :cond_8
    add-int/lit8 v2, v2, -0x1

    .line 565
    .line 566
    goto :goto_4

    .line 567
    :cond_9
    if-eqz v11, :cond_a

    .line 568
    .line 569
    invoke-virtual {v1, v3}, Lcom/android/server/trust/TrustManagerService;->updateTrust(I)V

    .line 570
    .line 571
    .line 572
    :cond_a
    invoke-virtual {v1, v3}, Lcom/android/server/trust/TrustManagerService;->refreshAgentList(I)V

    .line 573
    .line 574
    .line 575
    goto/16 :goto_9

    .line 576
    .line 577
    :pswitch_9
    sget-boolean v0, Lcom/android/server/trust/TrustAgentWrapper;->DEBUG:Z

    .line 578
    .line 579
    if-eqz v0, :cond_b

    .line 580
    .line 581
    new-instance v0, Ljava/lang/StringBuilder;

    .line 582
    .line 583
    const-string v2, "Trust timed out : "

    .line 584
    .line 585
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 586
    .line 587
    .line 588
    iget-object v2, v12, Lcom/android/server/trust/TrustAgentWrapper;->mName:Landroid/content/ComponentName;

    .line 589
    .line 590
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 591
    .line 592
    .line 593
    move-result-object v2

    .line 594
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 595
    .line 596
    .line 597
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 598
    .line 599
    .line 600
    move-result-object v0

    .line 601
    invoke-static {v9, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    .line 603
    .line 604
    :cond_b
    iget-object v0, v12, Lcom/android/server/trust/TrustAgentWrapper;->mTrustManagerService:Lcom/android/server/trust/TrustManagerService;

    .line 605
    .line 606
    iget-object v0, v0, Lcom/android/server/trust/TrustManagerService;->mArchive:Lcom/android/server/trust/TrustArchive;

    .line 607
    .line 608
    iget-object v2, v12, Lcom/android/server/trust/TrustAgentWrapper;->mName:Landroid/content/ComponentName;

    .line 609
    .line 610
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 611
    .line 612
    .line 613
    new-instance v4, Lcom/android/server/trust/TrustArchive$Event;

    .line 614
    .line 615
    const/16 v17, 0x0

    .line 616
    .line 617
    const/16 v21, 0x0

    .line 618
    .line 619
    const/4 v14, 0x2

    .line 620
    iget v15, v12, Lcom/android/server/trust/TrustAgentWrapper;->mUserId:I

    .line 621
    .line 622
    const-wide/16 v18, 0x0

    .line 623
    .line 624
    const/16 v20, 0x0

    .line 625
    .line 626
    move-object v13, v4

    .line 627
    move-object/from16 v16, v2

    .line 628
    .line 629
    invoke-direct/range {v13 .. v21}, Lcom/android/server/trust/TrustArchive$Event;-><init>(IILandroid/content/ComponentName;Ljava/lang/String;JIZ)V

    .line 630
    .line 631
    .line 632
    invoke-virtual {v0, v4}, Lcom/android/server/trust/TrustArchive;->addEvent(Lcom/android/server/trust/TrustArchive$Event;)V

    .line 633
    .line 634
    .line 635
    :try_start_5
    iget-object v0, v12, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    .line 636
    .line 637
    if-eqz v0, :cond_c

    .line 638
    .line 639
    invoke-interface {v0}, Landroid/service/trust/ITrustAgentService;->onTrustTimeout()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_6

    .line 640
    .line 641
    .line 642
    goto :goto_5

    .line 643
    :catch_6
    move-exception v0

    .line 644
    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->onError(Ljava/lang/Exception;)V

    .line 645
    .line 646
    .line 647
    :cond_c
    :goto_5
    :pswitch_a
    iput-boolean v11, v12, Lcom/android/server/trust/TrustAgentWrapper;->mTrusted:Z

    .line 648
    .line 649
    iput-boolean v11, v12, Lcom/android/server/trust/TrustAgentWrapper;->mTrustable:Z

    .line 650
    .line 651
    iput-boolean v11, v12, Lcom/android/server/trust/TrustAgentWrapper;->mWaitingForTrustableDowngrade:Z

    .line 652
    .line 653
    iput-boolean v11, v12, Lcom/android/server/trust/TrustAgentWrapper;->mDisplayTrustGrantedMessage:Z

    .line 654
    .line 655
    iput-object v7, v12, Lcom/android/server/trust/TrustAgentWrapper;->mMessage:Ljava/lang/CharSequence;

    .line 656
    .line 657
    const/4 v0, 0x3

    .line 658
    iget-object v2, v12, Lcom/android/server/trust/TrustAgentWrapper;->mHandler:Lcom/android/server/trust/TrustAgentWrapper$3;

    .line 659
    .line 660
    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 661
    .line 662
    .line 663
    iget v0, v1, Landroid/os/Message;->what:I

    .line 664
    .line 665
    iget-object v1, v12, Lcom/android/server/trust/TrustAgentWrapper;->mTrustManagerService:Lcom/android/server/trust/TrustManagerService;

    .line 666
    .line 667
    if-ne v0, v3, :cond_d

    .line 668
    .line 669
    iget-object v0, v1, Lcom/android/server/trust/TrustManagerService;->mArchive:Lcom/android/server/trust/TrustArchive;

    .line 670
    .line 671
    iget-object v5, v12, Lcom/android/server/trust/TrustAgentWrapper;->mName:Landroid/content/ComponentName;

    .line 672
    .line 673
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 674
    .line 675
    .line 676
    new-instance v11, Lcom/android/server/trust/TrustArchive$Event;

    .line 677
    .line 678
    const/4 v6, 0x0

    .line 679
    const/4 v10, 0x0

    .line 680
    const/4 v3, 0x1

    .line 681
    iget v4, v12, Lcom/android/server/trust/TrustAgentWrapper;->mUserId:I

    .line 682
    .line 683
    const-wide/16 v7, 0x0

    .line 684
    .line 685
    const/4 v9, 0x0

    .line 686
    move-object v2, v11

    .line 687
    invoke-direct/range {v2 .. v10}, Lcom/android/server/trust/TrustArchive$Event;-><init>(IILandroid/content/ComponentName;Ljava/lang/String;JIZ)V

    .line 688
    .line 689
    .line 690
    invoke-virtual {v0, v11}, Lcom/android/server/trust/TrustArchive;->addEvent(Lcom/android/server/trust/TrustArchive$Event;)V

    .line 691
    .line 692
    .line 693
    :cond_d
    iget v0, v12, Lcom/android/server/trust/TrustAgentWrapper;->mUserId:I

    .line 694
    .line 695
    invoke-virtual {v1, v0}, Lcom/android/server/trust/TrustManagerService;->updateTrust(I)V

    .line 696
    .line 697
    .line 698
    goto/16 :goto_9

    .line 699
    .line 700
    :pswitch_b
    iget-object v2, v12, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    .line 701
    .line 702
    if-eqz v2, :cond_15

    .line 703
    .line 704
    iput-boolean v10, v12, Lcom/android/server/trust/TrustAgentWrapper;->mTrusted:Z

    .line 705
    .line 706
    iput-boolean v11, v12, Lcom/android/server/trust/TrustAgentWrapper;->mTrustable:Z

    .line 707
    .line 708
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 709
    .line 710
    check-cast v2, Landroid/util/Pair;

    .line 711
    .line 712
    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 713
    .line 714
    check-cast v4, Ljava/lang/CharSequence;

    .line 715
    .line 716
    iput-object v4, v12, Lcom/android/server/trust/TrustAgentWrapper;->mMessage:Ljava/lang/CharSequence;

    .line 717
    .line 718
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 719
    .line 720
    check-cast v2, Lcom/android/internal/infra/AndroidFuture;

    .line 721
    .line 722
    iget v4, v1, Landroid/os/Message;->arg1:I

    .line 723
    .line 724
    and-int/lit8 v5, v4, 0x8

    .line 725
    .line 726
    if-eqz v5, :cond_e

    .line 727
    .line 728
    move v5, v10

    .line 729
    goto :goto_6

    .line 730
    :cond_e
    move v5, v11

    .line 731
    :goto_6
    iput-boolean v5, v12, Lcom/android/server/trust/TrustAgentWrapper;->mDisplayTrustGrantedMessage:Z

    .line 732
    .line 733
    and-int/lit8 v5, v4, 0x4

    .line 734
    .line 735
    if-eqz v5, :cond_f

    .line 736
    .line 737
    iput-boolean v10, v12, Lcom/android/server/trust/TrustAgentWrapper;->mWaitingForTrustableDowngrade:Z

    .line 738
    .line 739
    new-instance v5, Lcom/android/server/trust/TrustAgentWrapper$3$$ExternalSyntheticLambda0;

    .line 740
    .line 741
    invoke-direct {v5, v0}, Lcom/android/server/trust/TrustAgentWrapper$3$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/trust/TrustAgentWrapper$3;)V

    .line 742
    .line 743
    .line 744
    invoke-virtual {v2, v5}, Lcom/android/internal/infra/AndroidFuture;->thenAccept(Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;

    .line 745
    .line 746
    .line 747
    goto :goto_7

    .line 748
    :cond_f
    iput-boolean v11, v12, Lcom/android/server/trust/TrustAgentWrapper;->mWaitingForTrustableDowngrade:Z

    .line 749
    .line 750
    :goto_7
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 751
    .line 752
    .line 753
    move-result-object v0

    .line 754
    const-string v1, "duration"

    .line 755
    .line 756
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    .line 757
    .line 758
    .line 759
    move-result-wide v0

    .line 760
    const-wide/16 v5, 0x0

    .line 761
    .line 762
    cmp-long v8, v0, v5

    .line 763
    .line 764
    if-lez v8, :cond_12

    .line 765
    .line 766
    iget-wide v13, v12, Lcom/android/server/trust/TrustAgentWrapper;->mMaximumTimeToLock:J

    .line 767
    .line 768
    cmp-long v5, v13, v5

    .line 769
    .line 770
    if-eqz v5, :cond_10

    .line 771
    .line 772
    invoke-static {v0, v1, v13, v14}, Ljava/lang/Math;->min(JJ)J

    .line 773
    .line 774
    .line 775
    move-result-wide v5

    .line 776
    sget-boolean v8, Lcom/android/server/trust/TrustAgentWrapper;->DEBUG:Z

    .line 777
    .line 778
    if-eqz v8, :cond_11

    .line 779
    .line 780
    const-string v8, "DPM lock timeout in effect. Timeout adjusted from "

    .line 781
    .line 782
    const-string v10, " to "

    .line 783
    .line 784
    invoke-static {v8, v0, v1, v10}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 785
    .line 786
    .line 787
    move-result-object v8

    .line 788
    invoke-static {v8, v5, v6, v9}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/lang/String;)V

    .line 789
    .line 790
    .line 791
    goto :goto_8

    .line 792
    :cond_10
    move-wide v5, v0

    .line 793
    :cond_11
    :goto_8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 794
    .line 795
    .line 796
    move-result-wide v8

    .line 797
    add-long/2addr v8, v5

    .line 798
    iget-object v5, v12, Lcom/android/server/trust/TrustAgentWrapper;->mContext:Landroid/content/Context;

    .line 799
    .line 800
    iget-object v6, v12, Lcom/android/server/trust/TrustAgentWrapper;->mAlarmIntent:Landroid/content/Intent;

    .line 801
    .line 802
    const/high16 v10, 0x12000000

    .line 803
    .line 804
    invoke-static {v5, v11, v6, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 805
    .line 806
    .line 807
    move-result-object v5

    .line 808
    iput-object v5, v12, Lcom/android/server/trust/TrustAgentWrapper;->mAlarmPendingIntent:Landroid/app/PendingIntent;

    .line 809
    .line 810
    iget-object v6, v12, Lcom/android/server/trust/TrustAgentWrapper;->mAlarmManager:Landroid/app/AlarmManager;

    .line 811
    .line 812
    invoke-virtual {v6, v3, v8, v9, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 813
    .line 814
    .line 815
    :cond_12
    iget-object v3, v12, Lcom/android/server/trust/TrustAgentWrapper;->mTrustManagerService:Lcom/android/server/trust/TrustManagerService;

    .line 816
    .line 817
    iget-object v5, v3, Lcom/android/server/trust/TrustManagerService;->mArchive:Lcom/android/server/trust/TrustArchive;

    .line 818
    .line 819
    iget-object v6, v12, Lcom/android/server/trust/TrustAgentWrapper;->mName:Landroid/content/ComponentName;

    .line 820
    .line 821
    iget-object v8, v12, Lcom/android/server/trust/TrustAgentWrapper;->mMessage:Ljava/lang/CharSequence;

    .line 822
    .line 823
    if-eqz v8, :cond_13

    .line 824
    .line 825
    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 826
    .line 827
    .line 828
    move-result-object v7

    .line 829
    :cond_13
    move-object/from16 v17, v7

    .line 830
    .line 831
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 832
    .line 833
    .line 834
    new-instance v7, Lcom/android/server/trust/TrustArchive$Event;

    .line 835
    .line 836
    const/4 v14, 0x0

    .line 837
    const/16 v21, 0x0

    .line 838
    .line 839
    iget v15, v12, Lcom/android/server/trust/TrustAgentWrapper;->mUserId:I

    .line 840
    .line 841
    move-object v13, v7

    .line 842
    move-object/from16 v16, v6

    .line 843
    .line 844
    move-wide/from16 v18, v0

    .line 845
    .line 846
    move/from16 v20, v4

    .line 847
    .line 848
    invoke-direct/range {v13 .. v21}, Lcom/android/server/trust/TrustArchive$Event;-><init>(IILandroid/content/ComponentName;Ljava/lang/String;JIZ)V

    .line 849
    .line 850
    .line 851
    invoke-virtual {v5, v7}, Lcom/android/server/trust/TrustArchive;->addEvent(Lcom/android/server/trust/TrustArchive$Event;)V

    .line 852
    .line 853
    .line 854
    iget v0, v12, Lcom/android/server/trust/TrustAgentWrapper;->mUserId:I

    .line 855
    .line 856
    invoke-virtual {v3, v0, v4, v11, v2}, Lcom/android/server/trust/TrustManagerService;->updateTrust(IIZLcom/android/internal/infra/AndroidFuture;)V

    .line 857
    .line 858
    .line 859
    :cond_14
    :goto_9
    return-void

    .line 860
    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 861
    .line 862
    const-string v1, "Agent is not connected, cannot grant trust: "

    .line 863
    .line 864
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 865
    .line 866
    .line 867
    iget-object v1, v12, Lcom/android/server/trust/TrustAgentWrapper;->mName:Landroid/content/ComponentName;

    .line 868
    .line 869
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 870
    .line 871
    .line 872
    move-result-object v1

    .line 873
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 874
    .line 875
    .line 876
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 877
    .line 878
    .line 879
    move-result-object v0

    .line 880
    invoke-static {v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    .line 882
    .line 883
    return-void

    .line 884
    nop

    .line 885
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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
