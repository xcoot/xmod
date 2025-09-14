.class public final synthetic Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/content/res/Resources;Lcom/android/server/pm/ShortcutService;Ljava/util/List;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda2;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda2;->f$2:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/pm/ShortcutPackage;[ZLcom/android/server/pm/ShortcutService;)V
    .locals 1

    .line 2
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda2;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda2;->f$2:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 3
    iput p4, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda2;->f$2:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 13

    .line 1
    iget v0, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lcom/android/server/pm/ShortcutPackage;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, Ljava/util/Set;

    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda2;->f$2:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast p0, Ljava/util/function/Consumer;

    .line 17
    .line 18
    check-cast p1, Landroid/app/appsearch/AppSearchSession;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    new-instance v2, Landroid/app/appsearch/GetByDocumentIdRequest$Builder;

    .line 24
    .line 25
    iget-object v3, v0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageName:Ljava/lang/String;

    .line 26
    .line 27
    invoke-direct {v2, v3}, Landroid/app/appsearch/GetByDocumentIdRequest$Builder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, v1}, Landroid/app/appsearch/GetByDocumentIdRequest$Builder;->addIds(Ljava/util/Collection;)Landroid/app/appsearch/GetByDocumentIdRequest$Builder;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v1}, Landroid/app/appsearch/GetByDocumentIdRequest$Builder;->build()Landroid/app/appsearch/GetByDocumentIdRequest;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    iget-object v2, v0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    .line 39
    .line 40
    iget-object v2, v2, Lcom/android/server/pm/ShortcutUser;->mExecutor:Ljava/util/concurrent/Executor;

    .line 41
    .line 42
    new-instance v3, Lcom/android/server/pm/ShortcutPackage$1;

    .line 43
    .line 44
    invoke-direct {v3, v0, p0}, Lcom/android/server/pm/ShortcutPackage$1;-><init>(Lcom/android/server/pm/ShortcutPackage;Ljava/util/function/Consumer;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v1, v2, v3}, Landroid/app/appsearch/AppSearchSession;->getByDocumentId(Landroid/app/appsearch/GetByDocumentIdRequest;Ljava/util/concurrent/Executor;Landroid/app/appsearch/BatchResultCallback;)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v0, Lcom/android/server/pm/ShortcutPackage;

    .line 54
    .line 55
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda2;->f$2:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast v1, [Z

    .line 58
    .line 59
    iget-object p0, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast p0, Lcom/android/server/pm/ShortcutService;

    .line 62
    .line 63
    check-cast p1, Landroid/content/pm/ShortcutInfo;

    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isDeclaredInManifest()Z

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    const-string v3, ": shortcut "

    .line 73
    .line 74
    iget-object v4, v0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageName:Ljava/lang/String;

    .line 75
    .line 76
    const-string v5, "Package "

    .line 77
    .line 78
    const-string v6, "ShortcutService.verify"

    .line 79
    .line 80
    const/4 v7, 0x1

    .line 81
    const/4 v8, 0x0

    .line 82
    if-nez v2, :cond_0

    .line 83
    .line 84
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    if-nez v2, :cond_0

    .line 89
    .line 90
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    if-nez v2, :cond_0

    .line 95
    .line 96
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isCached()Z

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    if-nez v2, :cond_0

    .line 101
    .line 102
    aput-boolean v7, v1, v8

    .line 103
    .line 104
    invoke-static {v5, v4, v3}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v9

    .line 112
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    const-string v9, " is not manifest, dynamic or pinned."

    .line 116
    .line 117
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    invoke-static {v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    .line 126
    .line 127
    :cond_0
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isDeclaredInManifest()Z

    .line 128
    .line 129
    .line 130
    move-result v2

    .line 131
    if-eqz v2, :cond_1

    .line 132
    .line 133
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    .line 134
    .line 135
    .line 136
    move-result v2

    .line 137
    if-eqz v2, :cond_1

    .line 138
    .line 139
    aput-boolean v7, v1, v8

    .line 140
    .line 141
    invoke-static {v5, v4, v3}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v9

    .line 149
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    const-string v9, " is both dynamic and manifest at the same time."

    .line 153
    .line 154
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    invoke-static {v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    .line 163
    .line 164
    :cond_1
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    if-nez v2, :cond_2

    .line 169
    .line 170
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isFloating()Z

    .line 171
    .line 172
    .line 173
    move-result v2

    .line 174
    if-nez v2, :cond_2

    .line 175
    .line 176
    aput-boolean v7, v1, v8

    .line 177
    .line 178
    invoke-static {v5, v4, v3}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    move-result-object v2

    .line 182
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v9

    .line 186
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    const-string v9, " has null activity, but not floating."

    .line 190
    .line 191
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v2

    .line 198
    invoke-static {v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    .line 200
    .line 201
    :cond_2
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    .line 202
    .line 203
    .line 204
    move-result v2

    .line 205
    if-nez v2, :cond_3

    .line 206
    .line 207
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isManifestShortcut()Z

    .line 208
    .line 209
    .line 210
    move-result v2

    .line 211
    if-eqz v2, :cond_4

    .line 212
    .line 213
    :cond_3
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    .line 214
    .line 215
    .line 216
    move-result v2

    .line 217
    if-nez v2, :cond_4

    .line 218
    .line 219
    aput-boolean v7, v1, v8

    .line 220
    .line 221
    invoke-static {v5, v4, v3}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    move-result-object v2

    .line 225
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v9

    .line 229
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    const-string v9, " is not floating, but is disabled."

    .line 233
    .line 234
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v2

    .line 241
    invoke-static {v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    .line 243
    .line 244
    :cond_4
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isFloating()Z

    .line 245
    .line 246
    .line 247
    move-result v2

    .line 248
    if-eqz v2, :cond_5

    .line 249
    .line 250
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getRank()I

    .line 251
    .line 252
    .line 253
    move-result v2

    .line 254
    if-eqz v2, :cond_5

    .line 255
    .line 256
    aput-boolean v7, v1, v8

    .line 257
    .line 258
    invoke-static {v5, v4, v3}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    move-result-object v2

    .line 262
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v9

    .line 266
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    const-string v9, " is floating, but has rank="

    .line 270
    .line 271
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getRank()I

    .line 275
    .line 276
    .line 277
    move-result v9

    .line 278
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v2

    .line 285
    invoke-static {v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    .line 287
    .line 288
    :cond_5
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getIcon()Landroid/graphics/drawable/Icon;

    .line 289
    .line 290
    .line 291
    move-result-object v2

    .line 292
    if-eqz v2, :cond_6

    .line 293
    .line 294
    aput-boolean v7, v1, v8

    .line 295
    .line 296
    invoke-static {v5, v4, v3}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    .line 298
    .line 299
    move-result-object v2

    .line 300
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v9

    .line 304
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    .line 306
    .line 307
    const-string v9, " still has an icon"

    .line 308
    .line 309
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v2

    .line 316
    invoke-static {v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    .line 318
    .line 319
    :cond_6
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->hasAdaptiveBitmap()Z

    .line 320
    .line 321
    .line 322
    move-result v2

    .line 323
    if-eqz v2, :cond_7

    .line 324
    .line 325
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->hasIconFile()Z

    .line 326
    .line 327
    .line 328
    move-result v2

    .line 329
    if-nez v2, :cond_7

    .line 330
    .line 331
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->hasIconUri()Z

    .line 332
    .line 333
    .line 334
    move-result v2

    .line 335
    if-nez v2, :cond_7

    .line 336
    .line 337
    aput-boolean v7, v1, v8

    .line 338
    .line 339
    invoke-static {v5, v4, v3}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    .line 341
    .line 342
    move-result-object v2

    .line 343
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object v9

    .line 347
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    .line 349
    .line 350
    const-string v9, " has adaptive bitmap but was not saved to a file nor has icon uri."

    .line 351
    .line 352
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    .line 354
    .line 355
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object v2

    .line 359
    invoke-static {v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    .line 361
    .line 362
    :cond_7
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->hasIconFile()Z

    .line 363
    .line 364
    .line 365
    move-result v2

    .line 366
    if-eqz v2, :cond_8

    .line 367
    .line 368
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->hasIconResource()Z

    .line 369
    .line 370
    .line 371
    move-result v2

    .line 372
    if-eqz v2, :cond_8

    .line 373
    .line 374
    aput-boolean v7, v1, v8

    .line 375
    .line 376
    invoke-static {v5, v4, v3}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    .line 378
    .line 379
    move-result-object v2

    .line 380
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    .line 381
    .line 382
    .line 383
    move-result-object v9

    .line 384
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    .line 386
    .line 387
    const-string v9, " has both resource and bitmap icons"

    .line 388
    .line 389
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    .line 391
    .line 392
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 393
    .line 394
    .line 395
    move-result-object v2

    .line 396
    invoke-static {v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    .line 398
    .line 399
    :cond_8
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->hasIconFile()Z

    .line 400
    .line 401
    .line 402
    move-result v2

    .line 403
    if-eqz v2, :cond_9

    .line 404
    .line 405
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->hasIconUri()Z

    .line 406
    .line 407
    .line 408
    move-result v2

    .line 409
    if-eqz v2, :cond_9

    .line 410
    .line 411
    aput-boolean v7, v1, v8

    .line 412
    .line 413
    invoke-static {v5, v4, v3}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    .line 415
    .line 416
    move-result-object v2

    .line 417
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    .line 418
    .line 419
    .line 420
    move-result-object v9

    .line 421
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    .line 423
    .line 424
    const-string v9, " has both url and bitmap icons"

    .line 425
    .line 426
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    .line 428
    .line 429
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 430
    .line 431
    .line 432
    move-result-object v2

    .line 433
    invoke-static {v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    .line 435
    .line 436
    :cond_9
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->hasIconUri()Z

    .line 437
    .line 438
    .line 439
    move-result v2

    .line 440
    if-eqz v2, :cond_a

    .line 441
    .line 442
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->hasIconResource()Z

    .line 443
    .line 444
    .line 445
    move-result v2

    .line 446
    if-eqz v2, :cond_a

    .line 447
    .line 448
    aput-boolean v7, v1, v8

    .line 449
    .line 450
    invoke-static {v5, v4, v3}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    .line 452
    .line 453
    move-result-object v2

    .line 454
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    .line 455
    .line 456
    .line 457
    move-result-object v9

    .line 458
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    .line 460
    .line 461
    const-string v9, " has both url and resource icons"

    .line 462
    .line 463
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    .line 465
    .line 466
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 467
    .line 468
    .line 469
    move-result-object v2

    .line 470
    invoke-static {v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    .line 472
    .line 473
    :cond_a
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    .line 474
    .line 475
    .line 476
    move-result v2

    .line 477
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getDisabledReason()I

    .line 478
    .line 479
    .line 480
    move-result v9

    .line 481
    if-nez v9, :cond_b

    .line 482
    .line 483
    move v9, v7

    .line 484
    goto :goto_0

    .line 485
    :cond_b
    move v9, v8

    .line 486
    :goto_0
    if-eq v2, v9, :cond_c

    .line 487
    .line 488
    aput-boolean v7, v1, v8

    .line 489
    .line 490
    invoke-static {v5, v4, v3}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    .line 492
    .line 493
    move-result-object v2

    .line 494
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    .line 495
    .line 496
    .line 497
    move-result-object v9

    .line 498
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    .line 500
    .line 501
    const-string v9, " isEnabled() and getDisabledReason() disagree: "

    .line 502
    .line 503
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    .line 505
    .line 506
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    .line 507
    .line 508
    .line 509
    move-result v9

    .line 510
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 511
    .line 512
    .line 513
    const-string v9, " vs "

    .line 514
    .line 515
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    .line 517
    .line 518
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getDisabledReason()I

    .line 519
    .line 520
    .line 521
    move-result v9

    .line 522
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 523
    .line 524
    .line 525
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 526
    .line 527
    .line 528
    move-result-object v2

    .line 529
    invoke-static {v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    .line 531
    .line 532
    :cond_c
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getDisabledReason()I

    .line 533
    .line 534
    .line 535
    move-result v2

    .line 536
    const/16 v9, 0x64

    .line 537
    .line 538
    if-ne v2, v9, :cond_d

    .line 539
    .line 540
    iget-object v0, v0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageInfo:Lcom/android/server/pm/ShortcutPackageInfo;

    .line 541
    .line 542
    iget-wide v9, v0, Lcom/android/server/pm/ShortcutPackageInfo;->mBackupSourceVersionCode:J

    .line 543
    .line 544
    const-wide/16 v11, -0x1

    .line 545
    .line 546
    cmp-long v0, v9, v11

    .line 547
    .line 548
    if-nez v0, :cond_d

    .line 549
    .line 550
    aput-boolean v7, v1, v8

    .line 551
    .line 552
    invoke-static {v5, v4, v3}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    .line 554
    .line 555
    move-result-object v0

    .line 556
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    .line 557
    .line 558
    .line 559
    move-result-object v2

    .line 560
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 561
    .line 562
    .line 563
    const-string v2, " RESTORED_VERSION_LOWER with no backup source version code."

    .line 564
    .line 565
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 566
    .line 567
    .line 568
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 569
    .line 570
    .line 571
    move-result-object v0

    .line 572
    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    .line 574
    .line 575
    :cond_d
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    .line 576
    .line 577
    .line 578
    move-result-object v0

    .line 579
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 580
    .line 581
    .line 582
    if-eqz v0, :cond_e

    .line 583
    .line 584
    const-string p0, "android.__dummy__"

    .line 585
    .line 586
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 587
    .line 588
    .line 589
    move-result-object v0

    .line 590
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 591
    .line 592
    .line 593
    move-result p0

    .line 594
    if-eqz p0, :cond_e

    .line 595
    .line 596
    aput-boolean v7, v1, v8

    .line 597
    .line 598
    invoke-static {v5, v4, v3}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 599
    .line 600
    .line 601
    move-result-object p0

    .line 602
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    .line 603
    .line 604
    .line 605
    move-result-object p1

    .line 606
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 607
    .line 608
    .line 609
    const-string p1, " has a dummy target activity"

    .line 610
    .line 611
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 612
    .line 613
    .line 614
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 615
    .line 616
    .line 617
    move-result-object p0

    .line 618
    invoke-static {v6, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    .line 620
    .line 621
    :cond_e
    return-void

    .line 622
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda2;->f$2:Ljava/lang/Object;

    .line 623
    .line 624
    check-cast v0, Landroid/content/res/Resources;

    .line 625
    .line 626
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 627
    .line 628
    check-cast v1, Lcom/android/server/pm/ShortcutService;

    .line 629
    .line 630
    iget-object p0, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 631
    .line 632
    check-cast p0, Ljava/util/List;

    .line 633
    .line 634
    check-cast p1, Landroid/content/pm/ShortcutInfo;

    .line 635
    .line 636
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->hasStringResources()Z

    .line 637
    .line 638
    .line 639
    move-result v2

    .line 640
    if-nez v2, :cond_f

    .line 641
    .line 642
    goto :goto_1

    .line 643
    :cond_f
    invoke-virtual {p1, v0}, Landroid/content/pm/ShortcutInfo;->resolveResourceStrings(Landroid/content/res/Resources;)V

    .line 644
    .line 645
    .line 646
    invoke-virtual {v1}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    .line 647
    .line 648
    .line 649
    move-result-wide v0

    .line 650
    invoke-virtual {p1, v0, v1}, Landroid/content/pm/ShortcutInfo;->setTimestamp(J)V

    .line 651
    .line 652
    .line 653
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 654
    .line 655
    .line 656
    :goto_1
    return-void

    .line 657
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 658
    .line 659
    check-cast v0, Ljava/io/PrintWriter;

    .line 660
    .line 661
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 662
    .line 663
    check-cast v1, Ljava/lang/String;

    .line 664
    .line 665
    iget-object p0, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda2;->f$2:Ljava/lang/Object;

    .line 666
    .line 667
    check-cast p0, [J

    .line 668
    .line 669
    check-cast p1, Landroid/content/pm/ShortcutInfo;

    .line 670
    .line 671
    new-instance v2, Ljava/lang/StringBuilder;

    .line 672
    .line 673
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 674
    .line 675
    .line 676
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 677
    .line 678
    .line 679
    const-string v3, "    "

    .line 680
    .line 681
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 682
    .line 683
    .line 684
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 685
    .line 686
    .line 687
    move-result-object v2

    .line 688
    invoke-virtual {p1, v2}, Landroid/content/pm/ShortcutInfo;->toDumpString(Ljava/lang/String;)Ljava/lang/String;

    .line 689
    .line 690
    .line 691
    move-result-object v2

    .line 692
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 693
    .line 694
    .line 695
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getBitmapPath()Ljava/lang/String;

    .line 696
    .line 697
    .line 698
    move-result-object v2

    .line 699
    if-eqz v2, :cond_10

    .line 700
    .line 701
    new-instance v2, Ljava/io/File;

    .line 702
    .line 703
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getBitmapPath()Ljava/lang/String;

    .line 704
    .line 705
    .line 706
    move-result-object p1

    .line 707
    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 708
    .line 709
    .line 710
    invoke-virtual {v2}, Ljava/io/File;->length()J

    .line 711
    .line 712
    .line 713
    move-result-wide v2

    .line 714
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 715
    .line 716
    .line 717
    const-string p1, "      "

    .line 718
    .line 719
    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 720
    .line 721
    .line 722
    const-string p1, "bitmap size="

    .line 723
    .line 724
    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 725
    .line 726
    .line 727
    invoke-virtual {v0, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 728
    .line 729
    .line 730
    const/4 p1, 0x0

    .line 731
    aget-wide v0, p0, p1

    .line 732
    .line 733
    add-long/2addr v0, v2

    .line 734
    aput-wide v0, p0, p1

    .line 735
    .line 736
    :cond_10
    return-void

    .line 737
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 738
    .line 739
    move-object v1, v0

    .line 740
    check-cast v1, Lcom/android/server/pm/ShortcutPackage;

    .line 741
    .line 742
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 743
    .line 744
    check-cast v0, Lcom/android/server/pm/ShortcutService;

    .line 745
    .line 746
    iget-object p0, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda2;->f$2:Ljava/lang/Object;

    .line 747
    .line 748
    check-cast p0, Landroid/content/res/Resources;

    .line 749
    .line 750
    check-cast p1, Landroid/content/pm/ShortcutInfo;

    .line 751
    .line 752
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 753
    .line 754
    .line 755
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    .line 756
    .line 757
    .line 758
    move-result v2

    .line 759
    if-eqz v2, :cond_12

    .line 760
    .line 761
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    .line 762
    .line 763
    .line 764
    move-result-object v2

    .line 765
    if-nez v2, :cond_11

    .line 766
    .line 767
    const/4 v1, 0x0

    .line 768
    const-string/jumbo v2, "null activity detected."

    .line 769
    .line 770
    .line 771
    invoke-virtual {v0, v2, v1}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 772
    .line 773
    .line 774
    goto :goto_2

    .line 775
    :cond_11
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    .line 776
    .line 777
    .line 778
    move-result-object v2

    .line 779
    iget v3, v1, Lcom/android/server/pm/ShortcutPackageItem;->mPackageUserId:I

    .line 780
    .line 781
    invoke-virtual {v0, v3, v2}, Lcom/android/server/pm/ShortcutService;->injectIsMainActivity(ILandroid/content/ComponentName;)Z

    .line 782
    .line 783
    .line 784
    move-result v2

    .line 785
    if-nez v2, :cond_12

    .line 786
    .line 787
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    .line 788
    .line 789
    .line 790
    move-result-object v2

    .line 791
    new-instance v3, Ljava/lang/StringBuilder;

    .line 792
    .line 793
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 794
    .line 795
    .line 796
    iget-object v4, v1, Lcom/android/server/pm/ShortcutPackageItem;->mPackageName:Ljava/lang/String;

    .line 797
    .line 798
    const-string v5, " is no longer main activity. Disabling shorcut "

    .line 799
    .line 800
    const-string v6, "."

    .line 801
    .line 802
    invoke-static {v3, v4, v5, v2, v6}, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 803
    .line 804
    .line 805
    move-result-object v2

    .line 806
    const-string v3, "ShortcutService"

    .line 807
    .line 808
    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    .line 810
    .line 811
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    .line 812
    .line 813
    .line 814
    move-result-object v2

    .line 815
    const/4 v4, 0x0

    .line 816
    const/4 v5, 0x0

    .line 817
    const/4 v3, 0x1

    .line 818
    const/4 v6, 0x2

    .line 819
    const/4 v7, 0x0

    .line 820
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/ShortcutPackage;->deleteOrDisableWithId(Ljava/lang/String;ZZZIZ)Landroid/content/pm/ShortcutInfo;

    .line 821
    .line 822
    .line 823
    move-result-object v1

    .line 824
    if-eqz v1, :cond_12

    .line 825
    .line 826
    goto :goto_3

    .line 827
    :cond_12
    :goto_2
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->hasAnyResources()Z

    .line 828
    .line 829
    .line 830
    move-result v1

    .line 831
    if-eqz v1, :cond_15

    .line 832
    .line 833
    if-nez p0, :cond_13

    .line 834
    .line 835
    goto :goto_3

    .line 836
    :cond_13
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isOriginallyFromManifest()Z

    .line 837
    .line 838
    .line 839
    move-result v1

    .line 840
    if-nez v1, :cond_14

    .line 841
    .line 842
    invoke-virtual {p1, p0}, Landroid/content/pm/ShortcutInfo;->lookupAndFillInResourceIds(Landroid/content/res/Resources;)V

    .line 843
    .line 844
    .line 845
    :cond_14
    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    .line 846
    .line 847
    .line 848
    move-result-wide v0

    .line 849
    invoke-virtual {p1, v0, v1}, Landroid/content/pm/ShortcutInfo;->setTimestamp(J)V

    .line 850
    .line 851
    .line 852
    :cond_15
    :goto_3
    return-void

    .line 853
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
