.class public final Lcom/android/server/blob/BlobStoreManagerService$UserActionReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/blob/BlobStoreManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/blob/BlobStoreManagerService;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/blob/BlobStoreManagerService$UserActionReceiver;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/blob/BlobStoreManagerService$UserActionReceiver;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 1
    const/4 p1, 0x1

    .line 2
    iget v0, p0, Lcom/android/server/blob/BlobStoreManagerService$UserActionReceiver;->$r8$classId:I

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 7
    sget-boolean p1, Lcom/android/server/blob/BlobStoreConfig;->LOGV:Z

    .line 9
    const-string v0, "BlobStore"

    .line 11
    if-eqz p1, :cond_0

    .line 13
    new-instance p1, Ljava/lang/StringBuilder;

    .line 15
    const-string v1, "Received "

    .line 17
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    move-result-object p1

    .line 27
    invoke-static {v0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    const-string v1, "android.intent.action.PACKAGE_DATA_CLEARED"

    .line 39
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    move-result v1

    .line 43
    if-nez v1, :cond_1

    .line 45
    const-string v1, "android.intent.action.PACKAGE_FULLY_REMOVED"

    .line 47
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    move-result p1

    .line 51
    if-nez p1, :cond_1

    .line 53
    new-instance p0, Ljava/lang/StringBuilder;

    .line 55
    const-string p1, "Received unknown intent: "

    .line 57
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    move-result-object p0

    .line 67
    invoke-static {v0, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    goto :goto_0

    .line 71
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 74
    move-result-object p1

    .line 75
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 78
    move-result-object p1

    .line 79
    if-nez p1, :cond_2

    .line 81
    new-instance p0, Ljava/lang/StringBuilder;

    .line 83
    const-string p1, "Package name is missing in the intent: "

    .line 85
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    move-result-object p0

    .line 95
    invoke-static {v0, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    goto :goto_0

    .line 99
    :cond_2
    const-string v1, "android.intent.extra.UID"

    .line 101
    const/4 v2, -0x1

    .line 102
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 105
    move-result v1

    .line 106
    if-ne v1, v2, :cond_3

    .line 108
    new-instance p0, Ljava/lang/StringBuilder;

    .line 110
    const-string/jumbo p1, "uid is missing in the intent: "

    .line 113
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    move-result-object p0

    .line 123
    invoke-static {v0, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    goto :goto_0

    .line 127
    :cond_3
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreManagerService$UserActionReceiver;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    .line 129
    invoke-virtual {p0, p1, v1}, Lcom/android/server/blob/BlobStoreManagerService;->handlePackageRemoved(Ljava/lang/String;I)V

    .line 132
    :goto_0
    return-void

    .line 133
    :pswitch_0
    sget-boolean v0, Lcom/android/server/blob/BlobStoreConfig;->LOGV:Z

    .line 135
    if-eqz v0, :cond_4

    .line 137
    const-string v0, "BlobStore"

    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    .line 141
    const-string v2, "Received: "

    .line 143
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 146
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 149
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    move-result-object v1

    .line 153
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 159
    move-result-object v0

    .line 160
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 163
    const-string v1, "android.intent.action.USER_REMOVED"

    .line 165
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 168
    move-result v0

    .line 169
    if-nez v0, :cond_5

    .line 171
    const-string p0, "BlobStore"

    .line 173
    new-instance p1, Ljava/lang/StringBuilder;

    .line 175
    const-string v0, "Received unknown intent: "

    .line 177
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 183
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 186
    move-result-object p1

    .line 187
    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    goto :goto_2

    .line 191
    :cond_5
    const-string v0, "android.intent.extra.user_handle"

    .line 193
    const/16 v1, -0x2710

    .line 195
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 198
    move-result v0

    .line 199
    if-ne v0, v1, :cond_6

    .line 201
    const-string p0, "BlobStore"

    .line 203
    new-instance p1, Ljava/lang/StringBuilder;

    .line 205
    const-string/jumbo v0, "userId is missing in the intent: "

    .line 208
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 211
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 214
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 217
    move-result-object p1

    .line 218
    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    goto :goto_2

    .line 222
    :cond_6
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreManagerService$UserActionReceiver;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    .line 224
    iget-object p2, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsLock:Ljava/lang/Object;

    .line 226
    monitor-enter p2

    .line 227
    :try_start_0
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService;->mSessions:Landroid/util/SparseArray;

    .line 229
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    .line 232
    move-result-object v1

    .line 233
    check-cast v1, Landroid/util/LongSparseArray;

    .line 235
    if-eqz v1, :cond_7

    .line 237
    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    .line 240
    move-result v2

    .line 241
    const/4 v3, 0x0

    .line 242
    :goto_1
    if-ge v3, v2, :cond_7

    .line 244
    invoke-virtual {v1, v3}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    .line 247
    move-result-object v4

    .line 248
    check-cast v4, Lcom/android/server/blob/BlobStoreSession;

    .line 250
    invoke-virtual {p0, v4}, Lcom/android/server/blob/BlobStoreManagerService;->deleteSessionLocked(Lcom/android/server/blob/BlobStoreSession;)V

    .line 253
    add-int/2addr v3, p1

    .line 254
    goto :goto_1

    .line 255
    :catchall_0
    move-exception p0

    .line 256
    goto :goto_3

    .line 257
    :cond_7
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsMap:Landroid/util/ArrayMap;

    .line 259
    invoke-virtual {v1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    .line 262
    move-result-object v1

    .line 263
    new-instance v2, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda10;

    .line 265
    invoke-direct {v2, p0, v0, p1}, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/blob/BlobStoreManagerService;II)V

    .line 268
    invoke-interface {v1, v2}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    .line 271
    sget-boolean p0, Lcom/android/server/blob/BlobStoreConfig;->LOGV:Z

    .line 273
    if-eqz p0, :cond_8

    .line 275
    const-string p0, "BlobStore"

    .line 277
    new-instance p1, Ljava/lang/StringBuilder;

    .line 279
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 282
    const-string v1, "Removed blobs data in user "

    .line 284
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 290
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 293
    move-result-object p1

    .line 294
    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :cond_8
    monitor-exit p2

    .line 298
    :goto_2
    return-void

    .line 299
    :goto_3
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 300
    throw p0

    .line 301
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
