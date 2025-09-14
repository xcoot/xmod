.class public final Lcom/android/server/sepunion/SemExclusiveTaskManagerService$2;
.super Landroid/database/ContentObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/SemExclusiveTaskManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/SemExclusiveTaskManagerService;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$2;->this$0:Lcom/android/server/sepunion/SemExclusiveTaskManagerService;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;I)V
    .locals 11

    .line 1
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/16 p2, 0x13

    .line 6
    .line 7
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    sget p2, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->$r8$clinit:I

    .line 12
    .line 13
    const-string p2, "ExclusiveTaskObserver : key : "

    .line 14
    .line 15
    const-string v0, ", user : "

    .line 16
    .line 17
    const-string v1, "SemExclusiveTaskManagerService"

    .line 18
    .line 19
    invoke-static {p3, p2, p1, v0, v1}, Lcom/android/server/NetworkScoreService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object p2, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$2;->this$0:Lcom/android/server/sepunion/SemExclusiveTaskManagerService;

    .line 23
    .line 24
    invoke-virtual {p2, p3}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->getUserStatus(I)Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    if-nez p2, :cond_0

    .line 29
    .line 30
    const-string p0, "doesn\'t have user status for "

    .line 31
    .line 32
    invoke-static {p3, p0, v1}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_0
    iget-object v0, p2, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mIgnoreSettingsList:Ljava/util/HashSet;

    .line 37
    .line 38
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    const-string p0, "*** ignore key : "

    .line 45
    .line 46
    invoke-static {p0, p1, v1}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget-object p0, p2, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mIgnoreSettingsList:Ljava/util/HashSet;

    .line 50
    .line 51
    invoke-virtual {p0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :cond_1
    const-string/jumbo v0, "system/accreset_state"

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    const/4 v2, 0x1

    .line 63
    const/4 v3, 0x0

    .line 64
    if-eqz v0, :cond_3

    .line 65
    .line 66
    iget-object p0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$2;->this$0:Lcom/android/server/sepunion/SemExclusiveTaskManagerService;

    .line 67
    .line 68
    iget-object p0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;

    .line 69
    .line 70
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    const-string p1, "accreset_state"

    .line 75
    .line 76
    invoke-static {p0, p1, v3, p3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 77
    .line 78
    .line 79
    move-result p0

    .line 80
    if-ne p0, v2, :cond_2

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_2
    move v2, v3

    .line 84
    :goto_0
    iput-boolean v2, p2, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mIsA11yReset:Z

    .line 85
    .line 86
    return-void

    .line 87
    :cond_3
    iget-object p0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$2;->this$0:Lcom/android/server/sepunion/SemExclusiveTaskManagerService;

    .line 88
    .line 89
    iget-object p3, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mTaskMapByKey:Ljava/util/HashMap;

    .line 90
    .line 91
    invoke-virtual {p3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    check-cast p1, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;

    .line 96
    .line 97
    if-nez p1, :cond_4

    .line 98
    .line 99
    const-string p0, "### proccessExclusiveTask() : task is null"

    .line 100
    .line 101
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    .line 103
    .line 104
    goto/16 :goto_7

    .line 105
    .line 106
    :cond_4
    iget-boolean p3, p2, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mIsA11yReset:Z

    .line 107
    .line 108
    if-eqz p3, :cond_5

    .line 109
    .line 110
    iget p3, p1, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->actionType:I

    .line 111
    .line 112
    const/4 v0, 0x3

    .line 113
    if-eq p3, v0, :cond_5

    .line 114
    .line 115
    const-string p0, "### ignore changed a11y settings"

    .line 116
    .line 117
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    .line 119
    .line 120
    goto/16 :goto_7

    .line 121
    .line 122
    :cond_5
    iget p3, p1, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->actionType:I

    .line 123
    .line 124
    if-ne p3, v2, :cond_a

    .line 125
    .line 126
    new-instance p1, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    const-string p3, "enabled_accessibility_service : "

    .line 129
    .line 130
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    iget-object p3, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;

    .line 134
    .line 135
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 136
    .line 137
    .line 138
    move-result-object p3

    .line 139
    iget v0, p2, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mUserId:I

    .line 140
    .line 141
    const-string v4, "enabled_accessibility_services"

    .line 142
    .line 143
    invoke-static {p3, v4, v0}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p3

    .line 147
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    .line 156
    .line 157
    iget-object p1, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;

    .line 158
    .line 159
    invoke-virtual {p0, p1, v3}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->getEnabledServicesFromSettings(Landroid/content/Context;Z)Ljava/util/Set;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    iget-object p3, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;

    .line 164
    .line 165
    invoke-virtual {p0, p3, v2}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->getEnabledServicesFromSettings(Landroid/content/Context;Z)Ljava/util/Set;

    .line 166
    .line 167
    .line 168
    move-result-object p3

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    .line 170
    .line 171
    const-string v5, "last a11y count : "

    .line 172
    .line 173
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    invoke-interface {p1}, Ljava/util/Set;->size()I

    .line 177
    .line 178
    .line 179
    move-result v5

    .line 180
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    .line 189
    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    .line 191
    .line 192
    const-string v5, "current a11y count : "

    .line 193
    .line 194
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    invoke-interface {p3}, Ljava/util/Set;->size()I

    .line 198
    .line 199
    .line 200
    move-result v5

    .line 201
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    .line 210
    .line 211
    iget-object v0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;

    .line 212
    .line 213
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    iget v5, p2, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mUserId:I

    .line 218
    .line 219
    invoke-static {v0, v4, v5}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    iput-object v0, p2, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mPreA11yServiceValue:Ljava/lang/String;

    .line 224
    .line 225
    invoke-interface {p1}, Ljava/util/Set;->size()I

    .line 226
    .line 227
    .line 228
    move-result v0

    .line 229
    invoke-interface {p3}, Ljava/util/Set;->size()I

    .line 230
    .line 231
    .line 232
    move-result v4

    .line 233
    const/4 v5, 0x0

    .line 234
    if-ne v0, v4, :cond_8

    .line 235
    .line 236
    const-string v0, "a11y count hasn\'t changed"

    .line 237
    .line 238
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    .line 240
    .line 241
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 242
    .line 243
    .line 244
    move-result-object p1

    .line 245
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 246
    .line 247
    .line 248
    move-result v0

    .line 249
    if-eqz v0, :cond_6

    .line 250
    .line 251
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    move-result-object v0

    .line 255
    check-cast v0, Landroid/content/ComponentName;

    .line 256
    .line 257
    new-instance v4, Ljava/lang/StringBuilder;

    .line 258
    .line 259
    const-string/jumbo v6, "oldServices : "

    .line 260
    .line 261
    .line 262
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v0

    .line 272
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    .line 274
    .line 275
    goto :goto_1

    .line 276
    :cond_6
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 277
    .line 278
    .line 279
    move-result-object p1

    .line 280
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 281
    .line 282
    .line 283
    move-result p3

    .line 284
    if-eqz p3, :cond_7

    .line 285
    .line 286
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 287
    .line 288
    .line 289
    move-result-object p3

    .line 290
    check-cast p3, Landroid/content/ComponentName;

    .line 291
    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    .line 293
    .line 294
    const-string/jumbo v4, "newServices : "

    .line 295
    .line 296
    .line 297
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object p3

    .line 307
    invoke-static {v1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    .line 309
    .line 310
    goto :goto_2

    .line 311
    :cond_7
    move-object p1, v5

    .line 312
    goto :goto_4

    .line 313
    :cond_8
    invoke-interface {p3}, Ljava/util/Set;->size()I

    .line 314
    .line 315
    .line 316
    move-result v0

    .line 317
    invoke-interface {p1}, Ljava/util/Set;->size()I

    .line 318
    .line 319
    .line 320
    move-result v4

    .line 321
    if-le v0, v4, :cond_9

    .line 322
    .line 323
    invoke-interface {p3, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 324
    .line 325
    .line 326
    const-string/jumbo p1, "new a11y service is on"

    .line 327
    .line 328
    .line 329
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    .line 331
    .line 332
    invoke-static {p3}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->getChangedA11yServiceName(Ljava/util/Set;)Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object p1

    .line 336
    goto :goto_3

    .line 337
    :cond_9
    invoke-interface {p1, p3}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 338
    .line 339
    .line 340
    const-string/jumbo p3, "old a11y service is off"

    .line 341
    .line 342
    .line 343
    invoke-static {v1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    .line 345
    .line 346
    invoke-static {p1}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->getChangedA11yServiceName(Ljava/util/Set;)Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object p1

    .line 350
    :goto_3
    if-eqz p1, :cond_7

    .line 351
    .line 352
    iget-object p3, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mTaskMap:Ljava/util/HashMap;

    .line 353
    .line 354
    invoke-virtual {p3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    .line 356
    .line 357
    move-result-object p1

    .line 358
    check-cast p1, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;

    .line 359
    .line 360
    :goto_4
    if-nez p1, :cond_a

    .line 361
    .line 362
    const-string p0, "### no samsung a11y service"

    .line 363
    .line 364
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    .line 366
    .line 367
    goto/16 :goto_7

    .line 368
    .line 369
    :cond_a
    invoke-virtual {p1, p2}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->getSettingsStatus(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;)Z

    .line 370
    .line 371
    .line 372
    move-result p3

    .line 373
    const-string v0, " is in mExclusiveTaskMap"

    .line 374
    .line 375
    const-string v4, "*** "

    .line 376
    .line 377
    if-eqz p3, :cond_e

    .line 378
    .line 379
    new-instance p3, Ljava/lang/StringBuilder;

    .line 380
    .line 381
    const-string/jumbo v2, "proccessTurningOnTask() : "

    .line 382
    .line 383
    .line 384
    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 385
    .line 386
    .line 387
    iget-object v2, p1, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->name:Ljava/lang/String;

    .line 388
    .line 389
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    .line 391
    .line 392
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 393
    .line 394
    .line 395
    move-result-object p3

    .line 396
    invoke-static {v1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    .line 398
    .line 399
    new-instance p3, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$ExclusiveTask;

    .line 400
    .line 401
    invoke-direct {p3, p0}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$ExclusiveTask;-><init>(Lcom/android/server/sepunion/SemExclusiveTaskManagerService;)V

    .line 402
    .line 403
    .line 404
    iget-object v2, p1, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->name:Ljava/lang/String;

    .line 405
    .line 406
    iput-object v2, p3, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$ExclusiveTask;->name:Ljava/lang/String;

    .line 407
    .line 408
    iget-object v2, p1, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->exclusiveListSet:Ljava/util/HashSet;

    .line 409
    .line 410
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 411
    .line 412
    .line 413
    move-result-object v2

    .line 414
    :cond_b
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 415
    .line 416
    .line 417
    move-result v5

    .line 418
    if-eqz v5, :cond_d

    .line 419
    .line 420
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 421
    .line 422
    .line 423
    move-result-object v5

    .line 424
    check-cast v5, Ljava/lang/String;

    .line 425
    .line 426
    iget-object v6, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mTaskMap:Ljava/util/HashMap;

    .line 427
    .line 428
    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    .line 430
    .line 431
    move-result-object v6

    .line 432
    check-cast v6, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;

    .line 433
    .line 434
    if-eqz v6, :cond_b

    .line 435
    .line 436
    invoke-virtual {v6, p2}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->getSettingsStatus(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;)Z

    .line 437
    .line 438
    .line 439
    move-result v7

    .line 440
    if-eqz v7, :cond_b

    .line 441
    .line 442
    iget-object v7, p2, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mExclusiveTaskMap:Ljava/util/HashMap;

    .line 443
    .line 444
    invoke-virtual {v7, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 445
    .line 446
    .line 447
    move-result v7

    .line 448
    if-eqz v7, :cond_c

    .line 449
    .line 450
    invoke-static {v4, v5, v0, v1}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    .line 452
    .line 453
    iget-object v7, p2, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mExclusiveTaskMap:Ljava/util/HashMap;

    .line 454
    .line 455
    invoke-virtual {v7, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    .line 457
    .line 458
    move-result-object v7

    .line 459
    check-cast v7, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$ExclusiveTask;

    .line 460
    .line 461
    iget-object v8, v7, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$ExclusiveTask;->manipulatedList:Ljava/util/ArrayList;

    .line 462
    .line 463
    iget-object v9, p1, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->name:Ljava/lang/String;

    .line 464
    .line 465
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 466
    .line 467
    .line 468
    move-result v8

    .line 469
    if-eqz v8, :cond_c

    .line 470
    .line 471
    new-instance v8, Ljava/lang/StringBuilder;

    .line 472
    .line 473
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 474
    .line 475
    .line 476
    iget-object v9, p1, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->name:Ljava/lang/String;

    .line 477
    .line 478
    const-string v10, " is in manipulatedList"

    .line 479
    .line 480
    invoke-static {v8, v9, v10, v1}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    .line 482
    .line 483
    iget-object v8, v7, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$ExclusiveTask;->manipulatedList:Ljava/util/ArrayList;

    .line 484
    .line 485
    iget-object v9, p1, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->name:Ljava/lang/String;

    .line 486
    .line 487
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 488
    .line 489
    .line 490
    iget-object v7, v7, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$ExclusiveTask;->manipulatedList:Ljava/util/ArrayList;

    .line 491
    .line 492
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 493
    .line 494
    .line 495
    move-result v7

    .line 496
    if-nez v7, :cond_c

    .line 497
    .line 498
    iget-object v7, p2, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mExclusiveTaskMap:Ljava/util/HashMap;

    .line 499
    .line 500
    invoke-virtual {v7, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    .line 502
    .line 503
    :cond_c
    iget-object v7, p3, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$ExclusiveTask;->manipulatedList:Ljava/util/ArrayList;

    .line 504
    .line 505
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 506
    .line 507
    .line 508
    invoke-static {v6, v3, p2}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->-$$Nest$mturnOnOff(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;ZLcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;)V

    .line 509
    .line 510
    .line 511
    invoke-virtual {p0, v6, v3, p2}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->executePostProccess(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;ZLcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;)V

    .line 512
    .line 513
    .line 514
    new-instance v6, Ljava/lang/StringBuilder;

    .line 515
    .line 516
    const-string/jumbo v7, "turn off "

    .line 517
    .line 518
    .line 519
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 520
    .line 521
    .line 522
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    .line 524
    .line 525
    const-string v5, " for "

    .line 526
    .line 527
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    .line 529
    .line 530
    iget-object v5, p1, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->name:Ljava/lang/String;

    .line 531
    .line 532
    invoke-static {v6, v5, v1}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    .line 534
    .line 535
    goto :goto_5

    .line 536
    :cond_d
    iget-object p0, p3, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$ExclusiveTask;->manipulatedList:Ljava/util/ArrayList;

    .line 537
    .line 538
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 539
    .line 540
    .line 541
    move-result p0

    .line 542
    if-lez p0, :cond_15

    .line 543
    .line 544
    iget-object p0, p2, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mExclusiveTaskMap:Ljava/util/HashMap;

    .line 545
    .line 546
    iget-object p1, p1, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->name:Ljava/lang/String;

    .line 547
    .line 548
    invoke-virtual {p0, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    .line 550
    .line 551
    goto/16 :goto_7

    .line 552
    .line 553
    :cond_e
    new-instance p3, Ljava/lang/StringBuilder;

    .line 554
    .line 555
    const-string/jumbo v3, "proccessTurningOffTask() : "

    .line 556
    .line 557
    .line 558
    invoke-direct {p3, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 559
    .line 560
    .line 561
    iget-object v3, p1, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->name:Ljava/lang/String;

    .line 562
    .line 563
    invoke-static {p3, v3, v1}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    .line 565
    .line 566
    iget-object p3, p2, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mExclusiveTaskMap:Ljava/util/HashMap;

    .line 567
    .line 568
    iget-object v3, p1, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->name:Ljava/lang/String;

    .line 569
    .line 570
    invoke-virtual {p3, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 571
    .line 572
    .line 573
    move-result p3

    .line 574
    if-eqz p3, :cond_15

    .line 575
    .line 576
    new-instance p3, Ljava/lang/StringBuilder;

    .line 577
    .line 578
    invoke-direct {p3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 579
    .line 580
    .line 581
    iget-object v3, p1, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->name:Ljava/lang/String;

    .line 582
    .line 583
    invoke-static {p3, v3, v0, v1}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    .line 585
    .line 586
    iget-object p3, p2, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mExclusiveTaskMap:Ljava/util/HashMap;

    .line 587
    .line 588
    iget-object v0, p1, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->name:Ljava/lang/String;

    .line 589
    .line 590
    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 591
    .line 592
    .line 593
    move-result-object p3

    .line 594
    check-cast p3, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$ExclusiveTask;

    .line 595
    .line 596
    iget-object p3, p3, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$ExclusiveTask;->manipulatedList:Ljava/util/ArrayList;

    .line 597
    .line 598
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 599
    .line 600
    .line 601
    move-result-object p3

    .line 602
    :cond_f
    :goto_6
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 603
    .line 604
    .line 605
    move-result v0

    .line 606
    if-eqz v0, :cond_14

    .line 607
    .line 608
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 609
    .line 610
    .line 611
    move-result-object v0

    .line 612
    check-cast v0, Ljava/lang/String;

    .line 613
    .line 614
    iget-object v3, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mTaskMap:Ljava/util/HashMap;

    .line 615
    .line 616
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 617
    .line 618
    .line 619
    move-result-object v0

    .line 620
    check-cast v0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;

    .line 621
    .line 622
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 623
    .line 624
    .line 625
    new-instance v3, Ljava/lang/StringBuilder;

    .line 626
    .line 627
    const-string v4, "canTurnOnFeature() : "

    .line 628
    .line 629
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 630
    .line 631
    .line 632
    iget-object v4, v0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->name:Ljava/lang/String;

    .line 633
    .line 634
    invoke-static {v3, v4, v1}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    .line 636
    .line 637
    iget-object v3, v0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->exclusiveListSet:Ljava/util/HashSet;

    .line 638
    .line 639
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 640
    .line 641
    .line 642
    move-result-object v3

    .line 643
    :cond_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 644
    .line 645
    .line 646
    move-result v4

    .line 647
    if-eqz v4, :cond_13

    .line 648
    .line 649
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 650
    .line 651
    .line 652
    move-result-object v4

    .line 653
    check-cast v4, Ljava/lang/String;

    .line 654
    .line 655
    iget-object v5, v0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->this$0:Lcom/android/server/sepunion/SemExclusiveTaskManagerService;

    .line 656
    .line 657
    iget-object v5, v5, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mTaskMap:Ljava/util/HashMap;

    .line 658
    .line 659
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 660
    .line 661
    .line 662
    move-result-object v4

    .line 663
    check-cast v4, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;

    .line 664
    .line 665
    if-eqz v4, :cond_10

    .line 666
    .line 667
    invoke-virtual {v4, p2}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->getSettingsStatus(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;)Z

    .line 668
    .line 669
    .line 670
    move-result v5

    .line 671
    if-eqz v5, :cond_10

    .line 672
    .line 673
    new-instance v3, Ljava/lang/StringBuilder;

    .line 674
    .line 675
    const-string v5, "canTurnOnFeature() returns false : "

    .line 676
    .line 677
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 678
    .line 679
    .line 680
    iget-object v4, v4, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->name:Ljava/lang/String;

    .line 681
    .line 682
    const-string v5, " is on"

    .line 683
    .line 684
    invoke-static {v3, v4, v5, v1}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    .line 686
    .line 687
    iget-object v3, v0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->name:Ljava/lang/String;

    .line 688
    .line 689
    const-string/jumbo v4, "one_handed_mode"

    .line 690
    .line 691
    .line 692
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 693
    .line 694
    .line 695
    move-result v3

    .line 696
    if-nez v3, :cond_11

    .line 697
    .line 698
    goto :goto_6

    .line 699
    :cond_11
    new-instance v3, Ljava/lang/StringBuilder;

    .line 700
    .line 701
    const-string/jumbo v4, "reCheck For : "

    .line 702
    .line 703
    .line 704
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 705
    .line 706
    .line 707
    iget-object v4, v0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->name:Ljava/lang/String;

    .line 708
    .line 709
    invoke-static {v3, v4, v1}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    .line 711
    .line 712
    iget-object v3, v0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->exclusiveListSet:Ljava/util/HashSet;

    .line 713
    .line 714
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 715
    .line 716
    .line 717
    move-result-object v3

    .line 718
    :cond_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 719
    .line 720
    .line 721
    move-result v4

    .line 722
    if-eqz v4, :cond_f

    .line 723
    .line 724
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 725
    .line 726
    .line 727
    move-result-object v4

    .line 728
    check-cast v4, Ljava/lang/String;

    .line 729
    .line 730
    iget-object v5, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mTaskMap:Ljava/util/HashMap;

    .line 731
    .line 732
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 733
    .line 734
    .line 735
    move-result-object v4

    .line 736
    check-cast v4, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;

    .line 737
    .line 738
    if-eqz v4, :cond_12

    .line 739
    .line 740
    invoke-virtual {v4, p2}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->getSettingsStatus(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;)Z

    .line 741
    .line 742
    .line 743
    move-result v5

    .line 744
    if-eqz v5, :cond_12

    .line 745
    .line 746
    iget-object v5, v4, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->name:Ljava/lang/String;

    .line 747
    .line 748
    const-string v6, "corner_action"

    .line 749
    .line 750
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 751
    .line 752
    .line 753
    move-result v5

    .line 754
    if-eqz v5, :cond_12

    .line 755
    .line 756
    new-instance v3, Ljava/lang/StringBuilder;

    .line 757
    .line 758
    const-string v5, "This is Exceptional case for "

    .line 759
    .line 760
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 761
    .line 762
    .line 763
    iget-object v5, v0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->name:Ljava/lang/String;

    .line 764
    .line 765
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 766
    .line 767
    .line 768
    const-string v5, " / "

    .line 769
    .line 770
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 771
    .line 772
    .line 773
    iget-object v4, v4, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->name:Ljava/lang/String;

    .line 774
    .line 775
    invoke-static {v3, v4, v1}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    .line 777
    .line 778
    :cond_13
    new-instance v3, Ljava/lang/StringBuilder;

    .line 779
    .line 780
    const-string/jumbo v4, "turn on "

    .line 781
    .line 782
    .line 783
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 784
    .line 785
    .line 786
    iget-object v4, v0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->name:Ljava/lang/String;

    .line 787
    .line 788
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 789
    .line 790
    .line 791
    const-string v4, " for exclusive task name : "

    .line 792
    .line 793
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 794
    .line 795
    .line 796
    iget-object v4, p1, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->name:Ljava/lang/String;

    .line 797
    .line 798
    invoke-static {v3, v4, v1}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 799
    .line 800
    .line 801
    invoke-static {v0, v2, p2}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->-$$Nest$mturnOnOff(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;ZLcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;)V

    .line 802
    .line 803
    .line 804
    invoke-virtual {p0, v0, v2, p2}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->executePostProccess(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;ZLcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;)V

    .line 805
    .line 806
    .line 807
    goto/16 :goto_6

    .line 808
    .line 809
    :cond_14
    iget-object p0, p2, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mExclusiveTaskMap:Ljava/util/HashMap;

    .line 810
    .line 811
    iget-object p1, p1, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->name:Ljava/lang/String;

    .line 812
    .line 813
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 814
    .line 815
    .line 816
    :cond_15
    :goto_7
    return-void
.end method
