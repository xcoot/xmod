.class public final Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;
.super Landroid/os/HandlerThread;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/samsung/android/localeoverlaymanager/ExtractionCompleteCallback;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mContext:Landroid/content/Context;

.field public mCurrentObserver:Lcom/samsung/android/localeoverlaymanager/OverlayChangeObserver;

.field public mDeletedLocales:Ljava/util/Set;

.field public mHandler:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager$OverlayHandler;

.field public mInProgress:Z

.field public mIsCleanupInProgress:Z

.field public mIsPackageUpdateTask:Z

.field public mLocaleOverlayTargetApks:Ljava/util/Set;

.field public mOverlayManager:Lcom/samsung/android/localeoverlaymanager/OMSHelper;

.field public mProcessedLocales:Ljava/util/Set;

.field public mReParseTargets:Ljava/util/Set;

.field public mRetryCount:I

.field public mSendOverlayChangedBroadcast:Z

.field public mService:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;

.field public mToken:I

.field public mUpdatedPackage:Ljava/lang/String;

.field public progressHandler:Landroid/os/Handler;

.field public progressResetRunnable:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager$$ExternalSyntheticLambda0;


# direct methods
.method public static -$$Nest$mcleanLocaleOverlayForDisable(Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;Ljava/lang/String;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->mOverlayManager:Lcom/samsung/android/localeoverlaymanager/OMSHelper;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->initOverlayManager()V

    .line 6
    .line 7
    .line 8
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v1, "cleanLocaleOverlayForDisable: "

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->mOverlayManager:Lcom/samsung/android/localeoverlaymanager/OMSHelper;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v1, ", packageName : "

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const-string v1, "LocaleOverlayManager"

    .line 33
    .line 34
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->mOverlayManager:Lcom/samsung/android/localeoverlaymanager/OMSHelper;

    .line 38
    .line 39
    if-eqz v0, :cond_8

    .line 40
    .line 41
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    const/4 v2, 0x0

    .line 46
    if-eqz v0, :cond_3

    .line 47
    .line 48
    iget-object v0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->mOverlayManager:Lcom/samsung/android/localeoverlaymanager/OMSHelper;

    .line 49
    .line 50
    iget-object v3, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->mLocaleOverlayTargetApks:Ljava/util/Set;

    .line 51
    .line 52
    iget-object v4, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->mContext:Landroid/content/Context;

    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    new-instance v5, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    const-string v6, "getDisabledOverlaysPackages, localeOverlayTargetApks: "

    .line 60
    .line 61
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    const-string v6, "OMSHelper"

    .line 72
    .line 73
    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v2}, Lcom/samsung/android/localeoverlaymanager/OMSHelper;->getLocaleOverlaysForUser(I)Ljava/util/List;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    new-instance v5, Ljava/util/ArrayList;

    .line 81
    .line 82
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .line 84
    .line 85
    check-cast v0, Ljava/util/ArrayList;

    .line 86
    .line 87
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 88
    .line 89
    .line 90
    move-result v7

    .line 91
    if-lez v7, :cond_4

    .line 92
    .line 93
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 98
    .line 99
    .line 100
    move-result v7

    .line 101
    if-eqz v7, :cond_4

    .line 102
    .line 103
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v7

    .line 107
    check-cast v7, Landroid/content/om/OverlayInfo;

    .line 108
    .line 109
    if-eqz v7, :cond_1

    .line 110
    .line 111
    iget-object v8, v7, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    .line 112
    .line 113
    move-object v9, v3

    .line 114
    check-cast v9, Ljava/util/HashSet;

    .line 115
    .line 116
    invoke-virtual {v9, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v8

    .line 120
    if-nez v8, :cond_1

    .line 121
    .line 122
    new-instance v8, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    const-string/jumbo v9, "package name: "

    .line 125
    .line 126
    .line 127
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    iget-object v9, v7, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    .line 131
    .line 132
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    const-string v9, ", overPackage: "

    .line 136
    .line 137
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    iget-object v9, v7, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    .line 141
    .line 142
    invoke-static {v8, v9, v6}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    :try_start_0
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 146
    .line 147
    .line 148
    move-result-object v8

    .line 149
    iget-object v9, v7, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    .line 150
    .line 151
    const v10, 0xa200

    .line 152
    .line 153
    .line 154
    invoke-virtual {v8, v9, v10}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 155
    .line 156
    .line 157
    move-result-object v8

    .line 158
    if-eqz v8, :cond_2

    .line 159
    .line 160
    new-instance v9, Ljava/lang/StringBuilder;

    .line 161
    .line 162
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 163
    .line 164
    .line 165
    const-string v10, "app hidden: skip disable "

    .line 166
    .line 167
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v8

    .line 177
    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    .line 179
    .line 180
    goto :goto_0

    .line 181
    :catch_0
    :cond_2
    iget-object v7, v7, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    .line 182
    .line 183
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    goto :goto_0

    .line 187
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->mOverlayManager:Lcom/samsung/android/localeoverlaymanager/OMSHelper;

    .line 188
    .line 189
    invoke-virtual {v0, p1}, Lcom/samsung/android/localeoverlaymanager/OMSHelper;->getLocaleOverlayInfosForTarget(Ljava/lang/String;)Ljava/util/List;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    new-instance v5, Ljava/util/ArrayList;

    .line 194
    .line 195
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 196
    .line 197
    .line 198
    check-cast v0, Ljava/util/ArrayList;

    .line 199
    .line 200
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 205
    .line 206
    .line 207
    move-result v3

    .line 208
    if-eqz v3, :cond_4

    .line 209
    .line 210
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object v3

    .line 214
    check-cast v3, Landroid/content/om/OverlayInfo;

    .line 215
    .line 216
    iget-object v3, v3, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    .line 217
    .line 218
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    .line 220
    .line 221
    goto :goto_1

    .line 222
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 223
    .line 224
    const-string v3, "cleanLocaleOverlayForDisable() overlayPackages:"

    .line 225
    .line 226
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    .line 238
    .line 239
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    .line 240
    .line 241
    .line 242
    move-result v0

    .line 243
    if-eqz v0, :cond_5

    .line 244
    .line 245
    if-eqz p1, :cond_9

    .line 246
    .line 247
    invoke-virtual {p0}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->handleTaskComplete()V

    .line 248
    .line 249
    .line 250
    goto :goto_3

    .line 251
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->mOverlayManager:Lcom/samsung/android/localeoverlaymanager/OMSHelper;

    .line 252
    .line 253
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 254
    .line 255
    .line 256
    const/4 v0, 0x0

    .line 257
    invoke-static {v5, v0, v2, v0}, Lcom/samsung/android/localeoverlaymanager/OMSHelper;->applySamsungConfigChangeOverlays(Ljava/util/List;Ljava/util/List;ILcom/samsung/android/localeoverlaymanager/LocaleOverlayManager$ApplyObserver;)V

    .line 258
    .line 259
    .line 260
    const-string v0, "LOMUtils"

    .line 261
    .line 262
    const-string v2, "deleteDisabledLocaleOverlays"

    .line 263
    .line 264
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    .line 266
    .line 267
    new-instance v2, Ljava/io/File;

    .line 268
    .line 269
    const-string v3, "/data/overlays/current_locale_apks/files/"

    .line 270
    .line 271
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 275
    .line 276
    .line 277
    move-result-object v3

    .line 278
    :cond_6
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 279
    .line 280
    .line 281
    move-result v4

    .line 282
    if-eqz v4, :cond_7

    .line 283
    .line 284
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 285
    .line 286
    .line 287
    move-result-object v4

    .line 288
    check-cast v4, Ljava/lang/String;

    .line 289
    .line 290
    new-instance v6, Ljava/io/File;

    .line 291
    .line 292
    const-string v7, ".apk"

    .line 293
    .line 294
    invoke-static {v4, v7}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v4

    .line 298
    invoke-direct {v6, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    .line 302
    .line 303
    .line 304
    move-result v4

    .line 305
    if-eqz v4, :cond_6

    .line 306
    .line 307
    new-instance v4, Ljava/lang/StringBuilder;

    .line 308
    .line 309
    const-string v7, "Deleting Overlay: "

    .line 310
    .line 311
    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 312
    .line 313
    .line 314
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v7

    .line 318
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    .line 320
    .line 321
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v4

    .line 325
    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    .line 327
    .line 328
    invoke-static {v6}, Lcom/samsung/android/localeoverlaymanager/Utils;->deleteFile(Ljava/io/File;)V

    .line 329
    .line 330
    .line 331
    goto :goto_2

    .line 332
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 333
    .line 334
    const-string v2, "cleanLocaleOverlayForDisable done for --"

    .line 335
    .line 336
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 337
    .line 338
    .line 339
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 340
    .line 341
    .line 342
    move-result v2

    .line 343
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 344
    .line 345
    .line 346
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object v0

    .line 350
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    .line 352
    .line 353
    :cond_8
    if-eqz p1, :cond_9

    .line 354
    .line 355
    invoke-virtual {p0}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->handleTaskComplete()V

    .line 356
    .line 357
    .line 358
    :cond_9
    :goto_3
    return-void
.end method

.method public static -$$Nest$mhasZippedOverlaysPackage(Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;Ljava/lang/String;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, "LocaleOverlayManager"

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const/16 v2, 0x80

    .line 14
    .line 15
    invoke-virtual {p0, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 22
    .line 23
    if-eqz p0, :cond_0

    .line 24
    .line 25
    const-string v2, "com.samsung.android.hasZippedOverlays"

    .line 26
    .line 27
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    if-eqz p0, :cond_0

    .line 32
    .line 33
    const/4 v1, 0x1

    .line 34
    goto :goto_0

    .line 35
    :catch_0
    move-exception p0

    .line 36
    new-instance v2, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    const-string v3, "hasZippedOverlaysPackage PackageManager.NameNotFoundException: "

    .line 39
    .line 40
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    :cond_0
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    const-string v2, "hasZippedOverlaysPackage: "

    .line 60
    .line 61
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string p1, " -- "

    .line 68
    .line 69
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    return v1
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;

    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method public final checkSanityAndCompleteTask()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->mRetryCount:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->mRetryCount:I

    .line 6
    .line 7
    const/4 v1, 0x5

    .line 8
    const-string v2, "LocaleOverlayManager"

    .line 9
    .line 10
    if-le v0, v1, :cond_0

    .line 11
    .line 12
    const-string v0, "checkSanityAndCompleteTask: Max retries done!"

    .line 13
    .line 14
    invoke-static {v2, v0}, Lcom/samsung/android/localeoverlaymanager/LogWriter;->logDebugInfoAndLogcat(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->handleTaskComplete()V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-static {}, Lcom/samsung/android/localeoverlaymanager/Utils;->getSystemLocales()Ljava/util/Set;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->mDeletedLocales:Ljava/util/Set;

    .line 31
    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    check-cast v1, Ljava/util/HashSet;

    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-nez v1, :cond_1

    .line 41
    .line 42
    iget-object v1, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->mDeletedLocales:Ljava/util/Set;

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 45
    .line 46
    .line 47
    const/4 v1, 0x0

    .line 48
    iput-object v1, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->mDeletedLocales:Ljava/util/Set;

    .line 49
    .line 50
    :cond_1
    invoke-virtual {p0, v0}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->ensureOverlaysEnabled(Ljava/util/ArrayList;)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_2

    .line 55
    .line 56
    const-string v0, "checkSanityAndCompleteTask: Task completed successfully!."

    .line 57
    .line 58
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->handleTaskComplete()V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    const-string p0, "checkSanityAndCompleteTask: Task did not complete successfully. Retry!"

    .line 66
    .line 67
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    :goto_0
    return-void
.end method

.method public final ensureOverlaysEnabled(Ljava/util/ArrayList;)Z
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->mOverlayManager:Lcom/samsung/android/localeoverlaymanager/OMSHelper;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->initOverlayManager()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->mOverlayManager:Lcom/samsung/android/localeoverlaymanager/OMSHelper;

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    const-string v2, "LocaleOverlayManager"

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    const-string p0, "ensureOverlaysEnabled() called. mOverlayManager is null!"

    .line 16
    .line 17
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    return v1

    .line 21
    :cond_1
    new-instance v0, Ljava/util/HashSet;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 24
    .line 25
    .line 26
    iget-boolean v3, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->mIsPackageUpdateTask:Z

    .line 27
    .line 28
    const-string v4, "."

    .line 29
    .line 30
    if-eqz v3, :cond_3

    .line 31
    .line 32
    iget-object v3, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->mUpdatedPackage:Ljava/lang/String;

    .line 33
    .line 34
    if-eqz v3, :cond_3

    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    if-eqz v3, :cond_2

    .line 45
    .line 46
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    check-cast v3, Ljava/lang/String;

    .line 51
    .line 52
    new-instance v5, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    iget-object v6, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->mUpdatedPackage:Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->mOverlayManager:Lcom/samsung/android/localeoverlaymanager/OMSHelper;

    .line 77
    .line 78
    iget-object v3, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->mUpdatedPackage:Ljava/lang/String;

    .line 79
    .line 80
    invoke-virtual {p1, v3}, Lcom/samsung/android/localeoverlaymanager/OMSHelper;->getLocaleOverlayInfosForTarget(Ljava/lang/String;)Ljava/util/List;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    new-instance v3, Ljava/util/HashMap;

    .line 85
    .line 86
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 87
    .line 88
    .line 89
    iget-object v4, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->mUpdatedPackage:Ljava/lang/String;

    .line 90
    .line 91
    invoke-virtual {v3, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    goto/16 :goto_3

    .line 95
    .line 96
    :cond_3
    iget-object v3, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->mLocaleOverlayTargetApks:Ljava/util/Set;

    .line 97
    .line 98
    if-eqz v3, :cond_4

    .line 99
    .line 100
    check-cast v3, Ljava/util/HashSet;

    .line 101
    .line 102
    invoke-virtual {v3}, Ljava/util/HashSet;->isEmpty()Z

    .line 103
    .line 104
    .line 105
    move-result v3

    .line 106
    if-eqz v3, :cond_5

    .line 107
    .line 108
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->parseTargetApks()V

    .line 109
    .line 110
    .line 111
    :cond_5
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    :cond_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 116
    .line 117
    .line 118
    move-result v3

    .line 119
    if-eqz v3, :cond_7

    .line 120
    .line 121
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    check-cast v3, Ljava/lang/String;

    .line 126
    .line 127
    iget-object v5, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->mLocaleOverlayTargetApks:Ljava/util/Set;

    .line 128
    .line 129
    check-cast v5, Ljava/util/HashSet;

    .line 130
    .line 131
    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 132
    .line 133
    .line 134
    move-result-object v5

    .line 135
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 136
    .line 137
    .line 138
    move-result v6

    .line 139
    if-eqz v6, :cond_6

    .line 140
    .line 141
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v6

    .line 145
    check-cast v6, Ljava/lang/String;

    .line 146
    .line 147
    new-instance v7, Ljava/lang/StringBuilder;

    .line 148
    .line 149
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v6

    .line 165
    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    goto :goto_1

    .line 169
    :cond_7
    iget-object p1, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->mOverlayManager:Lcom/samsung/android/localeoverlaymanager/OMSHelper;

    .line 170
    .line 171
    sget v3, Lcom/samsung/android/localeoverlaymanager/Utils;->sCurrentUserId:I

    .line 172
    .line 173
    iget-object p1, p1, Lcom/samsung/android/localeoverlaymanager/OMSHelper;->mService:Lcom/android/server/om/OverlayManagerService;

    .line 174
    .line 175
    invoke-virtual {p1, v3}, Lcom/android/server/om/OverlayManagerService;->getAllOverlays(I)Ljava/util/Map;

    .line 176
    .line 177
    .line 178
    move-result-object v3

    .line 179
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    .line 180
    .line 181
    .line 182
    move-result p1

    .line 183
    if-eqz p1, :cond_8

    .line 184
    .line 185
    goto :goto_3

    .line 186
    :cond_8
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 195
    .line 196
    .line 197
    move-result v4

    .line 198
    if-eqz v4, :cond_9

    .line 199
    .line 200
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v4

    .line 204
    check-cast v4, Ljava/util/Map$Entry;

    .line 205
    .line 206
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object v4

    .line 210
    check-cast v4, Ljava/util/List;

    .line 211
    .line 212
    new-instance v5, Lcom/samsung/android/localeoverlaymanager/OMSHelper$$ExternalSyntheticLambda2;

    .line 213
    .line 214
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 215
    .line 216
    .line 217
    invoke-interface {v4, v5}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 218
    .line 219
    .line 220
    goto :goto_2

    .line 221
    :cond_9
    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 222
    .line 223
    const-string v4, "ensureOverlaysEnabled: overlayList - "

    .line 224
    .line 225
    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object p1

    .line 235
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    .line 237
    .line 238
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 239
    .line 240
    .line 241
    move-result-object p1

    .line 242
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 243
    .line 244
    .line 245
    move-result-object p1

    .line 246
    :cond_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 247
    .line 248
    .line 249
    move-result v3

    .line 250
    const/4 v4, 0x0

    .line 251
    if-eqz v3, :cond_c

    .line 252
    .line 253
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    move-result-object v3

    .line 257
    check-cast v3, Ljava/util/Map$Entry;

    .line 258
    .line 259
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    move-result-object v5

    .line 263
    check-cast v5, Ljava/lang/String;

    .line 264
    .line 265
    :try_start_0
    iget-object v6, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->mContext:Landroid/content/Context;

    .line 266
    .line 267
    invoke-virtual {v6, v5, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    .line 268
    .line 269
    .line 270
    move-result-object v4

    .line 271
    invoke-virtual {v4}, Landroid/content/Context;->getPackageResourcePath()Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v4
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    goto :goto_4

    .line 276
    :catch_0
    move-exception v4

    .line 277
    new-instance v5, Ljava/lang/StringBuilder;

    .line 278
    .line 279
    const-string v6, "ensureOverlaysEnabled - NameNotFoundException: "

    .line 280
    .line 281
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    invoke-virtual {v4}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v4

    .line 288
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v4

    .line 295
    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    .line 297
    .line 298
    const/4 v4, 0x0

    .line 299
    :goto_4
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 300
    .line 301
    .line 302
    move-result-object v3

    .line 303
    check-cast v3, Ljava/util/List;

    .line 304
    .line 305
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 306
    .line 307
    .line 308
    move-result-object v3

    .line 309
    :cond_b
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 310
    .line 311
    .line 312
    move-result v5

    .line 313
    if-eqz v5, :cond_a

    .line 314
    .line 315
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 316
    .line 317
    .line 318
    move-result-object v5

    .line 319
    check-cast v5, Landroid/content/om/OverlayInfo;

    .line 320
    .line 321
    iget-object v6, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->mOverlayManager:Lcom/samsung/android/localeoverlaymanager/OMSHelper;

    .line 322
    .line 323
    iget-object v7, v5, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    .line 324
    .line 325
    iget-object v6, v6, Lcom/samsung/android/localeoverlaymanager/OMSHelper;->mService:Lcom/android/server/om/OverlayManagerService;

    .line 326
    .line 327
    invoke-virtual {v6, v7}, Lcom/android/server/om/OverlayManagerService;->getTargetPath(Ljava/lang/String;)Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object v6

    .line 331
    if-eqz v6, :cond_b

    .line 332
    .line 333
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 334
    .line 335
    .line 336
    move-result v6

    .line 337
    if-eqz v6, :cond_b

    .line 338
    .line 339
    invoke-virtual {v5}, Landroid/content/om/OverlayInfo;->isEnabled()Z

    .line 340
    .line 341
    .line 342
    move-result v6

    .line 343
    if-eqz v6, :cond_b

    .line 344
    .line 345
    iget-object v5, v5, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    .line 346
    .line 347
    invoke-virtual {v0, v5}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 348
    .line 349
    .line 350
    goto :goto_5

    .line 351
    :cond_c
    new-instance p1, Ljava/lang/StringBuilder;

    .line 352
    .line 353
    const-string v3, "ensureOverlaysEnabled: toAddPackageList = ["

    .line 354
    .line 355
    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 356
    .line 357
    .line 358
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 359
    .line 360
    .line 361
    const-string v3, "], observer = ["

    .line 362
    .line 363
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    .line 365
    .line 366
    iget-object v3, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->mCurrentObserver:Lcom/samsung/android/localeoverlaymanager/OverlayChangeObserver;

    .line 367
    .line 368
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 369
    .line 370
    .line 371
    const-string v3, "]"

    .line 372
    .line 373
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    .line 375
    .line 376
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 377
    .line 378
    .line 379
    move-result-object p1

    .line 380
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    .line 382
    .line 383
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    .line 384
    .line 385
    .line 386
    move-result p1

    .line 387
    if-eqz p1, :cond_d

    .line 388
    .line 389
    return v1

    .line 390
    :cond_d
    new-instance p1, Ljava/util/HashSet;

    .line 391
    .line 392
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 393
    .line 394
    .line 395
    iput-object p1, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->mReParseTargets:Ljava/util/Set;

    .line 396
    .line 397
    iput-boolean v1, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->mSendOverlayChangedBroadcast:Z

    .line 398
    .line 399
    new-instance p1, Ljava/util/HashSet;

    .line 400
    .line 401
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 402
    .line 403
    .line 404
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 405
    .line 406
    .line 407
    move-result-object v0

    .line 408
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 409
    .line 410
    .line 411
    move-result v5

    .line 412
    if-eqz v5, :cond_e

    .line 413
    .line 414
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 415
    .line 416
    .line 417
    move-result-object v5

    .line 418
    check-cast v5, Ljava/lang/String;

    .line 419
    .line 420
    iget-object v6, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->mReParseTargets:Ljava/util/Set;

    .line 421
    .line 422
    const/16 v7, 0x2e

    .line 423
    .line 424
    invoke-virtual {v5, v7}, Ljava/lang/String;->lastIndexOf(I)I

    .line 425
    .line 426
    .line 427
    move-result v8

    .line 428
    invoke-virtual {v5, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 429
    .line 430
    .line 431
    move-result-object v8

    .line 432
    check-cast v6, Ljava/util/HashSet;

    .line 433
    .line 434
    invoke-virtual {v6, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 435
    .line 436
    .line 437
    invoke-virtual {v5, v7}, Ljava/lang/String;->lastIndexOf(I)I

    .line 438
    .line 439
    .line 440
    move-result v6

    .line 441
    add-int/2addr v6, v1

    .line 442
    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 443
    .line 444
    .line 445
    move-result-object v5

    .line 446
    invoke-virtual {p1, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 447
    .line 448
    .line 449
    goto :goto_6

    .line 450
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    .line 451
    .line 452
    const-string v5, "ensureOverlaysEnabled: mReParseTargets = ["

    .line 453
    .line 454
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 455
    .line 456
    .line 457
    iget-object v5, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->mReParseTargets:Ljava/util/Set;

    .line 458
    .line 459
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 460
    .line 461
    .line 462
    const-string v5, "], reParseLocales = ["

    .line 463
    .line 464
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    .line 466
    .line 467
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 468
    .line 469
    .line 470
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    .line 472
    .line 473
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 474
    .line 475
    .line 476
    move-result-object v0

    .line 477
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    .line 479
    .line 480
    sget-object v0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->sInstance:Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;

    .line 481
    .line 482
    iput-object p0, v0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->mCallback:Lcom/samsung/android/localeoverlaymanager/ExtractionCompleteCallback;

    .line 483
    .line 484
    iget-object v2, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->mReParseTargets:Ljava/util/Set;

    .line 485
    .line 486
    iget-object p0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->mContext:Landroid/content/Context;

    .line 487
    .line 488
    invoke-virtual {v0, v2, p1, p0, v1}, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->extractLocaleApks(Ljava/util/Set;Ljava/util/Set;Landroid/content/Context;Z)V

    .line 489
    .line 490
    .line 491
    return v4
.end method

.method public final handleTaskComplete()V
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "handleTaskComplete -- callers: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v2, "LocaleOverlayManager"

    .line 21
    .line 22
    invoke-static {v2, v0}, Lcom/samsung/android/localeoverlaymanager/LogWriter;->logDebugInfoAndLogcat(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    invoke-static {v0}, Lcom/samsung/android/localeoverlaymanager/Utils;->setCurrentUserId(I)V

    .line 27
    .line 28
    .line 29
    iput v0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->mRetryCount:I

    .line 30
    .line 31
    iget-object v3, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->mService:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;

    .line 32
    .line 33
    iput-boolean v0, v3, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mRequestInProgress:Z

    .line 34
    .line 35
    iget-object v3, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->progressHandler:Landroid/os/Handler;

    .line 36
    .line 37
    iget-object v4, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->progressResetRunnable:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager$$ExternalSyntheticLambda0;

    .line 38
    .line 39
    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 40
    .line 41
    .line 42
    iget-object v3, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->mContext:Landroid/content/Context;

    .line 43
    .line 44
    invoke-static {v3}, Lcom/samsung/android/localeoverlaymanager/PreferenceUtils;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    iget-object v4, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->mProcessedLocales:Ljava/util/Set;

    .line 49
    .line 50
    if-eqz v4, :cond_0

    .line 51
    .line 52
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    if-nez v4, :cond_0

    .line 57
    .line 58
    sget v4, Lcom/samsung/android/localeoverlaymanager/Utils;->sCurrentUserId:I

    .line 59
    .line 60
    iget-object v5, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->mProcessedLocales:Ljava/util/Set;

    .line 61
    .line 62
    invoke-static {v4, v5}, Lcom/samsung/android/localeoverlaymanager/PreferenceUtils;->setLocalesForUser(ILjava/util/Set;)V

    .line 63
    .line 64
    .line 65
    iget-object v4, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->mProcessedLocales:Ljava/util/Set;

    .line 66
    .line 67
    invoke-interface {v4}, Ljava/util/Set;->clear()V

    .line 68
    .line 69
    .line 70
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->mHandler:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager$OverlayHandler;

    .line 71
    .line 72
    if-eqz v4, :cond_3

    .line 73
    .line 74
    invoke-virtual {v4, v1}, Landroid/os/Handler;->hasMessages(I)Z

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-eqz v1, :cond_1

    .line 79
    .line 80
    iget-object v1, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->mHandler:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager$OverlayHandler;

    .line 81
    .line 82
    const/4 v4, 0x7

    .line 83
    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    if-nez v1, :cond_2

    .line 88
    .line 89
    :cond_1
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    const-string v4, "locale_in_progress"

    .line 94
    .line 95
    invoke-interface {v1, v4, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 100
    .line 101
    .line 102
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->mHandler:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager$OverlayHandler;

    .line 103
    .line 104
    const/4 v4, 0x3

    .line 105
    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    if-nez v1, :cond_3

    .line 110
    .line 111
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    const-string v3, "app_in_progress"

    .line 116
    .line 117
    const-string v4, "None"

    .line 118
    .line 119
    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 124
    .line 125
    .line 126
    :cond_3
    iget-boolean v1, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->mSendOverlayChangedBroadcast:Z

    .line 127
    .line 128
    const/4 v3, 0x0

    .line 129
    if-eqz v1, :cond_4

    .line 130
    .line 131
    iget-object v1, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->mReParseTargets:Ljava/util/Set;

    .line 132
    .line 133
    sget v4, Lcom/samsung/android/localeoverlaymanager/Utils;->sCurrentUserId:I

    .line 134
    .line 135
    invoke-static {v1, v4}, Lcom/android/server/om/OverlayManagerService;->broadcastActionOverlayChangedPublic(Ljava/util/Set;I)V

    .line 136
    .line 137
    .line 138
    iput-object v3, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->mReParseTargets:Ljava/util/Set;

    .line 139
    .line 140
    iput-boolean v0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->mSendOverlayChangedBroadcast:Z

    .line 141
    .line 142
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 143
    .line 144
    const-string v4, "callbackObserver. mCurrentObserver: "

    .line 145
    .line 146
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    iget-object v4, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->mCurrentObserver:Lcom/samsung/android/localeoverlaymanager/OverlayChangeObserver;

    .line 150
    .line 151
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    .line 160
    .line 161
    iget-object v1, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->mCurrentObserver:Lcom/samsung/android/localeoverlaymanager/OverlayChangeObserver;

    .line 162
    .line 163
    if-eqz v1, :cond_5

    .line 164
    .line 165
    iget v2, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->mToken:I

    .line 166
    .line 167
    invoke-virtual {v1, v2}, Lcom/samsung/android/localeoverlaymanager/OverlayChangeObserver;->onChangeCompleted(I)V

    .line 168
    .line 169
    .line 170
    :cond_5
    iput-object v3, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->mCurrentObserver:Lcom/samsung/android/localeoverlaymanager/OverlayChangeObserver;

    .line 171
    .line 172
    iput-boolean v0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->mInProgress:Z

    .line 173
    .line 174
    iput-boolean v0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->mIsPackageUpdateTask:Z

    .line 175
    .line 176
    iput-object v3, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->mUpdatedPackage:Ljava/lang/String;

    .line 177
    .line 178
    invoke-static {}, Lcom/samsung/android/localeoverlaymanager/LogWriter;->syncLogFile()V

    .line 179
    .line 180
    .line 181
    iget-object v0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->mHandler:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager$OverlayHandler;

    .line 182
    .line 183
    if-eqz v0, :cond_6

    .line 184
    .line 185
    invoke-virtual {v0}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager$OverlayHandler;->hasAnyMessageOrCallbacks()Z

    .line 186
    .line 187
    .line 188
    move-result v0

    .line 189
    if-nez v0, :cond_6

    .line 190
    .line 191
    iget-object p0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->mService:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;

    .line 192
    .line 193
    invoke-virtual {p0}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->waitAndQuit()V

    .line 194
    .line 195
    .line 196
    :cond_6
    return-void
.end method

.method public final declared-synchronized initOverlayManager()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->mOverlayManager:Lcom/samsung/android/localeoverlaymanager/OMSHelper;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Lcom/samsung/android/localeoverlaymanager/OMSHelper;

    .line 7
    .line 8
    invoke-direct {v0}, Lcom/samsung/android/localeoverlaymanager/OMSHelper;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->mOverlayManager:Lcom/samsung/android/localeoverlaymanager/OMSHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    move-exception v0

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    :goto_0
    monitor-exit p0

    .line 17
    return-void

    .line 18
    :goto_1
    monitor-exit p0

    .line 19
    throw v0
.end method

.method public final installLocales(Ljava/util/Set;Ljava/util/Set;)V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "installLocales() called with: addedLocales = ["

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, "], deletedLocales = ["

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v1, "]"

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string v1, "LocaleOverlayManager"

    .line 29
    .line 30
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->mLocaleOverlayTargetApks:Ljava/util/Set;

    .line 34
    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    check-cast v0, Ljava/util/HashSet;

    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->parseTargetApks()V

    .line 46
    .line 47
    .line 48
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->mLocaleOverlayTargetApks:Ljava/util/Set;

    .line 49
    .line 50
    check-cast v0, Ljava/util/HashSet;

    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_2

    .line 57
    .line 58
    const-string p1, "installLocales: No Locale Target apks"

    .line 59
    .line 60
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->handleTaskComplete()V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :cond_2
    move-object v0, p1

    .line 68
    check-cast v0, Ljava/util/HashSet;

    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-nez v0, :cond_3

    .line 75
    .line 76
    sget-object v0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->sInstance:Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;

    .line 77
    .line 78
    iput-object p0, v0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->mCallback:Lcom/samsung/android/localeoverlaymanager/ExtractionCompleteCallback;

    .line 79
    .line 80
    iget-object v2, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->mLocaleOverlayTargetApks:Ljava/util/Set;

    .line 81
    .line 82
    iget-object v3, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->mContext:Landroid/content/Context;

    .line 83
    .line 84
    const/4 v4, 0x0

    .line 85
    invoke-virtual {v0, v2, p1, v3, v4}, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->extractLocaleApks(Ljava/util/Set;Ljava/util/Set;Landroid/content/Context;Z)V

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_3
    const/4 v4, 0x1

    .line 90
    :goto_0
    if-eqz p2, :cond_8

    .line 91
    .line 92
    move-object p1, p2

    .line 93
    check-cast p1, Ljava/util/HashSet;

    .line 94
    .line 95
    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    if-nez p1, :cond_8

    .line 100
    .line 101
    new-instance p1, Ljava/util/HashSet;

    .line 102
    .line 103
    invoke-direct {p1, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 104
    .line 105
    .line 106
    iput-object p1, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->mDeletedLocales:Ljava/util/Set;

    .line 107
    .line 108
    iget-object p1, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->mOverlayManager:Lcom/samsung/android/localeoverlaymanager/OMSHelper;

    .line 109
    .line 110
    if-nez p1, :cond_4

    .line 111
    .line 112
    invoke-virtual {p0}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->initOverlayManager()V

    .line 113
    .line 114
    .line 115
    :cond_4
    iget-object p1, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->mContext:Landroid/content/Context;

    .line 116
    .line 117
    const-class v0, Landroid/app/LocaleManager;

    .line 118
    .line 119
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    check-cast p1, Landroid/app/LocaleManager;

    .line 124
    .line 125
    new-instance v0, Ljava/util/ArrayList;

    .line 126
    .line 127
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 128
    .line 129
    .line 130
    iget-object v2, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->mOverlayManager:Lcom/samsung/android/localeoverlaymanager/OMSHelper;

    .line 131
    .line 132
    if-eqz v2, :cond_5

    .line 133
    .line 134
    sget v3, Lcom/samsung/android/localeoverlaymanager/Utils;->sCurrentUserId:I

    .line 135
    .line 136
    invoke-virtual {v2, v3}, Lcom/samsung/android/localeoverlaymanager/OMSHelper;->getLocaleOverlaysForUser(I)Ljava/util/List;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    new-instance v3, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager$$ExternalSyntheticLambda2;

    .line 141
    .line 142
    invoke-direct {v3, p1, p2, v0}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager$$ExternalSyntheticLambda2;-><init>(Landroid/app/LocaleManager;Ljava/util/Set;Ljava/util/List;)V

    .line 143
    .line 144
    .line 145
    check-cast v2, Ljava/util/ArrayList;

    .line 146
    .line 147
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 148
    .line 149
    .line 150
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    .line 151
    .line 152
    const-string v2, "Disable locales  -> "

    .line 153
    .line 154
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    const-string p2, " packages -> "

    .line 161
    .line 162
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    const-string p2, " OM -> "

    .line 169
    .line 170
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    iget-object p2, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->mOverlayManager:Lcom/samsung/android/localeoverlaymanager/OMSHelper;

    .line 174
    .line 175
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    .line 184
    .line 185
    const/4 p1, 0x0

    .line 186
    if-eqz v4, :cond_6

    .line 187
    .line 188
    new-instance p2, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager$ApplyObserver;

    .line 189
    .line 190
    invoke-direct {p2, p0, v0}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager$ApplyObserver;-><init>(Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;Ljava/util/List;)V

    .line 191
    .line 192
    .line 193
    goto :goto_1

    .line 194
    :cond_6
    move-object p2, p1

    .line 195
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->mOverlayManager:Lcom/samsung/android/localeoverlaymanager/OMSHelper;

    .line 196
    .line 197
    if-eqz v1, :cond_7

    .line 198
    .line 199
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 200
    .line 201
    .line 202
    move-result v1

    .line 203
    if-nez v1, :cond_7

    .line 204
    .line 205
    iget-object p0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->mOverlayManager:Lcom/samsung/android/localeoverlaymanager/OMSHelper;

    .line 206
    .line 207
    sget v1, Lcom/samsung/android/localeoverlaymanager/Utils;->sCurrentUserId:I

    .line 208
    .line 209
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 210
    .line 211
    .line 212
    invoke-static {v0, p1, v1, p2}, Lcom/samsung/android/localeoverlaymanager/OMSHelper;->applySamsungConfigChangeOverlays(Ljava/util/List;Ljava/util/List;ILcom/samsung/android/localeoverlaymanager/LocaleOverlayManager$ApplyObserver;)V

    .line 213
    .line 214
    .line 215
    goto :goto_2

    .line 216
    :cond_7
    if-eqz v4, :cond_8

    .line 217
    .line 218
    invoke-virtual {p0}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->handleTaskComplete()V

    .line 219
    .line 220
    .line 221
    :cond_8
    :goto_2
    return-void
.end method

.method public final installLocalesForPackages(Ljava/util/Set;Ljava/util/Set;)V
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "installLocalesForPackages() called with: packages = ["

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, "], processedLanguages = ["

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v1, "]"

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string v1, "LocaleOverlayManager"

    .line 29
    .line 30
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    if-eqz p1, :cond_3

    .line 34
    .line 35
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_3

    .line 40
    .line 41
    if-nez p2, :cond_1

    .line 42
    .line 43
    iget-object p2, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->mContext:Landroid/content/Context;

    .line 44
    .line 45
    const-string/jumbo v0, "user"

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    check-cast p2, Landroid/os/UserManager;

    .line 53
    .line 54
    invoke-virtual {p2}, Landroid/os/UserManager;->semGetUsers()Ljava/util/List;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    new-instance v0, Ljava/util/HashSet;

    .line 59
    .line 60
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 61
    .line 62
    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    const-string v2, "getLocalesForAllUsers: UserInfos - "

    .line 66
    .line 67
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    const-string v2, "PreferenceUtils"

    .line 78
    .line 79
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    if-eqz v1, :cond_0

    .line 91
    .line 92
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    check-cast v1, Landroid/content/pm/SemUserInfo;

    .line 97
    .line 98
    invoke-virtual {v1}, Landroid/content/pm/SemUserInfo;->getUserHandle()Landroid/os/UserHandle;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    invoke-virtual {v3}, Landroid/os/UserHandle;->semGetIdentifier()I

    .line 103
    .line 104
    .line 105
    move-result v3

    .line 106
    invoke-static {v3}, Lcom/samsung/android/localeoverlaymanager/PreferenceUtils;->getLocalesForUser(I)Ljava/util/Set;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    new-instance v4, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    const-string v5, "getLocalesForAllUsers: UserId - "

    .line 113
    .line 114
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v1}, Landroid/content/pm/SemUserInfo;->getUserHandle()Landroid/os/UserHandle;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    invoke-virtual {v1}, Landroid/os/UserHandle;->semGetIdentifier()I

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    const-string v1, " has locales - "

    .line 129
    .line 130
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    .line 142
    .line 143
    invoke-interface {v0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 144
    .line 145
    .line 146
    goto :goto_0

    .line 147
    :cond_0
    move-object p2, v0

    .line 148
    :cond_1
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    if-eqz v0, :cond_2

    .line 153
    .line 154
    invoke-virtual {p0}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->handleTaskComplete()V

    .line 155
    .line 156
    .line 157
    return-void

    .line 158
    :cond_2
    sget-object v0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->sInstance:Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;

    .line 159
    .line 160
    iput-object p0, v0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->mCallback:Lcom/samsung/android/localeoverlaymanager/ExtractionCompleteCallback;

    .line 161
    .line 162
    new-instance v1, Ljava/util/HashSet;

    .line 163
    .line 164
    invoke-direct {v1, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 165
    .line 166
    .line 167
    iget-object p2, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->mContext:Landroid/content/Context;

    .line 168
    .line 169
    const/4 v2, 0x1

    .line 170
    invoke-virtual {v0, p1, v1, p2, v2}, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->extractLocaleApks(Ljava/util/Set;Ljava/util/Set;Landroid/content/Context;Z)V

    .line 171
    .line 172
    .line 173
    iget-object p2, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->mLocaleOverlayTargetApks:Ljava/util/Set;

    .line 174
    .line 175
    if-eqz p2, :cond_4

    .line 176
    .line 177
    check-cast p2, Ljava/util/HashSet;

    .line 178
    .line 179
    invoke-virtual {p2}, Ljava/util/HashSet;->isEmpty()Z

    .line 180
    .line 181
    .line 182
    move-result p2

    .line 183
    if-nez p2, :cond_4

    .line 184
    .line 185
    iget-object p0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->mLocaleOverlayTargetApks:Ljava/util/Set;

    .line 186
    .line 187
    invoke-interface {p0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 188
    .line 189
    .line 190
    goto :goto_1

    .line 191
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->handleTaskComplete()V

    .line 192
    .line 193
    .line 194
    :cond_4
    :goto_1
    return-void
.end method

.method public final onExtractionComplete(Ljava/util/Set;Z)V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "onExtractionComplete() called with: extractedLocales = ["

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    const-string v1, "], forceEnable = ["

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v1, "]"

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const-string v2, "LocaleOverlayManager"

    .line 30
    .line 31
    invoke-static {v2, v0}, Lcom/samsung/android/localeoverlaymanager/LogWriter;->logDebugInfoAndLogcat(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    if-eqz p1, :cond_5

    .line 35
    .line 36
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_0

    .line 41
    .line 42
    goto/16 :goto_1

    .line 43
    .line 44
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 47
    .line 48
    .line 49
    sget p1, Lcom/samsung/android/localeoverlaymanager/Utils;->sCurrentUserId:I

    .line 50
    .line 51
    iget-object v3, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->mOverlayManager:Lcom/samsung/android/localeoverlaymanager/OMSHelper;

    .line 52
    .line 53
    if-nez v3, :cond_1

    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->initOverlayManager()V

    .line 56
    .line 57
    .line 58
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    const-string v4, "enableOverlays() called with: enableLocalePackages"

    .line 61
    .line 62
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string v4, ", OverlayManger = ["

    .line 69
    .line 70
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    iget-object v4, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->mOverlayManager:Lcom/samsung/android/localeoverlaymanager/OMSHelper;

    .line 74
    .line 75
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    iget-object v3, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->mOverlayManager:Lcom/samsung/android/localeoverlaymanager/OMSHelper;

    .line 89
    .line 90
    if-eqz v3, :cond_4

    .line 91
    .line 92
    iget-boolean v4, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->mIsPackageUpdateTask:Z

    .line 93
    .line 94
    if-nez v4, :cond_2

    .line 95
    .line 96
    if-nez p2, :cond_2

    .line 97
    .line 98
    invoke-virtual {v3, p1}, Lcom/samsung/android/localeoverlaymanager/OMSHelper;->getLocaleOverlaysForUser(I)Ljava/util/List;

    .line 99
    .line 100
    .line 101
    move-result-object p2

    .line 102
    new-instance v3, Ljava/util/ArrayList;

    .line 103
    .line 104
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 105
    .line 106
    .line 107
    new-instance v4, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager$$ExternalSyntheticLambda1;

    .line 108
    .line 109
    invoke-direct {v4, v3}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager$$ExternalSyntheticLambda1;-><init>(Ljava/util/List;)V

    .line 110
    .line 111
    .line 112
    check-cast p2, Ljava/util/ArrayList;

    .line 113
    .line 114
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 118
    .line 119
    .line 120
    new-instance p2, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    const-string v4, "enableOverlays(): Skipping = ["

    .line 123
    .line 124
    invoke-direct {p2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    const-string v3, "], enabling = ["

    .line 131
    .line 132
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p2

    .line 145
    invoke-static {v2, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    .line 147
    .line 148
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 149
    .line 150
    .line 151
    move-result p2

    .line 152
    if-eqz p2, :cond_3

    .line 153
    .line 154
    invoke-virtual {p0}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->handleTaskComplete()V

    .line 155
    .line 156
    .line 157
    goto :goto_0

    .line 158
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    .line 159
    .line 160
    const-string v1, "enableOverlays() called. enableLocalePackages = "

    .line 161
    .line 162
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object p2

    .line 172
    invoke-static {v2, p2}, Lcom/samsung/android/localeoverlaymanager/LogWriter;->logDebugInfoAndLogcat(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    iget-object p2, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->mOverlayManager:Lcom/samsung/android/localeoverlaymanager/OMSHelper;

    .line 176
    .line 177
    new-instance v1, Ljava/util/ArrayList;

    .line 178
    .line 179
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 180
    .line 181
    .line 182
    new-instance v2, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager$ApplyObserver;

    .line 183
    .line 184
    invoke-direct {v2, p0, v0}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager$ApplyObserver;-><init>(Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;Ljava/util/List;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 188
    .line 189
    .line 190
    invoke-static {v1, v0, p1, v2}, Lcom/samsung/android/localeoverlaymanager/OMSHelper;->applySamsungConfigChangeOverlays(Ljava/util/List;Ljava/util/List;ILcom/samsung/android/localeoverlaymanager/LocaleOverlayManager$ApplyObserver;)V

    .line 191
    .line 192
    .line 193
    :cond_4
    :goto_0
    return-void

    .line 194
    :cond_5
    :goto_1
    const/4 p1, 0x0

    .line 195
    iput-boolean p1, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->mSendOverlayChangedBroadcast:Z

    .line 196
    .line 197
    invoke-virtual {p0}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->handleTaskComplete()V

    .line 198
    .line 199
    .line 200
    return-void
.end method

.method public final onLooperPrepared()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/os/HandlerThread;->onLooperPrepared()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager$OverlayHandler;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-direct {v0, p0, v1}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager$OverlayHandler;-><init>(Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;Landroid/os/Looper;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->mHandler:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager$OverlayHandler;

    .line 14
    .line 15
    new-instance v0, Landroid/os/Handler;

    .line 16
    .line 17
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->progressHandler:Landroid/os/Handler;

    .line 21
    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v1, "Handler ready "

    .line 25
    .line 26
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object p0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->mHandler:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager$OverlayHandler;

    .line 30
    .line 31
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    const-string v0, "LocaleOverlayManager"

    .line 39
    .line 40
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public final parseTargetApks()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->mLocaleOverlayTargetApks:Ljava/util/Set;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sget v1, Lcom/samsung/android/localeoverlaymanager/Utils;->sCurrentUserId:I

    .line 15
    .line 16
    const/16 v2, 0x80

    .line 17
    .line 18
    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->getInstalledApplicationsAsUser(II)Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 37
    .line 38
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 39
    .line 40
    if-eqz v2, :cond_0

    .line 41
    .line 42
    const-string v3, "com.samsung.android.hasZippedOverlays"

    .line 43
    .line 44
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-eqz v2, :cond_0

    .line 49
    .line 50
    iget-object v2, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->mLocaleOverlayTargetApks:Ljava/util/Set;

    .line 51
    .line 52
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 53
    .line 54
    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    return-void
.end method

.method public final quit()Z
    .locals 3

    .line 1
    const-string/jumbo v0, "quit() called"

    .line 2
    .line 3
    .line 4
    const-string v1, "LocaleOverlayManager"

    .line 5
    .line 6
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    sget-object v0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->sInstance:Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;

    .line 10
    .line 11
    iget-object v2, v0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->mTasks:Ljava/util/Queue;

    .line 12
    .line 13
    check-cast v2, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 14
    .line 15
    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 16
    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    iput-object v2, v0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->mCallback:Lcom/samsung/android/localeoverlaymanager/ExtractionCompleteCallback;

    .line 20
    .line 21
    iput-object v2, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->mCurrentObserver:Lcom/samsung/android/localeoverlaymanager/OverlayChangeObserver;

    .line 22
    .line 23
    iget-object v0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->mHandler:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager$OverlayHandler;

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager$OverlayHandler;->hasAnyMessageOrCallbacks()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    const-string/jumbo v0, "quit() called :Remove pending message or callback "

    .line 34
    .line 35
    .line 36
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->mHandler:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager$OverlayHandler;

    .line 40
    .line 41
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    const-string/jumbo v0, "quit() called no pending messages to remove "

    .line 46
    .line 47
    .line 48
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    :goto_0
    invoke-virtual {p0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    return p0
.end method
