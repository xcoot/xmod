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

    .line 3
    invoke-direct {p0}, Landroid/companion/IOnMessageReceivedListener$Stub;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onMessageReceived(I[B)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 3
    move/from16 v1, p1

    .line 5
    iget-object v2, v0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$2;->this$0:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    .line 7
    invoke-virtual {v2, v1}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->isAssociationBlockedLocal(I)Z

    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_0

    .line 13
    return-void

    .line 14
    :cond_0
    iget-object v2, v0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$2;->this$0:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    .line 16
    move-object/from16 v3, p2

    .line 18
    invoke-virtual {v2, v3}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->processTelecomDataFromSync([B)Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData;

    .line 21
    move-result-object v2

    .line 22
    iget-object v3, v2, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData;->mCallControlRequests:Ljava/util/List;

    .line 24
    check-cast v3, Ljava/util/ArrayList;

    .line 26
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 29
    move-result v3

    .line 30
    if-nez v3, :cond_2

    .line 32
    iget-object v3, v2, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData;->mCallCreateRequests:Ljava/util/List;

    .line 34
    check-cast v3, Ljava/util/ArrayList;

    .line 36
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 39
    move-result v3

    .line 40
    if-eqz v3, :cond_1

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

    .line 48
    const-string v6, "android.telecom.extra.OUTGOING_CALL_EXTRAS"

    .line 50
    const-string/jumbo v7, "com.android.companion.datatransfer.contextsync.extra.CALL_ID"

    .line 53
    if-nez v3, :cond_f

    .line 55
    iget-object v9, v0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$2;->this$0:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    .line 57
    iget-object v9, v9, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->mPhoneAccountManager:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$PhoneAccountManager;

    .line 59
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    new-instance v10, Ljava/util/ArrayList;

    .line 64
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 67
    iget-object v11, v2, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData;->mCalls:Ljava/util/Map;

    .line 69
    check-cast v11, Ljava/util/HashMap;

    .line 71
    invoke-virtual {v11}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 74
    move-result-object v11

    .line 75
    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 78
    move-result-object v11

    .line 79
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 82
    move-result v12

    .line 83
    if-eqz v12, :cond_3

    .line 85
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 88
    move-result-object v12

    .line 89
    check-cast v12, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;

    .line 91
    iget-object v12, v12, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->mFacilitator:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallFacilitator;

    .line 93
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    goto :goto_2

    .line 97
    :cond_3
    iget-object v11, v2, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData;->mCallFacilitators:Ljava/util/List;

    .line 99
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 102
    iget-object v11, v9, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$PhoneAccountManager;->mPhoneAccountHandles:Ljava/util/Map;

    .line 104
    check-cast v11, Ljava/util/HashMap;

    .line 106
    invoke-virtual {v11}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 109
    move-result-object v11

    .line 110
    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 113
    move-result-object v11

    .line 114
    :cond_4
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 117
    move-result v12

    .line 118
    if-eqz v12, :cond_5

    .line 120
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 123
    move-result-object v12

    .line 124
    check-cast v12, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$PhoneAccountHandleIdentifier;

    .line 126
    iget-object v13, v12, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$PhoneAccountHandleIdentifier;->mAppIdentifier:Ljava/lang/String;

    .line 128
    iget v14, v12, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$PhoneAccountHandleIdentifier;->mAssociationId:I

    .line 130
    if-ne v1, v14, :cond_4

    .line 132
    invoke-interface {v10}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 135
    move-result-object v14

    .line 136
    new-instance v15, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$PhoneAccountManager$$ExternalSyntheticLambda0;

    .line 138
    invoke-direct {v15, v13}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$PhoneAccountManager$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    .line 141
    invoke-interface {v14, v15}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    .line 144
    move-result v13

    .line 145
    if-eqz v13, :cond_4

    .line 147
    iget-object v13, v9, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$PhoneAccountManager;->mPhoneAccountHandles:Ljava/util/Map;

    .line 149
    check-cast v13, Ljava/util/HashMap;

    .line 151
    invoke-virtual {v13, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    move-result-object v12

    .line 155
    check-cast v12, Landroid/telecom/PhoneAccountHandle;

    .line 157
    iget-object v13, v9, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$PhoneAccountManager;->mTelecomManager:Landroid/telecom/TelecomManager;

    .line 159
    invoke-virtual {v13, v12}, Landroid/telecom/TelecomManager;->unregisterPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V

    .line 162
    invoke-interface {v11}, Ljava/util/Iterator;->remove()V

    .line 165
    goto :goto_3

    .line 166
    :cond_5
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 169
    move-result-object v10

    .line 170
    :cond_6
    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 173
    move-result v11

    .line 174
    if-eqz v11, :cond_8

    .line 176
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 179
    move-result-object v11

    .line 180
    check-cast v11, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallFacilitator;

    .line 182
    new-instance v12, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$PhoneAccountHandleIdentifier;

    .line 184
    iget-object v13, v11, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallFacilitator;->mIdentifier:Ljava/lang/String;

    .line 186
    invoke-direct {v12, v1, v13}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$PhoneAccountHandleIdentifier;-><init>(ILjava/lang/String;)V

    .line 189
    iget-object v14, v9, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$PhoneAccountManager;->mPhoneAccountHandles:Ljava/util/Map;

    .line 191
    check-cast v14, Ljava/util/HashMap;

    .line 193
    invoke-virtual {v14, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 196
    move-result v14

    .line 197
    if-nez v14, :cond_6

    .line 199
    iget-object v14, v11, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallFacilitator;->mName:Ljava/lang/String;

    .line 201
    iget-boolean v11, v11, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallFacilitator;->mIsTel:Z

    .line 203
    iget-object v15, v9, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$PhoneAccountManager;->mPhoneAccountHandles:Ljava/util/Map;

    .line 205
    check-cast v15, Ljava/util/HashMap;

    .line 207
    invoke-virtual {v15, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 210
    move-result v15

    .line 211
    if-eqz v15, :cond_7

    .line 213
    goto :goto_4

    .line 214
    :cond_7
    new-instance v15, Landroid/telecom/PhoneAccountHandle;

    .line 216
    iget-object v8, v9, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$PhoneAccountManager;->mConnectionServiceComponentName:Landroid/content/ComponentName;

    .line 218
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 221
    move-result-object v16

    .line 222
    invoke-virtual/range {v16 .. v16}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 225
    move-result-object v4

    .line 226
    invoke-direct {v15, v8, v4}, Landroid/telecom/PhoneAccountHandle;-><init>(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 229
    iget-object v4, v9, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$PhoneAccountManager;->mPhoneAccountHandles:Ljava/util/Map;

    .line 231
    check-cast v4, Ljava/util/HashMap;

    .line 233
    invoke-virtual {v4, v12, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    invoke-static {v15, v14, v13, v1, v11}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$PhoneAccountManager;->createPhoneAccount(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Ljava/lang/String;IZ)Landroid/telecom/PhoneAccount;

    .line 239
    move-result-object v4

    .line 240
    iget-object v8, v9, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$PhoneAccountManager;->mTelecomManager:Landroid/telecom/TelecomManager;

    .line 242
    invoke-virtual {v8, v4}, Landroid/telecom/TelecomManager;->registerPhoneAccount(Landroid/telecom/PhoneAccount;)V

    .line 245
    iget-object v4, v9, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$PhoneAccountManager;->mTelecomManager:Landroid/telecom/TelecomManager;

    .line 247
    iget-object v8, v9, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$PhoneAccountManager;->mPhoneAccountHandles:Ljava/util/Map;

    .line 249
    check-cast v8, Ljava/util/HashMap;

    .line 251
    invoke-virtual {v8, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    move-result-object v8

    .line 255
    check-cast v8, Landroid/telecom/PhoneAccountHandle;

    .line 257
    const/4 v11, 0x1

    .line 258
    invoke-virtual {v4, v8, v11}, Landroid/telecom/TelecomManager;->enablePhoneAccount(Landroid/telecom/PhoneAccountHandle;Z)V

    .line 261
    goto :goto_4

    .line 262
    :cond_8
    iget-object v4, v0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$2;->this$0:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    .line 264
    iget-object v4, v4, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->mCallManager:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$CallManager;

    .line 266
    iget-object v8, v4, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$CallManager;->mCallIds:Ljava/util/Map;

    .line 268
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 271
    move-result-object v9

    .line 272
    new-instance v10, Ljava/util/HashSet;

    .line 274
    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 277
    invoke-interface {v8, v9, v10}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    move-result-object v8

    .line 281
    check-cast v8, Ljava/util/Set;

    .line 283
    iget-object v9, v2, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData;->mCalls:Ljava/util/Map;

    .line 285
    check-cast v9, Ljava/util/HashMap;

    .line 287
    invoke-virtual {v9}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 290
    move-result-object v9

    .line 291
    invoke-interface {v9}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    .line 294
    move-result-object v9

    .line 295
    new-instance v10, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$CallManager$$ExternalSyntheticLambda0;

    .line 297
    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 300
    invoke-interface {v9, v10}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 303
    move-result-object v9

    .line 304
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    .line 307
    move-result-object v10

    .line 308
    invoke-interface {v9, v10}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 311
    move-result-object v9

    .line 312
    check-cast v9, Ljava/util/Set;

    .line 314
    invoke-interface {v8, v9}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    .line 317
    move-result v10

    .line 318
    if-eqz v10, :cond_9

    .line 320
    goto/16 :goto_8

    .line 322
    :cond_9
    iget-object v10, v2, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData;->mCalls:Ljava/util/Map;

    .line 324
    check-cast v10, Ljava/util/HashMap;

    .line 326
    invoke-virtual {v10}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 329
    move-result-object v10

    .line 330
    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 333
    move-result-object v10

    .line 334
    :cond_a
    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 337
    move-result v11

    .line 338
    if-eqz v11, :cond_e

    .line 340
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 343
    move-result-object v11

    .line 344
    check-cast v11, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;

    .line 346
    iget-object v12, v11, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->mId:Ljava/lang/String;

    .line 348
    invoke-interface {v8, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 351
    move-result v12

    .line 352
    if-nez v12, :cond_a

    .line 354
    iget-object v12, v11, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->mFacilitator:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallFacilitator;

    .line 356
    if-eqz v12, :cond_a

    .line 358
    iget-object v12, v11, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->mId:Ljava/lang/String;

    .line 360
    iget-object v13, v4, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$CallManager;->mSelfOwnedCalls:Ljava/util/Set;

    .line 362
    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 365
    move-result-object v13

    .line 366
    :cond_b
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    .line 369
    move-result v14

    .line 370
    if-eqz v14, :cond_c

    .line 372
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 375
    move-result-object v14

    .line 376
    check-cast v14, Ljava/lang/String;

    .line 378
    invoke-virtual {v12, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 381
    move-result v14

    .line 382
    if-eqz v14, :cond_b

    .line 384
    goto :goto_5

    .line 385
    :cond_c
    iget-object v12, v4, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$CallManager;->mExternallyOwnedCalls:Ljava/util/Set;

    .line 387
    iget-object v13, v11, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->mId:Ljava/lang/String;

    .line 389
    invoke-interface {v12, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 392
    new-instance v12, Landroid/os/Bundle;

    .line 394
    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 397
    const-string/jumbo v13, "com.android.server.companion.datatransfer.contextsync.extra.ASSOCIATION_ID"

    .line 400
    invoke-virtual {v12, v13, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 403
    const-string/jumbo v13, "com.android.companion.datatransfer.contextsync.extra.IS_REMOTE_ORIGIN"

    .line 406
    const/4 v14, 0x1

    .line 407
    invoke-virtual {v12, v13, v14}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 410
    new-instance v13, Landroid/os/Bundle;

    .line 412
    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    .line 415
    iget-object v14, v11, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->mId:Ljava/lang/String;

    .line 417
    invoke-virtual {v13, v7, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    const-string/jumbo v14, "com.android.server.companion.datatransfer.contextsync.extra.CALLER_ID"

    .line 423
    iget-object v15, v11, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->mCallerId:Ljava/lang/String;

    .line 425
    invoke-virtual {v13, v14, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    const-string/jumbo v14, "com.android.server.companion.datatransfer.contextsync.extra.APP_ICON"

    .line 431
    iget-object v15, v11, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->mAppIcon:[B

    .line 433
    invoke-virtual {v13, v14, v15}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 436
    iget-object v14, v11, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->mFacilitator:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallFacilitator;

    .line 438
    iget-object v14, v14, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallFacilitator;->mName:Ljava/lang/String;

    .line 440
    const-string/jumbo v15, "com.android.server.companion.datatransfer.contextsync.extra.FACILITATOR_NAME"

    .line 443
    invoke-virtual {v13, v15, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    iget-object v14, v11, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->mFacilitator:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallFacilitator;

    .line 448
    iget-object v14, v14, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallFacilitator;->mIdentifier:Ljava/lang/String;

    .line 450
    const-string/jumbo v15, "com.android.server.companion.datatransfer.contextsync.extra.FACILITATOR_ID"

    .line 453
    invoke-virtual {v13, v15, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    iget-object v14, v11, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->mFacilitator:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallFacilitator;

    .line 458
    iget-object v14, v14, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallFacilitator;->mExtendedIdentifier:Ljava/lang/String;

    .line 460
    const-string/jumbo v15, "com.android.server.companion.datatransfer.contextsync.extra.FACILITATOR_EXT_ID"

    .line 463
    invoke-virtual {v13, v15, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    const-string/jumbo v14, "com.android.server.companion.datatransfer.contextsync.extra.STATUS"

    .line 469
    iget v15, v11, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->mStatus:I

    .line 471
    invoke-virtual {v13, v14, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 474
    const-string/jumbo v14, "com.android.server.companion.datatransfer.contextsync.extra.DIRECTION"

    .line 477
    iget v15, v11, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->mDirection:I

    .line 479
    invoke-virtual {v13, v14, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 482
    new-instance v14, Ljava/util/ArrayList;

    .line 484
    iget-object v15, v11, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->mControls:Ljava/util/Set;

    .line 486
    invoke-direct {v14, v15}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 489
    const-string/jumbo v15, "com.android.server.companion.datatransfer.contextsync.extra.CONTROLS"

    .line 492
    invoke-virtual {v13, v15, v14}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 495
    const-string/jumbo v14, "com.android.server.companion.datatransfer.contextsync.extra.CALL"

    .line 498
    invoke-virtual {v12, v14, v13}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 501
    iget-object v13, v11, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->mId:Ljava/lang/String;

    .line 503
    invoke-virtual {v12, v7, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    iget-object v13, v11, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->mAppIcon:[B

    .line 508
    const-string/jumbo v14, "com.android.companion.datatransfer.contextsync.extra.FACILITATOR_ICON"

    .line 511
    invoke-virtual {v12, v14, v13}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 514
    iget-object v13, v11, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->mFacilitator:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallFacilitator;

    .line 516
    iget-object v13, v13, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallFacilitator;->mIdentifier:Ljava/lang/String;

    .line 518
    iget-object v14, v4, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$CallManager;->mPhoneAccountManager:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$PhoneAccountManager;

    .line 520
    iget-object v14, v14, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$PhoneAccountManager;->mPhoneAccountHandles:Ljava/util/Map;

    .line 522
    new-instance v15, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$PhoneAccountHandleIdentifier;

    .line 524
    invoke-direct {v15, v1, v13}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$PhoneAccountHandleIdentifier;-><init>(ILjava/lang/String;)V

    .line 527
    check-cast v14, Ljava/util/HashMap;

    .line 529
    invoke-virtual {v14, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    move-result-object v13

    .line 533
    check-cast v13, Landroid/telecom/PhoneAccountHandle;

    .line 535
    iget v14, v11, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->mDirection:I

    .line 537
    const/4 v15, 0x1

    .line 538
    if-ne v14, v15, :cond_d

    .line 540
    iget-object v11, v4, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$CallManager;->mTelecomManager:Landroid/telecom/TelecomManager;

    .line 542
    invoke-virtual {v11, v13, v12}, Landroid/telecom/TelecomManager;->addNewIncomingCall(Landroid/telecom/PhoneAccountHandle;Landroid/os/Bundle;)V

    .line 545
    goto/16 :goto_5

    .line 547
    :cond_d
    const/4 v15, 0x2

    .line 548
    if-ne v14, v15, :cond_a

    .line 550
    new-instance v14, Landroid/os/Bundle;

    .line 552
    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    .line 555
    invoke-virtual {v14, v6, v12}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 558
    const-string v12, "android.telecom.extra.PHONE_ACCOUNT_HANDLE"

    .line 560
    invoke-virtual {v14, v12, v13}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 563
    iget-object v11, v11, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->mCallerId:Ljava/lang/String;

    .line 565
    if-eqz v11, :cond_a

    .line 567
    iget-object v12, v4, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$CallManager;->mTelecomManager:Landroid/telecom/TelecomManager;

    .line 569
    const-string/jumbo v13, "sip"

    .line 572
    const/4 v15, 0x0

    .line 573
    invoke-static {v13, v11, v15}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 576
    move-result-object v11

    .line 577
    invoke-virtual {v12, v11, v14}, Landroid/telecom/TelecomManager;->placeCall(Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 580
    goto/16 :goto_5

    .line 582
    :cond_e
    iget-object v4, v4, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$CallManager;->mCallIds:Ljava/util/Map;

    .line 584
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 587
    move-result-object v6

    .line 588
    invoke-interface {v4, v6, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 591
    goto :goto_8

    .line 592
    :cond_f
    iget-object v4, v0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$2;->this$0:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    .line 594
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 597
    iget-object v8, v2, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData;->mCallCreateRequests:Ljava/util/List;

    .line 599
    check-cast v8, Ljava/util/ArrayList;

    .line 601
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 604
    move-result-object v8

    .line 605
    :goto_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 608
    move-result v9

    .line 609
    if-eqz v9, :cond_12

    .line 611
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 614
    move-result-object v9

    .line 615
    check-cast v9, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallCreateRequest;

    .line 617
    iget-object v10, v9, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallCreateRequest;->mFacilitator:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallFacilitator;

    .line 619
    iget-object v10, v10, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallFacilitator;->mIdentifier:Ljava/lang/String;

    .line 621
    const-string/jumbo v11, "system"

    .line 624
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 627
    move-result v10

    .line 628
    if-eqz v10, :cond_10

    .line 630
    iget-object v10, v9, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallCreateRequest;->mAddress:Ljava/lang/String;

    .line 632
    if-eqz v10, :cond_11

    .line 634
    const-string/jumbo v11, "tel"

    .line 637
    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 640
    move-result v10

    .line 641
    if-eqz v10, :cond_11

    .line 643
    iget-object v10, v9, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallCreateRequest;->mId:Ljava/lang/String;

    .line 645
    iget-object v12, v4, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->mCallManager:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$CallManager;

    .line 647
    iget-object v12, v12, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$CallManager;->mSelfOwnedCalls:Ljava/util/Set;

    .line 649
    invoke-interface {v12, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 652
    iget-object v10, v9, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallCreateRequest;->mAddress:Ljava/lang/String;

    .line 654
    const-string v12, "\\D+"

    .line 656
    const-string v13, ""

    .line 658
    invoke-virtual {v10, v12, v13}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 661
    move-result-object v10

    .line 662
    const/4 v12, 0x0

    .line 663
    invoke-static {v11, v10, v12}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 666
    move-result-object v10

    .line 667
    new-instance v11, Landroid/os/Bundle;

    .line 669
    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 672
    iget-object v9, v9, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallCreateRequest;->mId:Ljava/lang/String;

    .line 674
    invoke-virtual {v11, v7, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    new-instance v9, Landroid/os/Bundle;

    .line 679
    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 682
    invoke-virtual {v9, v6, v11}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 685
    iget-object v11, v4, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->mContext:Landroid/content/Context;

    .line 687
    const-class v12, Landroid/telecom/TelecomManager;

    .line 689
    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 692
    move-result-object v11

    .line 693
    check-cast v11, Landroid/telecom/TelecomManager;

    .line 695
    invoke-virtual {v11, v10, v9}, Landroid/telecom/TelecomManager;->placeCall(Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 698
    goto :goto_7

    .line 699
    :cond_10
    const-string v9, "Non-system facilitated calls are not supported yet"

    .line 701
    invoke-static {v5, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    :cond_11
    :goto_7
    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    .line 707
    goto :goto_6

    .line 708
    :cond_12
    :goto_8
    iget-object v4, v0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$2;->this$0:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    .line 710
    iget-object v6, v4, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->mInCallServiceCallbackRef:Ljava/lang/ref/WeakReference;

    .line 712
    if-nez v6, :cond_13

    .line 714
    iget-object v4, v4, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->mConnectionServiceCallbackRef:Ljava/lang/ref/WeakReference;

    .line 716
    if-nez v4, :cond_13

    .line 718
    const-string v0, "No callback to process context sync message"

    .line 720
    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    return-void

    .line 724
    :cond_13
    if-eqz v6, :cond_14

    .line 726
    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 729
    move-result-object v4

    .line 730
    check-cast v4, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncControllerCallback;

    .line 732
    goto :goto_9

    .line 733
    :cond_14
    const/4 v4, 0x0

    .line 734
    :goto_9
    if-eqz v4, :cond_15

    .line 736
    if-eqz v3, :cond_16

    .line 738
    invoke-virtual {v4, v1, v2}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncControllerCallback;->processContextSyncMessage(ILcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData;)V

    .line 741
    goto :goto_a

    .line 742
    :cond_15
    iget-object v4, v0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$2;->this$0:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    .line 744
    const/4 v5, 0x0

    .line 745
    iput-object v5, v4, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->mInCallServiceCallbackRef:Ljava/lang/ref/WeakReference;

    .line 747
    :cond_16
    :goto_a
    iget-object v4, v0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$2;->this$0:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    .line 749
    iget-object v4, v4, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->mConnectionServiceCallbackRef:Ljava/lang/ref/WeakReference;

    .line 751
    if-eqz v4, :cond_17

    .line 753
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 756
    move-result-object v4

    .line 757
    move-object v15, v4

    .line 758
    check-cast v15, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncControllerCallback;

    .line 760
    goto :goto_b

    .line 761
    :cond_17
    const/4 v15, 0x0

    .line 762
    :goto_b
    if-eqz v15, :cond_18

    .line 764
    if-nez v3, :cond_19

    .line 766
    invoke-virtual {v15, v1, v2}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncControllerCallback;->processContextSyncMessage(ILcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData;)V

    .line 769
    goto :goto_c

    .line 770
    :cond_18
    iget-object v0, v0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$2;->this$0:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    .line 772
    const/4 v1, 0x0

    .line 773
    iput-object v1, v0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->mConnectionServiceCallbackRef:Ljava/lang/ref/WeakReference;

    .line 775
    :cond_19
    :goto_c
    return-void
.end method
