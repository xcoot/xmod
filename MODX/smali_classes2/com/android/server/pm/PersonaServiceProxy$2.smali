.class public final Lcom/android/server/pm/PersonaServiceProxy$2;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/pm/PersonaServiceProxy;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/PersonaServiceProxy;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/pm/PersonaServiceProxy$2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/pm/PersonaServiceProxy$2;->this$0:Lcom/android/server/pm/PersonaServiceProxy;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    .line 1
    iget p1, p0, Lcom/android/server/pm/PersonaServiceProxy$2;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    const-string/jumbo p2, "newPackage is "

    .line 35
    .line 36
    .line 37
    const-string v0, "PersonaManagerService::Proxy"

    .line 38
    .line 39
    invoke-static {p2, p1, v0}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    if-eqz p1, :cond_1

    .line 43
    .line 44
    const-string p2, "com.samsung.android.knox.containercore"

    .line 45
    .line 46
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-eqz p1, :cond_1

    .line 51
    .line 52
    iget-object p0, p0, Lcom/android/server/pm/PersonaServiceProxy$2;->this$0:Lcom/android/server/pm/PersonaServiceProxy;

    .line 53
    .line 54
    const/4 p1, 0x0

    .line 55
    invoke-static {p0, p1}, Lcom/android/server/pm/PersonaServiceProxy;->-$$Nest$mfindAndConnectToContainerService(Lcom/android/server/pm/PersonaServiceProxy;I)V

    .line 56
    .line 57
    .line 58
    :cond_1
    return-void

    .line 59
    :pswitch_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    const-string v0, "android.intent.extra.user_handle"

    .line 64
    .line 65
    const/16 v1, -0x2710

    .line 66
    .line 67
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    const-string v1, "PersonaManagerService::Proxy"

    .line 72
    .line 73
    new-instance v2, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    const-string v3, "broadcast received. Action:"

    .line 76
    .line 77
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    const-string v1, "android.intent.action.USER_STARTED"

    .line 91
    .line 92
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    if-eqz v1, :cond_2

    .line 97
    .line 98
    const-string p1, "PersonaManagerService::Proxy"

    .line 99
    .line 100
    new-instance p2, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    const-string/jumbo v1, "user-"

    .line 103
    .line 104
    .line 105
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    const-string v1, " started. Finding container service..."

    .line 112
    .line 113
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p2

    .line 120
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    .line 122
    .line 123
    iget-object p1, p0, Lcom/android/server/pm/PersonaServiceProxy$2;->this$0:Lcom/android/server/pm/PersonaServiceProxy;

    .line 124
    .line 125
    invoke-static {p1, v0}, Lcom/android/server/pm/PersonaServiceProxy;->-$$Nest$mfindAndConnectToContainerService(Lcom/android/server/pm/PersonaServiceProxy;I)V

    .line 126
    .line 127
    .line 128
    const-string p1, "PersonaManagerService::Proxy"

    .line 129
    .line 130
    new-instance p2, Ljava/lang/StringBuilder;

    .line 131
    .line 132
    const-string v1, "Checking if "

    .line 133
    .line 134
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    const-string v1, " is enabled COM container"

    .line 141
    .line 142
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object p2

    .line 149
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    .line 151
    .line 152
    iget-object p0, p0, Lcom/android/server/pm/PersonaServiceProxy$2;->this$0:Lcom/android/server/pm/PersonaServiceProxy;

    .line 153
    .line 154
    iget-object p0, p0, Lcom/android/server/pm/PersonaServiceProxy;->mUserManager:Landroid/os/UserManager;

    .line 155
    .line 156
    if-eqz p0, :cond_9

    .line 157
    .line 158
    invoke-virtual {p0, v0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 159
    .line 160
    .line 161
    goto/16 :goto_2

    .line 162
    .line 163
    :cond_2
    const-string v0, "android.intent.action.USER_REMOVED"

    .line 164
    .line 165
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    move-result v0

    .line 169
    const/4 v1, 0x0

    .line 170
    const/4 v2, -0x1

    .line 171
    if-eqz v0, :cond_7

    .line 172
    .line 173
    const-string p1, "android.intent.extra.user_handle"

    .line 174
    .line 175
    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 176
    .line 177
    .line 178
    move-result p1

    .line 179
    const-string p2, "PersonaManagerService::Proxy"

    .line 180
    .line 181
    const-string v0, "Removed User - "

    .line 182
    .line 183
    invoke-static {p1, v0, p2}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    iget-object p1, p0, Lcom/android/server/pm/PersonaServiceProxy$2;->this$0:Lcom/android/server/pm/PersonaServiceProxy;

    .line 187
    .line 188
    iget-boolean p2, p1, Lcom/android/server/pm/PersonaServiceProxy;->mIsDoEnabled:Z

    .line 189
    .line 190
    if-nez p2, :cond_6

    .line 191
    .line 192
    invoke-virtual {p1}, Lcom/android/server/pm/PersonaServiceProxy;->isKnoxProfileExist()Z

    .line 193
    .line 194
    .line 195
    move-result p1

    .line 196
    if-nez p1, :cond_6

    .line 197
    .line 198
    const-string p1, "PersonaManagerService::Proxy"

    .line 199
    .line 200
    const-string p2, "No Knox profile exist on device so stopping all Container service"

    .line 201
    .line 202
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    .line 204
    .line 205
    iget-object p1, p0, Lcom/android/server/pm/PersonaServiceProxy$2;->this$0:Lcom/android/server/pm/PersonaServiceProxy;

    .line 206
    .line 207
    iget-object p1, p1, Lcom/android/server/pm/PersonaServiceProxy;->mContainerServiceLock:Ljava/lang/Object;

    .line 208
    .line 209
    monitor-enter p1

    .line 210
    :try_start_0
    iget-object p2, p0, Lcom/android/server/pm/PersonaServiceProxy$2;->this$0:Lcom/android/server/pm/PersonaServiceProxy;

    .line 211
    .line 212
    iget-object p2, p2, Lcom/android/server/pm/PersonaServiceProxy;->mContainerServices:Ljava/util/HashMap;

    .line 213
    .line 214
    if-eqz p2, :cond_5

    .line 215
    .line 216
    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    .line 217
    .line 218
    .line 219
    move-result p2

    .line 220
    if-lez p2, :cond_5

    .line 221
    .line 222
    iget-object p2, p0, Lcom/android/server/pm/PersonaServiceProxy$2;->this$0:Lcom/android/server/pm/PersonaServiceProxy;

    .line 223
    .line 224
    iget-object p2, p2, Lcom/android/server/pm/PersonaServiceProxy;->mContainerServices:Ljava/util/HashMap;

    .line 225
    .line 226
    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 227
    .line 228
    .line 229
    move-result-object p2

    .line 230
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 231
    .line 232
    .line 233
    move-result-object p2

    .line 234
    :cond_3
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 235
    .line 236
    .line 237
    move-result v0

    .line 238
    if-eqz v0, :cond_4

    .line 239
    .line 240
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    check-cast v0, Ljava/util/Map$Entry;

    .line 245
    .line 246
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    move-result-object v2

    .line 250
    check-cast v2, Lcom/android/server/ContainerServiceInfo;

    .line 251
    .line 252
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    check-cast v0, Lcom/android/server/ContainerServiceWrapper;

    .line 257
    .line 258
    const-string v3, "PersonaManagerService::Proxy"

    .line 259
    .line 260
    new-instance v4, Ljava/lang/StringBuilder;

    .line 261
    .line 262
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 263
    .line 264
    .line 265
    const-string v5, "Stopping Container service - "

    .line 266
    .line 267
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    invoke-virtual {v2}, Lcom/android/server/ContainerServiceInfo;->toString()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v2

    .line 274
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v2

    .line 281
    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    .line 283
    .line 284
    iget-boolean v2, v0, Lcom/android/server/ContainerServiceWrapper;->mBound:Z

    .line 285
    .line 286
    if-eqz v2, :cond_3

    .line 287
    .line 288
    iget-object v2, v0, Lcom/android/server/ContainerServiceWrapper;->mContext:Landroid/content/Context;

    .line 289
    .line 290
    iget-object v3, v0, Lcom/android/server/ContainerServiceWrapper;->mConnection:Lcom/android/server/ContainerServiceWrapper$1;

    .line 291
    .line 292
    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 293
    .line 294
    .line 295
    const/4 v2, 0x0

    .line 296
    iput-object v2, v0, Lcom/android/server/ContainerServiceWrapper;->mContainerService:Lcom/samsung/android/knox/IContainerService;

    .line 297
    .line 298
    iput-boolean v1, v0, Lcom/android/server/ContainerServiceWrapper;->mBound:Z

    .line 299
    .line 300
    const-string v0, "KnoxService::ContainerServiceWrapper"

    .line 301
    .line 302
    const-string v2, "Ubinding service is successful..."

    .line 303
    .line 304
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    .line 306
    .line 307
    goto :goto_0

    .line 308
    :catchall_0
    move-exception p0

    .line 309
    goto :goto_1

    .line 310
    :cond_4
    iget-object p0, p0, Lcom/android/server/pm/PersonaServiceProxy$2;->this$0:Lcom/android/server/pm/PersonaServiceProxy;

    .line 311
    .line 312
    iget-object p0, p0, Lcom/android/server/pm/PersonaServiceProxy;->mContainerServices:Ljava/util/HashMap;

    .line 313
    .line 314
    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    .line 315
    .line 316
    .line 317
    :cond_5
    monitor-exit p1

    .line 318
    goto :goto_2

    .line 319
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 320
    throw p0

    .line 321
    :cond_6
    const-string p0, "PersonaManagerService::Proxy"

    .line 322
    .line 323
    const-string p1, "Knox profile exist on device so not stopping Container service..."

    .line 324
    .line 325
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    .line 327
    .line 328
    goto :goto_2

    .line 329
    :cond_7
    const-string v0, "android.intent.action.USER_ADDED"

    .line 330
    .line 331
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 332
    .line 333
    .line 334
    move-result p1

    .line 335
    if-eqz p1, :cond_9

    .line 336
    .line 337
    const-string p1, "android.intent.extra.user_handle"

    .line 338
    .line 339
    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 340
    .line 341
    .line 342
    move-result v7

    .line 343
    const-string p1, "PersonaManagerService::Proxy"

    .line 344
    .line 345
    new-instance p2, Ljava/lang/StringBuilder;

    .line 346
    .line 347
    const-string v0, "Added User - "

    .line 348
    .line 349
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 350
    .line 351
    .line 352
    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 353
    .line 354
    .line 355
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object p2

    .line 359
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    .line 361
    .line 362
    invoke-static {v7}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    .line 363
    .line 364
    .line 365
    move-result p1

    .line 366
    if-eqz p1, :cond_8

    .line 367
    .line 368
    iget-object p0, p0, Lcom/android/server/pm/PersonaServiceProxy$2;->this$0:Lcom/android/server/pm/PersonaServiceProxy;

    .line 369
    .line 370
    invoke-static {p0, v1}, Lcom/android/server/pm/PersonaServiceProxy;->-$$Nest$mfindAndConnectToContainerService(Lcom/android/server/pm/PersonaServiceProxy;I)V

    .line 371
    .line 372
    .line 373
    goto :goto_2

    .line 374
    :cond_8
    const-string p0, "PersonaManagerService::Proxy"

    .line 375
    .line 376
    const-string p1, "Added User - "

    .line 377
    .line 378
    const-string p2, " is a non-knox user, so disable Secure Folder"

    .line 379
    .line 380
    invoke-static {v7, p1, p2, p0}, Lcom/android/server/NetworkScoreService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    .line 382
    .line 383
    :try_start_1
    const-string/jumbo p0, "package"

    .line 384
    .line 385
    .line 386
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 387
    .line 388
    .line 389
    move-result-object p0

    .line 390
    move-object v3, p0

    .line 391
    check-cast v3, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    .line 392
    .line 393
    const-string v4, "com.samsung.knox.securefolder"

    .line 394
    .line 395
    const/4 v8, 0x0

    .line 396
    const/4 v5, 0x2

    .line 397
    const/4 v6, 0x0

    .line 398
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 399
    .line 400
    .line 401
    goto :goto_2

    .line 402
    :catch_0
    move-exception p0

    .line 403
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 404
    .line 405
    .line 406
    :cond_9
    :goto_2
    return-void

    .line 407
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
