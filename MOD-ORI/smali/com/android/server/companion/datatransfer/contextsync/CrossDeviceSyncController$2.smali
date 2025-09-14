.class public final Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$2;
.super Landroid/companion/IOnMessageReceivedListener$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;


# direct methods
.method public constructor <init>(Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$2;->this$0:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/companion/IOnMessageReceivedListener$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onMessageReceived(I[B)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$2;->this$0:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    .line 6
    .line 7
    invoke-virtual {v2, v1}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->isAssociationBlockedLocal(I)Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object v2, v0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$2;->this$0:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    .line 15
    .line 16
    move-object/from16 v3, p2

    .line 17
    .line 18
    invoke-virtual {v2, v3}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->processTelecomDataFromSync([B)Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    iget-object v3, v2, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData;->mCallControlRequests:Ljava/util/List;

    .line 23
    .line 24
    check-cast v3, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-nez v3, :cond_2

    .line 31
    .line 32
    iget-object v3, v2, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData;->mCallCreateRequests:Ljava/util/List;

    .line 33
    .line 34
    check-cast v3, Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-eqz v3, :cond_1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const/4 v3, 0x0

    .line 44
    goto :goto_1

    .line 45
    :cond_2
    :goto_0
    const/4 v3, 0x1

    .line 46
    :goto_1
    const-string v5, "CrossDeviceSyncController"

    .line 47
    .line 48
    const-string v6, "android.telecom.extra.OUTGOING_CALL_EXTRAS"

    .line 49
    .line 50
    const-string/jumbo v7, "com.android.companion.datatransfer.contextsync.extra.CALL_ID"

    .line 51
    .line 52
    .line 53
    if-nez v3, :cond_f

    .line 54
    .line 55
    iget-object v9, v0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$2;->this$0:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    .line 56
    .line 57
    iget-object v9, v9, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->mPhoneAccountManager:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$PhoneAccountManager;

    .line 58
    .line 59
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    new-instance v10, Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 65
    .line 66
    .line 67
    iget-object v11, v2, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData;->mCalls:Ljava/util/Map;

    .line 68
    .line 69
    check-cast v11, Ljava/util/HashMap;

    .line 70
    .line 71
    invoke-virtual {v11}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 72
    .line 73
    .line 74
    move-result-object v11

    .line 75
    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 76
    .line 77
    .line 78
    move-result-object v11

    .line 79
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 80
    .line 81
    .line 82
    move-result v12

    .line 83
    if-eqz v12, :cond_3

    .line 84
    .line 85
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v12

    .line 89
    check-cast v12, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;

    .line 90
    .line 91
    iget-object v12, v12, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->mFacilitator:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallFacilitator;

    .line 92
    .line 93
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_3
    iget-object v11, v2, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData;->mCallFacilitators:Ljava/util/List;

    .line 98
    .line 99
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 100
    .line 101
    .line 102
    iget-object v11, v9, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$PhoneAccountManager;->mPhoneAccountHandles:Ljava/util/Map;

    .line 103
    .line 104
    check-cast v11, Ljava/util/HashMap;

    .line 105
    .line 106
    invoke-virtual {v11}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 107
    .line 108
    .line 109
    move-result-object v11

    .line 110
    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 111
    .line 112
    .line 113
    move-result-object v11

    .line 114
    :cond_4
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 115
    .line 116
    .line 117
    move-result v12

    .line 118
    if-eqz v12, :cond_5

    .line 119
    .line 120
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v12

    .line 124
    check-cast v12, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$PhoneAccountHandleIdentifier;

    .line 125
    .line 126
    iget-object v13, v12, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$PhoneAccountHandleIdentifier;->mAppIdentifier:Ljava/lang/String;

    .line 127
    .line 128
    iget v14, v12, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$PhoneAccountHandleIdentifier;->mAssociationId:I

    .line 129
    .line 130
    if-ne v1, v14, :cond_4

    .line 131
    .line 132
    invoke-interface {v10}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 133
    .line 134
    .line 135
    move-result-object v14

    .line 136
    new-instance v15, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$PhoneAccountManager$$ExternalSyntheticLambda0;

    .line 137
    .line 138
    invoke-direct {v15, v13}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$PhoneAccountManager$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    invoke-interface {v14, v15}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    .line 142
    .line 143
    .line 144
    move-result v13

    .line 145
    if-eqz v13, :cond_4

    .line 146
    .line 147
    iget-object v13, v9, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$PhoneAccountManager;->mPhoneAccountHandles:Ljava/util/Map;

    .line 148
    .line 149
    check-cast v13, Ljava/util/HashMap;

    .line 150
    .line 151
    invoke-virtual {v13, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v12

    .line 155
    check-cast v12, Landroid/telecom/PhoneAccountHandle;

    .line 156
    .line 157
    iget-object v13, v9, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$PhoneAccountManager;->mTelecomManager:Landroid/telecom/TelecomManager;

    .line 158
    .line 159
    invoke-virtual {v13, v12}, Landroid/telecom/TelecomManager;->unregisterPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V

    .line 160
    .line 161
    .line 162
    invoke-interface {v11}, Ljava/util/Iterator;->remove()V

    .line 163
    .line 164
    .line 165
    goto :goto_3

    .line 166
    :cond_5
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 167
    .line 168
    .line 169
    move-result-object v10

    .line 170
    :cond_6
    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 171
    .line 172
    .line 173
    move-result v11

    .line 174
    if-eqz v11, :cond_8

    .line 175
    .line 176
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v11

    .line 180
    check-cast v11, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallFacilitator;

    .line 181
    .line 182
    new-instance v12, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$PhoneAccountHandleIdentifier;

    .line 183
    .line 184
    iget-object v13, v11, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallFacilitator;->mIdentifier:Ljava/lang/String;

    .line 185
    .line 186
    invoke-direct {v12, v1, v13}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$PhoneAccountHandleIdentifier;-><init>(ILjava/lang/String;)V

    .line 187
    .line 188
    .line 189
    iget-object v14, v9, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$PhoneAccountManager;->mPhoneAccountHandles:Ljava/util/Map;

    .line 190
    .line 191
    check-cast v14, Ljava/util/HashMap;

    .line 192
    .line 193
    invoke-virtual {v14, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    move-result v14

    .line 197
    if-nez v14, :cond_6

    .line 198
    .line 199
    iget-object v14, v11, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallFacilitator;->mName:Ljava/lang/String;

    .line 200
    .line 201
    iget-boolean v11, v11, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallFacilitator;->mIsTel:Z

    .line 202
    .line 203
    iget-object v15, v9, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$PhoneAccountManager;->mPhoneAccountHandles:Ljava/util/Map;

    .line 204
    .line 205
    check-cast v15, Ljava/util/HashMap;

    .line 206
    .line 207
    invoke-virtual {v15, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    move-result v15

    .line 211
    if-eqz v15, :cond_7

    .line 212
    .line 213
    goto :goto_4

    .line 214
    :cond_7
    new-instance v15, Landroid/telecom/PhoneAccountHandle;

    .line 215
    .line 216
    iget-object v8, v9, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$PhoneAccountManager;->mConnectionServiceComponentName:Landroid/content/ComponentName;

    .line 217
    .line 218
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 219
    .line 220
    .line 221
    move-result-object v16

    .line 222
    invoke-virtual/range {v16 .. v16}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v4

    .line 226
    invoke-direct {v15, v8, v4}, Landroid/telecom/PhoneAccountHandle;-><init>(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    iget-object v4, v9, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$PhoneAccountManager;->mPhoneAccountHandles:Ljava/util/Map;

    .line 230
    .line 231
    check-cast v4, Ljava/util/HashMap;

    .line 232
    .line 233
    invoke-virtual {v4, v12, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    invoke-static {v15, v14, v13, v1, v11}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$PhoneAccountManager;->createPhoneAccount(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Ljava/lang/String;IZ)Landroid/telecom/PhoneAccount;

    .line 237
    .line 238
    .line 239
    move-result-object v4

    .line 240
    iget-object v8, v9, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$PhoneAccountManager;->mTelecomManager:Landroid/telecom/TelecomManager;

    .line 241
    .line 242
    invoke-virtual {v8, v4}, Landroid/telecom/TelecomManager;->registerPhoneAccount(Landroid/telecom/PhoneAccount;)V

    .line 243
    .line 244
    .line 245
    iget-object v4, v9, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$PhoneAccountManager;->mTelecomManager:Landroid/telecom/TelecomManager;

    .line 246
    .line 247
    iget-object v8, v9, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$PhoneAccountManager;->mPhoneAccountHandles:Ljava/util/Map;

    .line 248
    .line 249
    check-cast v8, Ljava/util/HashMap;

    .line 250
    .line 251
    invoke-virtual {v8, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    move-result-object v8

    .line 255
    check-cast v8, Landroid/telecom/PhoneAccountHandle;

    .line 256
    .line 257
    const/4 v11, 0x1

    .line 258
    invoke-virtual {v4, v8, v11}, Landroid/telecom/TelecomManager;->enablePhoneAccount(Landroid/telecom/PhoneAccountHandle;Z)V

    .line 259
    .line 260
    .line 261
    goto :goto_4

    .line 262
    :cond_8
    iget-object v4, v0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$2;->this$0:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    .line 263
    .line 264
    iget-object v4, v4, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->mCallManager:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$CallManager;

    .line 265
    .line 266
    iget-object v8, v4, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$CallManager;->mCallIds:Ljava/util/Map;

    .line 267
    .line 268
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 269
    .line 270
    .line 271
    move-result-object v9

    .line 272
    new-instance v10, Ljava/util/HashSet;

    .line 273
    .line 274
    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 275
    .line 276
    .line 277
    invoke-interface {v8, v9, v10}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    move-result-object v8

    .line 281
    check-cast v8, Ljava/util/Set;

    .line 282
    .line 283
    iget-object v9, v2, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData;->mCalls:Ljava/util/Map;

    .line 284
    .line 285
    check-cast v9, Ljava/util/HashMap;

    .line 286
    .line 287
    invoke-virtual {v9}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 288
    .line 289
    .line 290
    move-result-object v9

    .line 291
    invoke-interface {v9}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    .line 292
    .line 293
    .line 294
    move-result-object v9

    .line 295
    new-instance v10, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$CallManager$$ExternalSyntheticLambda0;

    .line 296
    .line 297
    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 298
    .line 299
    .line 300
    invoke-interface {v9, v10}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 301
    .line 302
    .line 303
    move-result-object v9

    .line 304
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    .line 305
    .line 306
    .line 307
    move-result-object v10

    .line 308
    invoke-interface {v9, v10}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 309
    .line 310
    .line 311
    move-result-object v9

    .line 312
    check-cast v9, Ljava/util/Set;

    .line 313
    .line 314
    invoke-interface {v8, v9}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    .line 315
    .line 316
    .line 317
    move-result v10

    .line 318
    if-eqz v10, :cond_9

    .line 319
    .line 320
    goto/16 :goto_8

    .line 321
    .line 322
    :cond_9
    iget-object v10, v2, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData;->mCalls:Ljava/util/Map;

    .line 323
    .line 324
    check-cast v10, Ljava/util/HashMap;

    .line 325
    .line 326
    invoke-virtual {v10}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 327
    .line 328
    .line 329
    move-result-object v10

    .line 330
    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 331
    .line 332
    .line 333
    move-result-object v10

    .line 334
    :cond_a
    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 335
    .line 336
    .line 337
    move-result v11

    .line 338
    if-eqz v11, :cond_e

    .line 339
    .line 340
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 341
    .line 342
    .line 343
    move-result-object v11

    .line 344
    check-cast v11, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;

    .line 345
    .line 346
    iget-object v12, v11, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->mId:Ljava/lang/String;

    .line 347
    .line 348
    invoke-interface {v8, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 349
    .line 350
    .line 351
    move-result v12

    .line 352
    if-nez v12, :cond_a

    .line 353
    .line 354
    iget-object v12, v11, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->mFacilitator:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallFacilitator;

    .line 355
    .line 356
    if-eqz v12, :cond_a

    .line 357
    .line 358
    iget-object v12, v11, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->mId:Ljava/lang/String;

    .line 359
    .line 360
    iget-object v13, v4, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$CallManager;->mSelfOwnedCalls:Ljava/util/Set;

    .line 361
    .line 362
    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 363
    .line 364
    .line 365
    move-result-object v13

    .line 366
    :cond_b
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    .line 367
    .line 368
    .line 369
    move-result v14

    .line 370
    if-eqz v14, :cond_c

    .line 371
    .line 372
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 373
    .line 374
    .line 375
    move-result-object v14

    .line 376
    check-cast v14, Ljava/lang/String;

    .line 377
    .line 378
    invoke-virtual {v12, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 379
    .line 380
    .line 381
    move-result v14

    .line 382
    if-eqz v14, :cond_b

    .line 383
    .line 384
    goto :goto_5

    .line 385
    :cond_c
    iget-object v12, v4, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$CallManager;->mExternallyOwnedCalls:Ljava/util/Set;

    .line 386
    .line 387
    iget-object v13, v11, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->mId:Ljava/lang/String;

    .line 388
    .line 389
    invoke-interface {v12, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 390
    .line 391
    .line 392
    new-instance v12, Landroid/os/Bundle;

    .line 393
    .line 394
    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 395
    .line 396
    .line 397
    const-string/jumbo v13, "com.android.server.companion.datatransfer.contextsync.extra.ASSOCIATION_ID"

    .line 398
    .line 399
    .line 400
    invoke-virtual {v12, v13, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 401
    .line 402
    .line 403
    const-string/jumbo v13, "com.android.companion.datatransfer.contextsync.extra.IS_REMOTE_ORIGIN"

    .line 404
    .line 405
    .line 406
    const/4 v14, 0x1

    .line 407
    invoke-virtual {v12, v13, v14}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 408
    .line 409
    .line 410
    new-instance v13, Landroid/os/Bundle;

    .line 411
    .line 412
    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    .line 413
    .line 414
    .line 415
    iget-object v14, v11, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->mId:Ljava/lang/String;

    .line 416
    .line 417
    invoke-virtual {v13, v7, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    .line 419
    .line 420
    const-string/jumbo v14, "com.android.server.companion.datatransfer.contextsync.extra.CALLER_ID"

    .line 421
    .line 422
    .line 423
    iget-object v15, v11, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->mCallerId:Ljava/lang/String;

    .line 424
    .line 425
    invoke-virtual {v13, v14, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    .line 427
    .line 428
    const-string/jumbo v14, "com.android.server.companion.datatransfer.contextsync.extra.APP_ICON"

    .line 429
    .line 430
    .line 431
    iget-object v15, v11, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->mAppIcon:[B

    .line 432
    .line 433
    invoke-virtual {v13, v14, v15}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 434
    .line 435
    .line 436
    iget-object v14, v11, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->mFacilitator:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallFacilitator;

    .line 437
    .line 438
    iget-object v14, v14, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallFacilitator;->mName:Ljava/lang/String;

    .line 439
    .line 440
    const-string/jumbo v15, "com.android.server.companion.datatransfer.contextsync.extra.FACILITATOR_NAME"

    .line 441
    .line 442
    .line 443
    invoke-virtual {v13, v15, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    .line 445
    .line 446
    iget-object v14, v11, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->mFacilitator:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallFacilitator;

    .line 447
    .line 448
    iget-object v14, v14, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallFacilitator;->mIdentifier:Ljava/lang/String;

    .line 449
    .line 450
    const-string/jumbo v15, "com.android.server.companion.datatransfer.contextsync.extra.FACILITATOR_ID"

    .line 451
    .line 452
    .line 453
    invoke-virtual {v13, v15, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    .line 455
    .line 456
    iget-object v14, v11, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->mFacilitator:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallFacilitator;

    .line 457
    .line 458
    iget-object v14, v14, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallFacilitator;->mExtendedIdentifier:Ljava/lang/String;

    .line 459
    .line 460
    const-string/jumbo v15, "com.android.server.companion.datatransfer.contextsync.extra.FACILITATOR_EXT_ID"

    .line 461
    .line 462
    .line 463
    invoke-virtual {v13, v15, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    .line 465
    .line 466
    const-string/jumbo v14, "com.android.server.companion.datatransfer.contextsync.extra.STATUS"

    .line 467
    .line 468
    .line 469
    iget v15, v11, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->mStatus:I

    .line 470
    .line 471
    invoke-virtual {v13, v14, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 472
    .line 473
    .line 474
    const-string/jumbo v14, "com.android.server.companion.datatransfer.contextsync.extra.DIRECTION"

    .line 475
    .line 476
    .line 477
    iget v15, v11, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->mDirection:I

    .line 478
    .line 479
    invoke-virtual {v13, v14, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 480
    .line 481
    .line 482
    new-instance v14, Ljava/util/ArrayList;

    .line 483
    .line 484
    iget-object v15, v11, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->mControls:Ljava/util/Set;

    .line 485
    .line 486
    invoke-direct {v14, v15}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 487
    .line 488
    .line 489
    const-string/jumbo v15, "com.android.server.companion.datatransfer.contextsync.extra.CONTROLS"

    .line 490
    .line 491
    .line 492
    invoke-virtual {v13, v15, v14}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 493
    .line 494
    .line 495
    const-string/jumbo v14, "com.android.server.companion.datatransfer.contextsync.extra.CALL"

    .line 496
    .line 497
    .line 498
    invoke-virtual {v12, v14, v13}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 499
    .line 500
    .line 501
    iget-object v13, v11, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->mId:Ljava/lang/String;

    .line 502
    .line 503
    invoke-virtual {v12, v7, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    .line 505
    .line 506
    iget-object v13, v11, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->mAppIcon:[B

    .line 507
    .line 508
    const-string/jumbo v14, "com.android.companion.datatransfer.contextsync.extra.FACILITATOR_ICON"

    .line 509
    .line 510
    .line 511
    invoke-virtual {v12, v14, v13}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 512
    .line 513
    .line 514
    iget-object v13, v11, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->mFacilitator:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallFacilitator;

    .line 515
    .line 516
    iget-object v13, v13, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallFacilitator;->mIdentifier:Ljava/lang/String;

    .line 517
    .line 518
    iget-object v14, v4, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$CallManager;->mPhoneAccountManager:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$PhoneAccountManager;

    .line 519
    .line 520
    iget-object v14, v14, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$PhoneAccountManager;->mPhoneAccountHandles:Ljava/util/Map;

    .line 521
    .line 522
    new-instance v15, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$PhoneAccountHandleIdentifier;

    .line 523
    .line 524
    invoke-direct {v15, v1, v13}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$PhoneAccountHandleIdentifier;-><init>(ILjava/lang/String;)V

    .line 525
    .line 526
    .line 527
    check-cast v14, Ljava/util/HashMap;

    .line 528
    .line 529
    invoke-virtual {v14, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    .line 531
    .line 532
    move-result-object v13

    .line 533
    check-cast v13, Landroid/telecom/PhoneAccountHandle;

    .line 534
    .line 535
    iget v14, v11, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->mDirection:I

    .line 536
    .line 537
    const/4 v15, 0x1

    .line 538
    if-ne v14, v15, :cond_d

    .line 539
    .line 540
    iget-object v11, v4, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$CallManager;->mTelecomManager:Landroid/telecom/TelecomManager;

    .line 541
    .line 542
    invoke-virtual {v11, v13, v12}, Landroid/telecom/TelecomManager;->addNewIncomingCall(Landroid/telecom/PhoneAccountHandle;Landroid/os/Bundle;)V

    .line 543
    .line 544
    .line 545
    goto/16 :goto_5

    .line 546
    .line 547
    :cond_d
    const/4 v15, 0x2

    .line 548
    if-ne v14, v15, :cond_a

    .line 549
    .line 550
    new-instance v14, Landroid/os/Bundle;

    .line 551
    .line 552
    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    .line 553
    .line 554
    .line 555
    invoke-virtual {v14, v6, v12}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 556
    .line 557
    .line 558
    const-string v12, "android.telecom.extra.PHONE_ACCOUNT_HANDLE"

    .line 559
    .line 560
    invoke-virtual {v14, v12, v13}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 561
    .line 562
    .line 563
    iget-object v11, v11, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->mCallerId:Ljava/lang/String;

    .line 564
    .line 565
    if-eqz v11, :cond_a

    .line 566
    .line 567
    iget-object v12, v4, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$CallManager;->mTelecomManager:Landroid/telecom/TelecomManager;

    .line 568
    .line 569
    const-string/jumbo v13, "sip"

    .line 570
    .line 571
    .line 572
    const/4 v15, 0x0

    .line 573
    invoke-static {v13, v11, v15}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 574
    .line 575
    .line 576
    move-result-object v11

    .line 577
    invoke-virtual {v12, v11, v14}, Landroid/telecom/TelecomManager;->placeCall(Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 578
    .line 579
    .line 580
    goto/16 :goto_5

    .line 581
    .line 582
    :cond_e
    iget-object v4, v4, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$CallManager;->mCallIds:Ljava/util/Map;

    .line 583
    .line 584
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 585
    .line 586
    .line 587
    move-result-object v6

    .line 588
    invoke-interface {v4, v6, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 589
    .line 590
    .line 591
    goto :goto_8

    .line 592
    :cond_f
    iget-object v4, v0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$2;->this$0:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    .line 593
    .line 594
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 595
    .line 596
    .line 597
    iget-object v8, v2, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData;->mCallCreateRequests:Ljava/util/List;

    .line 598
    .line 599
    check-cast v8, Ljava/util/ArrayList;

    .line 600
    .line 601
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 602
    .line 603
    .line 604
    move-result-object v8

    .line 605
    :goto_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 606
    .line 607
    .line 608
    move-result v9

    .line 609
    if-eqz v9, :cond_12

    .line 610
    .line 611
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 612
    .line 613
    .line 614
    move-result-object v9

    .line 615
    check-cast v9, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallCreateRequest;

    .line 616
    .line 617
    iget-object v10, v9, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallCreateRequest;->mFacilitator:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallFacilitator;

    .line 618
    .line 619
    iget-object v10, v10, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallFacilitator;->mIdentifier:Ljava/lang/String;

    .line 620
    .line 621
    const-string/jumbo v11, "system"

    .line 622
    .line 623
    .line 624
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 625
    .line 626
    .line 627
    move-result v10

    .line 628
    if-eqz v10, :cond_10

    .line 629
    .line 630
    iget-object v10, v9, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallCreateRequest;->mAddress:Ljava/lang/String;

    .line 631
    .line 632
    if-eqz v10, :cond_11

    .line 633
    .line 634
    const-string/jumbo v11, "tel"

    .line 635
    .line 636
    .line 637
    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 638
    .line 639
    .line 640
    move-result v10

    .line 641
    if-eqz v10, :cond_11

    .line 642
    .line 643
    iget-object v10, v9, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallCreateRequest;->mId:Ljava/lang/String;

    .line 644
    .line 645
    iget-object v12, v4, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->mCallManager:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$CallManager;

    .line 646
    .line 647
    iget-object v12, v12, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$CallManager;->mSelfOwnedCalls:Ljava/util/Set;

    .line 648
    .line 649
    invoke-interface {v12, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 650
    .line 651
    .line 652
    iget-object v10, v9, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallCreateRequest;->mAddress:Ljava/lang/String;

    .line 653
    .line 654
    const-string v12, "\\D+"

    .line 655
    .line 656
    const-string v13, ""

    .line 657
    .line 658
    invoke-virtual {v10, v12, v13}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 659
    .line 660
    .line 661
    move-result-object v10

    .line 662
    const/4 v12, 0x0

    .line 663
    invoke-static {v11, v10, v12}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 664
    .line 665
    .line 666
    move-result-object v10

    .line 667
    new-instance v11, Landroid/os/Bundle;

    .line 668
    .line 669
    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 670
    .line 671
    .line 672
    iget-object v9, v9, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallCreateRequest;->mId:Ljava/lang/String;

    .line 673
    .line 674
    invoke-virtual {v11, v7, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    .line 676
    .line 677
    new-instance v9, Landroid/os/Bundle;

    .line 678
    .line 679
    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 680
    .line 681
    .line 682
    invoke-virtual {v9, v6, v11}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 683
    .line 684
    .line 685
    iget-object v11, v4, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->mContext:Landroid/content/Context;

    .line 686
    .line 687
    const-class v12, Landroid/telecom/TelecomManager;

    .line 688
    .line 689
    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 690
    .line 691
    .line 692
    move-result-object v11

    .line 693
    check-cast v11, Landroid/telecom/TelecomManager;

    .line 694
    .line 695
    invoke-virtual {v11, v10, v9}, Landroid/telecom/TelecomManager;->placeCall(Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 696
    .line 697
    .line 698
    goto :goto_7

    .line 699
    :cond_10
    const-string v9, "Non-system facilitated calls are not supported yet"

    .line 700
    .line 701
    invoke-static {v5, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    .line 703
    .line 704
    :cond_11
    :goto_7
    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    .line 705
    .line 706
    .line 707
    goto :goto_6

    .line 708
    :cond_12
    :goto_8
    iget-object v4, v0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$2;->this$0:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    .line 709
    .line 710
    iget-object v6, v4, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->mInCallServiceCallbackRef:Ljava/lang/ref/WeakReference;

    .line 711
    .line 712
    if-nez v6, :cond_13

    .line 713
    .line 714
    iget-object v4, v4, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->mConnectionServiceCallbackRef:Ljava/lang/ref/WeakReference;

    .line 715
    .line 716
    if-nez v4, :cond_13

    .line 717
    .line 718
    const-string v0, "No callback to process context sync message"

    .line 719
    .line 720
    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    .line 722
    .line 723
    return-void

    .line 724
    :cond_13
    if-eqz v6, :cond_14

    .line 725
    .line 726
    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 727
    .line 728
    .line 729
    move-result-object v4

    .line 730
    check-cast v4, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncControllerCallback;

    .line 731
    .line 732
    goto :goto_9

    .line 733
    :cond_14
    const/4 v4, 0x0

    .line 734
    :goto_9
    if-eqz v4, :cond_15

    .line 735
    .line 736
    if-eqz v3, :cond_16

    .line 737
    .line 738
    invoke-virtual {v4, v1, v2}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncControllerCallback;->processContextSyncMessage(ILcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData;)V

    .line 739
    .line 740
    .line 741
    goto :goto_a

    .line 742
    :cond_15
    iget-object v4, v0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$2;->this$0:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    .line 743
    .line 744
    const/4 v5, 0x0

    .line 745
    iput-object v5, v4, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->mInCallServiceCallbackRef:Ljava/lang/ref/WeakReference;

    .line 746
    .line 747
    :cond_16
    :goto_a
    iget-object v4, v0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$2;->this$0:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    .line 748
    .line 749
    iget-object v4, v4, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->mConnectionServiceCallbackRef:Ljava/lang/ref/WeakReference;

    .line 750
    .line 751
    if-eqz v4, :cond_17

    .line 752
    .line 753
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 754
    .line 755
    .line 756
    move-result-object v4

    .line 757
    move-object v15, v4

    .line 758
    check-cast v15, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncControllerCallback;

    .line 759
    .line 760
    goto :goto_b

    .line 761
    :cond_17
    const/4 v15, 0x0

    .line 762
    :goto_b
    if-eqz v15, :cond_18

    .line 763
    .line 764
    if-nez v3, :cond_19

    .line 765
    .line 766
    invoke-virtual {v15, v1, v2}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncControllerCallback;->processContextSyncMessage(ILcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData;)V

    .line 767
    .line 768
    .line 769
    goto :goto_c

    .line 770
    :cond_18
    iget-object v0, v0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$2;->this$0:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    .line 771
    .line 772
    const/4 v1, 0x0

    .line 773
    iput-object v1, v0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->mConnectionServiceCallbackRef:Ljava/lang/ref/WeakReference;

    .line 774
    .line 775
    :cond_19
    :goto_c
    return-void
.end method
