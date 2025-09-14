.class public final Lcom/android/server/media/RemoteDisplayProviderWatcher;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mCallback:Lcom/android/server/media/RemoteDisplayProviderWatcher$Callback;

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public final mProviders:Ljava/util/ArrayList;

.field public mRunning:Z

.field public final mScanPackagesReceiver:Lcom/android/server/media/RemoteDisplayProviderWatcher$1;

.field public final mScanPackagesRunnable:Lcom/android/server/media/RemoteDisplayProviderWatcher$2;

.field public final mUserId:I


# direct methods
.method public static -$$Nest$mscanPackages(Lcom/android/server/media/RemoteDisplayProviderWatcher;)V
    .locals 14

    .line 1
    iget-boolean v0, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mRunning:Z

    .line 3
    if-nez v0, :cond_0

    .line 5
    goto/16 :goto_7

    .line 7
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .line 9
    const-string/jumbo v1, "com.android.media.remotedisplay.RemoteDisplayProvider"

    .line 12
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 15
    iget-object v1, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 17
    const/4 v2, 0x0

    .line 18
    iget v3, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mUserId:I

    .line 20
    invoke-virtual {v1, v0, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    .line 23
    move-result-object v0

    .line 24
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 27
    move-result-object v0

    .line 28
    move v1, v2

    .line 29
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    move-result v4

    .line 33
    const/4 v5, -0x1

    .line 34
    const/4 v6, 0x0

    .line 35
    iget-object v7, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mCallback:Lcom/android/server/media/RemoteDisplayProviderWatcher$Callback;

    .line 37
    if-eqz v4, :cond_a

    .line 39
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    move-result-object v4

    .line 43
    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 45
    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 47
    if-eqz v4, :cond_1

    .line 49
    iget-object v8, v4, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 51
    const-string v9, "/"

    .line 53
    const-string v10, "RemoteDisplayProvider"

    .line 55
    if-eqz v8, :cond_9

    .line 57
    const-string v11, "android.permission.BIND_REMOTE_DISPLAY"

    .line 59
    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    move-result v8

    .line 63
    if-nez v8, :cond_2

    .line 65
    goto/16 :goto_3

    .line 67
    :cond_2
    iget-object v8, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 69
    const-string v11, "android.permission.REMOTE_DISPLAY_PROVIDER"

    .line 71
    iget-object v12, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 73
    invoke-virtual {v8, v11, v12}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    move-result v8

    .line 77
    if-eqz v8, :cond_3

    .line 79
    new-instance v5, Ljava/lang/StringBuilder;

    .line 81
    const-string v6, "Ignoring remote display provider service because it does not have the REMOTE_DISPLAY_PROVIDER permission: "

    .line 83
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 86
    iget-object v6, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 88
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 96
    invoke-static {v5, v4, v10}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    goto :goto_0

    .line 100
    :cond_3
    iget-object v8, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 102
    iget-object v9, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 104
    iget-object v10, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mProviders:Ljava/util/ArrayList;

    .line 106
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 109
    move-result v10

    .line 110
    move v11, v2

    .line 111
    :goto_1
    if-ge v11, v10, :cond_5

    .line 113
    iget-object v12, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mProviders:Ljava/util/ArrayList;

    .line 115
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 118
    move-result-object v12

    .line 119
    check-cast v12, Lcom/android/server/media/RemoteDisplayProviderProxy;

    .line 121
    iget-object v13, v12, Lcom/android/server/media/RemoteDisplayProviderProxy;->mComponentName:Landroid/content/ComponentName;

    .line 123
    invoke-virtual {v13}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 126
    move-result-object v13

    .line 127
    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 130
    move-result v13

    .line 131
    if-eqz v13, :cond_4

    .line 133
    iget-object v12, v12, Lcom/android/server/media/RemoteDisplayProviderProxy;->mComponentName:Landroid/content/ComponentName;

    .line 135
    invoke-virtual {v12}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 138
    move-result-object v12

    .line 139
    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 142
    move-result v12

    .line 143
    if-eqz v12, :cond_4

    .line 145
    move v5, v11

    .line 146
    goto :goto_2

    .line 147
    :cond_4
    add-int/lit8 v11, v11, 0x1

    .line 149
    goto :goto_1

    .line 150
    :cond_5
    :goto_2
    if-gez v5, :cond_6

    .line 152
    new-instance v5, Lcom/android/server/media/RemoteDisplayProviderProxy;

    .line 154
    iget-object v8, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mContext:Landroid/content/Context;

    .line 156
    new-instance v9, Landroid/content/ComponentName;

    .line 158
    iget-object v10, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 160
    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 162
    invoke-direct {v9, v10, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-direct {v5, v8, v9, v3}, Lcom/android/server/media/RemoteDisplayProviderProxy;-><init>(Landroid/content/Context;Landroid/content/ComponentName;I)V

    .line 168
    invoke-virtual {v5}, Lcom/android/server/media/RemoteDisplayProviderProxy;->start()V

    .line 171
    iget-object v4, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mProviders:Ljava/util/ArrayList;

    .line 173
    add-int/lit8 v8, v1, 0x1

    .line 175
    invoke-virtual {v4, v1, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 178
    check-cast v7, Lcom/android/server/media/MediaRouterService$UserHandler;

    .line 180
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 183
    iput-object v7, v5, Lcom/android/server/media/RemoteDisplayProviderProxy;->mDisplayStateCallback:Lcom/android/server/media/RemoteDisplayProviderProxy$Callback;

    .line 185
    iget v1, v7, Lcom/android/server/media/MediaRouterService$UserHandler;->mDiscoveryMode:I

    .line 187
    invoke-virtual {v5, v1}, Lcom/android/server/media/RemoteDisplayProviderProxy;->setDiscoveryMode(I)V

    .line 190
    invoke-virtual {v5, v6}, Lcom/android/server/media/RemoteDisplayProviderProxy;->setSelectedDisplay(Ljava/lang/String;)V

    .line 193
    new-instance v1, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;

    .line 195
    invoke-direct {v1, v5}, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;-><init>(Lcom/android/server/media/RemoteDisplayProviderProxy;)V

    .line 198
    iget-object v4, v7, Lcom/android/server/media/MediaRouterService$UserHandler;->mProviderRecords:Ljava/util/ArrayList;

    .line 200
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    iget-object v4, v5, Lcom/android/server/media/RemoteDisplayProviderProxy;->mDisplayState:Landroid/media/RemoteDisplayState;

    .line 205
    invoke-virtual {v1, v4}, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->updateDescriptor(Landroid/media/RemoteDisplayState;)Z

    .line 208
    invoke-virtual {v7}, Lcom/android/server/media/MediaRouterService$UserHandler;->scheduleUpdateClientState()V

    .line 211
    move v1, v8

    .line 212
    goto/16 :goto_0

    .line 214
    :cond_6
    if-lt v5, v1, :cond_1

    .line 216
    iget-object v4, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mProviders:Ljava/util/ArrayList;

    .line 218
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 221
    move-result-object v4

    .line 222
    check-cast v4, Lcom/android/server/media/RemoteDisplayProviderProxy;

    .line 224
    invoke-virtual {v4}, Lcom/android/server/media/RemoteDisplayProviderProxy;->start()V

    .line 227
    iget-object v6, v4, Lcom/android/server/media/RemoteDisplayProviderProxy;->mActiveConnection:Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;

    .line 229
    if-nez v6, :cond_8

    .line 231
    iget-boolean v6, v4, Lcom/android/server/media/RemoteDisplayProviderProxy;->mRunning:Z

    .line 233
    if-eqz v6, :cond_8

    .line 235
    iget v6, v4, Lcom/android/server/media/RemoteDisplayProviderProxy;->mDiscoveryMode:I

    .line 237
    if-nez v6, :cond_7

    .line 239
    iget-object v6, v4, Lcom/android/server/media/RemoteDisplayProviderProxy;->mSelectedDisplayId:Ljava/lang/String;

    .line 241
    if-eqz v6, :cond_8

    .line 243
    :cond_7
    invoke-virtual {v4}, Lcom/android/server/media/RemoteDisplayProviderProxy;->unbind()V

    .line 246
    invoke-virtual {v4}, Lcom/android/server/media/RemoteDisplayProviderProxy;->bind()V

    .line 249
    :cond_8
    iget-object v4, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mProviders:Ljava/util/ArrayList;

    .line 251
    add-int/lit8 v6, v1, 0x1

    .line 253
    invoke-static {v4, v5, v1}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 256
    move v1, v6

    .line 257
    goto/16 :goto_0

    .line 259
    :cond_9
    :goto_3
    new-instance v5, Ljava/lang/StringBuilder;

    .line 261
    const-string v6, "Ignoring remote display provider service because it did not require the BIND_REMOTE_DISPLAY permission in its manifest: "

    .line 263
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 266
    iget-object v6, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 268
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 276
    invoke-static {v5, v4, v10}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    goto/16 :goto_0

    .line 281
    :cond_a
    iget-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mProviders:Ljava/util/ArrayList;

    .line 283
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 286
    move-result v0

    .line 287
    if-ge v1, v0, :cond_e

    .line 289
    iget-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mProviders:Ljava/util/ArrayList;

    .line 291
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 294
    move-result v0

    .line 295
    add-int/lit8 v0, v0, -0x1

    .line 297
    :goto_4
    if-lt v0, v1, :cond_e

    .line 299
    iget-object v3, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mProviders:Ljava/util/ArrayList;

    .line 301
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 304
    move-result-object v3

    .line 305
    check-cast v3, Lcom/android/server/media/RemoteDisplayProviderProxy;

    .line 307
    move-object v4, v7

    .line 308
    check-cast v4, Lcom/android/server/media/MediaRouterService$UserHandler;

    .line 310
    iget-object v8, v4, Lcom/android/server/media/MediaRouterService$UserHandler;->mProviderRecords:Ljava/util/ArrayList;

    .line 312
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 315
    move-result v8

    .line 316
    move v9, v2

    .line 317
    :goto_5
    if-ge v9, v8, :cond_c

    .line 319
    iget-object v10, v4, Lcom/android/server/media/MediaRouterService$UserHandler;->mProviderRecords:Ljava/util/ArrayList;

    .line 321
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 324
    move-result-object v10

    .line 325
    check-cast v10, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;

    .line 327
    iget-object v10, v10, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mProvider:Lcom/android/server/media/RemoteDisplayProviderProxy;

    .line 329
    if-ne v10, v3, :cond_b

    .line 331
    goto :goto_6

    .line 332
    :cond_b
    add-int/lit8 v9, v9, 0x1

    .line 334
    goto :goto_5

    .line 335
    :cond_c
    move v9, v5

    .line 336
    :goto_6
    if-ltz v9, :cond_d

    .line 338
    iget-object v8, v4, Lcom/android/server/media/MediaRouterService$UserHandler;->mProviderRecords:Ljava/util/ArrayList;

    .line 340
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 343
    move-result-object v8

    .line 344
    check-cast v8, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;

    .line 346
    invoke-virtual {v8, v6}, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->updateDescriptor(Landroid/media/RemoteDisplayState;)Z

    .line 349
    iput-object v6, v3, Lcom/android/server/media/RemoteDisplayProviderProxy;->mDisplayStateCallback:Lcom/android/server/media/RemoteDisplayProviderProxy$Callback;

    .line 351
    invoke-virtual {v3, v2}, Lcom/android/server/media/RemoteDisplayProviderProxy;->setDiscoveryMode(I)V

    .line 354
    invoke-virtual {v4}, Lcom/android/server/media/MediaRouterService$UserHandler;->checkSelectedRouteState()V

    .line 357
    invoke-virtual {v4}, Lcom/android/server/media/MediaRouterService$UserHandler;->scheduleUpdateClientState()V

    .line 360
    :cond_d
    iget-object v4, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mProviders:Ljava/util/ArrayList;

    .line 362
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 365
    invoke-virtual {v3}, Lcom/android/server/media/RemoteDisplayProviderProxy;->stop()V

    .line 368
    add-int/lit8 v0, v0, -0x1

    .line 370
    goto :goto_4

    .line 371
    :cond_e
    :goto_7
    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "RemoteDisplayProvider"

    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 7
    move-result v0

    .line 8
    sput-boolean v0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->DEBUG:Z

    .line 10
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/media/RemoteDisplayProviderWatcher$Callback;Landroid/os/Handler;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mProviders:Ljava/util/ArrayList;

    .line 11
    new-instance v0, Lcom/android/server/media/RemoteDisplayProviderWatcher$1;

    .line 13
    invoke-direct {v0, p0}, Lcom/android/server/media/RemoteDisplayProviderWatcher$1;-><init>(Lcom/android/server/media/RemoteDisplayProviderWatcher;)V

    .line 16
    iput-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mScanPackagesReceiver:Lcom/android/server/media/RemoteDisplayProviderWatcher$1;

    .line 18
    new-instance v0, Lcom/android/server/media/RemoteDisplayProviderWatcher$2;

    .line 20
    invoke-direct {v0, p0}, Lcom/android/server/media/RemoteDisplayProviderWatcher$2;-><init>(Lcom/android/server/media/RemoteDisplayProviderWatcher;)V

    .line 23
    iput-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mScanPackagesRunnable:Lcom/android/server/media/RemoteDisplayProviderWatcher$2;

    .line 25
    iput-object p1, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mContext:Landroid/content/Context;

    .line 27
    iput-object p2, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mCallback:Lcom/android/server/media/RemoteDisplayProviderWatcher$Callback;

    .line 29
    iput-object p3, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mHandler:Landroid/os/Handler;

    .line 31
    iput p4, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mUserId:I

    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 36
    move-result-object p1

    .line 37
    iput-object p1, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 39
    return-void
.end method
