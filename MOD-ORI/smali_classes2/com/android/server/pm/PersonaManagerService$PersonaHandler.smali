.class public final Lcom/android/server/pm/PersonaManagerService$PersonaHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/PersonaManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PersonaManagerService;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    const-string p0, "PersonaHandler"

    .line 7
    .line 8
    invoke-virtual {p1, p0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
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
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    const-string v4, ", fota version - 10"

    .line 8
    .line 9
    const-string v5, "Storing fw version - "

    .line 10
    .line 11
    const-string/jumbo v6, "setForegroundUser(newProfileId:"

    .line 12
    .line 13
    .line 14
    iget-object v7, v1, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 15
    .line 16
    const-string v8, "PersonaHandler"

    .line 17
    .line 18
    invoke-virtual {v7, v8}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget v7, v0, Landroid/os/Message;->what:I

    .line 22
    .line 23
    const/16 v8, 0xa

    .line 24
    .line 25
    if-eq v7, v8, :cond_3d

    .line 26
    .line 27
    const/16 v9, 0x1e

    .line 28
    .line 29
    if-eq v7, v9, :cond_3c

    .line 30
    .line 31
    const/16 v9, 0x3c

    .line 32
    .line 33
    if-eq v7, v9, :cond_3b

    .line 34
    .line 35
    const/16 v9, 0x50

    .line 36
    .line 37
    const/4 v10, 0x3

    .line 38
    if-eq v7, v9, :cond_3a

    .line 39
    .line 40
    const/16 v6, 0x5a

    .line 41
    .line 42
    const/4 v9, 0x0

    .line 43
    if-eq v7, v6, :cond_1d

    .line 44
    .line 45
    const/16 v6, 0x6e

    .line 46
    .line 47
    const/4 v8, 0x2

    .line 48
    const-wide/16 v11, 0x0

    .line 49
    .line 50
    if-eq v7, v6, :cond_11

    .line 51
    .line 52
    const/16 v6, 0xc8

    .line 53
    .line 54
    if-eq v7, v6, :cond_f

    .line 55
    .line 56
    packed-switch v7, :pswitch_data_0

    .line 57
    .line 58
    .line 59
    packed-switch v7, :pswitch_data_1

    .line 60
    .line 61
    .line 62
    const-string v0, "PersonaManagerService"

    .line 63
    .line 64
    const-string/jumbo v1, "msg : ignore unknown message"

    .line 65
    .line 66
    .line 67
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    goto/16 :goto_1a

    .line 71
    .line 72
    :pswitch_0
    const-string v0, "PersonaManagerService"

    .line 73
    .line 74
    const-string v2, "MSG_KNOX_APP_SEPARATION_COEXISTENCE_LIST_UPDATE "

    .line 75
    .line 76
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 80
    .line 81
    invoke-virtual {v0}, Lcom/android/server/pm/PersonaManagerService;->enforceAppSeparationCoexistenceAllowListUpdateInternal()V

    .line 82
    .line 83
    .line 84
    goto/16 :goto_1a

    .line 85
    .line 86
    :pswitch_1
    const-string v0, "PersonaManagerService"

    .line 87
    .line 88
    const-string v2, "MSG_KNOX_APP_SEPARATION_CLEAN_UP "

    .line 89
    .line 90
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    .line 92
    .line 93
    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 94
    .line 95
    invoke-virtual {v0}, Lcom/android/server/pm/PersonaManagerService;->enforceSeparatedAppsRemoveInternal()Z

    .line 96
    .line 97
    .line 98
    goto/16 :goto_1a

    .line 99
    .line 100
    :pswitch_2
    const-string v2, "PersonaManagerService"

    .line 101
    .line 102
    const-string v3, "MSG_KNOX_APP_SEPARATION_ACTIVATION"

    .line 103
    .line 104
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    .line 106
    .line 107
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 108
    .line 109
    check-cast v0, Ljava/lang/String;

    .line 110
    .line 111
    iget-object v2, v1, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 112
    .line 113
    invoke-virtual {v2}, Lcom/android/server/pm/PersonaManagerService;->getIMEPackages()Ljava/util/Set;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    iput-object v3, v2, Lcom/android/server/pm/PersonaManagerService;->mImeSet:Ljava/util/Set;

    .line 118
    .line 119
    new-instance v2, Ljava/util/ArrayList;

    .line 120
    .line 121
    iget-object v3, v1, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 122
    .line 123
    iget-object v3, v3, Lcom/android/server/pm/PersonaManagerService;->mImeSet:Ljava/util/Set;

    .line 124
    .line 125
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 136
    .line 137
    .line 138
    move-result v3

    .line 139
    if-eqz v3, :cond_0

    .line 140
    .line 141
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v3

    .line 145
    check-cast v3, Ljava/lang/String;

    .line 146
    .line 147
    const-string v4, "PersonaManagerService"

    .line 148
    .line 149
    const-string v5, "MSG_KNOX_APP_SEPARATION_ACTIVATION: packageName = "

    .line 150
    .line 151
    invoke-static {v5, v3, v4}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    goto :goto_0

    .line 155
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .line 156
    .line 157
    const-string v3, "com.samsung.android.knox.action.PROVISION_KNOX_PROFILE"

    .line 158
    .line 159
    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    const/high16 v3, 0x10000000

    .line 163
    .line 164
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 165
    .line 166
    .line 167
    const-string v3, "com.samsung.android.appseparation"

    .line 168
    .line 169
    const-string v4, "com.samsung.android.appseparation.receiver.ProvisionReceiver"

    .line 170
    .line 171
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    .line 173
    .line 174
    const-string/jumbo v3, "packageNames"

    .line 175
    .line 176
    .line 177
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 178
    .line 179
    .line 180
    iget-object v3, v1, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 181
    .line 182
    iget-object v3, v3, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 183
    .line 184
    sget-object v4, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 185
    .line 186
    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 187
    .line 188
    .line 189
    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 190
    .line 191
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 192
    .line 193
    .line 194
    sget-object v0, Lcom/android/server/knox/ContainerDependencyWrapper;->sInstance:Lcom/android/server/knox/ContainerDependencyWrapper;

    .line 195
    .line 196
    invoke-static {}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getAppSeparationConfig()Landroid/os/Bundle;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    if-nez v0, :cond_1

    .line 201
    .line 202
    const-string v0, "PersonaManagerService"

    .line 203
    .line 204
    const-string v1, "handleMessage - MSG_KNOX_APP_SEPARATION_ACTIVATION : no app separation data found in db"

    .line 205
    .line 206
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    .line 208
    .line 209
    goto/16 :goto_1a

    .line 210
    .line 211
    :cond_1
    iget-object v1, v1, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 212
    .line 213
    iget-object v1, v1, Lcom/android/server/pm/PersonaManagerService;->mKnoxAnalyticsContainer:Lcom/android/server/knox/KnoxAnalyticsContainer;

    .line 214
    .line 215
    const-string v3, "APP_SEPARATION_APP_LIST"

    .line 216
    .line 217
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    invoke-virtual {v1, v2, v0}, Lcom/android/server/knox/KnoxAnalyticsContainer;->logEventActivationForAppSep(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 222
    .line 223
    .line 224
    goto/16 :goto_1a

    .line 225
    .line 226
    :pswitch_3
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 227
    .line 228
    check-cast v0, Ljava/lang/String;

    .line 229
    .line 230
    iget-object v1, v1, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 231
    .line 232
    invoke-virtual {v1, v0}, Lcom/android/server/pm/PersonaManagerService;->processAppSeparationInstallationInternal(Ljava/lang/String;)I

    .line 233
    .line 234
    .line 235
    move-result v0

    .line 236
    const-string v1, "PersonaManagerService"

    .line 237
    .line 238
    const-string v2, "MSG_KNOX_APP_SEPARATION_INSTALLATION - "

    .line 239
    .line 240
    invoke-static {v0, v2, v1}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    goto/16 :goto_1a

    .line 244
    .line 245
    :pswitch_4
    const-string v0, "PersonaManagerService"

    .line 246
    .line 247
    const-string v4, "MSG_KNOX_APP_SEPARATION_DELETION "

    .line 248
    .line 249
    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    .line 251
    .line 252
    iget-object v1, v1, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 253
    .line 254
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 255
    .line 256
    .line 257
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    .line 258
    .line 259
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 260
    .line 261
    .line 262
    const-string v4, "com.samsung.android.knox.action.APP_SEPARATION_ACTION"

    .line 263
    .line 264
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 265
    .line 266
    .line 267
    const-string/jumbo v4, "removestart"

    .line 268
    .line 269
    .line 270
    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 271
    .line 272
    .line 273
    const-string v4, "com.samsung.android.appseparation"

    .line 274
    .line 275
    const-string v5, "com.samsung.android.appseparation.receiver.ProfileStateChangedReceiver"

    .line 276
    .line 277
    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 278
    .line 279
    .line 280
    iget-object v4, v1, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 281
    .line 282
    sget-object v5, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 283
    .line 284
    invoke-virtual {v4, v0, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 285
    .line 286
    .line 287
    goto :goto_1

    .line 288
    :catch_0
    move-exception v0

    .line 289
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 290
    .line 291
    .line 292
    :goto_1
    invoke-virtual {v1}, Lcom/android/server/pm/PersonaManagerService;->getUserManager()Landroid/os/UserManager;

    .line 293
    .line 294
    .line 295
    move-result-object v0

    .line 296
    invoke-virtual {v0, v3}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    .line 297
    .line 298
    .line 299
    move-result-object v0

    .line 300
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 301
    .line 302
    .line 303
    move-result-object v0

    .line 304
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 305
    .line 306
    .line 307
    move-result v3

    .line 308
    if-eqz v3, :cond_3

    .line 309
    .line 310
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 311
    .line 312
    .line 313
    move-result-object v3

    .line 314
    check-cast v3, Landroid/content/pm/UserInfo;

    .line 315
    .line 316
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isUserTypeAppSeparation()Z

    .line 317
    .line 318
    .line 319
    move-result v4

    .line 320
    if-eqz v4, :cond_2

    .line 321
    .line 322
    invoke-virtual {v1}, Lcom/android/server/pm/PersonaManagerService;->getUserManager()Landroid/os/UserManager;

    .line 323
    .line 324
    .line 325
    move-result-object v0

    .line 326
    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    .line 327
    .line 328
    invoke-virtual {v0, v3}, Landroid/os/UserManager;->removeUser(I)Z

    .line 329
    .line 330
    .line 331
    invoke-virtual {v1}, Lcom/android/server/pm/PersonaManagerService;->enforceSeparatedAppsRemoveInternal()Z

    .line 332
    .line 333
    .line 334
    move-result v0

    .line 335
    new-instance v3, Landroid/content/Intent;

    .line 336
    .line 337
    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 338
    .line 339
    .line 340
    const-string v4, "com.samsung.android.knox.intent.action.SEPARATION_ACTION_RETURN"

    .line 341
    .line 342
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 343
    .line 344
    .line 345
    const-string/jumbo v4, "type"

    .line 346
    .line 347
    .line 348
    const-string v5, "deactivate"

    .line 349
    .line 350
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 351
    .line 352
    .line 353
    const-string/jumbo v4, "status"

    .line 354
    .line 355
    .line 356
    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 357
    .line 358
    .line 359
    invoke-virtual {v1, v3}, Lcom/android/server/pm/PersonaManagerService;->notifyStatusToKspAgent(Landroid/content/Intent;)V

    .line 360
    .line 361
    .line 362
    :cond_3
    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService;->mKnoxAnalyticsContainer:Lcom/android/server/knox/KnoxAnalyticsContainer;

    .line 363
    .line 364
    iget-object v0, v0, Lcom/android/server/knox/KnoxAnalyticsContainer;->separatedAppsAnalytics:Lcom/android/server/knox/SeparatedAppsAnalytics;

    .line 365
    .line 366
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 367
    .line 368
    .line 369
    new-instance v3, Landroid/os/Bundle;

    .line 370
    .line 371
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 372
    .line 373
    .line 374
    const-string v4, "e"

    .line 375
    .line 376
    const-string v5, "APP_SEPARATION_REMOVED"

    .line 377
    .line 378
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    .line 380
    .line 381
    const-string/jumbo v4, "rS"

    .line 382
    .line 383
    .line 384
    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 385
    .line 386
    .line 387
    invoke-virtual {v0, v3, v5}, Lcom/android/server/knox/SeparatedAppsAnalytics;->logEvent(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 388
    .line 389
    .line 390
    sget-object v0, Lcom/android/server/knox/ContainerDependencyWrapper;->sInstance:Lcom/android/server/knox/ContainerDependencyWrapper;

    .line 391
    .line 392
    invoke-static {}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getAppSeparationConfig()Landroid/os/Bundle;

    .line 393
    .line 394
    .line 395
    move-result-object v0

    .line 396
    sput-object v0, Lcom/android/server/pm/PersonaManagerService;->mSeparationConfiginCache:Landroid/os/Bundle;

    .line 397
    .line 398
    iput-object v9, v1, Lcom/android/server/pm/PersonaManagerService;->mImeSet:Ljava/util/Set;

    .line 399
    .line 400
    goto/16 :goto_1a

    .line 401
    .line 402
    :pswitch_5
    const-string v0, "PersonaManagerService"

    .line 403
    .line 404
    const-string v2, "MSG_KNOX_APP_SEPARATION_LIST_UPDATE "

    .line 405
    .line 406
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    .line 408
    .line 409
    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 410
    .line 411
    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$menforceAppSeparationAllowListUpdateInternal(Lcom/android/server/pm/PersonaManagerService;)V

    .line 412
    .line 413
    .line 414
    goto/16 :goto_1a

    .line 415
    .line 416
    :pswitch_6
    iget-object v1, v1, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 417
    .line 418
    iget-object v1, v1, Lcom/android/server/pm/PersonaManagerService;->mKnoxAnalyticsContainer:Lcom/android/server/knox/KnoxAnalyticsContainer;

    .line 419
    .line 420
    iget v2, v0, Landroid/os/Message;->arg1:I

    .line 421
    .line 422
    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 423
    .line 424
    check-cast v3, Ljava/lang/String;

    .line 425
    .line 426
    iget v0, v0, Landroid/os/Message;->arg2:I

    .line 427
    .line 428
    iget-object v1, v1, Lcom/android/server/knox/KnoxAnalyticsContainer;->basicContainerAnalytics:Lcom/android/server/knox/BasicContainerAnalytics;

    .line 429
    .line 430
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 431
    .line 432
    .line 433
    const-string v4, "LOGIN_ACCOUNTS_CHANGED"

    .line 434
    .line 435
    :try_start_1
    iget-object v5, v1, Lcom/android/server/knox/BasicContainerAnalytics;->ifKnoxAnalyticsContainer:Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;

    .line 436
    .line 437
    invoke-virtual {v5, v2}, Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;->isLoggingAllowedForUser(I)Z

    .line 438
    .line 439
    .line 440
    move-result v5

    .line 441
    if-eqz v5, :cond_3e

    .line 442
    .line 443
    new-instance v5, Landroid/os/Bundle;

    .line 444
    .line 445
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 446
    .line 447
    .line 448
    const-string v6, "cTp"

    .line 449
    .line 450
    invoke-virtual {v1, v2}, Lcom/android/server/knox/BasicContainerAnalytics;->getContainerType(I)I

    .line 451
    .line 452
    .line 453
    move-result v2

    .line 454
    invoke-virtual {v5, v6, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 455
    .line 456
    .line 457
    const-string v2, "e"

    .line 458
    .line 459
    invoke-virtual {v5, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    .line 461
    .line 462
    const-string v2, "accTy"

    .line 463
    .line 464
    invoke-virtual {v5, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    .line 466
    .line 467
    const-string v2, "add"

    .line 468
    .line 469
    invoke-virtual {v5, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 470
    .line 471
    .line 472
    invoke-virtual {v1, v5, v4}, Lcom/android/server/knox/BasicContainerAnalytics;->logEvent(Landroid/os/Bundle;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 473
    .line 474
    .line 475
    goto/16 :goto_1a

    .line 476
    .line 477
    :catch_1
    move-exception v0

    .line 478
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 479
    .line 480
    .line 481
    goto/16 :goto_1a

    .line 482
    .line 483
    :pswitch_7
    const-string v0, "PersonaManagerService"

    .line 484
    .line 485
    const-string v3, "MSG_BOOT_LOAD_PERSONA_SYSTEMREADY is called..."

    .line 486
    .line 487
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    .line 489
    .line 490
    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 491
    .line 492
    new-instance v3, Lcom/android/server/pm/PersonaLegacyStateMonitor;

    .line 493
    .line 494
    iget-object v6, v0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 495
    .line 496
    invoke-direct {v3, v6}, Lcom/android/server/pm/PersonaLegacyStateMonitor;-><init>(Landroid/content/Context;)V

    .line 497
    .line 498
    .line 499
    iput-object v3, v0, Lcom/android/server/pm/PersonaManagerService;->mLegacyStateMonitor:Lcom/android/server/pm/PersonaLegacyStateMonitor;

    .line 500
    .line 501
    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 502
    .line 503
    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$mgetDeviceFirmwareVersion(Lcom/android/server/pm/PersonaManagerService;)Ljava/lang/String;

    .line 504
    .line 505
    .line 506
    move-result-object v0

    .line 507
    if-eqz v0, :cond_6

    .line 508
    .line 509
    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 510
    .line 511
    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$mgetDeviceFirmwareVersion(Lcom/android/server/pm/PersonaManagerService;)Ljava/lang/String;

    .line 512
    .line 513
    .line 514
    move-result-object v0

    .line 515
    iget-object v3, v1, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 516
    .line 517
    iget-object v3, v3, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheMap:Ljava/util/HashMap;

    .line 518
    .line 519
    const-string v6, "fwversion"

    .line 520
    .line 521
    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    .line 523
    .line 524
    move-result-object v3

    .line 525
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 526
    .line 527
    .line 528
    move-result v0

    .line 529
    if-nez v0, :cond_6

    .line 530
    .line 531
    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 532
    .line 533
    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$mremoveDisallowedSFpackages(Lcom/android/server/pm/PersonaManagerService;)V

    .line 534
    .line 535
    .line 536
    iget-object v3, v1, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 537
    .line 538
    const-string v6, "knox_screen_off_timeout"

    .line 539
    .line 540
    invoke-virtual {v3, v2, v2}, Lcom/android/server/pm/PersonaManagerService;->getProfiles(IZ)Ljava/util/List;

    .line 541
    .line 542
    .line 543
    move-result-object v0

    .line 544
    check-cast v0, Ljava/util/ArrayList;

    .line 545
    .line 546
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 547
    .line 548
    .line 549
    move-result-object v7

    .line 550
    :catch_2
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 551
    .line 552
    .line 553
    move-result v0

    .line 554
    if-eqz v0, :cond_5

    .line 555
    .line 556
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 557
    .line 558
    .line 559
    move-result-object v0

    .line 560
    check-cast v0, Landroid/content/pm/UserInfo;

    .line 561
    .line 562
    iget v8, v0, Landroid/content/pm/UserInfo;->id:I

    .line 563
    .line 564
    invoke-static {v8}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    .line 565
    .line 566
    .line 567
    move-result v0

    .line 568
    if-eqz v0, :cond_4

    .line 569
    .line 570
    goto :goto_2

    .line 571
    :cond_4
    :try_start_2
    iget-object v0, v3, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 572
    .line 573
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 574
    .line 575
    .line 576
    move-result-object v0

    .line 577
    invoke-static {v0, v6, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_2
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 578
    .line 579
    .line 580
    :try_start_3
    iget-object v0, v3, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 581
    .line 582
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 583
    .line 584
    .line 585
    move-result-object v0

    .line 586
    invoke-static {v0, v6, v8}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_3
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    .line 587
    .line 588
    .line 589
    goto :goto_2

    .line 590
    :catch_3
    const-string v0, "Migrate screen timeout settings value. knoxId = "

    .line 591
    .line 592
    const-string v9, "PersonaManagerService:FOTA"

    .line 593
    .line 594
    invoke-static {v8, v0, v9}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 595
    .line 596
    .line 597
    :try_start_4
    iget-object v0, v3, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 598
    .line 599
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 600
    .line 601
    .line 602
    move-result-object v0

    .line 603
    invoke-static {v0, v6, v2, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 604
    .line 605
    .line 606
    move-result v0

    .line 607
    iget-object v10, v3, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 608
    .line 609
    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 610
    .line 611
    .line 612
    move-result-object v10

    .line 613
    invoke-static {v10, v6, v0, v8}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 614
    .line 615
    .line 616
    goto :goto_2

    .line 617
    :catch_4
    move-exception v0

    .line 618
    new-instance v10, Ljava/lang/StringBuilder;

    .line 619
    .line 620
    const-string v11, "Migration failed! knoxId = "

    .line 621
    .line 622
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 623
    .line 624
    .line 625
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 626
    .line 627
    .line 628
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 629
    .line 630
    .line 631
    move-result-object v8

    .line 632
    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    .line 634
    .line 635
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 636
    .line 637
    .line 638
    goto :goto_2

    .line 639
    :cond_5
    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 640
    .line 641
    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$mmigrateKnoxFingerprintPlusValueIfNeeded(Lcom/android/server/pm/PersonaManagerService;)V

    .line 642
    .line 643
    .line 644
    :cond_6
    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 645
    .line 646
    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$mgetRequiredApps(Lcom/android/server/pm/PersonaManagerService;)V

    .line 647
    .line 648
    .line 649
    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 650
    .line 651
    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$mgetWorkTabSupportLauncherUids(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/ArrayList;

    .line 652
    .line 653
    .line 654
    move-result-object v0

    .line 655
    sput-object v0, Lcom/android/server/pm/PersonaManagerService;->workTabSupportLauncherUids:Ljava/util/ArrayList;

    .line 656
    .line 657
    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 658
    .line 659
    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$mrecoverContainerInfo(Lcom/android/server/pm/PersonaManagerService;)V

    .line 660
    .line 661
    .line 662
    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 663
    .line 664
    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService;->mUserListFile:Ljava/io/File;

    .line 665
    .line 666
    if-eqz v0, :cond_7

    .line 667
    .line 668
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 669
    .line 670
    .line 671
    move-result v0

    .line 672
    if-eqz v0, :cond_7

    .line 673
    .line 674
    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 675
    .line 676
    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService;->mUserListFile:Ljava/io/File;

    .line 677
    .line 678
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 679
    .line 680
    .line 681
    move-result v0

    .line 682
    const-string v3, "PersonaManagerService:FOTA"

    .line 683
    .line 684
    const-string/jumbo v6, "user list file delete status - "

    .line 685
    .line 686
    .line 687
    invoke-static {v6, v3, v0}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 688
    .line 689
    .line 690
    :cond_7
    new-instance v0, Ljava/io/File;

    .line 691
    .line 692
    iget-object v3, v1, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 693
    .line 694
    iget-object v3, v3, Lcom/android/server/pm/PersonaManagerService;->mUsersDir:Ljava/io/File;

    .line 695
    .line 696
    const-string/jumbo v6, "userwithpersonalist.xml.crt"

    .line 697
    .line 698
    .line 699
    invoke-direct {v0, v3, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 700
    .line 701
    .line 702
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 703
    .line 704
    .line 705
    move-result v3

    .line 706
    if-eqz v3, :cond_8

    .line 707
    .line 708
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 709
    .line 710
    .line 711
    move-result v0

    .line 712
    const-string v3, "PersonaManagerService:FOTA"

    .line 713
    .line 714
    const-string/jumbo v6, "user list backup file delete status - "

    .line 715
    .line 716
    .line 717
    invoke-static {v6, v3, v0}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 718
    .line 719
    .line 720
    :cond_8
    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 721
    .line 722
    iget-object v3, v0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheMap:Ljava/util/HashMap;

    .line 723
    .line 724
    monitor-enter v3

    .line 725
    :try_start_5
    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 726
    .line 727
    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheMap:Ljava/util/HashMap;

    .line 728
    .line 729
    const-string v6, "fwversion"

    .line 730
    .line 731
    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 732
    .line 733
    .line 734
    move-result-object v0

    .line 735
    check-cast v0, Ljava/lang/String;

    .line 736
    .line 737
    iget-object v6, v1, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 738
    .line 739
    invoke-static {v6}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$mgetDeviceFirmwareVersion(Lcom/android/server/pm/PersonaManagerService;)Ljava/lang/String;

    .line 740
    .line 741
    .line 742
    move-result-object v6

    .line 743
    if-eqz v0, :cond_9

    .line 744
    .line 745
    if-eqz v6, :cond_a

    .line 746
    .line 747
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 748
    .line 749
    .line 750
    move-result v0

    .line 751
    if-nez v0, :cond_a

    .line 752
    .line 753
    goto :goto_3

    .line 754
    :catchall_0
    move-exception v0

    .line 755
    goto :goto_4

    .line 756
    :cond_9
    :goto_3
    const-string v0, "PersonaManagerService"

    .line 757
    .line 758
    new-instance v7, Ljava/lang/StringBuilder;

    .line 759
    .line 760
    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 761
    .line 762
    .line 763
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 764
    .line 765
    .line 766
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 767
    .line 768
    .line 769
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 770
    .line 771
    .line 772
    move-result-object v4

    .line 773
    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    .line 775
    .line 776
    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 777
    .line 778
    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheMap:Ljava/util/HashMap;

    .line 779
    .line 780
    const-string v5, "fwversion"

    .line 781
    .line 782
    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$mgetDeviceFirmwareVersion(Lcom/android/server/pm/PersonaManagerService;)Ljava/lang/String;

    .line 783
    .line 784
    .line 785
    move-result-object v0

    .line 786
    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 787
    .line 788
    .line 789
    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 790
    .line 791
    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheMap:Ljava/util/HashMap;

    .line 792
    .line 793
    const-string v4, "fotaversion"

    .line 794
    .line 795
    const-string v5, "10"

    .line 796
    .line 797
    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 798
    .line 799
    .line 800
    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 801
    .line 802
    invoke-virtual {v0}, Lcom/android/server/pm/PersonaManagerService;->writePersonaCacheLocked()V

    .line 803
    .line 804
    .line 805
    :cond_a
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 806
    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 807
    .line 808
    const-string v3, "com.sec.knox.bluetooth"

    .line 809
    .line 810
    invoke-virtual {v0, v3, v2, v2}, Lcom/android/server/pm/PersonaManagerService;->setPackageSettingInstalled(Ljava/lang/String;ZI)Z

    .line 811
    .line 812
    .line 813
    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 814
    .line 815
    const-string v1, "com.samsung.android.bbc.fileprovider"

    .line 816
    .line 817
    invoke-virtual {v0, v1, v2, v2}, Lcom/android/server/pm/PersonaManagerService;->setPackageSettingInstalled(Ljava/lang/String;ZI)Z

    .line 818
    .line 819
    .line 820
    goto/16 :goto_1a

    .line 821
    .line 822
    :goto_4
    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 823
    throw v0

    .line 824
    :pswitch_8
    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 825
    .line 826
    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$msendMessageAndLockTimeout(Lcom/android/server/pm/PersonaManagerService;)V

    .line 827
    .line 828
    .line 829
    goto/16 :goto_1a

    .line 830
    .line 831
    :pswitch_9
    const-string v0, "PersonaManagerServiceHandler"

    .line 832
    .line 833
    const-string v4, " MSG_BOOT_COMPLETE_RECEIVED : soft start personas "

    .line 834
    .line 835
    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    .line 837
    .line 838
    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 839
    .line 840
    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 841
    .line 842
    invoke-static {v0}, Lcom/android/server/knox/KnoxForesightService;->getInstance(Landroid/content/Context;)Lcom/android/server/knox/KnoxForesightService;

    .line 843
    .line 844
    .line 845
    :try_start_7
    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    .line 846
    .line 847
    .line 848
    move-result v0

    .line 849
    if-eqz v0, :cond_b

    .line 850
    .line 851
    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 852
    .line 853
    invoke-virtual {v0}, Lcom/android/server/pm/PersonaManagerService;->getIPackageManager()Landroid/content/pm/IPackageManager;

    .line 854
    .line 855
    .line 856
    move-result-object v0

    .line 857
    const-string v4, "com.felicanetworks.mfm"

    .line 858
    .line 859
    invoke-interface {v0, v4, v2}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    .line 860
    .line 861
    .line 862
    move-result v0

    .line 863
    if-ne v0, v8, :cond_b

    .line 864
    .line 865
    const-string v0, "PersonaManagerServiceHandler"

    .line 866
    .line 867
    const-string v4, " MSG_BOOT_COMPLETE_RECEIVED : DO is enabled. recorver disabled app."

    .line 868
    .line 869
    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    .line 871
    .line 872
    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 873
    .line 874
    invoke-virtual {v0}, Lcom/android/server/pm/PersonaManagerService;->getIPackageManager()Landroid/content/pm/IPackageManager;

    .line 875
    .line 876
    .line 877
    move-result-object v4

    .line 878
    const-string v5, "com.felicanetworks.mfm"

    .line 879
    .line 880
    const/4 v6, 0x0

    .line 881
    const/4 v7, 0x0

    .line 882
    const/4 v8, 0x0

    .line 883
    const/4 v9, 0x0

    .line 884
    invoke-interface/range {v4 .. v9}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 885
    .line 886
    .line 887
    goto :goto_5

    .line 888
    :catch_5
    move-exception v0

    .line 889
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 890
    .line 891
    .line 892
    :cond_b
    :goto_5
    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 893
    .line 894
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 895
    .line 896
    .line 897
    const-string v0, "PersonaManagerService:FOTA"

    .line 898
    .line 899
    const-string v4, "handleFotaResetSecureFolderAdmin()"

    .line 900
    .line 901
    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    .line 903
    .line 904
    :try_start_8
    invoke-static {}, Lcom/android/server/pm/PersonaManagerService;->resetSecureFolderAdmin()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    .line 905
    .line 906
    .line 907
    goto :goto_6

    .line 908
    :catch_6
    move-exception v0

    .line 909
    move-object v4, v0

    .line 910
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 911
    .line 912
    .line 913
    :goto_6
    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 914
    .line 915
    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService;->containerNames:Ljava/util/HashSet;

    .line 916
    .line 917
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    .line 918
    .line 919
    .line 920
    move-result v0

    .line 921
    if-lez v0, :cond_c

    .line 922
    .line 923
    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 924
    .line 925
    invoke-virtual {v0}, Lcom/android/server/pm/PersonaManagerService;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    .line 926
    .line 927
    .line 928
    move-result-object v0

    .line 929
    invoke-virtual {v0, v3}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIds(Z)Ljava/util/List;

    .line 930
    .line 931
    .line 932
    move-result-object v0

    .line 933
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 934
    .line 935
    .line 936
    move-result-object v0

    .line 937
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 938
    .line 939
    .line 940
    move-result v4

    .line 941
    if-eqz v4, :cond_c

    .line 942
    .line 943
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 944
    .line 945
    .line 946
    move-result-object v4

    .line 947
    check-cast v4, Ljava/lang/Integer;

    .line 948
    .line 949
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 950
    .line 951
    .line 952
    move-result v4

    .line 953
    iget-object v5, v1, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 954
    .line 955
    invoke-static {v5, v4}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$msetDpmScreenTimeoutFlag(Lcom/android/server/pm/PersonaManagerService;I)V

    .line 956
    .line 957
    .line 958
    goto :goto_7

    .line 959
    :cond_c
    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 960
    .line 961
    invoke-virtual {v0, v2, v2}, Lcom/android/server/pm/PersonaManagerService;->getProfiles(IZ)Ljava/util/List;

    .line 962
    .line 963
    .line 964
    move-result-object v4

    .line 965
    move v5, v2

    .line 966
    :goto_8
    move-object v0, v4

    .line 967
    check-cast v0, Ljava/util/ArrayList;

    .line 968
    .line 969
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 970
    .line 971
    .line 972
    move-result v6

    .line 973
    if-ge v5, v6, :cond_3e

    .line 974
    .line 975
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 976
    .line 977
    .line 978
    move-result-object v0

    .line 979
    move-object v6, v0

    .line 980
    check-cast v6, Landroid/content/pm/UserInfo;

    .line 981
    .line 982
    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isUserTypeAppSeparation()Z

    .line 983
    .line 984
    .line 985
    move-result v0

    .line 986
    if-eqz v0, :cond_d

    .line 987
    .line 988
    :try_start_9
    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 989
    .line 990
    invoke-virtual {v0}, Lcom/android/server/pm/PersonaManagerService;->getIPackageManager()Landroid/content/pm/IPackageManager;

    .line 991
    .line 992
    .line 993
    move-result-object v0

    .line 994
    new-instance v7, Landroid/content/ComponentName;

    .line 995
    .line 996
    const-string v8, "com.samsung.android.appseparation"

    .line 997
    .line 998
    const-string v9, "com.samsung.android.appseparation.view.launcher.LauncherActivity"

    .line 999
    .line 1000
    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1001
    .line 1002
    .line 1003
    invoke-interface {v0, v7, v2}, Landroid/content/pm/IPackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;I)I

    .line 1004
    .line 1005
    .line 1006
    move-result v0
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_7

    .line 1007
    goto :goto_9

    .line 1008
    :catch_7
    move-exception v0

    .line 1009
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1010
    .line 1011
    .line 1012
    move v0, v2

    .line 1013
    :goto_9
    if-eq v0, v3, :cond_d

    .line 1014
    .line 1015
    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 1016
    .line 1017
    iget-object v7, v0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    .line 1018
    .line 1019
    const/16 v8, 0x48

    .line 1020
    .line 1021
    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 1022
    .line 1023
    .line 1024
    move-result-object v7

    .line 1025
    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    .line 1026
    .line 1027
    invoke-virtual {v0, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1028
    .line 1029
    .line 1030
    const-string v0, "PersonaManagerService"

    .line 1031
    .line 1032
    const-string v7, "enforceAppSeparationDeletion"

    .line 1033
    .line 1034
    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    .line 1036
    .line 1037
    :cond_d
    :try_start_a
    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    .line 1038
    .line 1039
    .line 1040
    move-result v0

    .line 1041
    if-eqz v0, :cond_e

    .line 1042
    .line 1043
    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 1044
    .line 1045
    iget v6, v6, Landroid/content/pm/UserInfo;->id:I

    .line 1046
    .line 1047
    invoke-static {v0, v6}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$menableMyFilesLauncherActivity(Lcom/android/server/pm/PersonaManagerService;I)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8

    .line 1048
    .line 1049
    .line 1050
    goto :goto_a

    .line 1051
    :catch_8
    move-exception v0

    .line 1052
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1053
    .line 1054
    .line 1055
    :cond_e
    :goto_a
    add-int/2addr v5, v3

    .line 1056
    goto :goto_8

    .line 1057
    :cond_f
    const-string v4, "PersonaManagerServiceHandler"

    .line 1058
    .line 1059
    const-string v5, "MSG_POST_NOTI_FOR_PWD_CHANGE_DO "

    .line 1060
    .line 1061
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    .line 1063
    .line 1064
    iget-object v1, v1, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 1065
    .line 1066
    iget-object v1, v1, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 1067
    .line 1068
    iget v0, v0, Landroid/os/Message;->arg1:I

    .line 1069
    .line 1070
    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    .line 1071
    .line 1072
    .line 1073
    move-result v0

    .line 1074
    if-eqz v0, :cond_10

    .line 1075
    .line 1076
    goto/16 :goto_1a

    .line 1077
    .line 1078
    :cond_10
    new-instance v0, Landroid/content/Intent;

    .line 1079
    .line 1080
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1081
    .line 1082
    .line 1083
    const/high16 v4, 0x4c000000    # 3.3554432E7f

    .line 1084
    .line 1085
    invoke-static {v1, v2, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 1086
    .line 1087
    .line 1088
    move-result-object v0

    .line 1089
    const v2, 0x1040493

    .line 1090
    .line 1091
    .line 1092
    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 1093
    .line 1094
    .line 1095
    move-result-object v2

    .line 1096
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 1097
    .line 1098
    .line 1099
    move-result-object v2

    .line 1100
    const v4, 0x1040492

    .line 1101
    .line 1102
    .line 1103
    invoke-virtual {v1, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 1104
    .line 1105
    .line 1106
    move-result-object v4

    .line 1107
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 1108
    .line 1109
    .line 1110
    move-result-object v4

    .line 1111
    new-instance v5, Landroid/app/Notification$Builder;

    .line 1112
    .line 1113
    sget-object v6, Lcom/android/internal/notification/SystemNotificationChannels;->DEVICE_ADMIN:Ljava/lang/String;

    .line 1114
    .line 1115
    invoke-direct {v5, v1, v6}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1116
    .line 1117
    .line 1118
    const v6, 0x10805fa

    .line 1119
    .line 1120
    .line 1121
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 1122
    .line 1123
    .line 1124
    move-result-object v5

    .line 1125
    invoke-virtual {v5, v11, v12}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 1126
    .line 1127
    .line 1128
    move-result-object v5

    .line 1129
    invoke-virtual {v5, v3}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 1130
    .line 1131
    .line 1132
    move-result-object v5

    .line 1133
    invoke-virtual {v5, v2}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1134
    .line 1135
    .line 1136
    move-result-object v5

    .line 1137
    const v6, 0x106001c

    .line 1138
    .line 1139
    .line 1140
    invoke-virtual {v1, v6}, Landroid/content/Context;->getColor(I)I

    .line 1141
    .line 1142
    .line 1143
    move-result v6

    .line 1144
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 1145
    .line 1146
    .line 1147
    move-result-object v5

    .line 1148
    invoke-virtual {v5, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1149
    .line 1150
    .line 1151
    move-result-object v2

    .line 1152
    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1153
    .line 1154
    .line 1155
    move-result-object v2

    .line 1156
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    .line 1157
    .line 1158
    .line 1159
    move-result-object v2

    .line 1160
    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1161
    .line 1162
    .line 1163
    move-result-object v0

    .line 1164
    new-instance v2, Landroid/app/Notification$BigTextStyle;

    .line 1165
    .line 1166
    invoke-direct {v2}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 1167
    .line 1168
    .line 1169
    invoke-virtual {v2, v4}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    .line 1170
    .line 1171
    .line 1172
    move-result-object v2

    .line 1173
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 1174
    .line 1175
    .line 1176
    move-result-object v0

    .line 1177
    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 1178
    .line 1179
    .line 1180
    move-result-object v0

    .line 1181
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 1182
    .line 1183
    .line 1184
    move-result-object v0

    .line 1185
    iget v2, v0, Landroid/app/Notification;->semFlags:I

    .line 1186
    .line 1187
    or-int/lit8 v2, v2, 0x8

    .line 1188
    .line 1189
    iput v2, v0, Landroid/app/Notification;->semFlags:I

    .line 1190
    .line 1191
    const-string/jumbo v2, "notification"

    .line 1192
    .line 1193
    .line 1194
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 1195
    .line 1196
    .line 1197
    move-result-object v1

    .line 1198
    check-cast v1, Landroid/app/NotificationManager;

    .line 1199
    .line 1200
    const/16 v2, 0x457

    .line 1201
    .line 1202
    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1203
    .line 1204
    .line 1205
    goto/16 :goto_1a

    .line 1206
    .line 1207
    :cond_11
    iget-object v1, v1, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 1208
    .line 1209
    iget-object v1, v1, Lcom/android/server/pm/PersonaManagerService;->mKnoxAnalyticsContainer:Lcom/android/server/knox/KnoxAnalyticsContainer;

    .line 1210
    .line 1211
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1212
    .line 1213
    check-cast v0, Landroid/os/Bundle;

    .line 1214
    .line 1215
    iget-object v1, v1, Lcom/android/server/knox/KnoxAnalyticsContainer;->dpmAnalytics:Lcom/android/server/knox/DevicePolicyManagerAnalytics;

    .line 1216
    .line 1217
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1218
    .line 1219
    .line 1220
    const-string v3, "aN"

    .line 1221
    .line 1222
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 1223
    .line 1224
    .line 1225
    move-result v2

    .line 1226
    sget-object v4, Lcom/android/server/knox/DevicePolicyManagerAnalytics;->DPMS_EX_EVENTS:Ljava/util/HashMap;

    .line 1227
    .line 1228
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1229
    .line 1230
    .line 1231
    move-result-object v5

    .line 1232
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 1233
    .line 1234
    .line 1235
    move-result v4

    .line 1236
    if-eqz v4, :cond_12

    .line 1237
    .line 1238
    goto/16 :goto_1a

    .line 1239
    .line 1240
    :cond_12
    const-string v4, "apN"

    .line 1241
    .line 1242
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 1243
    .line 1244
    .line 1245
    move-result v5

    .line 1246
    sget-boolean v6, Lcom/android/server/knox/DevicePolicyManagerAnalytics;->DEBUG:Z

    .line 1247
    .line 1248
    const-string v7, "DevicePolicyManagerAnalytics"

    .line 1249
    .line 1250
    if-eqz v5, :cond_13

    .line 1251
    .line 1252
    sget-object v5, Lcom/android/server/knox/DevicePolicyManagerAnalytics;->DPMS_EX_ADMINS:Ljava/util/ArrayList;

    .line 1253
    .line 1254
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1255
    .line 1256
    .line 1257
    move-result-object v13

    .line 1258
    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 1259
    .line 1260
    .line 1261
    move-result v5

    .line 1262
    if-eqz v5, :cond_13

    .line 1263
    .line 1264
    if-eqz v6, :cond_3e

    .line 1265
    .line 1266
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1267
    .line 1268
    const-string v2, "Not logging admin : "

    .line 1269
    .line 1270
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1271
    .line 1272
    .line 1273
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1274
    .line 1275
    .line 1276
    move-result-object v0

    .line 1277
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1278
    .line 1279
    .line 1280
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1281
    .line 1282
    .line 1283
    move-result-object v0

    .line 1284
    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1285
    .line 1286
    .line 1287
    goto/16 :goto_1a

    .line 1288
    .line 1289
    :cond_13
    sget-object v5, Lcom/android/server/knox/DevicePolicyManagerAnalytics;->DPMS_EVENTS_MAP:Ljava/util/HashMap;

    .line 1290
    .line 1291
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1292
    .line 1293
    .line 1294
    move-result-object v13

    .line 1295
    invoke-virtual {v5, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 1296
    .line 1297
    .line 1298
    move-result v13

    .line 1299
    if-eqz v13, :cond_14

    .line 1300
    .line 1301
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1302
    .line 1303
    .line 1304
    move-result-object v13

    .line 1305
    invoke-virtual {v5, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1306
    .line 1307
    .line 1308
    move-result-object v5

    .line 1309
    check-cast v5, Ljava/lang/String;

    .line 1310
    .line 1311
    goto :goto_b

    .line 1312
    :cond_14
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 1313
    .line 1314
    .line 1315
    move-result-object v5

    .line 1316
    :goto_b
    new-instance v13, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    .line 1317
    .line 1318
    const-string v14, "DPMS_API_USAGE"

    .line 1319
    .line 1320
    invoke-direct {v13, v14, v10, v5}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 1321
    .line 1322
    .line 1323
    invoke-virtual {v13, v3, v5}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1324
    .line 1325
    .line 1326
    const-string v10, "iV"

    .line 1327
    .line 1328
    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 1329
    .line 1330
    .line 1331
    move-result v14

    .line 1332
    invoke-virtual {v13, v10, v14}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;I)V

    .line 1333
    .line 1334
    .line 1335
    const-string v14, "bV"

    .line 1336
    .line 1337
    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 1338
    .line 1339
    .line 1340
    move-result v15

    .line 1341
    invoke-virtual {v13, v14, v15}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Z)V

    .line 1342
    .line 1343
    .line 1344
    const-string/jumbo v14, "tpms"

    .line 1345
    .line 1346
    .line 1347
    move-object/from16 p0, v10

    .line 1348
    .line 1349
    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    .line 1350
    .line 1351
    .line 1352
    move-result-wide v9

    .line 1353
    invoke-virtual {v13, v14, v9, v10}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;J)V

    .line 1354
    .line 1355
    .line 1356
    const-string v9, "1"

    .line 1357
    .line 1358
    const-string v10, "_"

    .line 1359
    .line 1360
    invoke-virtual {v9, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1361
    .line 1362
    .line 1363
    move-result-object v9

    .line 1364
    iget-object v10, v1, Lcom/android/server/knox/DevicePolicyManagerAnalytics;->oneUiAndOSVersion:Ljava/lang/String;

    .line 1365
    .line 1366
    invoke-virtual {v9, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1367
    .line 1368
    .line 1369
    move-result-object v9

    .line 1370
    const-string v10, "info_level"

    .line 1371
    .line 1372
    invoke-virtual {v13, v10, v9}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1373
    .line 1374
    .line 1375
    const-string/jumbo v9, "saV"

    .line 1376
    .line 1377
    .line 1378
    invoke-virtual {v0, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 1379
    .line 1380
    .line 1381
    move-result v10

    .line 1382
    const-string v14, ";;"

    .line 1383
    .line 1384
    if-eqz v10, :cond_15

    .line 1385
    .line 1386
    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 1387
    .line 1388
    .line 1389
    move-result-object v10

    .line 1390
    new-instance v15, Lcom/android/server/knox/DevicePolicyManagerAnalytics$$ExternalSyntheticLambda0;

    .line 1391
    .line 1392
    invoke-direct {v15}, Ljava/lang/Object;-><init>()V

    .line 1393
    .line 1394
    .line 1395
    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 1396
    .line 1397
    .line 1398
    invoke-static {v14, v10}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 1399
    .line 1400
    .line 1401
    move-result-object v10

    .line 1402
    invoke-virtual {v13, v9, v10}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1403
    .line 1404
    .line 1405
    :cond_15
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 1406
    .line 1407
    .line 1408
    move-result v10

    .line 1409
    if-eqz v10, :cond_16

    .line 1410
    .line 1411
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1412
    .line 1413
    .line 1414
    move-result-object v10

    .line 1415
    invoke-virtual {v13, v4, v10}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1416
    .line 1417
    .line 1418
    :cond_16
    const-string/jumbo v10, "userId"

    .line 1419
    .line 1420
    .line 1421
    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 1422
    .line 1423
    .line 1424
    move-result v0

    .line 1425
    invoke-virtual {v13, v0}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setUserTypeProperty(I)V

    .line 1426
    .line 1427
    .line 1428
    sget-object v0, Lcom/android/server/knox/DevicePolicyManagerAnalytics;->DPMS_COUNTABLE_EVENTS:Ljava/util/HashMap;

    .line 1429
    .line 1430
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1431
    .line 1432
    .line 1433
    move-result-object v10

    .line 1434
    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1435
    .line 1436
    .line 1437
    move-result-object v0

    .line 1438
    check-cast v0, Ljava/lang/String;

    .line 1439
    .line 1440
    if-eqz v0, :cond_1c

    .line 1441
    .line 1442
    const-string v10, "SET_APPLICATION_EXEMPTIONS"

    .line 1443
    .line 1444
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1445
    .line 1446
    .line 1447
    move-result v0

    .line 1448
    if-nez v0, :cond_17

    .line 1449
    .line 1450
    goto/16 :goto_e

    .line 1451
    .line 1452
    :cond_17
    invoke-virtual {v13}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->getPayload()Landroid/os/Bundle;

    .line 1453
    .line 1454
    .line 1455
    move-result-object v0

    .line 1456
    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1457
    .line 1458
    .line 1459
    move-result-object v0

    .line 1460
    if-eqz v0, :cond_18

    .line 1461
    .line 1462
    invoke-virtual {v0, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 1463
    .line 1464
    .line 1465
    move-result-object v0

    .line 1466
    array-length v0, v0

    .line 1467
    if-ge v0, v8, :cond_1c

    .line 1468
    .line 1469
    :cond_18
    const/16 v0, 0xd9

    .line 1470
    .line 1471
    if-eq v2, v0, :cond_19

    .line 1472
    .line 1473
    const/4 v9, 0x0

    .line 1474
    goto :goto_c

    .line 1475
    :cond_19
    invoke-virtual {v13}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->getPayload()Landroid/os/Bundle;

    .line 1476
    .line 1477
    .line 1478
    move-result-object v0

    .line 1479
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1480
    .line 1481
    .line 1482
    move-result-object v9

    .line 1483
    :goto_c
    :try_start_b
    iget-object v0, v1, Lcom/android/server/knox/DevicePolicyManagerAnalytics;->context:Landroid/content/Context;

    .line 1484
    .line 1485
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 1486
    .line 1487
    .line 1488
    move-result-object v0

    .line 1489
    invoke-static {v2, v9, v0}, Lcom/android/server/knox/JsonHelper;->shallSaveOrReturnCount(ILjava/lang/String;Landroid/content/SharedPreferences;)J

    .line 1490
    .line 1491
    .line 1492
    move-result-wide v8
    :try_end_b
    .catch Ljava/lang/IllegalStateException; {:try_start_b .. :try_end_b} :catch_9

    .line 1493
    goto :goto_d

    .line 1494
    :catch_9
    const-string v0, "IllegalStateExcpetion. User may be in locked state."

    .line 1495
    .line 1496
    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1497
    .line 1498
    .line 1499
    move-wide v8, v11

    .line 1500
    :goto_d
    const-string v0, "isEventCountable true, eventId = "

    .line 1501
    .line 1502
    invoke-static {v2, v0, v7}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 1503
    .line 1504
    .line 1505
    cmp-long v0, v8, v11

    .line 1506
    .line 1507
    if-nez v0, :cond_1a

    .line 1508
    .line 1509
    if-eqz v6, :cond_3e

    .line 1510
    .line 1511
    const-string/jumbo v0, "result = 0"

    .line 1512
    .line 1513
    .line 1514
    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1515
    .line 1516
    .line 1517
    goto/16 :goto_1a

    .line 1518
    .line 1519
    :cond_1a
    sget-object v0, Lcom/android/server/knox/DevicePolicyManagerAnalytics;->DPMS_KA_COUNTER_EVENTS_MAP:Ljava/util/HashMap;

    .line 1520
    .line 1521
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1522
    .line 1523
    .line 1524
    move-result-object v4

    .line 1525
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1526
    .line 1527
    .line 1528
    move-result-object v4

    .line 1529
    check-cast v4, Ljava/lang/String;

    .line 1530
    .line 1531
    invoke-virtual {v13, v3, v4}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1532
    .line 1533
    .line 1534
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1535
    .line 1536
    .line 1537
    move-result-object v3

    .line 1538
    invoke-virtual {v3}, Ljava/lang/Long;->intValue()I

    .line 1539
    .line 1540
    .line 1541
    move-result v3

    .line 1542
    move-object/from16 v4, p0

    .line 1543
    .line 1544
    invoke-virtual {v13, v4, v3}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;I)V

    .line 1545
    .line 1546
    .line 1547
    if-eqz v6, :cond_1b

    .line 1548
    .line 1549
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1550
    .line 1551
    const-string v4, " event name updated = "

    .line 1552
    .line 1553
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1554
    .line 1555
    .line 1556
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1557
    .line 1558
    .line 1559
    move-result-object v2

    .line 1560
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1561
    .line 1562
    .line 1563
    move-result-object v0

    .line 1564
    check-cast v0, Ljava/lang/String;

    .line 1565
    .line 1566
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1567
    .line 1568
    .line 1569
    const-string v0, " count set = "

    .line 1570
    .line 1571
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1572
    .line 1573
    .line 1574
    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1575
    .line 1576
    .line 1577
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1578
    .line 1579
    .line 1580
    move-result-object v0

    .line 1581
    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1582
    .line 1583
    .line 1584
    :cond_1b
    if-eqz v6, :cond_1c

    .line 1585
    .line 1586
    const-string/jumbo v0, "updateEventNameAndSetCount done"

    .line 1587
    .line 1588
    .line 1589
    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1590
    .line 1591
    .line 1592
    :cond_1c
    :goto_e
    iget-object v0, v1, Lcom/android/server/knox/DevicePolicyManagerAnalytics;->ifKnoxAnalyticsContainer:Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;

    .line 1593
    .line 1594
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1595
    .line 1596
    .line 1597
    invoke-static {v13}, Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;->sendAnalyticsLog(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V

    .line 1598
    .line 1599
    .line 1600
    if-eqz v6, :cond_3e

    .line 1601
    .line 1602
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1603
    .line 1604
    const-string v1, "API_NAME : "

    .line 1605
    .line 1606
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1607
    .line 1608
    .line 1609
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1610
    .line 1611
    .line 1612
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1613
    .line 1614
    .line 1615
    move-result-object v0

    .line 1616
    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1617
    .line 1618
    .line 1619
    invoke-virtual {v13}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->toString()Ljava/lang/String;

    .line 1620
    .line 1621
    .line 1622
    move-result-object v0

    .line 1623
    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1624
    .line 1625
    .line 1626
    goto/16 :goto_1a

    .line 1627
    .line 1628
    :cond_1d
    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 1629
    .line 1630
    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService;->mSeamLessSwitchHandler:Lcom/android/server/knox/SeamLessSwitchHandler;

    .line 1631
    .line 1632
    if-eqz v4, :cond_3e

    .line 1633
    .line 1634
    const/4 v5, 0x0

    .line 1635
    sput-object v5, Lcom/android/server/knox/SeamLessSwitchHandler;->packageExtraForSALog:Ljava/lang/String;

    .line 1636
    .line 1637
    iget-object v0, v4, Lcom/android/server/knox/SeamLessSwitchHandler;->am:Landroid/app/ActivityManager;

    .line 1638
    .line 1639
    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    .line 1640
    .line 1641
    .line 1642
    move-result-object v0

    .line 1643
    if-eqz v0, :cond_39

    .line 1644
    .line 1645
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 1646
    .line 1647
    .line 1648
    move-result v5

    .line 1649
    if-nez v5, :cond_1e

    .line 1650
    .line 1651
    goto/16 :goto_19

    .line 1652
    .line 1653
    :cond_1e
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1654
    .line 1655
    .line 1656
    move-result-object v0

    .line 1657
    move-object v5, v0

    .line 1658
    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1659
    .line 1660
    iget-object v6, v5, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 1661
    .line 1662
    iget-object v7, v5, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    .line 1663
    .line 1664
    iget v0, v5, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    .line 1665
    .line 1666
    invoke-virtual {v4, v0}, Lcom/android/server/knox/SeamLessSwitchHandler;->getLaunchUserId(I)I

    .line 1667
    .line 1668
    .line 1669
    move-result v9

    .line 1670
    iget-object v0, v4, Lcom/android/server/knox/SeamLessSwitchHandler;->c:Landroid/content/Context;

    .line 1671
    .line 1672
    invoke-static {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    .line 1673
    .line 1674
    .line 1675
    move-result v0

    .line 1676
    const-string v10, "SeamLessSwitchHandler"

    .line 1677
    .line 1678
    const/4 v11, -0x1

    .line 1679
    if-nez v0, :cond_20

    .line 1680
    .line 1681
    iget-object v0, v4, Lcom/android/server/knox/SeamLessSwitchHandler;->c:Landroid/content/Context;

    .line 1682
    .line 1683
    invoke-static {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isMinimalBatteryUseMode(Landroid/content/Context;)Z

    .line 1684
    .line 1685
    .line 1686
    move-result v0

    .line 1687
    if-nez v0, :cond_20

    .line 1688
    .line 1689
    if-eq v9, v11, :cond_1f

    .line 1690
    .line 1691
    iget-object v0, v4, Lcom/android/server/knox/SeamLessSwitchHandler;->mUserManager:Landroid/os/UserManager;

    .line 1692
    .line 1693
    invoke-virtual {v0, v9}, Landroid/os/UserManager;->isUserRunning(I)Z

    .line 1694
    .line 1695
    .line 1696
    move-result v0

    .line 1697
    if-nez v0, :cond_20

    .line 1698
    .line 1699
    :cond_1f
    const-string v0, "Quick Switch abort! User is not running"

    .line 1700
    .line 1701
    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1702
    .line 1703
    .line 1704
    goto/16 :goto_19

    .line 1705
    .line 1706
    :cond_20
    invoke-static {v9}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    .line 1707
    .line 1708
    .line 1709
    move-result v0

    .line 1710
    if-eqz v0, :cond_21

    .line 1711
    .line 1712
    iget-object v0, v4, Lcom/android/server/knox/SeamLessSwitchHandler;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 1713
    .line 1714
    invoke-virtual {v0, v9}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    .line 1715
    .line 1716
    .line 1717
    move-result v0

    .line 1718
    if-nez v0, :cond_21

    .line 1719
    .line 1720
    const-string v0, "Quick Switch abort! User Lock type is not set"

    .line 1721
    .line 1722
    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1723
    .line 1724
    .line 1725
    goto/16 :goto_19

    .line 1726
    .line 1727
    :cond_21
    :try_start_c
    iget-object v0, v4, Lcom/android/server/knox/SeamLessSwitchHandler;->c:Landroid/content/Context;

    .line 1728
    .line 1729
    invoke-static {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    .line 1730
    .line 1731
    .line 1732
    move-result v0

    .line 1733
    if-nez v0, :cond_29

    .line 1734
    .line 1735
    iget-object v0, v4, Lcom/android/server/knox/SeamLessSwitchHandler;->c:Landroid/content/Context;

    .line 1736
    .line 1737
    invoke-static {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isMinimalBatteryUseMode(Landroid/content/Context;)Z

    .line 1738
    .line 1739
    .line 1740
    move-result v0

    .line 1741
    if-eqz v0, :cond_22

    .line 1742
    .line 1743
    goto/16 :goto_10

    .line 1744
    .line 1745
    :cond_22
    iget-object v0, v4, Lcom/android/server/knox/SeamLessSwitchHandler;->SEAMLESS_NOTALLOWED_EXCEPTIONAL_LIST:Ljava/util/List;

    .line 1746
    .line 1747
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 1748
    .line 1749
    .line 1750
    move-result-object v12

    .line 1751
    check-cast v0, Ljava/util/ArrayList;

    .line 1752
    .line 1753
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 1754
    .line 1755
    .line 1756
    move-result v0

    .line 1757
    if-eqz v0, :cond_23

    .line 1758
    .line 1759
    goto :goto_10

    .line 1760
    :cond_23
    iget-object v0, v5, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    .line 1761
    .line 1762
    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 1763
    .line 1764
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    .line 1765
    .line 1766
    .line 1767
    move-result v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_b

    .line 1768
    if-ne v0, v3, :cond_29

    .line 1769
    .line 1770
    :try_start_d
    iget-object v0, v4, Lcom/android/server/knox/SeamLessSwitchHandler;->am:Landroid/app/ActivityManager;

    .line 1771
    .line 1772
    invoke-virtual {v0, v8}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    .line 1773
    .line 1774
    .line 1775
    move-result-object v0

    .line 1776
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1777
    .line 1778
    .line 1779
    move-result-object v0

    .line 1780
    :cond_24
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1781
    .line 1782
    .line 1783
    move-result v8

    .line 1784
    if-eqz v8, :cond_25

    .line 1785
    .line 1786
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1787
    .line 1788
    .line 1789
    move-result-object v8

    .line 1790
    check-cast v8, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1791
    .line 1792
    if-eqz v8, :cond_24

    .line 1793
    .line 1794
    invoke-virtual {v8}, Landroid/app/ActivityManager$RunningTaskInfo;->semIsFreeform()Z

    .line 1795
    .line 1796
    .line 1797
    move-result v8
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_a

    .line 1798
    if-eqz v8, :cond_24

    .line 1799
    .line 1800
    goto :goto_10

    .line 1801
    :catch_a
    move-exception v0

    .line 1802
    :try_start_e
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1803
    .line 1804
    .line 1805
    :cond_25
    iget-object v0, v4, Lcom/android/server/knox/SeamLessSwitchHandler;->am:Landroid/app/ActivityManager;

    .line 1806
    .line 1807
    invoke-virtual {v0}, Landroid/app/ActivityManager;->isInLockTaskMode()Z

    .line 1808
    .line 1809
    .line 1810
    move-result v0

    .line 1811
    if-eqz v0, :cond_26

    .line 1812
    .line 1813
    goto :goto_10

    .line 1814
    :cond_26
    iget v0, v5, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    .line 1815
    .line 1816
    invoke-virtual {v4, v0}, Lcom/android/server/knox/SeamLessSwitchHandler;->getLaunchUserId(I)I

    .line 1817
    .line 1818
    .line 1819
    move-result v0

    .line 1820
    if-nez v0, :cond_27

    .line 1821
    .line 1822
    iget v0, v5, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    .line 1823
    .line 1824
    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    .line 1825
    .line 1826
    .line 1827
    move-result v0

    .line 1828
    if-nez v0, :cond_28

    .line 1829
    .line 1830
    goto :goto_f

    .line 1831
    :catch_b
    move-exception v0

    .line 1832
    goto :goto_11

    .line 1833
    :cond_27
    :goto_f
    iget v0, v5, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    .line 1834
    .line 1835
    invoke-virtual {v4, v0}, Lcom/android/server/knox/SeamLessSwitchHandler;->getLaunchUserId(I)I

    .line 1836
    .line 1837
    .line 1838
    move-result v0

    .line 1839
    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    .line 1840
    .line 1841
    .line 1842
    move-result v0

    .line 1843
    if-nez v0, :cond_28

    .line 1844
    .line 1845
    goto :goto_10

    .line 1846
    :cond_28
    invoke-virtual {v4, v5, v6, v9}, Lcom/android/server/knox/SeamLessSwitchHandler;->isSettingsExceptionalCase(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/content/ComponentName;I)Z

    .line 1847
    .line 1848
    .line 1849
    move-result v0

    .line 1850
    if-eqz v0, :cond_2a

    .line 1851
    .line 1852
    iget-object v0, v4, Lcom/android/server/knox/SeamLessSwitchHandler;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 1853
    .line 1854
    if-eqz v0, :cond_29

    .line 1855
    .line 1856
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    .line 1857
    .line 1858
    .line 1859
    move-result v0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_b

    .line 1860
    if-nez v0, :cond_2a

    .line 1861
    .line 1862
    :cond_29
    :goto_10
    iget-object v0, v4, Lcom/android/server/knox/SeamLessSwitchHandler;->c:Landroid/content/Context;

    .line 1863
    .line 1864
    const v3, 0x1040e51

    .line 1865
    .line 1866
    .line 1867
    invoke-virtual {v0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 1868
    .line 1869
    .line 1870
    move-result-object v3

    .line 1871
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 1872
    .line 1873
    .line 1874
    move-result-object v3

    .line 1875
    invoke-static {v0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 1876
    .line 1877
    .line 1878
    move-result-object v0

    .line 1879
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1880
    .line 1881
    .line 1882
    goto/16 :goto_19

    .line 1883
    .line 1884
    :goto_11
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1885
    .line 1886
    .line 1887
    :cond_2a
    iget-object v0, v4, Lcom/android/server/knox/SeamLessSwitchHandler;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 1888
    .line 1889
    const-string v8, "android.intent.action.MAIN"

    .line 1890
    .line 1891
    if-eqz v0, :cond_34

    .line 1892
    .line 1893
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    .line 1894
    .line 1895
    .line 1896
    move-result v0

    .line 1897
    if-eqz v0, :cond_34

    .line 1898
    .line 1899
    iget v0, v5, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    .line 1900
    .line 1901
    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    .line 1902
    .line 1903
    .line 1904
    move-result v0

    .line 1905
    if-nez v0, :cond_39

    .line 1906
    .line 1907
    invoke-virtual {v4, v5, v6, v9}, Lcom/android/server/knox/SeamLessSwitchHandler;->isSettingsExceptionalCase(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/content/ComponentName;I)Z

    .line 1908
    .line 1909
    .line 1910
    move-result v0

    .line 1911
    if-nez v0, :cond_39

    .line 1912
    .line 1913
    const-string v0, "com.samsung.knox.securefolder"

    .line 1914
    .line 1915
    :try_start_f
    iget-object v5, v4, Lcom/android/server/knox/SeamLessSwitchHandler;->semPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    .line 1916
    .line 1917
    invoke-virtual {v5, v3}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIds(Z)Ljava/util/List;

    .line 1918
    .line 1919
    .line 1920
    move-result-object v5

    .line 1921
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1922
    .line 1923
    .line 1924
    move-result-object v5

    .line 1925
    move v7, v11

    .line 1926
    :cond_2b
    :goto_12
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 1927
    .line 1928
    .line 1929
    move-result v9

    .line 1930
    if-eqz v9, :cond_2c

    .line 1931
    .line 1932
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1933
    .line 1934
    .line 1935
    move-result-object v9

    .line 1936
    check-cast v9, Ljava/lang/Integer;

    .line 1937
    .line 1938
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 1939
    .line 1940
    .line 1941
    move-result v9

    .line 1942
    invoke-static {v9}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    .line 1943
    .line 1944
    .line 1945
    move-result v12

    .line 1946
    if-eqz v12, :cond_2b

    .line 1947
    .line 1948
    move v7, v9

    .line 1949
    goto :goto_12

    .line 1950
    :catch_c
    move-exception v0

    .line 1951
    goto/16 :goto_16

    .line 1952
    .line 1953
    :cond_2c
    if-ne v7, v11, :cond_2d

    .line 1954
    .line 1955
    goto/16 :goto_19

    .line 1956
    .line 1957
    :cond_2d
    new-instance v5, Landroid/content/Intent;

    .line 1958
    .line 1959
    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1960
    .line 1961
    .line 1962
    invoke-static {v6}, Lcom/android/server/knox/SeamLessSwitchHandler;->isAllowedAppsInLockscreen(Landroid/content/ComponentName;)Z

    .line 1963
    .line 1964
    .line 1965
    move-result v8

    .line 1966
    if-eqz v8, :cond_2f

    .line 1967
    .line 1968
    const-string v0, "Allowed Apps In Lockscreen Case is Running"

    .line 1969
    .line 1970
    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1971
    .line 1972
    .line 1973
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 1974
    .line 1975
    .line 1976
    move-result-object v0

    .line 1977
    invoke-virtual {v4, v0, v7}, Lcom/android/server/knox/SeamLessSwitchHandler;->getLaunchIntentForPackage(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1978
    .line 1979
    .line 1980
    move-result-object v5

    .line 1981
    if-nez v5, :cond_2e

    .line 1982
    .line 1983
    goto/16 :goto_19

    .line 1984
    .line 1985
    :cond_2e
    const/4 v8, 0x0

    .line 1986
    invoke-virtual {v5, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1987
    .line 1988
    .line 1989
    const/high16 v0, 0x200000

    .line 1990
    .line 1991
    invoke-virtual {v5, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1992
    .line 1993
    .line 1994
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 1995
    .line 1996
    .line 1997
    move-result-object v0

    .line 1998
    sput-object v0, Lcom/android/server/knox/SeamLessSwitchHandler;->packageExtraForSALog:Ljava/lang/String;

    .line 1999
    .line 2000
    :goto_13
    move-object v13, v5

    .line 2001
    goto :goto_15

    .line 2002
    :cond_2f
    invoke-virtual {v4}, Lcom/android/server/knox/SeamLessSwitchHandler;->isSecureFolderHidden()Z

    .line 2003
    .line 2004
    .line 2005
    move-result v8

    .line 2006
    if-eqz v8, :cond_30

    .line 2007
    .line 2008
    const-string v8, "com.samsung.knox.launcher.home.view.HomeActivity"

    .line 2009
    .line 2010
    goto :goto_14

    .line 2011
    :cond_30
    const-string v8, "com.samsung.knox.securefolder.presentation.switcher.view.SecureFolderShortcutActivity"

    .line 2012
    .line 2013
    :goto_14
    invoke-virtual {v5, v0, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2014
    .line 2015
    .line 2016
    const-string/jumbo v8, "userId"

    .line 2017
    .line 2018
    .line 2019
    invoke-virtual {v5, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2020
    .line 2021
    .line 2022
    iget-object v8, v4, Lcom/android/server/knox/SeamLessSwitchHandler;->mPersonaManagerInternal:Lcom/samsung/android/knox/PersonaManagerInternal;

    .line 2023
    .line 2024
    invoke-virtual {v8, v7}, Lcom/samsung/android/knox/PersonaManagerInternal;->shouldConfirmCredentials(I)Z

    .line 2025
    .line 2026
    .line 2027
    move-result v8

    .line 2028
    if-nez v8, :cond_31

    .line 2029
    .line 2030
    const-string/jumbo v8, "quick_switch"

    .line 2031
    .line 2032
    .line 2033
    invoke-virtual {v5, v8, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2034
    .line 2035
    .line 2036
    :cond_31
    const v8, 0x8000

    .line 2037
    .line 2038
    .line 2039
    invoke-virtual {v5, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2040
    .line 2041
    .line 2042
    sput-object v0, Lcom/android/server/knox/SeamLessSwitchHandler;->packageExtraForSALog:Ljava/lang/String;

    .line 2043
    .line 2044
    goto :goto_13

    .line 2045
    :goto_15
    const v0, 0x10004000

    .line 2046
    .line 2047
    .line 2048
    invoke-virtual {v13, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2049
    .line 2050
    .line 2051
    new-instance v0, Landroid/content/Intent;

    .line 2052
    .line 2053
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2054
    .line 2055
    .line 2056
    const-string v5, "afterKeyguardGone"

    .line 2057
    .line 2058
    invoke-virtual {v0, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2059
    .line 2060
    .line 2061
    const-string v5, "ignoreKeyguardState"

    .line 2062
    .line 2063
    invoke-virtual {v0, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2064
    .line 2065
    .line 2066
    const-string v5, "dismissIfInsecure"

    .line 2067
    .line 2068
    invoke-virtual {v0, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2069
    .line 2070
    .line 2071
    iget-object v11, v4, Lcom/android/server/knox/SeamLessSwitchHandler;->c:Landroid/content/Context;

    .line 2072
    .line 2073
    new-instance v3, Landroid/os/UserHandle;

    .line 2074
    .line 2075
    invoke-virtual {v4}, Lcom/android/server/knox/SeamLessSwitchHandler;->isSecureFolderHidden()Z

    .line 2076
    .line 2077
    .line 2078
    move-result v5

    .line 2079
    if-nez v5, :cond_32

    .line 2080
    .line 2081
    invoke-static {v6}, Lcom/android/server/knox/SeamLessSwitchHandler;->isAllowedAppsInLockscreen(Landroid/content/ComponentName;)Z

    .line 2082
    .line 2083
    .line 2084
    move-result v5

    .line 2085
    if-eqz v5, :cond_33

    .line 2086
    .line 2087
    :cond_32
    move v2, v7

    .line 2088
    :cond_33
    invoke-direct {v3, v2}, Landroid/os/UserHandle;-><init>(I)V

    .line 2089
    .line 2090
    .line 2091
    const/4 v12, 0x0

    .line 2092
    const/high16 v14, 0xc000000

    .line 2093
    .line 2094
    const/4 v15, 0x0

    .line 2095
    move-object/from16 v16, v3

    .line 2096
    .line 2097
    invoke-static/range {v11 .. v16}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    .line 2098
    .line 2099
    .line 2100
    move-result-object v2

    .line 2101
    iget-object v3, v4, Lcom/android/server/knox/SeamLessSwitchHandler;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 2102
    .line 2103
    invoke-virtual {v3, v2, v0}, Landroid/app/KeyguardManager;->semSetPendingIntentAfterUnlock(Landroid/app/PendingIntent;Landroid/content/Intent;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_c

    .line 2104
    .line 2105
    .line 2106
    goto/16 :goto_19

    .line 2107
    .line 2108
    :goto_16
    const-string v2, "Exception in setting pending intent"

    .line 2109
    .line 2110
    invoke-static {v10, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2111
    .line 2112
    .line 2113
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2114
    .line 2115
    .line 2116
    goto/16 :goto_19

    .line 2117
    .line 2118
    :cond_34
    const-string v0, "Quick Switch is triggered for "

    .line 2119
    .line 2120
    invoke-static {v9, v0, v10}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 2121
    .line 2122
    .line 2123
    :try_start_10
    iget-object v0, v4, Lcom/android/server/knox/SeamLessSwitchHandler;->statusBarManager:Landroid/app/SemStatusBarManager;

    .line 2124
    .line 2125
    if-eqz v0, :cond_35

    .line 2126
    .line 2127
    invoke-virtual {v0}, Landroid/app/SemStatusBarManager;->isPanelExpanded()Z

    .line 2128
    .line 2129
    .line 2130
    move-result v0

    .line 2131
    if-eqz v0, :cond_35

    .line 2132
    .line 2133
    const-string v0, "Collapsing notification panel before quick switch"

    .line 2134
    .line 2135
    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2136
    .line 2137
    .line 2138
    iget-object v0, v4, Lcom/android/server/knox/SeamLessSwitchHandler;->statusBarManager:Landroid/app/SemStatusBarManager;

    .line 2139
    .line 2140
    invoke-virtual {v0}, Landroid/app/SemStatusBarManager;->collapsePanels()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_d

    .line 2141
    .line 2142
    .line 2143
    goto :goto_17

    .line 2144
    :catch_d
    move-exception v0

    .line 2145
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2146
    .line 2147
    .line 2148
    :cond_35
    :goto_17
    const-string v0, "No launchable component for "

    .line 2149
    .line 2150
    if-nez v7, :cond_36

    .line 2151
    .line 2152
    goto/16 :goto_19

    .line 2153
    .line 2154
    :cond_36
    :try_start_11
    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 2155
    .line 2156
    .line 2157
    move-result-object v2

    .line 2158
    invoke-virtual {v4, v2, v9}, Lcom/android/server/knox/SeamLessSwitchHandler;->isPackageEnabled(Ljava/lang/String;I)Z

    .line 2159
    .line 2160
    .line 2161
    move-result v3

    .line 2162
    if-eqz v3, :cond_38

    .line 2163
    .line 2164
    invoke-virtual {v4, v2, v9}, Lcom/android/server/knox/SeamLessSwitchHandler;->getLaunchIntentForPackage(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2165
    .line 2166
    .line 2167
    move-result-object v3

    .line 2168
    if-eqz v3, :cond_37

    .line 2169
    .line 2170
    new-instance v5, Landroid/content/Intent;

    .line 2171
    .line 2172
    const/4 v6, 0x0

    .line 2173
    invoke-direct {v5, v8, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2174
    .line 2175
    .line 2176
    const-string v6, "android.intent.category.LAUNCHER"

    .line 2177
    .line 2178
    invoke-virtual {v5, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2179
    .line 2180
    .line 2181
    move-result-object v5

    .line 2182
    invoke-virtual {v5, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2183
    .line 2184
    .line 2185
    move-result-object v5

    .line 2186
    iget-object v6, v4, Lcom/android/server/knox/SeamLessSwitchHandler;->pm:Landroid/content/pm/PackageManager;

    .line 2187
    .line 2188
    const/high16 v7, 0xc0000

    .line 2189
    .line 2190
    invoke-virtual {v6, v5, v7, v9}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    .line 2191
    .line 2192
    .line 2193
    move-result-object v5

    .line 2194
    if-eqz v5, :cond_37

    .line 2195
    .line 2196
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 2197
    .line 2198
    .line 2199
    move-result v5

    .line 2200
    if-eqz v5, :cond_37

    .line 2201
    .line 2202
    const/4 v5, 0x0

    .line 2203
    invoke-virtual {v3, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2204
    .line 2205
    .line 2206
    const v0, 0x10204000

    .line 2207
    .line 2208
    .line 2209
    invoke-virtual {v3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2210
    .line 2211
    .line 2212
    iget-object v0, v4, Lcom/android/server/knox/SeamLessSwitchHandler;->c:Landroid/content/Context;

    .line 2213
    .line 2214
    new-instance v5, Landroid/os/UserHandle;

    .line 2215
    .line 2216
    invoke-direct {v5, v9}, Landroid/os/UserHandle;-><init>(I)V

    .line 2217
    .line 2218
    .line 2219
    invoke-virtual {v0, v3, v5}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2220
    .line 2221
    .line 2222
    new-instance v0, Landroid/os/Handler;

    .line 2223
    .line 2224
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 2225
    .line 2226
    .line 2227
    move-result-object v3

    .line 2228
    invoke-direct {v0, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2229
    .line 2230
    .line 2231
    new-instance v3, Lcom/android/server/knox/SeamLessSwitchHandler$$ExternalSyntheticLambda0;

    .line 2232
    .line 2233
    invoke-direct {v3, v4, v9}, Lcom/android/server/knox/SeamLessSwitchHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/knox/SeamLessSwitchHandler;I)V

    .line 2234
    .line 2235
    .line 2236
    const-wide/16 v4, 0x1f4

    .line 2237
    .line 2238
    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2239
    .line 2240
    .line 2241
    sput-object v2, Lcom/android/server/knox/SeamLessSwitchHandler;->packageExtraForSALog:Ljava/lang/String;

    .line 2242
    .line 2243
    goto :goto_19

    .line 2244
    :catch_e
    move-exception v0

    .line 2245
    goto :goto_18

    .line 2246
    :cond_37
    new-instance v3, Ljava/lang/StringBuilder;

    .line 2247
    .line 2248
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2249
    .line 2250
    .line 2251
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2252
    .line 2253
    .line 2254
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2255
    .line 2256
    .line 2257
    move-result-object v0

    .line 2258
    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2259
    .line 2260
    .line 2261
    invoke-virtual {v4, v9}, Lcom/android/server/knox/SeamLessSwitchHandler;->launchFolderContainerOrHome(I)V

    .line 2262
    .line 2263
    .line 2264
    goto :goto_19

    .line 2265
    :cond_38
    invoke-virtual {v4, v9}, Lcom/android/server/knox/SeamLessSwitchHandler;->launchFolderContainerOrHome(I)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_e

    .line 2266
    .line 2267
    .line 2268
    goto :goto_19

    .line 2269
    :goto_18
    const-string v2, "Exception in securefolder quick switch"

    .line 2270
    .line 2271
    invoke-static {v10, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2272
    .line 2273
    .line 2274
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2275
    .line 2276
    .line 2277
    :cond_39
    :goto_19
    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 2278
    .line 2279
    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService;->mSeamLessSwitchHandler:Lcom/android/server/knox/SeamLessSwitchHandler;

    .line 2280
    .line 2281
    sget-object v1, Lcom/android/server/knox/SeamLessSwitchHandler;->packageExtraForSALog:Ljava/lang/String;

    .line 2282
    .line 2283
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2284
    .line 2285
    .line 2286
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    .line 2287
    .line 2288
    .line 2289
    move-result-object v2

    .line 2290
    new-instance v3, Lcom/android/server/knox/SeamLessSwitchHandler$1;

    .line 2291
    .line 2292
    invoke-direct {v3, v0, v1}, Lcom/android/server/knox/SeamLessSwitchHandler$1;-><init>(Lcom/android/server/knox/SeamLessSwitchHandler;Ljava/lang/String;)V

    .line 2293
    .line 2294
    .line 2295
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2296
    .line 2297
    .line 2298
    goto :goto_1a

    .line 2299
    :cond_3a
    iget v0, v0, Landroid/os/Message;->arg1:I

    .line 2300
    .line 2301
    new-instance v2, Ljava/lang/Object;

    .line 2302
    .line 2303
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 2304
    .line 2305
    .line 2306
    monitor-enter v2

    .line 2307
    :try_start_12
    const-string v3, "PersonaManagerService"

    .line 2308
    .line 2309
    new-instance v4, Ljava/lang/StringBuilder;

    .line 2310
    .line 2311
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2312
    .line 2313
    .line 2314
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2315
    .line 2316
    .line 2317
    const-string v5, ")"

    .line 2318
    .line 2319
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2320
    .line 2321
    .line 2322
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2323
    .line 2324
    .line 2325
    move-result-object v4

    .line 2326
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2327
    .line 2328
    .line 2329
    iget-object v1, v1, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 2330
    .line 2331
    iget-object v1, v1, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 2332
    .line 2333
    invoke-static {v1, v0, v10}, Lcom/samsung/android/knox/SemPersonaManager;->sendContainerEvent(Landroid/content/Context;II)V

    .line 2334
    .line 2335
    .line 2336
    monitor-exit v2

    .line 2337
    goto :goto_1a

    .line 2338
    :catchall_1
    move-exception v0

    .line 2339
    monitor-exit v2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    .line 2340
    throw v0

    .line 2341
    :cond_3b
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 2342
    .line 2343
    .line 2344
    goto :goto_1a

    .line 2345
    :cond_3c
    iget v2, v0, Landroid/os/Message;->arg1:I

    .line 2346
    .line 2347
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2348
    .line 2349
    check-cast v0, Ljava/lang/String;

    .line 2350
    .line 2351
    const-string v3, "PersonaManagerServiceHandler"

    .line 2352
    .line 2353
    const-string v4, " MSG_REMOVE_USER : "

    .line 2354
    .line 2355
    invoke-static {v2, v4, v3}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 2356
    .line 2357
    .line 2358
    iget-object v1, v1, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 2359
    .line 2360
    invoke-static {v1, v0}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$mlogUserRemoval(Lcom/android/server/pm/PersonaManagerService;Ljava/lang/String;)V

    .line 2361
    .line 2362
    .line 2363
    goto :goto_1a

    .line 2364
    :cond_3d
    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 2365
    .line 2366
    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$msendMessageAndLockTimeout(Lcom/android/server/pm/PersonaManagerService;)V

    .line 2367
    .line 2368
    .line 2369
    :cond_3e
    :goto_1a
    return-void

    .line 2370
    nop

    .line 2371
    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    .line 2372
    .line 2373
    .line 2374
    .line 2375
    .line 2376
    .line 2377
    .line 2378
    .line 2379
    .line 2380
    .line 2381
    :pswitch_data_1
    .packed-switch 0x46
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
