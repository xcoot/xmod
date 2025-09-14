.class public final Lcom/android/server/policy/PhoneWindowManagerExt$2;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/policy/PhoneWindowManagerExt;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/policy/PhoneWindowManagerExt;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/policy/PhoneWindowManagerExt$2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$2;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

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
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    const/4 v4, 0x0

    .line 8
    const/4 v5, 0x0

    .line 9
    const/4 v6, 0x1

    .line 10
    iget v7, v1, Lcom/android/server/policy/PhoneWindowManagerExt$2;->$r8$classId:I

    .line 11
    .line 12
    packed-switch v7, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v3, "android.intent.action.USER_REMOVED"

    .line 20
    .line 21
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt$2;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 28
    .line 29
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    .line 30
    .line 31
    const-string v1, "android.intent.extra.user_handle"

    .line 32
    .line 33
    invoke-virtual {v2, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    iget-object v0, v0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    new-instance v0, Ljava/io/File;

    .line 43
    .line 44
    invoke-static {v1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    const-string v3, "key_customize_info.xml"

    .line 49
    .line 50
    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-eqz v2, :cond_0

    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-nez v0, :cond_0

    .line 64
    .line 65
    const-string v0, "Can not delete xml file when userRemove. userId="

    .line 66
    .line 67
    const-string v2, "KeyCustomizationInfoManager"

    .line 68
    .line 69
    invoke-static {v1, v0, v2}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    :cond_0
    return-void

    .line 73
    :pswitch_0
    const-string v0, "com.sec.android.app.secsetupwizard.GLOBAL_ACTION"

    .line 74
    .line 75
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-eqz v0, :cond_1

    .line 84
    .line 85
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt$2;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 86
    .line 87
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 88
    .line 89
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-nez v0, :cond_1

    .line 94
    .line 95
    const-string v0, "PhoneWindowManagerExt"

    .line 96
    .line 97
    const-string/jumbo v2, "secSetupwizard POWER_OFF_GLOBAL_ACTION received."

    .line 98
    .line 99
    .line 100
    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt$2;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 104
    .line 105
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 106
    .line 107
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->showGlobalActions()V

    .line 108
    .line 109
    .line 110
    :cond_1
    return-void

    .line 111
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    const-string v2, "android.intent.action.ACTION_SCREEN_ON_BY_PROXIMITY"

    .line 116
    .line 117
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v2

    .line 121
    const-string v3, "PhoneWindowManagerExt"

    .line 122
    .line 123
    if-eqz v2, :cond_3

    .line 124
    .line 125
    const-string v0, "Enabling listeners by proximity"

    .line 126
    .line 127
    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    .line 129
    .line 130
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt$2;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 131
    .line 132
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 133
    .line 134
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    .line 135
    .line 136
    iget-object v0, v0, Lcom/android/server/wm/DisplayRotation;->mOrientationListener:Lcom/android/server/wm/DisplayRotation$OrientationListener;

    .line 137
    .line 138
    invoke-virtual {v0}, Lcom/android/server/wm/WindowOrientationListener;->enable$1()V

    .line 139
    .line 140
    .line 141
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_FLEXIBLE_CONTROL_FOLDING_SENSOR:Z

    .line 142
    .line 143
    if-nez v0, :cond_2

    .line 144
    .line 145
    goto :goto_0

    .line 146
    :cond_2
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt$2;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 147
    .line 148
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 149
    .line 150
    .line 151
    throw v4

    .line 152
    :cond_3
    const-string v2, "android.intent.action.ACTION_SCREEN_OFF_BY_PROXIMITY"

    .line 153
    .line 154
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    move-result v0

    .line 158
    if-eqz v0, :cond_6

    .line 159
    .line 160
    const-string v0, "Disabling listeners by proximity"

    .line 161
    .line 162
    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    .line 164
    .line 165
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt$2;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 166
    .line 167
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 168
    .line 169
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    .line 170
    .line 171
    iget-object v0, v0, Lcom/android/server/wm/DisplayRotation;->mOrientationListener:Lcom/android/server/wm/DisplayRotation$OrientationListener;

    .line 172
    .line 173
    iput-boolean v5, v0, Lcom/android/server/wm/DisplayRotation$OrientationListener;->mEnabled:Z

    .line 174
    .line 175
    iget-object v2, v0, Lcom/android/server/wm/WindowOrientationListener;->mHandler:Landroid/os/Handler;

    .line 176
    .line 177
    invoke-virtual {v2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 178
    .line 179
    .line 180
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_ORIENTATION_enabled:[Z

    .line 181
    .line 182
    aget-boolean v0, v0, v6

    .line 183
    .line 184
    if-eqz v0, :cond_4

    .line 185
    .line 186
    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 187
    .line 188
    const-wide v6, 0x406b09bf53253cd8L    # 216.3046050765322

    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    const/4 v8, 0x0

    .line 194
    const/4 v9, 0x0

    .line 195
    const/4 v10, 0x0

    .line 196
    invoke-static/range {v5 .. v10}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 197
    .line 198
    .line 199
    :cond_4
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_FLEXIBLE_CONTROL_FOLDING_SENSOR:Z

    .line 200
    .line 201
    if-nez v0, :cond_5

    .line 202
    .line 203
    goto :goto_0

    .line 204
    :cond_5
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt$2;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 205
    .line 206
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 207
    .line 208
    .line 209
    throw v4

    .line 210
    :cond_6
    :goto_0
    return-void

    .line 211
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    const-string v2, "com.samsung.android.motion.PALM_SCREEN_OFF"

    .line 216
    .line 217
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 218
    .line 219
    .line 220
    move-result v0

    .line 221
    if-eqz v0, :cond_7

    .line 222
    .line 223
    sget-object v0, Lcom/android/server/policy/KeyCustomizationConstants;->VOLD_DECRYPT:Ljava/lang/String;

    .line 224
    .line 225
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt$2;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 226
    .line 227
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 228
    .line 229
    .line 230
    :cond_7
    return-void

    .line 231
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    const-string v4, "android.intent.extra.REPLACING"

    .line 236
    .line 237
    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 238
    .line 239
    .line 240
    move-result v4

    .line 241
    const-string v7, "android.intent.action.PACKAGE_REMOVED"

    .line 242
    .line 243
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 244
    .line 245
    .line 246
    move-result v0

    .line 247
    if-eqz v0, :cond_1e

    .line 248
    .line 249
    if-nez v4, :cond_1e

    .line 250
    .line 251
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 252
    .line 253
    .line 254
    move-result-object v0

    .line 255
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v2

    .line 259
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt$2;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 260
    .line 261
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    .line 262
    .line 263
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 264
    .line 265
    .line 266
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 267
    .line 268
    .line 269
    move-result v4

    .line 270
    if-eqz v4, :cond_8

    .line 271
    .line 272
    goto :goto_1

    .line 273
    :cond_8
    iget-object v0, v0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    .line 274
    .line 275
    iget-object v4, v0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mOwnerPackageList:Ljava/util/ArrayList;

    .line 276
    .line 277
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 278
    .line 279
    .line 280
    move-result v4

    .line 281
    if-nez v4, :cond_9

    .line 282
    .line 283
    goto :goto_1

    .line 284
    :cond_9
    iget-object v0, v0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mOwnerPackageList:Ljava/util/ArrayList;

    .line 285
    .line 286
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 287
    .line 288
    .line 289
    move-result-object v0

    .line 290
    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 291
    .line 292
    .line 293
    move-result v4

    .line 294
    if-eqz v4, :cond_c

    .line 295
    .line 296
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 297
    .line 298
    .line 299
    move-result-object v4

    .line 300
    check-cast v4, Ljava/lang/String;

    .line 301
    .line 302
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 303
    .line 304
    .line 305
    move-result v4

    .line 306
    if-eqz v4, :cond_a

    .line 307
    .line 308
    const-string v0, "android.intent.action.MAIN"

    .line 309
    .line 310
    invoke-static {v0, v2}, Lcom/android/server/ExplicitHealthCheckController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 311
    .line 312
    .line 313
    move-result-object v0

    .line 314
    iget-object v4, v1, Lcom/android/server/policy/PhoneWindowManagerExt$2;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 315
    .line 316
    iget-object v4, v4, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 317
    .line 318
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 319
    .line 320
    .line 321
    move-result-object v4

    .line 322
    if-nez v4, :cond_b

    .line 323
    .line 324
    goto :goto_2

    .line 325
    :cond_b
    const/high16 v7, 0x50000

    .line 326
    .line 327
    :try_start_0
    invoke-virtual {v4, v0, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 328
    .line 329
    .line 330
    move-result-object v0

    .line 331
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 332
    .line 333
    .line 334
    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    if-lez v0, :cond_d

    .line 336
    .line 337
    :cond_c
    :goto_1
    move v3, v5

    .line 338
    goto/16 :goto_b

    .line 339
    .line 340
    :catch_0
    move-exception v0

    .line 341
    new-instance v4, Ljava/lang/StringBuilder;

    .line 342
    .line 343
    const-string v7, "isActivitiesAvailable : "

    .line 344
    .line 345
    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 346
    .line 347
    .line 348
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 349
    .line 350
    .line 351
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object v0

    .line 355
    const-string v4, "PhoneWindowManagerExt"

    .line 356
    .line 357
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    .line 359
    .line 360
    :cond_d
    :goto_2
    const-string v0, "PhoneWindowManagerExt"

    .line 361
    .line 362
    const-string v4, "The package("

    .line 363
    .line 364
    const-string v7, ") has been removed. clearKeyCustomizationInfo."

    .line 365
    .line 366
    invoke-static {v4, v2, v7, v0}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    .line 368
    .line 369
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt$2;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 370
    .line 371
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    .line 372
    .line 373
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 374
    .line 375
    .line 376
    sget-object v4, Lcom/android/server/policy/KeyCustomizationConstants;->VOLD_DECRYPT:Ljava/lang/String;

    .line 377
    .line 378
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 379
    .line 380
    .line 381
    move-result v4

    .line 382
    if-eqz v4, :cond_e

    .line 383
    .line 384
    goto :goto_1

    .line 385
    :cond_e
    iget-object v4, v0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    .line 386
    .line 387
    iget-object v7, v4, Lcom/android/server/policy/KeyCustomizationInfoManager;->mLock:Ljava/lang/Object;

    .line 388
    .line 389
    monitor-enter v7

    .line 390
    :try_start_1
    sget-object v8, Lcom/android/server/policy/KeyCustomizationConstants;->SUPPORT_PRESS_TYPE_BASIC:[I

    .line 391
    .line 392
    array-length v9, v8

    .line 393
    move v10, v5

    .line 394
    move v11, v10

    .line 395
    :goto_3
    if-ge v10, v9, :cond_13

    .line 396
    .line 397
    aget v12, v8, v10

    .line 398
    .line 399
    sget-object v13, Lcom/android/server/policy/KeyCustomizationConstants;->ALL_KEYCODE_TYPE:[I

    .line 400
    .line 401
    array-length v14, v13

    .line 402
    move v15, v5

    .line 403
    :goto_4
    if-ge v15, v14, :cond_12

    .line 404
    .line 405
    aget v6, v13, v15

    .line 406
    .line 407
    invoke-virtual {v4, v12}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getInfoMapLocked(I)Landroid/util/SparseArray;

    .line 408
    .line 409
    .line 410
    move-result-object v3

    .line 411
    invoke-virtual {v3, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 412
    .line 413
    .line 414
    move-result-object v3

    .line 415
    check-cast v3, Landroid/util/SparseArray;

    .line 416
    .line 417
    if-nez v3, :cond_f

    .line 418
    .line 419
    move v3, v5

    .line 420
    goto :goto_5

    .line 421
    :cond_f
    const/16 v5, 0x7d3

    .line 422
    .line 423
    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 424
    .line 425
    .line 426
    move-result-object v16

    .line 427
    move-object/from16 v5, v16

    .line 428
    .line 429
    check-cast v5, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    .line 430
    .line 431
    if-nez v5, :cond_11

    .line 432
    .line 433
    :cond_10
    const/4 v3, 0x0

    .line 434
    goto :goto_5

    .line 435
    :cond_11
    iget-object v5, v5, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->ownerPackage:Ljava/lang/String;

    .line 436
    .line 437
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 438
    .line 439
    .line 440
    move-result v5

    .line 441
    if-eqz v5, :cond_10

    .line 442
    .line 443
    const/16 v5, 0x7d3

    .line 444
    .line 445
    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->remove(I)V

    .line 446
    .line 447
    .line 448
    const/4 v3, 0x0

    .line 449
    invoke-virtual {v4, v12, v6, v3}, Lcom/android/server/policy/KeyCustomizationInfoManager;->initKeyCustomizationInfoLocked(IIZ)V

    .line 450
    .line 451
    .line 452
    const/4 v5, -0x1

    .line 453
    invoke-virtual {v4, v12, v6, v5}, Lcom/android/server/policy/KeyCustomizationInfoManager;->updateHigherPriorityInfoLocked(III)V

    .line 454
    .line 455
    .line 456
    const/4 v5, 0x1

    .line 457
    const/4 v11, 0x1

    .line 458
    goto :goto_6

    .line 459
    :catchall_0
    move-exception v0

    .line 460
    goto :goto_a

    .line 461
    :goto_5
    const/4 v5, 0x1

    .line 462
    :goto_6
    add-int/2addr v15, v5

    .line 463
    move v6, v5

    .line 464
    move v5, v3

    .line 465
    goto :goto_4

    .line 466
    :cond_12
    move v3, v5

    .line 467
    move v5, v6

    .line 468
    add-int/2addr v10, v5

    .line 469
    move v5, v3

    .line 470
    goto :goto_3

    .line 471
    :cond_13
    move v3, v5

    .line 472
    if-eqz v11, :cond_14

    .line 473
    .line 474
    invoke-virtual {v4}, Lcom/android/server/policy/KeyCustomizationInfoManager;->saveSettingsLocked()V

    .line 475
    .line 476
    .line 477
    iget-object v4, v4, Lcom/android/server/policy/KeyCustomizationInfoManager;->mOwnerPackageList:Ljava/util/ArrayList;

    .line 478
    .line 479
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 480
    .line 481
    .line 482
    :cond_14
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 483
    if-nez v11, :cond_15

    .line 484
    .line 485
    const-string v0, "KeyCustomizationManager"

    .line 486
    .line 487
    const-string v4, "clearKeyCustomizationInfoByPackage, Requested info is empty. packageName="

    .line 488
    .line 489
    invoke-static {v4, v2, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    .line 491
    .line 492
    goto :goto_b

    .line 493
    :cond_15
    sget-object v4, Lcom/android/server/policy/KeyCustomizationConstants;->ALL_KEYCODE_TYPE:[I

    .line 494
    .line 495
    array-length v5, v4

    .line 496
    move v6, v3

    .line 497
    :goto_7
    if-ge v6, v5, :cond_18

    .line 498
    .line 499
    aget v7, v4, v6

    .line 500
    .line 501
    const/16 v8, 0x1a

    .line 502
    .line 503
    if-ne v7, v8, :cond_17

    .line 504
    .line 505
    sget-object v7, Lcom/android/server/policy/KeyCustomizationConstants;->EXTERNAL_SUPPORTED_BEHAVIOR_PRESS_TYPE:[I

    .line 506
    .line 507
    array-length v8, v7

    .line 508
    move v9, v3

    .line 509
    :goto_8
    if-ge v9, v8, :cond_16

    .line 510
    .line 511
    aget v10, v7, v9

    .line 512
    .line 513
    invoke-virtual {v0, v10}, Lcom/android/server/policy/KeyCustomizationManager;->updatePowerBehavior(I)V

    .line 514
    .line 515
    .line 516
    const/4 v10, 0x1

    .line 517
    add-int/2addr v9, v10

    .line 518
    goto :goto_8

    .line 519
    :cond_16
    const/4 v10, 0x1

    .line 520
    goto :goto_9

    .line 521
    :cond_17
    const/4 v10, 0x1

    .line 522
    iget-object v8, v0, Lcom/android/server/policy/KeyCustomizationManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 523
    .line 524
    invoke-virtual {v8, v7}, Lcom/android/server/policy/PhoneWindowManagerExt;->updateSingleKeyGestureRule(I)V

    .line 525
    .line 526
    .line 527
    :goto_9
    add-int/2addr v6, v10

    .line 528
    goto :goto_7

    .line 529
    :goto_a
    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 530
    throw v0

    .line 531
    :cond_18
    :goto_b
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt$2;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 532
    .line 533
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    .line 534
    .line 535
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 536
    .line 537
    .line 538
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 539
    .line 540
    .line 541
    move-result v1

    .line 542
    if-eqz v1, :cond_19

    .line 543
    .line 544
    goto :goto_10

    .line 545
    :cond_19
    iget-object v0, v0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    .line 546
    .line 547
    iget-object v1, v0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mLock:Ljava/lang/Object;

    .line 548
    .line 549
    monitor-enter v1

    .line 550
    :try_start_3
    sget-object v4, Lcom/android/server/policy/KeyCustomizationInfoManager;->ALL_HOT_KEYCODE:[I

    .line 551
    .line 552
    move v5, v3

    .line 553
    :goto_c
    const/4 v6, 0x3

    .line 554
    if-ge v5, v6, :cond_1c

    .line 555
    .line 556
    aget v6, v4, v5

    .line 557
    .line 558
    iget-object v7, v0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mHotKeyMap:Landroid/util/SparseArray;

    .line 559
    .line 560
    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 561
    .line 562
    .line 563
    move-result-object v7

    .line 564
    check-cast v7, Landroid/content/ComponentName;

    .line 565
    .line 566
    if-eqz v7, :cond_1b

    .line 567
    .line 568
    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 569
    .line 570
    .line 571
    move-result-object v7

    .line 572
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 573
    .line 574
    .line 575
    move-result v7

    .line 576
    if-nez v7, :cond_1a

    .line 577
    .line 578
    goto :goto_d

    .line 579
    :cond_1a
    const-string v3, "KeyCustomizationInfoManager"

    .line 580
    .line 581
    new-instance v7, Ljava/lang/StringBuilder;

    .line 582
    .line 583
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 584
    .line 585
    .line 586
    const-string/jumbo v8, "removeHotKey keyCode="

    .line 587
    .line 588
    .line 589
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 590
    .line 591
    .line 592
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 593
    .line 594
    .line 595
    const-string v8, " packageName="

    .line 596
    .line 597
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 598
    .line 599
    .line 600
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 601
    .line 602
    .line 603
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 604
    .line 605
    .line 606
    move-result-object v7

    .line 607
    invoke-static {v3, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    .line 609
    .line 610
    iget-object v3, v0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mHotKeyMap:Landroid/util/SparseArray;

    .line 611
    .line 612
    invoke-virtual {v3, v6}, Landroid/util/SparseArray;->remove(I)V

    .line 613
    .line 614
    .line 615
    const/4 v3, 0x1

    .line 616
    :cond_1b
    :goto_d
    const/4 v6, 0x1

    .line 617
    goto :goto_e

    .line 618
    :catchall_1
    move-exception v0

    .line 619
    goto :goto_f

    .line 620
    :goto_e
    add-int/2addr v5, v6

    .line 621
    goto :goto_c

    .line 622
    :cond_1c
    if-eqz v3, :cond_1d

    .line 623
    .line 624
    invoke-virtual {v0}, Lcom/android/server/policy/KeyCustomizationInfoManager;->saveSettingsLocked()V

    .line 625
    .line 626
    .line 627
    :cond_1d
    monitor-exit v1

    .line 628
    goto :goto_10

    .line 629
    :goto_f
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 630
    throw v0

    .line 631
    :cond_1e
    :goto_10
    return-void

    .line 632
    :pswitch_4
    if-eqz v2, :cond_20

    .line 633
    .line 634
    const-string v3, "android.intent.action.PACKAGE_REPLACED"

    .line 635
    .line 636
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 637
    .line 638
    .line 639
    move-result-object v5

    .line 640
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 641
    .line 642
    .line 643
    move-result v3

    .line 644
    if-eqz v3, :cond_20

    .line 645
    .line 646
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 647
    .line 648
    .line 649
    move-result-object v2

    .line 650
    const-class v3, Landroid/content/pm/PackageManagerInternal;

    .line 651
    .line 652
    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 653
    .line 654
    .line 655
    move-result-object v3

    .line 656
    check-cast v3, Landroid/content/pm/PackageManagerInternal;

    .line 657
    .line 658
    invoke-virtual {v3}, Landroid/content/pm/PackageManagerInternal;->getSystemUiServiceComponent()Landroid/content/ComponentName;

    .line 659
    .line 660
    .line 661
    move-result-object v3

    .line 662
    if-eqz v2, :cond_1f

    .line 663
    .line 664
    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 665
    .line 666
    .line 667
    move-result-object v4

    .line 668
    :cond_1f
    if-eqz v0, :cond_20

    .line 669
    .line 670
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 671
    .line 672
    .line 673
    move-result-object v2

    .line 674
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 675
    .line 676
    .line 677
    move-result v2

    .line 678
    if-eqz v2, :cond_20

    .line 679
    .line 680
    iget-object v2, v1, Lcom/android/server/policy/PhoneWindowManagerExt$2;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 681
    .line 682
    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManagerExt;->mHandler:Lcom/android/server/policy/PhoneWindowManagerExt$PolicyExtHandler;

    .line 683
    .line 684
    new-instance v4, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda11;

    .line 685
    .line 686
    invoke-direct {v4, v1, v0, v3}, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt$2;Landroid/content/Context;Landroid/content/ComponentName;)V

    .line 687
    .line 688
    .line 689
    const-wide/16 v0, 0x3e8

    .line 690
    .line 691
    invoke-virtual {v2, v4, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 692
    .line 693
    .line 694
    :cond_20
    return-void

    .line 695
    :pswitch_5
    move v3, v5

    .line 696
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 697
    .line 698
    .line 699
    move-result-object v0

    .line 700
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    .line 701
    .line 702
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 703
    .line 704
    .line 705
    move-result v0

    .line 706
    if-nez v0, :cond_21

    .line 707
    .line 708
    goto/16 :goto_15

    .line 709
    .line 710
    :cond_21
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt$2;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 711
    .line 712
    const/4 v2, 0x1

    .line 713
    iput-boolean v2, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mBootCompleted:Z

    .line 714
    .line 715
    sget-boolean v2, Lcom/samsung/android/rune/InputRune;->PWM_SPEN:Z

    .line 716
    .line 717
    if-eqz v2, :cond_28

    .line 718
    .line 719
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mWindowManagerFuncs:Lcom/android/server/wm/WindowManagerServiceExt;

    .line 720
    .line 721
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 722
    .line 723
    const/4 v2, 0x2

    .line 724
    :try_start_4
    iget-object v4, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    .line 725
    .line 726
    iget-object v4, v4, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 727
    .line 728
    const/16 v5, 0x13

    .line 729
    .line 730
    const/16 v6, -0x100

    .line 731
    .line 732
    const/4 v7, -0x1

    .line 733
    :try_start_5
    invoke-interface {v4, v7, v6, v5}, Lcom/android/server/input/NativeInputManagerService;->getSwitchState(III)I

    .line 734
    .line 735
    .line 736
    move-result v4

    .line 737
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    .line 738
    .line 739
    iget-object v0, v0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    .line 740
    .line 741
    const/16 v5, 0x14

    .line 742
    .line 743
    invoke-interface {v0, v7, v6, v5}, Lcom/android/server/input/NativeInputManagerService;->getSwitchState(III)I

    .line 744
    .line 745
    .line 746
    move-result v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 747
    if-nez v4, :cond_24

    .line 748
    .line 749
    if-nez v0, :cond_23

    .line 750
    .line 751
    move v7, v2

    .line 752
    :cond_22
    :goto_11
    const/4 v4, 0x1

    .line 753
    goto :goto_12

    .line 754
    :cond_23
    const/4 v4, 0x1

    .line 755
    const/4 v7, 0x1

    .line 756
    goto :goto_12

    .line 757
    :cond_24
    if-lez v4, :cond_22

    .line 758
    .line 759
    move v7, v3

    .line 760
    goto :goto_11

    .line 761
    :catch_1
    const/4 v7, -0x1

    .line 762
    :catch_2
    const-string v0, "WindowManagerServiceExt"

    .line 763
    .line 764
    const-string v4, "getPenState failed"

    .line 765
    .line 766
    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    .line 768
    .line 769
    goto :goto_11

    .line 770
    :goto_12
    if-eq v7, v4, :cond_26

    .line 771
    .line 772
    if-ne v7, v2, :cond_25

    .line 773
    .line 774
    goto :goto_13

    .line 775
    :cond_25
    move v5, v3

    .line 776
    goto :goto_14

    .line 777
    :cond_26
    :goto_13
    const/4 v5, 0x1

    .line 778
    :goto_14
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt$2;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 779
    .line 780
    iget v4, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenState:I

    .line 781
    .line 782
    if-eq v7, v4, :cond_28

    .line 783
    .line 784
    const/4 v4, 0x5

    .line 785
    iget v6, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenType:I

    .line 786
    .line 787
    if-eq v6, v4, :cond_28

    .line 788
    .line 789
    if-ne v7, v2, :cond_27

    .line 790
    .line 791
    const/4 v3, 0x1

    .line 792
    :cond_27
    const-wide/16 v6, 0x0

    .line 793
    .line 794
    invoke-virtual {v0, v6, v7, v5, v3}, Lcom/android/server/policy/PhoneWindowManagerExt;->notifyPenSwitchChanged(JZZ)V

    .line 795
    .line 796
    .line 797
    :cond_28
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt$2;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 798
    .line 799
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 800
    .line 801
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 802
    .line 803
    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    .line 804
    .line 805
    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicyExt;->mOneHandOpPolicy:Lcom/android/server/wm/OneHandOpPolicy;

    .line 806
    .line 807
    const/4 v1, 0x1

    .line 808
    iput-boolean v1, v0, Lcom/android/server/wm/OneHandOpPolicy;->mBootCompleted:Z

    .line 809
    .line 810
    iget-boolean v2, v0, Lcom/android/server/wm/OneHandOpPolicy;->mIsOneHandOpEnabled:Z

    .line 811
    .line 812
    if-eqz v2, :cond_29

    .line 813
    .line 814
    iget-object v2, v0, Lcom/android/server/wm/OneHandOpPolicy;->mHandler:Landroid/os/Handler;

    .line 815
    .line 816
    new-instance v3, Lcom/android/server/wm/OneHandOpPolicy$$ExternalSyntheticLambda0;

    .line 817
    .line 818
    invoke-direct {v3, v0, v1}, Lcom/android/server/wm/OneHandOpPolicy$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/OneHandOpPolicy;I)V

    .line 819
    .line 820
    .line 821
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 822
    .line 823
    .line 824
    :cond_29
    :goto_15
    return-void

    .line 825
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
