.class public final Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$1;
.super Landroid/companion/IOnTransportsChangedListener$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;


# direct methods
.method public constructor <init>(Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$1;->this$0:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/companion/IOnTransportsChangedListener$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onTransportsChanged(Ljava/util/List;)V
    .locals 11

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    invoke-static {}, Lcom/android/server/companion/CompanionDeviceConfig;->isEnabled()Z

    .line 6
    .line 7
    .line 8
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 16
    .line 17
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$1;->this$0:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    .line 21
    .line 22
    iget-object v1, v1, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->mConnectedAssociations:Ljava/util/List;

    .line 23
    .line 24
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$1;->this$0:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    .line 28
    .line 29
    iget-object v1, v1, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->mConnectedAssociations:Ljava/util/List;

    .line 30
    .line 31
    check-cast v1, Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$1;->this$0:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    .line 37
    .line 38
    iget-object v1, v1, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->mConnectedAssociations:Ljava/util/List;

    .line 39
    .line 40
    check-cast v1, Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 43
    .line 44
    .line 45
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    const/4 v3, -0x1

    .line 54
    const/4 v4, 0x1

    .line 55
    const/4 v5, 0x0

    .line 56
    const-string v6, "CrossDeviceSyncController"

    .line 57
    .line 58
    if-eqz v2, :cond_5

    .line 59
    .line 60
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    check-cast v2, Landroid/companion/AssociationInfo;

    .line 65
    .line 66
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v7

    .line 70
    if-nez v7, :cond_1

    .line 71
    .line 72
    invoke-static {v2}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->isAssociationBlocked(Landroid/companion/AssociationInfo;)Z

    .line 73
    .line 74
    .line 75
    move-result v7

    .line 76
    if-nez v7, :cond_4

    .line 77
    .line 78
    iget-object v7, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$1;->this$0:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    .line 79
    .line 80
    iget-object v7, v7, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->mInCallServiceCallbackRef:Ljava/lang/ref/WeakReference;

    .line 81
    .line 82
    if-eqz v7, :cond_2

    .line 83
    .line 84
    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    check-cast v5, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncControllerCallback;

    .line 89
    .line 90
    :cond_2
    if-eqz v5, :cond_3

    .line 91
    .line 92
    invoke-virtual {v2}, Landroid/companion/AssociationInfo;->getUserId()I

    .line 93
    .line 94
    .line 95
    move-result v3

    .line 96
    invoke-virtual {v5, v3, v4}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncControllerCallback;->updateNumberOfActiveSyncAssociations(IZ)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v5, v2}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncControllerCallback;->requestCrossDeviceSync(Landroid/companion/AssociationInfo;)V

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_3
    const-string v4, "No callback to report new transport"

    .line 104
    .line 105
    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    .line 107
    .line 108
    iget-object v4, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$1;->this$0:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    .line 109
    .line 110
    invoke-virtual {v2}, Landroid/companion/AssociationInfo;->getId()I

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    iget-object v5, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$1;->this$0:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    .line 115
    .line 116
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 117
    .line 118
    .line 119
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 120
    .line 121
    .line 122
    move-result-object v6

    .line 123
    invoke-virtual {v5, v6, v3}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->createCallUpdateMessage(Ljava/util/Collection;I)[B

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    invoke-virtual {v4, v2, v3}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->syncMessageToDevice(I[B)V

    .line 128
    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_4
    iget-object v3, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$1;->this$0:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    .line 132
    .line 133
    iget-object v3, v3, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->mBlocklist:Ljava/util/Set;

    .line 134
    .line 135
    invoke-virtual {v2}, Landroid/companion/AssociationInfo;->getId()I

    .line 136
    .line 137
    .line 138
    move-result v2

    .line 139
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    check-cast v3, Ljava/util/HashSet;

    .line 144
    .line 145
    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    const-string v2, "New association was blocked from context syncing"

    .line 149
    .line 150
    invoke-static {v6, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    .line 152
    .line 153
    goto :goto_0

    .line 154
    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    :cond_6
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 159
    .line 160
    .line 161
    move-result v1

    .line 162
    if-eqz v1, :cond_f

    .line 163
    .line 164
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    check-cast v1, Landroid/companion/AssociationInfo;

    .line 169
    .line 170
    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    move-result v2

    .line 174
    const/4 v7, 0x0

    .line 175
    if-nez v2, :cond_a

    .line 176
    .line 177
    iget-object v2, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$1;->this$0:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    .line 178
    .line 179
    iget-object v2, v2, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->mBlocklist:Ljava/util/Set;

    .line 180
    .line 181
    invoke-virtual {v1}, Landroid/companion/AssociationInfo;->getId()I

    .line 182
    .line 183
    .line 184
    move-result v8

    .line 185
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 186
    .line 187
    .line 188
    move-result-object v8

    .line 189
    check-cast v2, Ljava/util/HashSet;

    .line 190
    .line 191
    invoke-virtual {v2, v8}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    iget-object v2, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$1;->this$0:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    .line 195
    .line 196
    invoke-virtual {v1}, Landroid/companion/AssociationInfo;->getId()I

    .line 197
    .line 198
    .line 199
    move-result v8

    .line 200
    invoke-virtual {v2, v8}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->isAssociationBlockedLocal(I)Z

    .line 201
    .line 202
    .line 203
    move-result v2

    .line 204
    if-nez v2, :cond_9

    .line 205
    .line 206
    iget-object v2, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$1;->this$0:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    .line 207
    .line 208
    iget-object v2, v2, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->mInCallServiceCallbackRef:Ljava/lang/ref/WeakReference;

    .line 209
    .line 210
    if-eqz v2, :cond_7

    .line 211
    .line 212
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object v2

    .line 216
    check-cast v2, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncControllerCallback;

    .line 217
    .line 218
    goto :goto_2

    .line 219
    :cond_7
    move-object v2, v5

    .line 220
    :goto_2
    if-eqz v2, :cond_8

    .line 221
    .line 222
    invoke-virtual {v1}, Landroid/companion/AssociationInfo;->getUserId()I

    .line 223
    .line 224
    .line 225
    move-result v8

    .line 226
    invoke-virtual {v2, v8, v7}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncControllerCallback;->updateNumberOfActiveSyncAssociations(IZ)V

    .line 227
    .line 228
    .line 229
    goto :goto_3

    .line 230
    :cond_8
    const-string v2, "No callback to report removed transport"

    .line 231
    .line 232
    invoke-static {v6, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    .line 234
    .line 235
    :cond_9
    :goto_3
    iget-object v2, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$1;->this$0:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    .line 236
    .line 237
    invoke-virtual {v1}, Landroid/companion/AssociationInfo;->getId()I

    .line 238
    .line 239
    .line 240
    move-result v1

    .line 241
    invoke-static {v2, v1}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->-$$Nest$mclearInProgressCalls(Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;I)V

    .line 242
    .line 243
    .line 244
    goto :goto_1

    .line 245
    :cond_a
    invoke-static {v1}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->isAssociationBlocked(Landroid/companion/AssociationInfo;)Z

    .line 246
    .line 247
    .line 248
    move-result v2

    .line 249
    iget-object v8, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$1;->this$0:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    .line 250
    .line 251
    invoke-virtual {v1}, Landroid/companion/AssociationInfo;->getId()I

    .line 252
    .line 253
    .line 254
    move-result v9

    .line 255
    invoke-virtual {v8, v9}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->isAssociationBlockedLocal(I)Z

    .line 256
    .line 257
    .line 258
    move-result v8

    .line 259
    if-eq v8, v2, :cond_6

    .line 260
    .line 261
    iget-object v8, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$1;->this$0:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    .line 262
    .line 263
    iget-object v8, v8, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->mInCallServiceCallbackRef:Ljava/lang/ref/WeakReference;

    .line 264
    .line 265
    if-eqz v8, :cond_b

    .line 266
    .line 267
    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    move-result-object v8

    .line 271
    check-cast v8, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncControllerCallback;

    .line 272
    .line 273
    goto :goto_4

    .line 274
    :cond_b
    move-object v8, v5

    .line 275
    :goto_4
    const-string v9, "No callback to report changed transport"

    .line 276
    .line 277
    if-nez v2, :cond_d

    .line 278
    .line 279
    const-string v2, "Unblocking existing association for context sync"

    .line 280
    .line 281
    invoke-static {v6, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    .line 283
    .line 284
    iget-object v2, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$1;->this$0:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    .line 285
    .line 286
    iget-object v2, v2, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->mBlocklist:Ljava/util/Set;

    .line 287
    .line 288
    invoke-virtual {v1}, Landroid/companion/AssociationInfo;->getId()I

    .line 289
    .line 290
    .line 291
    move-result v7

    .line 292
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 293
    .line 294
    .line 295
    move-result-object v7

    .line 296
    check-cast v2, Ljava/util/HashSet;

    .line 297
    .line 298
    invoke-virtual {v2, v7}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 299
    .line 300
    .line 301
    if-eqz v8, :cond_c

    .line 302
    .line 303
    invoke-virtual {v1}, Landroid/companion/AssociationInfo;->getUserId()I

    .line 304
    .line 305
    .line 306
    move-result v2

    .line 307
    invoke-virtual {v8, v2, v4}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncControllerCallback;->updateNumberOfActiveSyncAssociations(IZ)V

    .line 308
    .line 309
    .line 310
    invoke-virtual {v8, v1}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncControllerCallback;->requestCrossDeviceSync(Landroid/companion/AssociationInfo;)V

    .line 311
    .line 312
    .line 313
    goto/16 :goto_1

    .line 314
    .line 315
    :cond_c
    invoke-static {v6, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    .line 317
    .line 318
    iget-object v2, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$1;->this$0:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    .line 319
    .line 320
    invoke-virtual {v1}, Landroid/companion/AssociationInfo;->getId()I

    .line 321
    .line 322
    .line 323
    move-result v1

    .line 324
    iget-object v7, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$1;->this$0:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    .line 325
    .line 326
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 327
    .line 328
    .line 329
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 330
    .line 331
    .line 332
    move-result-object v8

    .line 333
    invoke-virtual {v7, v8, v3}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->createCallUpdateMessage(Ljava/util/Collection;I)[B

    .line 334
    .line 335
    .line 336
    move-result-object v7

    .line 337
    invoke-virtual {v2, v1, v7}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->syncMessageToDevice(I[B)V

    .line 338
    .line 339
    .line 340
    goto/16 :goto_1

    .line 341
    .line 342
    :cond_d
    const-string v2, "Blocking existing association for context sync"

    .line 343
    .line 344
    invoke-static {v6, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    .line 346
    .line 347
    iget-object v2, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$1;->this$0:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    .line 348
    .line 349
    iget-object v2, v2, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->mBlocklist:Ljava/util/Set;

    .line 350
    .line 351
    invoke-virtual {v1}, Landroid/companion/AssociationInfo;->getId()I

    .line 352
    .line 353
    .line 354
    move-result v10

    .line 355
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 356
    .line 357
    .line 358
    move-result-object v10

    .line 359
    check-cast v2, Ljava/util/HashSet;

    .line 360
    .line 361
    invoke-virtual {v2, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 362
    .line 363
    .line 364
    if-eqz v8, :cond_e

    .line 365
    .line 366
    invoke-virtual {v1}, Landroid/companion/AssociationInfo;->getUserId()I

    .line 367
    .line 368
    .line 369
    move-result v2

    .line 370
    invoke-virtual {v8, v2, v7}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncControllerCallback;->updateNumberOfActiveSyncAssociations(IZ)V

    .line 371
    .line 372
    .line 373
    goto :goto_5

    .line 374
    :cond_e
    invoke-static {v6, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    .line 376
    .line 377
    :goto_5
    iget-object v2, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$1;->this$0:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    .line 378
    .line 379
    invoke-virtual {v1}, Landroid/companion/AssociationInfo;->getId()I

    .line 380
    .line 381
    .line 382
    move-result v7

    .line 383
    new-instance v8, Landroid/util/proto/ProtoOutputStream;

    .line 384
    .line 385
    invoke-direct {v8}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 386
    .line 387
    .line 388
    const-wide v9, 0x10500000001L

    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    invoke-virtual {v8, v9, v10, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 394
    .line 395
    .line 396
    invoke-virtual {v8}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    .line 397
    .line 398
    .line 399
    move-result-object v8

    .line 400
    invoke-virtual {v2, v7, v8}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->syncMessageToDevice(I[B)V

    .line 401
    .line 402
    .line 403
    iget-object v2, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$1;->this$0:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    .line 404
    .line 405
    invoke-virtual {v1}, Landroid/companion/AssociationInfo;->getId()I

    .line 406
    .line 407
    .line 408
    move-result v1

    .line 409
    invoke-static {v2, v1}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->-$$Nest$mclearInProgressCalls(Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;I)V

    .line 410
    .line 411
    .line 412
    goto/16 :goto_1

    .line 413
    .line 414
    :cond_f
    return-void

    .line 415
    :catchall_0
    move-exception p0

    .line 416
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 417
    .line 418
    .line 419
    throw p0
.end method
