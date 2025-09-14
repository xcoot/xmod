.class public final synthetic Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/pm/InstallPackageHelper;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/InstallPackageHelper;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/pm/InstallPackageHelper;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda4;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iget v2, v0, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 5
    .line 6
    packed-switch v2, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    iget-object v1, v0, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/pm/InstallPackageHelper;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda4;->f$1:Ljava/lang/Object;

    .line 12
    .line 13
    move-object v6, v0

    .line 14
    check-cast v6, Ljava/util/ArrayList;

    .line 15
    .line 16
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 17
    .line 18
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    new-instance v3, Lcom/android/server/pm/AsecInstallHelper$$ExternalSyntheticLambda1;

    .line 22
    .line 23
    invoke-direct {v3, v0}, Lcom/android/server/pm/AsecInstallHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    .line 24
    .line 25
    .line 26
    const/4 v4, 0x1

    .line 27
    const/4 v5, 0x1

    .line 28
    iget-object v2, v1, Lcom/android/server/pm/InstallPackageHelper;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    .line 29
    .line 30
    const/4 v7, 0x0

    .line 31
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/BroadcastHelper;->sendResourcesChangedBroadcastAndNotify(Ljava/util/function/Supplier;ZZLjava/util/ArrayList;Lcom/android/server/pm/AsecInstallHelper$3;)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :pswitch_0
    iget-object v2, v0, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/pm/InstallPackageHelper;

    .line 36
    .line 37
    iget-object v0, v0, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda4;->f$1:Ljava/lang/Object;

    .line 38
    .line 39
    move-object v3, v0

    .line 40
    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 41
    .line 42
    iget-object v0, v2, Lcom/android/server/pm/InstallPackageHelper;->mUpdateOwnershipHelper:Lcom/android/server/pm/UpdateOwnershipHelper;

    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    const-string v4, "PackageManager"

    .line 48
    .line 49
    invoke-static {v3}, Lcom/android/server/pm/UpdateOwnershipHelper;->hasValidOwnershipDenyList(Lcom/android/server/pm/PackageSetting;)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    const/4 v5, 0x0

    .line 54
    if-nez v0, :cond_0

    .line 55
    .line 56
    :goto_0
    move-object v6, v5

    .line 57
    goto/16 :goto_5

    .line 58
    .line 59
    :cond_0
    iget-object v0, v3, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 60
    .line 61
    if-nez v0, :cond_1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    new-instance v6, Landroid/util/ArraySet;

    .line 65
    .line 66
    const/16 v7, 0x1f4

    .line 67
    .line 68
    invoke-direct {v6, v7}, Landroid/util/ArraySet;-><init>(I)V

    .line 69
    .line 70
    .line 71
    :try_start_0
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getProperties()Ljava/util/Map;

    .line 72
    .line 73
    .line 74
    move-result-object v8

    .line 75
    const-string v9, "android.app.PROPERTY_LEGACY_UPDATE_OWNERSHIP_DENYLIST"

    .line 76
    .line 77
    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v8

    .line 81
    check-cast v8, Landroid/content/pm/PackageManager$Property;

    .line 82
    .line 83
    invoke-virtual {v8}, Landroid/content/pm/PackageManager$Property;->getResourceId()I

    .line 84
    .line 85
    .line 86
    move-result v8

    .line 87
    move-object v9, v0

    .line 88
    check-cast v9, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;

    .line 89
    .line 90
    invoke-interface {v9}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;->toAppInfoWithoutState()Landroid/content/pm/ApplicationInfo;

    .line 91
    .line 92
    .line 93
    move-result-object v9

    .line 94
    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    .line 95
    .line 96
    .line 97
    move-result-object v10

    .line 98
    iget-object v12, v9, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 99
    .line 100
    iget-object v13, v9, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    .line 101
    .line 102
    iget-object v14, v9, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    .line 103
    .line 104
    iget-object v15, v9, Landroid/content/pm/ApplicationInfo;->overlayPaths:[Ljava/lang/String;

    .line 105
    .line 106
    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    .line 107
    .line 108
    sget-object v18, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    .line 109
    .line 110
    const/16 v20, 0x0

    .line 111
    .line 112
    const/16 v21, 0x0

    .line 113
    .line 114
    const/4 v11, 0x0

    .line 115
    const/16 v17, 0x0

    .line 116
    .line 117
    const/16 v19, 0x0

    .line 118
    .line 119
    move-object/from16 v16, v9

    .line 120
    .line 121
    invoke-virtual/range {v10 .. v21}, Landroid/app/ResourcesManager;->getResources(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Integer;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;Ljava/util/List;)Landroid/content/res/Resources;

    .line 122
    .line 123
    .line 124
    move-result-object v9

    .line 125
    invoke-virtual {v9, v8}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    .line 126
    .line 127
    .line 128
    move-result-object v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :cond_2
    :try_start_1
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->getEventType()I

    .line 130
    .line 131
    .line 132
    move-result v9

    .line 133
    if-eq v9, v1, :cond_3

    .line 134
    .line 135
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->next()I

    .line 136
    .line 137
    .line 138
    move-result v9

    .line 139
    const/4 v10, 0x2

    .line 140
    if-ne v9, v10, :cond_2

    .line 141
    .line 142
    const-string v9, "deny-ownership"

    .line 143
    .line 144
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v10

    .line 148
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result v9

    .line 152
    if-eqz v9, :cond_2

    .line 153
    .line 154
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->next()I

    .line 155
    .line 156
    .line 157
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v9

    .line 161
    if-eqz v9, :cond_2

    .line 162
    .line 163
    invoke-virtual {v9}, Ljava/lang/String;->isBlank()Z

    .line 164
    .line 165
    .line 166
    move-result v10

    .line 167
    if-nez v10, :cond_2

    .line 168
    .line 169
    invoke-virtual {v6, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    .line 173
    .line 174
    .line 175
    move-result v9

    .line 176
    if-le v9, v7, :cond_2

    .line 177
    .line 178
    new-instance v9, Ljava/lang/StringBuilder;

    .line 179
    .line 180
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 181
    .line 182
    .line 183
    const-string v10, "Deny list defined by "

    .line 184
    .line 185
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    const-string v0, " was trucated to maximum size of "

    .line 196
    .line 197
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 208
    .line 209
    .line 210
    goto :goto_1

    .line 211
    :catchall_0
    move-exception v0

    .line 212
    move-object v6, v0

    .line 213
    goto :goto_2

    .line 214
    :cond_3
    :goto_1
    :try_start_2
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 215
    .line 216
    .line 217
    goto :goto_5

    .line 218
    :catch_0
    move-exception v0

    .line 219
    goto :goto_4

    .line 220
    :goto_2
    if-eqz v8, :cond_4

    .line 221
    .line 222
    :try_start_3
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 223
    .line 224
    .line 225
    goto :goto_3

    .line 226
    :catchall_1
    move-exception v0

    .line 227
    move-object v7, v0

    .line 228
    :try_start_4
    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 229
    .line 230
    .line 231
    :cond_4
    :goto_3
    throw v6
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 232
    :goto_4
    new-instance v6, Ljava/lang/StringBuilder;

    .line 233
    .line 234
    const-string v7, "Failed to parse update owner list for "

    .line 235
    .line 236
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    iget-object v7, v3, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    .line 240
    .line 241
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v6

    .line 248
    invoke-static {v4, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 249
    .line 250
    .line 251
    goto/16 :goto_0

    .line 252
    .line 253
    :goto_5
    if-eqz v6, :cond_9

    .line 254
    .line 255
    invoke-virtual {v6}, Landroid/util/ArraySet;->isEmpty()Z

    .line 256
    .line 257
    .line 258
    move-result v0

    .line 259
    if-nez v0, :cond_9

    .line 260
    .line 261
    iget-object v0, v2, Lcom/android/server/pm/InstallPackageHelper;->mUpdateOwnershipHelper:Lcom/android/server/pm/UpdateOwnershipHelper;

    .line 262
    .line 263
    iget-object v3, v3, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    .line 264
    .line 265
    iget-object v4, v0, Lcom/android/server/pm/UpdateOwnershipHelper;->mLock:Ljava/lang/Object;

    .line 266
    .line 267
    monitor-enter v4

    .line 268
    const/4 v7, 0x0

    .line 269
    :goto_6
    :try_start_5
    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    .line 270
    .line 271
    .line 272
    move-result v8

    .line 273
    if-ge v7, v8, :cond_6

    .line 274
    .line 275
    invoke-virtual {v6, v7}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 276
    .line 277
    .line 278
    move-result-object v8

    .line 279
    check-cast v8, Ljava/lang/String;

    .line 280
    .line 281
    iget-object v9, v0, Lcom/android/server/pm/UpdateOwnershipHelper;->mUpdateOwnerOptOutsToOwners:Landroid/util/ArrayMap;

    .line 282
    .line 283
    new-instance v10, Landroid/util/ArraySet;

    .line 284
    .line 285
    filled-new-array {v3}, [Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v11

    .line 289
    invoke-direct {v10, v11}, Landroid/util/ArraySet;-><init>([Ljava/lang/Object;)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {v9, v8, v10}, Landroid/util/ArrayMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    .line 294
    .line 295
    move-result-object v8

    .line 296
    check-cast v8, Landroid/util/ArraySet;

    .line 297
    .line 298
    if-eqz v8, :cond_5

    .line 299
    .line 300
    invoke-virtual {v8, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 301
    .line 302
    .line 303
    goto :goto_7

    .line 304
    :catchall_2
    move-exception v0

    .line 305
    goto :goto_a

    .line 306
    :cond_5
    :goto_7
    add-int/2addr v7, v1

    .line 307
    goto :goto_6

    .line 308
    :cond_6
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 309
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    .line 310
    .line 311
    .line 312
    move-result-object v0

    .line 313
    iget-object v1, v2, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 314
    .line 315
    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 316
    .line 317
    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 318
    .line 319
    monitor-enter v1

    .line 320
    :try_start_6
    invoke-virtual {v6}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 321
    .line 322
    .line 323
    move-result-object v3

    .line 324
    :cond_7
    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 325
    .line 326
    .line 327
    move-result v4

    .line 328
    if-eqz v4, :cond_8

    .line 329
    .line 330
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 331
    .line 332
    .line 333
    move-result-object v4

    .line 334
    check-cast v4, Ljava/lang/String;

    .line 335
    .line 336
    iget-object v6, v2, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 337
    .line 338
    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 339
    .line 340
    invoke-virtual {v6, v4}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 341
    .line 342
    .line 343
    move-result-object v6

    .line 344
    if-eqz v6, :cond_7

    .line 345
    .line 346
    iget-object v7, v0, Lcom/android/server/SystemConfig;->mUpdateOwnersForSystemApps:Landroid/util/ArrayMap;

    .line 347
    .line 348
    invoke-virtual {v7, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    .line 350
    .line 351
    move-result-object v4

    .line 352
    check-cast v4, Ljava/lang/String;

    .line 353
    .line 354
    if-nez v4, :cond_7

    .line 355
    .line 356
    invoke-virtual {v6, v5}, Lcom/android/server/pm/PackageSetting;->setUpdateOwnerPackage(Ljava/lang/String;)V

    .line 357
    .line 358
    .line 359
    goto :goto_8

    .line 360
    :catchall_3
    move-exception v0

    .line 361
    goto :goto_9

    .line 362
    :cond_8
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 363
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 364
    .line 365
    goto :goto_b

    .line 366
    :goto_9
    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 367
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 368
    .line 369
    throw v0

    .line 370
    :goto_a
    :try_start_8
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 371
    throw v0

    .line 372
    :cond_9
    :goto_b
    return-void

    .line 373
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
