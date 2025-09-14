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

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_7

    .line 6
    .line 7
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .line 8
    .line 9
    const-string/jumbo v1, "com.android.media.remotedisplay.RemoteDisplayProvider"

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    iget v3, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mUserId:I

    .line 19
    .line 20
    invoke-virtual {v1, v0, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    move v1, v2

    .line 29
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    const/4 v5, -0x1

    .line 34
    const/4 v6, 0x0

    .line 35
    iget-object v7, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mCallback:Lcom/android/server/media/RemoteDisplayProviderWatcher$Callback;

    .line 36
    .line 37
    if-eqz v4, :cond_a

    .line 38
    .line 39
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 44
    .line 45
    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 46
    .line 47
    if-eqz v4, :cond_1

    .line 48
    .line 49
    iget-object v8, v4, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 50
    .line 51
    const-string v9, "/"

    .line 52
    .line 53
    const-string v10, "RemoteDisplayProvider"

    .line 54
    .line 55
    if-eqz v8, :cond_9

    .line 56
    .line 57
    const-string v11, "android.permission.BIND_REMOTE_DISPLAY"

    .line 58
    .line 59
    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v8

    .line 63
    if-nez v8, :cond_2

    .line 64
    .line 65
    goto/16 :goto_3

    .line 66
    .line 67
    :cond_2
    iget-object v8, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 68
    .line 69
    const-string v11, "android.permission.REMOTE_DISPLAY_PROVIDER"

    .line 70
    .line 71
    iget-object v12, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {v8, v11, v12}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    move-result v8

    .line 77
    if-eqz v8, :cond_3

    .line 78
    .line 79
    new-instance v5, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    const-string v6, "Ignoring remote display provider service because it does not have the REMOTE_DISPLAY_PROVIDER permission: "

    .line 82
    .line 83
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    iget-object v6, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 87
    .line 88
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 95
    .line 96
    invoke-static {v5, v4, v10}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_3
    iget-object v8, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 101
    .line 102
    iget-object v9, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 103
    .line 104
    iget-object v10, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mProviders:Ljava/util/ArrayList;

    .line 105
    .line 106
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 107
    .line 108
    .line 109
    move-result v10

    .line 110
    move v11, v2

    .line 111
    :goto_1
    if-ge v11, v10, :cond_5

    .line 112
    .line 113
    iget-object v12, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mProviders:Ljava/util/ArrayList;

    .line 114
    .line 115
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v12

    .line 119
    check-cast v12, Lcom/android/server/media/RemoteDisplayProviderProxy;

    .line 120
    .line 121
    iget-object v13, v12, Lcom/android/server/media/RemoteDisplayProviderProxy;->mComponentName:Landroid/content/ComponentName;

    .line 122
    .line 123
    invoke-virtual {v13}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v13

    .line 127
    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v13

    .line 131
    if-eqz v13, :cond_4

    .line 132
    .line 133
    iget-object v12, v12, Lcom/android/server/media/RemoteDisplayProviderProxy;->mComponentName:Landroid/content/ComponentName;

    .line 134
    .line 135
    invoke-virtual {v12}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v12

    .line 139
    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    move-result v12

    .line 143
    if-eqz v12, :cond_4

    .line 144
    .line 145
    move v5, v11

    .line 146
    goto :goto_2

    .line 147
    :cond_4
    add-int/lit8 v11, v11, 0x1

    .line 148
    .line 149
    goto :goto_1

    .line 150
    :cond_5
    :goto_2
    if-gez v5, :cond_6

    .line 151
    .line 152
    new-instance v5, Lcom/android/server/media/RemoteDisplayProviderProxy;

    .line 153
    .line 154
    iget-object v8, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mContext:Landroid/content/Context;

    .line 155
    .line 156
    new-instance v9, Landroid/content/ComponentName;

    .line 157
    .line 158
    iget-object v10, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 159
    .line 160
    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 161
    .line 162
    invoke-direct {v9, v10, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    invoke-direct {v5, v8, v9, v3}, Lcom/android/server/media/RemoteDisplayProviderProxy;-><init>(Landroid/content/Context;Landroid/content/ComponentName;I)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v5}, Lcom/android/server/media/RemoteDisplayProviderProxy;->start()V

    .line 169
    .line 170
    .line 171
    iget-object v4, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mProviders:Ljava/util/ArrayList;

    .line 172
    .line 173
    add-int/lit8 v8, v1, 0x1

    .line 174
    .line 175
    invoke-virtual {v4, v1, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 176
    .line 177
    .line 178
    check-cast v7, Lcom/android/server/media/MediaRouterService$UserHandler;

    .line 179
    .line 180
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 181
    .line 182
    .line 183
    iput-object v7, v5, Lcom/android/server/media/RemoteDisplayProviderProxy;->mDisplayStateCallback:Lcom/android/server/media/RemoteDisplayProviderProxy$Callback;

    .line 184
    .line 185
    iget v1, v7, Lcom/android/server/media/MediaRouterService$UserHandler;->mDiscoveryMode:I

    .line 186
    .line 187
    invoke-virtual {v5, v1}, Lcom/android/server/media/RemoteDisplayProviderProxy;->setDiscoveryMode(I)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v5, v6}, Lcom/android/server/media/RemoteDisplayProviderProxy;->setSelectedDisplay(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    new-instance v1, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;

    .line 194
    .line 195
    invoke-direct {v1, v5}, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;-><init>(Lcom/android/server/media/RemoteDisplayProviderProxy;)V

    .line 196
    .line 197
    .line 198
    iget-object v4, v7, Lcom/android/server/media/MediaRouterService$UserHandler;->mProviderRecords:Ljava/util/ArrayList;

    .line 199
    .line 200
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    .line 202
    .line 203
    iget-object v4, v5, Lcom/android/server/media/RemoteDisplayProviderProxy;->mDisplayState:Landroid/media/RemoteDisplayState;

    .line 204
    .line 205
    invoke-virtual {v1, v4}, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->updateDescriptor(Landroid/media/RemoteDisplayState;)Z

    .line 206
    .line 207
    .line 208
    invoke-virtual {v7}, Lcom/android/server/media/MediaRouterService$UserHandler;->scheduleUpdateClientState()V

    .line 209
    .line 210
    .line 211
    move v1, v8

    .line 212
    goto/16 :goto_0

    .line 213
    .line 214
    :cond_6
    if-lt v5, v1, :cond_1

    .line 215
    .line 216
    iget-object v4, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mProviders:Ljava/util/ArrayList;

    .line 217
    .line 218
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object v4

    .line 222
    check-cast v4, Lcom/android/server/media/RemoteDisplayProviderProxy;

    .line 223
    .line 224
    invoke-virtual {v4}, Lcom/android/server/media/RemoteDisplayProviderProxy;->start()V

    .line 225
    .line 226
    .line 227
    iget-object v6, v4, Lcom/android/server/media/RemoteDisplayProviderProxy;->mActiveConnection:Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;

    .line 228
    .line 229
    if-nez v6, :cond_8

    .line 230
    .line 231
    iget-boolean v6, v4, Lcom/android/server/media/RemoteDisplayProviderProxy;->mRunning:Z

    .line 232
    .line 233
    if-eqz v6, :cond_8

    .line 234
    .line 235
    iget v6, v4, Lcom/android/server/media/RemoteDisplayProviderProxy;->mDiscoveryMode:I

    .line 236
    .line 237
    if-nez v6, :cond_7

    .line 238
    .line 239
    iget-object v6, v4, Lcom/android/server/media/RemoteDisplayProviderProxy;->mSelectedDisplayId:Ljava/lang/String;

    .line 240
    .line 241
    if-eqz v6, :cond_8

    .line 242
    .line 243
    :cond_7
    invoke-virtual {v4}, Lcom/android/server/media/RemoteDisplayProviderProxy;->unbind()V

    .line 244
    .line 245
    .line 246
    invoke-virtual {v4}, Lcom/android/server/media/RemoteDisplayProviderProxy;->bind()V

    .line 247
    .line 248
    .line 249
    :cond_8
    iget-object v4, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mProviders:Ljava/util/ArrayList;

    .line 250
    .line 251
    add-int/lit8 v6, v1, 0x1

    .line 252
    .line 253
    invoke-static {v4, v5, v1}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 254
    .line 255
    .line 256
    move v1, v6

    .line 257
    goto/16 :goto_0

    .line 258
    .line 259
    :cond_9
    :goto_3
    new-instance v5, Ljava/lang/StringBuilder;

    .line 260
    .line 261
    const-string v6, "Ignoring remote display provider service because it did not require the BIND_REMOTE_DISPLAY permission in its manifest: "

    .line 262
    .line 263
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    iget-object v6, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 267
    .line 268
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 275
    .line 276
    invoke-static {v5, v4, v10}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    .line 278
    .line 279
    goto/16 :goto_0

    .line 280
    .line 281
    :cond_a
    iget-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mProviders:Ljava/util/ArrayList;

    .line 282
    .line 283
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 284
    .line 285
    .line 286
    move-result v0

    .line 287
    if-ge v1, v0, :cond_e

    .line 288
    .line 289
    iget-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mProviders:Ljava/util/ArrayList;

    .line 290
    .line 291
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 292
    .line 293
    .line 294
    move-result v0

    .line 295
    add-int/lit8 v0, v0, -0x1

    .line 296
    .line 297
    :goto_4
    if-lt v0, v1, :cond_e

    .line 298
    .line 299
    iget-object v3, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mProviders:Ljava/util/ArrayList;

    .line 300
    .line 301
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 302
    .line 303
    .line 304
    move-result-object v3

    .line 305
    check-cast v3, Lcom/android/server/media/RemoteDisplayProviderProxy;

    .line 306
    .line 307
    move-object v4, v7

    .line 308
    check-cast v4, Lcom/android/server/media/MediaRouterService$UserHandler;

    .line 309
    .line 310
    iget-object v8, v4, Lcom/android/server/media/MediaRouterService$UserHandler;->mProviderRecords:Ljava/util/ArrayList;

    .line 311
    .line 312
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 313
    .line 314
    .line 315
    move-result v8

    .line 316
    move v9, v2

    .line 317
    :goto_5
    if-ge v9, v8, :cond_c

    .line 318
    .line 319
    iget-object v10, v4, Lcom/android/server/media/MediaRouterService$UserHandler;->mProviderRecords:Ljava/util/ArrayList;

    .line 320
    .line 321
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 322
    .line 323
    .line 324
    move-result-object v10

    .line 325
    check-cast v10, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;

    .line 326
    .line 327
    iget-object v10, v10, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mProvider:Lcom/android/server/media/RemoteDisplayProviderProxy;

    .line 328
    .line 329
    if-ne v10, v3, :cond_b

    .line 330
    .line 331
    goto :goto_6

    .line 332
    :cond_b
    add-int/lit8 v9, v9, 0x1

    .line 333
    .line 334
    goto :goto_5

    .line 335
    :cond_c
    move v9, v5

    .line 336
    :goto_6
    if-ltz v9, :cond_d

    .line 337
    .line 338
    iget-object v8, v4, Lcom/android/server/media/MediaRouterService$UserHandler;->mProviderRecords:Ljava/util/ArrayList;

    .line 339
    .line 340
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 341
    .line 342
    .line 343
    move-result-object v8

    .line 344
    check-cast v8, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;

    .line 345
    .line 346
    invoke-virtual {v8, v6}, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->updateDescriptor(Landroid/media/RemoteDisplayState;)Z

    .line 347
    .line 348
    .line 349
    iput-object v6, v3, Lcom/android/server/media/RemoteDisplayProviderProxy;->mDisplayStateCallback:Lcom/android/server/media/RemoteDisplayProviderProxy$Callback;

    .line 350
    .line 351
    invoke-virtual {v3, v2}, Lcom/android/server/media/RemoteDisplayProviderProxy;->setDiscoveryMode(I)V

    .line 352
    .line 353
    .line 354
    invoke-virtual {v4}, Lcom/android/server/media/MediaRouterService$UserHandler;->checkSelectedRouteState()V

    .line 355
    .line 356
    .line 357
    invoke-virtual {v4}, Lcom/android/server/media/MediaRouterService$UserHandler;->scheduleUpdateClientState()V

    .line 358
    .line 359
    .line 360
    :cond_d
    iget-object v4, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mProviders:Ljava/util/ArrayList;

    .line 361
    .line 362
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 363
    .line 364
    .line 365
    invoke-virtual {v3}, Lcom/android/server/media/RemoteDisplayProviderProxy;->stop()V

    .line 366
    .line 367
    .line 368
    add-int/lit8 v0, v0, -0x1

    .line 369
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

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    sput-boolean v0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->DEBUG:Z

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/media/RemoteDisplayProviderWatcher$Callback;Landroid/os/Handler;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mProviders:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Lcom/android/server/media/RemoteDisplayProviderWatcher$1;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/android/server/media/RemoteDisplayProviderWatcher$1;-><init>(Lcom/android/server/media/RemoteDisplayProviderWatcher;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mScanPackagesReceiver:Lcom/android/server/media/RemoteDisplayProviderWatcher$1;

    .line 17
    .line 18
    new-instance v0, Lcom/android/server/media/RemoteDisplayProviderWatcher$2;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Lcom/android/server/media/RemoteDisplayProviderWatcher$2;-><init>(Lcom/android/server/media/RemoteDisplayProviderWatcher;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mScanPackagesRunnable:Lcom/android/server/media/RemoteDisplayProviderWatcher$2;

    .line 24
    .line 25
    iput-object p1, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mContext:Landroid/content/Context;

    .line 26
    .line 27
    iput-object p2, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mCallback:Lcom/android/server/media/RemoteDisplayProviderWatcher$Callback;

    .line 28
    .line 29
    iput-object p3, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mHandler:Landroid/os/Handler;

    .line 30
    .line 31
    iput p4, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mUserId:I

    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iput-object p1, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 38
    .line 39
    return-void
.end method
