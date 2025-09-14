.class public final synthetic Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub$$ExternalSyntheticLambda1;->f$1:I

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub$$ExternalSyntheticLambda1;->f$2:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub;

    .line 4
    .line 5
    iget v2, v0, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub$$ExternalSyntheticLambda1;->f$1:I

    .line 6
    .line 7
    iget v9, v0, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub$$ExternalSyntheticLambda1;->f$2:I

    .line 8
    .line 9
    iget-object v3, v1, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub;->this$0:Lcom/android/server/contextualsearch/ContextualSearchManagerService;

    .line 10
    .line 11
    iget-object v0, v1, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub;->mToken:Landroid/app/contextualsearch/CallbackToken;

    .line 12
    .line 13
    monitor-enter v3

    .line 14
    :try_start_0
    invoke-virtual {v3}, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->getContextualSearchPackageName()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 19
    .line 20
    .line 21
    move-result v5

    .line 22
    if-eqz v5, :cond_0

    .line 23
    .line 24
    monitor-exit v3

    .line 25
    :goto_0
    const/4 v5, 0x0

    .line 26
    goto :goto_1

    .line 27
    :catchall_0
    move-exception v0

    .line 28
    goto/16 :goto_8

    .line 29
    .line 30
    :cond_0
    new-instance v5, Landroid/content/Intent;

    .line 31
    .line 32
    const-string v7, "android.app.contextualsearch.action.LAUNCH_CONTEXTUAL_SEARCH"

    .line 33
    .line 34
    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v5, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    .line 39
    .line 40
    iget-object v4, v3, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mContext:Landroid/content/Context;

    .line 41
    .line 42
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    const/high16 v7, 0x200000

    .line 47
    .line 48
    invoke-virtual {v4, v5, v7}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    if-nez v4, :cond_1

    .line 53
    .line 54
    monitor-exit v3

    .line 55
    goto :goto_0

    .line 56
    :cond_1
    invoke-virtual {v4}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    invoke-virtual {v4}, Landroid/content/pm/ComponentInfo;->getComponentName()Landroid/content/ComponentName;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    if-nez v4, :cond_2

    .line 65
    .line 66
    monitor-exit v3

    .line 67
    goto :goto_0

    .line 68
    :cond_2
    invoke-virtual {v5, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 69
    .line 70
    .line 71
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    :goto_1
    const/4 v4, 0x1

    .line 73
    if-nez v5, :cond_3

    .line 74
    .line 75
    const/4 v5, 0x0

    .line 76
    goto/16 :goto_7

    .line 77
    .line 78
    :cond_3
    const v7, 0x10058000

    .line 79
    .line 80
    .line 81
    invoke-virtual {v5, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 82
    .line 83
    .line 84
    const-string v7, "android.app.contextualsearch.extra.INVOCATION_TIME_MS"

    .line 85
    .line 86
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 87
    .line 88
    .line 89
    move-result-wide v10

    .line 90
    invoke-virtual {v5, v7, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 91
    .line 92
    .line 93
    const-string v7, "android.app.contextualsearch.extra.ENTRYPOINT"

    .line 94
    .line 95
    invoke-virtual {v5, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 96
    .line 97
    .line 98
    const-string v2, "android.app.contextualsearch.extra.TOKEN"

    .line 99
    .line 100
    invoke-virtual {v5, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 101
    .line 102
    .line 103
    iget-object v0, v3, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 104
    .line 105
    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;

    .line 106
    .line 107
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 108
    .line 109
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->isAssistDataAllowed()Z

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    iget-object v0, v3, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 114
    .line 115
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getTopVisibleActivities()Ljava/util/List;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    new-instance v11, Ljava/util/ArrayList;

    .line 120
    .line 121
    check-cast v0, Ljava/util/ArrayList;

    .line 122
    .line 123
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 124
    .line 125
    .line 126
    move-result v7

    .line 127
    invoke-direct {v11, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 128
    .line 129
    .line 130
    new-instance v7, Ljava/util/ArrayList;

    .line 131
    .line 132
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    const/4 v8, 0x0

    .line 140
    move v15, v8

    .line 141
    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 142
    .line 143
    .line 144
    move-result v10

    .line 145
    if-eqz v10, :cond_6

    .line 146
    .line 147
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v10

    .line 151
    check-cast v10, Lcom/android/server/wm/ActivityAssistInfo;

    .line 152
    .line 153
    if-eqz v2, :cond_5

    .line 154
    .line 155
    iget-object v12, v10, Lcom/android/server/wm/ActivityAssistInfo;->mComponentName:Landroid/content/ComponentName;

    .line 156
    .line 157
    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v12

    .line 161
    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    iget-object v12, v10, Lcom/android/server/wm/ActivityAssistInfo;->mActivityToken:Landroid/os/IBinder;

    .line 165
    .line 166
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    :cond_5
    iget-object v12, v3, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mDpmInternal:Landroid/app/admin/DevicePolicyManagerInternal;

    .line 170
    .line 171
    if-eqz v12, :cond_4

    .line 172
    .line 173
    iget v10, v10, Lcom/android/server/wm/ActivityAssistInfo;->mUserId:I

    .line 174
    .line 175
    invoke-virtual {v12, v10}, Landroid/app/admin/DevicePolicyManagerInternal;->isUserOrganizationManaged(I)Z

    .line 176
    .line 177
    .line 178
    move-result v10

    .line 179
    if-eqz v10, :cond_4

    .line 180
    .line 181
    move v15, v4

    .line 182
    goto :goto_2

    .line 183
    :cond_6
    if-eqz v2, :cond_7

    .line 184
    .line 185
    :try_start_1
    invoke-virtual {v5}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    iget-object v10, v3, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mPackageManager:Landroid/content/pm/PackageManagerInternal;

    .line 193
    .line 194
    const-wide/16 v12, 0x0

    .line 195
    .line 196
    invoke-virtual {v10, v0, v12, v13, v8}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    .line 197
    .line 198
    .line 199
    move-result v18

    .line 200
    iget-object v10, v3, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mAssistDataRequester:Lcom/android/server/am/AssistDataRequester;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 201
    .line 202
    const/16 v16, 0x0

    .line 203
    .line 204
    const/16 v17, 0x0

    .line 205
    .line 206
    const/16 v20, 0x0

    .line 207
    .line 208
    const/16 v21, 0x0

    .line 209
    .line 210
    const/4 v12, 0x1

    .line 211
    const/4 v13, 0x0

    .line 212
    const/4 v14, 0x1

    .line 213
    const/4 v8, 0x1

    .line 214
    move v6, v15

    .line 215
    move v15, v8

    .line 216
    move-object/from16 v19, v0

    .line 217
    .line 218
    :try_start_2
    invoke-virtual/range {v10 .. v21}, Lcom/android/server/am/AssistDataRequester;->requestData(Ljava/util/List;ZZZZZZILjava/lang/String;Ljava/lang/String;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 219
    .line 220
    .line 221
    goto :goto_4

    .line 222
    :catch_0
    move-exception v0

    .line 223
    goto :goto_3

    .line 224
    :catch_1
    move-exception v0

    .line 225
    move v6, v15

    .line 226
    :goto_3
    const-string v8, "ContextualSearchManagerService"

    .line 227
    .line 228
    const-string v10, "Could not request assist data"

    .line 229
    .line 230
    invoke-static {v8, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 231
    .line 232
    .line 233
    goto :goto_4

    .line 234
    :cond_7
    move v6, v15

    .line 235
    :goto_4
    iget-object v0, v3, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mWmInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 236
    .line 237
    if-eqz v0, :cond_8

    .line 238
    .line 239
    const/16 v3, 0x7d0

    .line 240
    .line 241
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 242
    .line 243
    .line 244
    move-result-object v3

    .line 245
    const/16 v8, 0x7e3

    .line 246
    .line 247
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 248
    .line 249
    .line 250
    move-result-object v8

    .line 251
    const/16 v10, 0x7e8

    .line 252
    .line 253
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 254
    .line 255
    .line 256
    move-result-object v10

    .line 257
    const/16 v11, 0x7e2

    .line 258
    .line 259
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 260
    .line 261
    .line 262
    move-result-object v11

    .line 263
    invoke-static {v3, v8, v10, v11}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    .line 264
    .line 265
    .line 266
    move-result-object v3

    .line 267
    invoke-virtual {v0, v3}, Lcom/android/server/wm/WindowManagerInternal;->takeAssistScreenshot(Ljava/util/Set;)Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;

    .line 268
    .line 269
    .line 270
    move-result-object v0

    .line 271
    goto :goto_5

    .line 272
    :cond_8
    const/4 v0, 0x0

    .line 273
    :goto_5
    if-eqz v0, :cond_9

    .line 274
    .line 275
    invoke-virtual {v0}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->asBitmap()Landroid/graphics/Bitmap;

    .line 276
    .line 277
    .line 278
    move-result-object v3

    .line 279
    goto :goto_6

    .line 280
    :cond_9
    const/4 v3, 0x0

    .line 281
    :goto_6
    if-eqz v3, :cond_a

    .line 282
    .line 283
    const-string v8, "android.app.contextualsearch.extra.FLAG_SECURE_FOUND"

    .line 284
    .line 285
    invoke-virtual {v0}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->containsSecureLayers()Z

    .line 286
    .line 287
    .line 288
    move-result v0

    .line 289
    invoke-virtual {v5, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 290
    .line 291
    .line 292
    if-eqz v2, :cond_a

    .line 293
    .line 294
    const-string v0, "android.app.contextualsearch.extra.SCREENSHOT"

    .line 295
    .line 296
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->asShared()Landroid/graphics/Bitmap;

    .line 297
    .line 298
    .line 299
    move-result-object v3

    .line 300
    invoke-virtual {v5, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 301
    .line 302
    .line 303
    :cond_a
    const-string v0, "android.app.contextualsearch.extra.IS_MANAGED_PROFILE_VISIBLE"

    .line 304
    .line 305
    invoke-virtual {v5, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 306
    .line 307
    .line 308
    if-eqz v2, :cond_b

    .line 309
    .line 310
    const-string v0, "android.app.contextualsearch.extra.VISIBLE_PACKAGE_NAMES"

    .line 311
    .line 312
    invoke-virtual {v5, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 313
    .line 314
    .line 315
    :cond_b
    :goto_7
    if-eqz v5, :cond_c

    .line 316
    .line 317
    iget-object v0, v1, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub;->this$0:Lcom/android/server/contextualsearch/ContextualSearchManagerService;

    .line 318
    .line 319
    iget-object v10, v0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mContext:Landroid/content/Context;

    .line 320
    .line 321
    const/4 v12, 0x0

    .line 322
    const/4 v13, 0x0

    .line 323
    const/4 v11, 0x0

    .line 324
    const/4 v14, 0x0

    .line 325
    const/4 v15, 0x0

    .line 326
    invoke-static/range {v10 .. v15}, Landroid/app/ActivityOptions;->makeCustomTaskAnimation(Landroid/content/Context;IILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;Landroid/app/ActivityOptions$OnAnimationFinishedListener;)Landroid/app/ActivityOptions;

    .line 327
    .line 328
    .line 329
    move-result-object v1

    .line 330
    invoke-virtual {v1, v4}, Landroid/app/ActivityOptions;->setDisableStartingWindow(Z)V

    .line 331
    .line 332
    .line 333
    iget-object v2, v0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mContext:Landroid/content/Context;

    .line 334
    .line 335
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v8

    .line 339
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 340
    .line 341
    .line 342
    move-result v4

    .line 343
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 344
    .line 345
    .line 346
    move-result v6

    .line 347
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    .line 348
    .line 349
    .line 350
    move-result-object v7

    .line 351
    iget-object v3, v0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 352
    .line 353
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/wm/ActivityTaskManagerInternal;->startActivityWithScreenshot(ILandroid/content/Intent;ILandroid/os/Bundle;Ljava/lang/String;I)I

    .line 354
    .line 355
    .line 356
    :cond_c
    return-void

    .line 357
    :goto_8
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 358
    throw v0
.end method
