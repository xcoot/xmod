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

    .line 3
    invoke-direct {p0}, Landroid/companion/IOnTransportsChangedListener$Stub;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onTransportsChanged(Ljava/util/List;)V
    .locals 11

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    invoke-static {}, Lcom/android/server/companion/CompanionDeviceConfig;->isEnabled()Z

    .line 8
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    if-nez v2, :cond_0

    .line 11
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 14
    return-void

    .line 15
    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 20
    iget-object v1, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$1;->this$0:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    .line 22
    iget-object v1, v1, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->mConnectedAssociations:Ljava/util/List;

    .line 24
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 27
    iget-object v1, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$1;->this$0:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    .line 29
    iget-object v1, v1, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->mConnectedAssociations:Ljava/util/List;

    .line 31
    check-cast v1, Ljava/util/ArrayList;

    .line 33
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 36
    iget-object v1, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$1;->this$0:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    .line 38
    iget-object v1, v1, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->mConnectedAssociations:Ljava/util/List;

    .line 40
    check-cast v1, Ljava/util/ArrayList;

    .line 42
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 45
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 48
    move-result-object v1

    .line 49
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

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

    .line 58
    if-eqz v2, :cond_5

    .line 60
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    move-result-object v2

    .line 64
    check-cast v2, Landroid/companion/AssociationInfo;

    .line 66
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 69
    move-result v7

    .line 70
    if-nez v7, :cond_1

    .line 72
    invoke-static {v2}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->isAssociationBlocked(Landroid/companion/AssociationInfo;)Z

    .line 75
    move-result v7

    .line 76
    if-nez v7, :cond_4

    .line 78
    iget-object v7, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$1;->this$0:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    .line 80
    iget-object v7, v7, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->mInCallServiceCallbackRef:Ljava/lang/ref/WeakReference;

    .line 82
    if-eqz v7, :cond_2

    .line 84
    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 87
    move-result-object v5

    .line 88
    check-cast v5, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncControllerCallback;

    .line 90
    :cond_2
    if-eqz v5, :cond_3

    .line 92
    invoke-virtual {v2}, Landroid/companion/AssociationInfo;->getUserId()I

    .line 95
    move-result v3

    .line 96
    invoke-virtual {v5, v3, v4}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncControllerCallback;->updateNumberOfActiveSyncAssociations(IZ)V

    .line 99
    invoke-virtual {v5, v2}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncControllerCallback;->requestCrossDeviceSync(Landroid/companion/AssociationInfo;)V

    .line 102
    goto :goto_0

    .line 103
    :cond_3
    const-string v4, "No callback to report new transport"

    .line 105
    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v4, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$1;->this$0:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    .line 110
    invoke-virtual {v2}, Landroid/companion/AssociationInfo;->getId()I

    .line 113
    move-result v2

    .line 114
    iget-object v5, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$1;->this$0:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    .line 116
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 119
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 122
    move-result-object v6

    .line 123
    invoke-virtual {v5, v6, v3}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->createCallUpdateMessage(Ljava/util/Collection;I)[B

    .line 126
    move-result-object v3

    .line 127
    invoke-virtual {v4, v2, v3}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->syncMessageToDevice(I[B)V

    .line 130
    goto :goto_0

    .line 131
    :cond_4
    iget-object v3, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$1;->this$0:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    .line 133
    iget-object v3, v3, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->mBlocklist:Ljava/util/Set;

    .line 135
    invoke-virtual {v2}, Landroid/companion/AssociationInfo;->getId()I

    .line 138
    move-result v2

    .line 139
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 142
    move-result-object v2

    .line 143
    check-cast v3, Ljava/util/HashSet;

    .line 145
    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 148
    const-string v2, "New association was blocked from context syncing"

    .line 150
    invoke-static {v6, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    goto :goto_0

    .line 154
    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 157
    move-result-object v0

    .line 158
    :cond_6
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 161
    move-result v1

    .line 162
    if-eqz v1, :cond_f

    .line 164
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 167
    move-result-object v1

    .line 168
    check-cast v1, Landroid/companion/AssociationInfo;

    .line 170
    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 173
    move-result v2

    .line 174
    const/4 v7, 0x0

    .line 175
    if-nez v2, :cond_a

    .line 177
    iget-object v2, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$1;->this$0:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    .line 179
    iget-object v2, v2, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->mBlocklist:Ljava/util/Set;

    .line 181
    invoke-virtual {v1}, Landroid/companion/AssociationInfo;->getId()I

    .line 184
    move-result v8

    .line 185
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 188
    move-result-object v8

    .line 189
    check-cast v2, Ljava/util/HashSet;

    .line 191
    invoke-virtual {v2, v8}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 194
    iget-object v2, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$1;->this$0:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    .line 196
    invoke-virtual {v1}, Landroid/companion/AssociationInfo;->getId()I

    .line 199
    move-result v8

    .line 200
    invoke-virtual {v2, v8}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->isAssociationBlockedLocal(I)Z

    .line 203
    move-result v2

    .line 204
    if-nez v2, :cond_9

    .line 206
    iget-object v2, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$1;->this$0:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    .line 208
    iget-object v2, v2, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->mInCallServiceCallbackRef:Ljava/lang/ref/WeakReference;

    .line 210
    if-eqz v2, :cond_7

    .line 212
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 215
    move-result-object v2

    .line 216
    check-cast v2, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncControllerCallback;

    .line 218
    goto :goto_2

    .line 219
    :cond_7
    move-object v2, v5

    .line 220
    :goto_2
    if-eqz v2, :cond_8

    .line 222
    invoke-virtual {v1}, Landroid/companion/AssociationInfo;->getUserId()I

    .line 225
    move-result v8

    .line 226
    invoke-virtual {v2, v8, v7}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncControllerCallback;->updateNumberOfActiveSyncAssociations(IZ)V

    .line 229
    goto :goto_3

    .line 230
    :cond_8
    const-string v2, "No callback to report removed transport"

    .line 232
    invoke-static {v6, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :cond_9
    :goto_3
    iget-object v2, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$1;->this$0:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    .line 237
    invoke-virtual {v1}, Landroid/companion/AssociationInfo;->getId()I

    .line 240
    move-result v1

    .line 241
    invoke-static {v2, v1}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->-$$Nest$mclearInProgressCalls(Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;I)V

    .line 244
    goto :goto_1

    .line 245
    :cond_a
    invoke-static {v1}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->isAssociationBlocked(Landroid/companion/AssociationInfo;)Z

    .line 248
    move-result v2

    .line 249
    iget-object v8, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$1;->this$0:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    .line 251
    invoke-virtual {v1}, Landroid/companion/AssociationInfo;->getId()I

    .line 254
    move-result v9

    .line 255
    invoke-virtual {v8, v9}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->isAssociationBlockedLocal(I)Z

    .line 258
    move-result v8

    .line 259
    if-eq v8, v2, :cond_6

    .line 261
    iget-object v8, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$1;->this$0:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    .line 263
    iget-object v8, v8, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->mInCallServiceCallbackRef:Ljava/lang/ref/WeakReference;

    .line 265
    if-eqz v8, :cond_b

    .line 267
    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 270
    move-result-object v8

    .line 271
    check-cast v8, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncControllerCallback;

    .line 273
    goto :goto_4

    .line 274
    :cond_b
    move-object v8, v5

    .line 275
    :goto_4
    const-string v9, "No callback to report changed transport"

    .line 277
    if-nez v2, :cond_d

    .line 279
    const-string v2, "Unblocking existing association for context sync"

    .line 281
    invoke-static {v6, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    iget-object v2, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$1;->this$0:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    .line 286
    iget-object v2, v2, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->mBlocklist:Ljava/util/Set;

    .line 288
    invoke-virtual {v1}, Landroid/companion/AssociationInfo;->getId()I

    .line 291
    move-result v7

    .line 292
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 295
    move-result-object v7

    .line 296
    check-cast v2, Ljava/util/HashSet;

    .line 298
    invoke-virtual {v2, v7}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 301
    if-eqz v8, :cond_c

    .line 303
    invoke-virtual {v1}, Landroid/companion/AssociationInfo;->getUserId()I

    .line 306
    move-result v2

    .line 307
    invoke-virtual {v8, v2, v4}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncControllerCallback;->updateNumberOfActiveSyncAssociations(IZ)V

    .line 310
    invoke-virtual {v8, v1}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncControllerCallback;->requestCrossDeviceSync(Landroid/companion/AssociationInfo;)V

    .line 313
    goto/16 :goto_1

    .line 315
    :cond_c
    invoke-static {v6, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    iget-object v2, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$1;->this$0:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    .line 320
    invoke-virtual {v1}, Landroid/companion/AssociationInfo;->getId()I

    .line 323
    move-result v1

    .line 324
    iget-object v7, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$1;->this$0:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    .line 326
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 329
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 332
    move-result-object v8

    .line 333
    invoke-virtual {v7, v8, v3}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->createCallUpdateMessage(Ljava/util/Collection;I)[B

    .line 336
    move-result-object v7

    .line 337
    invoke-virtual {v2, v1, v7}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->syncMessageToDevice(I[B)V

    .line 340
    goto/16 :goto_1

    .line 342
    :cond_d
    const-string v2, "Blocking existing association for context sync"

    .line 344
    invoke-static {v6, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    iget-object v2, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$1;->this$0:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    .line 349
    iget-object v2, v2, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->mBlocklist:Ljava/util/Set;

    .line 351
    invoke-virtual {v1}, Landroid/companion/AssociationInfo;->getId()I

    .line 354
    move-result v10

    .line 355
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 358
    move-result-object v10

    .line 359
    check-cast v2, Ljava/util/HashSet;

    .line 361
    invoke-virtual {v2, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 364
    if-eqz v8, :cond_e

    .line 366
    invoke-virtual {v1}, Landroid/companion/AssociationInfo;->getUserId()I

    .line 369
    move-result v2

    .line 370
    invoke-virtual {v8, v2, v7}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncControllerCallback;->updateNumberOfActiveSyncAssociations(IZ)V

    .line 373
    goto :goto_5

    .line 374
    :cond_e
    invoke-static {v6, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    :goto_5
    iget-object v2, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$1;->this$0:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    .line 379
    invoke-virtual {v1}, Landroid/companion/AssociationInfo;->getId()I

    .line 382
    move-result v7

    .line 383
    new-instance v8, Landroid/util/proto/ProtoOutputStream;

    .line 385
    invoke-direct {v8}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 388
    const-wide v9, 0x10500000001L

    .line 393
    invoke-virtual {v8, v9, v10, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 396
    invoke-virtual {v8}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    .line 399
    move-result-object v8

    .line 400
    invoke-virtual {v2, v7, v8}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->syncMessageToDevice(I[B)V

    .line 403
    iget-object v2, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$1;->this$0:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    .line 405
    invoke-virtual {v1}, Landroid/companion/AssociationInfo;->getId()I

    .line 408
    move-result v1

    .line 409
    invoke-static {v2, v1}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->-$$Nest$mclearInProgressCalls(Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;I)V

    .line 412
    goto/16 :goto_1

    .line 414
    :cond_f
    return-void

    .line 415
    :catchall_0
    move-exception p0

    .line 416
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 419
    throw p0
.end method
