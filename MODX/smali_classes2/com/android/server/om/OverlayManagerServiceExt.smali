.class public final Lcom/android/server/om/OverlayManagerServiceExt;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mIdmapManager:Lcom/android/server/om/IdmapManagerWrapper;

.field public mIsInitOnBoot:Z

.field public final mPackageManager:Lcom/android/server/om/OverlayManagerServiceExt$PMSHelperImpl;

.field public final mPackageUpdateHelper:Lcom/android/server/om/OverlayManagerService$PackageUpdateHelper;

.field public final mSettings:Lcom/android/server/om/OverlayManagerSettings;

.field public final mUserManager:Lcom/android/server/pm/UserManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;Lcom/android/server/om/OverlayManagerSettings;Lcom/android/server/om/IdmapManager;Lcom/android/server/om/OverlayManagerService$PackageUpdateHelper;)V
    .locals 7

    .line 1
    const-string v0, ", but it\'ll be enabled."

    .line 2
    .line 3
    const-string v1, "OverlayManagerExt"

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Lcom/android/server/om/OverlayManagerServiceExt;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    new-instance p1, Lcom/android/server/om/OverlayManagerServiceExt$PMSHelperImpl;

    .line 11
    .line 12
    invoke-direct {p1, p2}, Lcom/android/server/om/OverlayManagerServiceExt$PMSHelperImpl;-><init>(Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;)V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lcom/android/server/om/OverlayManagerServiceExt;->mPackageManager:Lcom/android/server/om/OverlayManagerServiceExt$PMSHelperImpl;

    .line 16
    .line 17
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lcom/android/server/om/OverlayManagerServiceExt;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 22
    .line 23
    new-instance p1, Lcom/android/server/om/IdmapManagerWrapper;

    .line 24
    .line 25
    sget-object p2, Lcom/android/server/om/IdmapDaemon;->sInstance:Lcom/android/server/om/IdmapDaemon;

    .line 26
    .line 27
    if-nez p2, :cond_0

    .line 28
    .line 29
    new-instance p2, Lcom/android/server/om/IdmapDaemon;

    .line 30
    .line 31
    invoke-direct {p2}, Lcom/android/server/om/IdmapDaemon;-><init>()V

    .line 32
    .line 33
    .line 34
    sput-object p2, Lcom/android/server/om/IdmapDaemon;->sInstance:Lcom/android/server/om/IdmapDaemon;

    .line 35
    .line 36
    :cond_0
    sget-object p2, Lcom/android/server/om/IdmapDaemon;->sInstance:Lcom/android/server/om/IdmapDaemon;

    .line 37
    .line 38
    invoke-direct {p1, p4, p2}, Lcom/android/server/om/IdmapManagerWrapper;-><init>(Lcom/android/server/om/IdmapManager;Lcom/android/server/om/IdmapDaemon;)V

    .line 39
    .line 40
    .line 41
    iput-object p1, p0, Lcom/android/server/om/OverlayManagerServiceExt;->mIdmapManager:Lcom/android/server/om/IdmapManagerWrapper;

    .line 42
    .line 43
    iput-object p3, p0, Lcom/android/server/om/OverlayManagerServiceExt;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    .line 44
    .line 45
    iput-object p5, p0, Lcom/android/server/om/OverlayManagerServiceExt;->mPackageUpdateHelper:Lcom/android/server/om/OverlayManagerService$PackageUpdateHelper;

    .line 46
    .line 47
    invoke-virtual {p3}, Lcom/android/server/om/OverlayManagerSettings;->getUsers()[I

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    array-length p2, p1

    .line 52
    const/4 p4, 0x0

    .line 53
    move p5, p4

    .line 54
    :goto_0
    if-ge p5, p2, :cond_4

    .line 55
    .line 56
    aget v2, p1, p5

    .line 57
    .line 58
    invoke-virtual {p3, v2}, Lcom/android/server/om/OverlayManagerSettings;->getOverlaysForUser(I)Landroid/util/ArrayMap;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    invoke-static {v3}, Lcom/android/server/om/OverlayManagerServiceExt;->getSafeStream(Ljava/util/Collection;)Ljava/util/stream/Stream;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    new-instance v4, Lcom/android/server/om/OverlayManagerService$2$$ExternalSyntheticLambda1;

    .line 71
    .line 72
    const/4 v5, 0x0

    .line 73
    invoke-direct {v4, v5}, Lcom/android/server/om/OverlayManagerService$2$$ExternalSyntheticLambda1;-><init>(I)V

    .line 74
    .line 75
    .line 76
    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    check-cast v3, Ljava/util/List;

    .line 89
    .line 90
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 95
    .line 96
    .line 97
    move-result v4

    .line 98
    if-eqz v4, :cond_3

    .line 99
    .line 100
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    check-cast v4, Landroid/content/om/OverlayInfo;

    .line 105
    .line 106
    invoke-static {v4}, Landroid/content/om/OverlayInfoExt;->isOverlayInfoExt(Landroid/content/om/OverlayInfo;)Z

    .line 107
    .line 108
    .line 109
    move-result v5

    .line 110
    if-nez v5, :cond_2

    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_2
    new-instance v5, Ljava/io/File;

    .line 114
    .line 115
    iget-object v6, v4, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    .line 116
    .line 117
    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    .line 121
    .line 122
    .line 123
    move-result v5

    .line 124
    if-nez v5, :cond_1

    .line 125
    .line 126
    invoke-virtual {v4}, Landroid/content/om/OverlayInfo;->getOverlayIdentifier()Landroid/content/om/OverlayIdentifier;

    .line 127
    .line 128
    .line 129
    move-result-object v5

    .line 130
    invoke-virtual {p3, v5, v2}, Lcom/android/server/om/OverlayManagerSettings;->remove(Landroid/content/om/OverlayIdentifier;I)Z

    .line 131
    .line 132
    .line 133
    invoke-static {v4}, Landroid/content/om/OverlayInfoExt;->initFromInfo(Landroid/content/om/OverlayInfo;)Landroid/content/om/OverlayInfoExt;

    .line 134
    .line 135
    .line 136
    move-result-object v4

    .line 137
    invoke-virtual {p0, v4}, Lcom/android/server/om/OverlayManagerServiceExt;->removeIdmap(Landroid/content/om/OverlayInfoExt;)V

    .line 138
    .line 139
    .line 140
    goto :goto_1

    .line 141
    :cond_3
    add-int/lit8 p5, p5, 0x1

    .line 142
    .line 143
    goto :goto_0

    .line 144
    :cond_4
    new-instance p1, Lcom/android/server/om/OverlayInfoExtPolicy;

    .line 145
    .line 146
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 147
    .line 148
    .line 149
    sget-object p2, Lcom/android/server/om/OverlayPolicyManager;->mLock:Ljava/lang/Object;

    .line 150
    .line 151
    monitor-enter p2

    .line 152
    :try_start_0
    sget-object p3, Lcom/android/server/om/OverlayPolicyManager;->policies:Ljava/util/List;

    .line 153
    .line 154
    check-cast p3, Ljava/util/ArrayList;

    .line 155
    .line 156
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    const-string p1, "com.samsung.android.themecenter"

    .line 161
    .line 162
    const-string/jumbo p2, "themecenter state is "

    .line 163
    .line 164
    .line 165
    const/4 p3, 0x1

    .line 166
    :try_start_1
    iget-object p5, p0, Lcom/android/server/om/OverlayManagerServiceExt;->mContext:Landroid/content/Context;

    .line 167
    .line 168
    invoke-virtual {p5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 169
    .line 170
    .line 171
    move-result-object p5

    .line 172
    invoke-virtual {p5, p1}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    .line 173
    .line 174
    .line 175
    move-result p5

    .line 176
    if-le p5, p3, :cond_5

    .line 177
    .line 178
    new-instance v2, Ljava/lang/StringBuilder;

    .line 179
    .line 180
    invoke-direct {v2, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object p2

    .line 193
    invoke-static {v1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    .line 195
    .line 196
    iget-object p2, p0, Lcom/android/server/om/OverlayManagerServiceExt;->mContext:Landroid/content/Context;

    .line 197
    .line 198
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 199
    .line 200
    .line 201
    move-result-object p2

    .line 202
    invoke-virtual {p2, p1, p3, p4}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 203
    .line 204
    .line 205
    goto :goto_2

    .line 206
    :catch_0
    move-exception p1

    .line 207
    new-instance p2, Ljava/lang/StringBuilder;

    .line 208
    .line 209
    const-string p5, "Failed to enable themecenter "

    .line 210
    .line 211
    invoke-direct {p2, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object p1

    .line 218
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object p1

    .line 225
    invoke-static {v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    .line 227
    .line 228
    :cond_5
    :goto_2
    const-string p1, "com.samsung.android.themestore"

    .line 229
    .line 230
    const-string/jumbo p2, "themestore state is "

    .line 231
    .line 232
    .line 233
    :try_start_2
    const-class p5, Landroid/content/pm/PackageManagerInternal;

    .line 234
    .line 235
    invoke-static {p5}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object p5

    .line 239
    check-cast p5, Landroid/content/pm/PackageManagerInternal;

    .line 240
    .line 241
    invoke-virtual {p5, p1}, Landroid/content/pm/PackageManagerInternal;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 242
    .line 243
    .line 244
    move-result-object p5

    .line 245
    invoke-interface {p5, p4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    .line 246
    .line 247
    .line 248
    move-result-object p5

    .line 249
    invoke-interface {p5}, Lcom/android/server/pm/pkg/PackageUserState;->getEnabledState()I

    .line 250
    .line 251
    .line 252
    move-result v2

    .line 253
    if-le v2, p3, :cond_6

    .line 254
    .line 255
    const-string/jumbo v2, "shell:1000"

    .line 256
    .line 257
    .line 258
    invoke-interface {p5}, Lcom/android/server/pm/pkg/PackageUserState;->getLastDisableAppCaller()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v3

    .line 262
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 263
    .line 264
    .line 265
    move-result v2

    .line 266
    if-eqz v2, :cond_6

    .line 267
    .line 268
    new-instance v2, Ljava/lang/StringBuilder;

    .line 269
    .line 270
    invoke-direct {v2, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    invoke-interface {p5}, Lcom/android/server/pm/pkg/PackageUserState;->getEnabledState()I

    .line 274
    .line 275
    .line 276
    move-result p2

    .line 277
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    const-string p2, " and the last disabler is "

    .line 281
    .line 282
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    invoke-interface {p5}, Lcom/android/server/pm/pkg/PackageUserState;->getLastDisableAppCaller()Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object p2

    .line 289
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object p2

    .line 299
    invoke-static {v1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    .line 301
    .line 302
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerServiceExt;->mContext:Landroid/content/Context;

    .line 303
    .line 304
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 305
    .line 306
    .line 307
    move-result-object p0

    .line 308
    invoke-virtual {p0, p1, p3, p4}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 309
    .line 310
    .line 311
    goto :goto_3

    .line 312
    :catch_1
    move-exception p0

    .line 313
    new-instance p1, Ljava/lang/StringBuilder;

    .line 314
    .line 315
    const-string p2, "Failed to enable themestore "

    .line 316
    .line 317
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 318
    .line 319
    .line 320
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object p0

    .line 324
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    .line 326
    .line 327
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object p0

    .line 331
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    .line 333
    .line 334
    :cond_6
    :goto_3
    return-void

    .line 335
    :catchall_0
    move-exception p0

    .line 336
    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 337
    throw p0
.end method

.method public static getSafeStream(Ljava/util/Collection;)Ljava/util/stream/Stream;
    .locals 2

    .line 1
    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    new-instance v0, Lcom/android/server/om/OverlayManagerServiceExt$$ExternalSyntheticLambda6;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Ljava/util/Collection;

    .line 15
    .line 16
    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    new-instance v0, Lcom/android/server/om/OverlayManagerServiceExt$$ExternalSyntheticLambda2;

    .line 21
    .line 22
    const/4 v1, 0x2

    .line 23
    invoke-direct {v0, v1}, Lcom/android/server/om/OverlayManagerServiceExt$$ExternalSyntheticLambda2;-><init>(I)V

    .line 24
    .line 25
    .line 26
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    return-object p0
.end method


# virtual methods
.method public final getAllOverlaysInCategory(II)[Landroid/content/om/OverlayInfoExt;
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerServiceExt;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    .line 2
    .line 3
    invoke-virtual {p0, p2}, Lcom/android/server/om/OverlayManagerSettings;->getOverlaysForUser(I)Landroid/util/ArrayMap;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    new-instance p2, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Ljava/util/List;

    .line 31
    .line 32
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_0

    .line 41
    .line 42
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    check-cast v1, Landroid/content/om/OverlayInfo;

    .line 47
    .line 48
    invoke-static {v1, p1}, Landroid/content/om/OverlayInfoExt;->isOverlayInfoExtOfCategory(Landroid/content/om/OverlayInfo;I)Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-eqz v2, :cond_1

    .line 53
    .line 54
    invoke-static {v1}, Landroid/content/om/OverlayInfoExt;->initFromInfo(Landroid/content/om/OverlayInfo;)Landroid/content/om/OverlayInfoExt;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    const/4 p0, 0x0

    .line 63
    new-array p0, p0, [Landroid/content/om/OverlayInfoExt;

    .line 64
    .line 65
    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    check-cast p0, [Landroid/content/om/OverlayInfoExt;

    .line 70
    .line 71
    return-object p0
.end method

.method public final getTargetPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerServiceExt;->mIdmapManager:Lcom/android/server/om/IdmapManagerWrapper;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string v1, "getTargetPath for "

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "OverlayManagerExt"

    .line 21
    .line 22
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    :try_start_0
    iget-object p0, p0, Lcom/android/server/om/IdmapManagerWrapper;->mIdmapDaemon:Lcom/android/server/om/IdmapDaemon;

    .line 26
    .line 27
    invoke-virtual {p0, p1}, Lcom/android/server/om/IdmapDaemon;->getTargetPath(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    goto :goto_0

    .line 32
    :catch_0
    move-exception p0

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string v2, "failed to getTargetPath for "

    .line 36
    .line 37
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-static {v1, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 48
    .line 49
    .line 50
    const/4 p0, 0x0

    .line 51
    :goto_0
    return-object p0
.end method

.method public final getUserIds(II)[I
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerServiceExt;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const/4 v0, -0x1

    .line 8
    if-ne v0, p2, :cond_0

    .line 9
    .line 10
    return-object p0

    .line 11
    :cond_0
    if-eqz p2, :cond_1

    .line 12
    .line 13
    filled-new-array {p2}, [I

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0

    .line 18
    :cond_1
    and-int/lit8 v0, p1, 0x10

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_2
    and-int/lit8 p1, p1, 0x20

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    if-eqz p1, :cond_6

    .line 27
    .line 28
    new-instance p1, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    array-length p2, p0

    .line 41
    :goto_0
    if-ge v0, p2, :cond_5

    .line 42
    .line 43
    aget v1, p0, v0

    .line 44
    .line 45
    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-nez v2, :cond_3

    .line 50
    .line 51
    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isDualAppId(I)Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-eqz v2, :cond_4

    .line 56
    .line 57
    :cond_3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    :cond_4
    add-int/lit8 v0, v0, 0x1

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_5
    invoke-static {p1}, Lcom/android/server/om/OverlayManagerServiceExt;->getSafeStream(Ljava/util/Collection;)Ljava/util/stream/Stream;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    new-instance p1, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda1;

    .line 72
    .line 73
    const/4 p2, 0x2

    .line 74
    invoke-direct {p1, p2}, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda1;-><init>(I)V

    .line 75
    .line 76
    .line 77
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    invoke-interface {p0}, Ljava/util/stream/IntStream;->toArray()[I

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    goto :goto_1

    .line 86
    :cond_6
    const/4 p0, 0x1

    .line 87
    new-array p0, p0, [I

    .line 88
    .line 89
    aput p2, p0, v0

    .line 90
    .line 91
    :goto_1
    return-object p0
.end method

.method public final handleStateUpdate(Lcom/android/server/pm/pkg/AndroidPackage;Landroid/content/om/CriticalOverlayInfo;II)I
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceExt;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    new-instance v2, Landroid/content/om/OverlayIdentifier;

    .line 5
    .line 6
    check-cast p2, Landroid/content/om/OverlayInfo;

    .line 7
    .line 8
    invoke-virtual {p2}, Landroid/content/om/OverlayInfo;->getPackageName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    invoke-direct {v2, p2}, Landroid/content/om/OverlayIdentifier;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v2, p3}, Lcom/android/server/om/OverlayManagerSettings;->getOverlayInfo(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;

    .line 16
    .line 17
    .line 18
    move-result-object p2
    :try_end_0
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v3, "handleStateUpdate info exists as "

    .line 22
    .line 23
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v3, " for user "

    .line 30
    .line 31
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    const-string v3, "OverlayManagerExt"

    .line 42
    .line 43
    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    invoke-static {p2}, Landroid/content/om/OverlayInfoExt;->initFromInfo(Landroid/content/om/OverlayInfo;)Landroid/content/om/OverlayInfoExt;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    if-nez v2, :cond_0

    .line 51
    .line 52
    return v1

    .line 53
    :cond_0
    and-int/lit8 v3, p4, 0x18

    .line 54
    .line 55
    const/4 v4, 0x1

    .line 56
    if-eqz v3, :cond_1

    .line 57
    .line 58
    invoke-virtual {p2}, Landroid/content/om/OverlayInfo;->getCategory()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    if-eqz v3, :cond_1

    .line 63
    .line 64
    invoke-virtual {p2}, Landroid/content/om/OverlayInfo;->getCategory()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    const-string/jumbo v3, "zipped-overlay"

    .line 69
    .line 70
    .line 71
    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 72
    .line 73
    .line 74
    move-result p2

    .line 75
    if-eqz p2, :cond_1

    .line 76
    .line 77
    return v4

    .line 78
    :cond_1
    iget-object p2, p0, Lcom/android/server/om/OverlayManagerServiceExt;->mIdmapManager:Lcom/android/server/om/IdmapManagerWrapper;

    .line 79
    .line 80
    if-eqz p1, :cond_3

    .line 81
    .line 82
    invoke-virtual {p2, p1, v2, p3}, Lcom/android/server/om/IdmapManagerWrapper;->createIdmap(Lcom/android/server/pm/pkg/AndroidPackage;Landroid/content/om/OverlayInfoExt;I)I

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    and-int/lit8 v5, v3, 0x2

    .line 87
    .line 88
    if-eqz v5, :cond_2

    .line 89
    .line 90
    move v5, v4

    .line 91
    goto :goto_0

    .line 92
    :cond_2
    move v5, v1

    .line 93
    goto :goto_0

    .line 94
    :cond_3
    move v3, v1

    .line 95
    move v5, v3

    .line 96
    :goto_0
    iget-object v6, v2, Landroid/content/om/OverlayInfoExt;->info:Landroid/content/om/OverlayInfo;

    .line 97
    .line 98
    invoke-virtual {v6}, Landroid/content/om/OverlayInfo;->getOverlayIdentifier()Landroid/content/om/OverlayIdentifier;

    .line 99
    .line 100
    .line 101
    move-result-object v6

    .line 102
    invoke-virtual {v0, v6, p3}, Lcom/android/server/om/OverlayManagerSettings;->getState(Landroid/content/om/OverlayIdentifier;I)I

    .line 103
    .line 104
    .line 105
    move-result v6

    .line 106
    iget-object v7, v2, Landroid/content/om/OverlayInfoExt;->info:Landroid/content/om/OverlayInfo;

    .line 107
    .line 108
    and-int/lit8 v8, p4, 0x1

    .line 109
    .line 110
    const/4 v9, 0x2

    .line 111
    const/4 v10, 0x4

    .line 112
    if-eqz v8, :cond_4

    .line 113
    .line 114
    move v1, v10

    .line 115
    goto :goto_1

    .line 116
    :cond_4
    and-int/lit8 v8, p4, 0x2

    .line 117
    .line 118
    if-eqz v8, :cond_5

    .line 119
    .line 120
    const/4 v1, 0x5

    .line 121
    goto :goto_1

    .line 122
    :cond_5
    and-int/2addr p4, v10

    .line 123
    if-eqz p4, :cond_6

    .line 124
    .line 125
    const/4 v1, 0x7

    .line 126
    goto :goto_1

    .line 127
    :cond_6
    if-nez p1, :cond_7

    .line 128
    .line 129
    goto :goto_1

    .line 130
    :cond_7
    and-int/lit8 p4, v3, 0x1

    .line 131
    .line 132
    if-nez p4, :cond_8

    .line 133
    .line 134
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 135
    .line 136
    .line 137
    iget-object p4, v7, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    .line 138
    .line 139
    iget v1, v7, Landroid/content/om/OverlayInfo;->userId:I

    .line 140
    .line 141
    iget-object p2, p2, Lcom/android/server/om/IdmapManagerWrapper;->mIdmapDaemon:Lcom/android/server/om/IdmapDaemon;

    .line 142
    .line 143
    invoke-virtual {p2, v1, p4}, Lcom/android/server/om/IdmapDaemon;->idmapExists(ILjava/lang/String;)Z

    .line 144
    .line 145
    .line 146
    move-result p2

    .line 147
    if-nez p2, :cond_8

    .line 148
    .line 149
    move v1, v4

    .line 150
    goto :goto_1

    .line 151
    :cond_8
    invoke-virtual {v7}, Landroid/content/om/OverlayInfo;->getOverlayIdentifier()Landroid/content/om/OverlayIdentifier;

    .line 152
    .line 153
    .line 154
    move-result-object p2

    .line 155
    invoke-virtual {v0, p2, p3}, Lcom/android/server/om/OverlayManagerSettings;->getEnabled(Landroid/content/om/OverlayIdentifier;I)Z

    .line 156
    .line 157
    .line 158
    move-result p2

    .line 159
    if-eqz p2, :cond_9

    .line 160
    .line 161
    const/4 p2, 0x3

    .line 162
    move v1, p2

    .line 163
    goto :goto_1

    .line 164
    :cond_9
    move v1, v9

    .line 165
    :goto_1
    if-eq v6, v1, :cond_a

    .line 166
    .line 167
    invoke-virtual {p0, p1, v2, p3, v1}, Lcom/android/server/om/OverlayManagerServiceExt;->updateOverlayState(Lcom/android/server/pm/pkg/AndroidPackage;Landroid/content/om/OverlayInfoExt;II)V

    .line 168
    .line 169
    .line 170
    move v5, v4

    .line 171
    :cond_a
    if-eqz v5, :cond_b

    .line 172
    .line 173
    move v4, v9

    .line 174
    :cond_b
    return v4

    .line 175
    :catch_0
    move-exception p0

    .line 176
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 177
    .line 178
    .line 179
    return v1
.end method

.method public final handleUserSwitch(I)V
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceExt;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    .line 4
    .line 5
    invoke-virtual {v1, p1}, Lcom/android/server/om/OverlayManagerSettings;->getOverlaysForUser(I)Landroid/util/ArrayMap;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-interface {v2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    new-instance v3, Lcom/android/server/om/OverlayManagerService$2$$ExternalSyntheticLambda1;

    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    invoke-direct {v3, v4}, Lcom/android/server/om/OverlayManagerService$2$$ExternalSyntheticLambda1;-><init>(I)V

    .line 21
    .line 22
    .line 23
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Ljava/util/Collection;

    .line 36
    .line 37
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 38
    .line 39
    .line 40
    invoke-static {v0}, Lcom/android/server/om/OverlayManagerServiceExt;->getSafeStream(Ljava/util/Collection;)Ljava/util/stream/Stream;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    new-instance v2, Lcom/android/server/om/OverlayManagerServiceExt$$ExternalSyntheticLambda1;

    .line 45
    .line 46
    const/4 v3, 0x0

    .line 47
    invoke-direct {v2, v3}, Lcom/android/server/om/OverlayManagerServiceExt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 48
    .line 49
    .line 50
    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    new-instance v2, Lcom/android/server/om/OverlayManagerServiceExt$$ExternalSyntheticLambda2;

    .line 55
    .line 56
    const/4 v3, 0x0

    .line 57
    invoke-direct {v2, v3}, Lcom/android/server/om/OverlayManagerServiceExt$$ExternalSyntheticLambda2;-><init>(I)V

    .line 58
    .line 59
    .line 60
    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    check-cast v0, Ljava/util/List;

    .line 73
    .line 74
    new-instance v2, Ljava/util/HashSet;

    .line 75
    .line 76
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 80
    .line 81
    .line 82
    const/4 v0, 0x0

    .line 83
    if-eqz p1, :cond_2

    .line 84
    .line 85
    new-instance v3, Ljava/util/ArrayList;

    .line 86
    .line 87
    invoke-virtual {v1, v0}, Lcom/android/server/om/OverlayManagerSettings;->getOverlaysForUser(I)Landroid/util/ArrayMap;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    new-instance v4, Lcom/android/server/om/OverlayManagerService$2$$ExternalSyntheticLambda1;

    .line 100
    .line 101
    const/4 v5, 0x0

    .line 102
    invoke-direct {v4, v5}, Lcom/android/server/om/OverlayManagerService$2$$ExternalSyntheticLambda1;-><init>(I)V

    .line 103
    .line 104
    .line 105
    invoke-interface {v1, v4}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    invoke-interface {v1, v4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    check-cast v1, Ljava/util/Collection;

    .line 118
    .line 119
    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 120
    .line 121
    .line 122
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    .line 123
    .line 124
    .line 125
    move-result v1

    .line 126
    if-nez v1, :cond_1

    .line 127
    .line 128
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isDualAppId(I)Z

    .line 129
    .line 130
    .line 131
    move-result v1

    .line 132
    if-eqz v1, :cond_0

    .line 133
    .line 134
    goto :goto_0

    .line 135
    :cond_0
    const/16 v1, 0x10

    .line 136
    .line 137
    goto :goto_1

    .line 138
    :cond_1
    :goto_0
    const/16 v1, 0x30

    .line 139
    .line 140
    :goto_1
    invoke-static {v3}, Lcom/android/server/om/OverlayManagerServiceExt;->getSafeStream(Ljava/util/Collection;)Ljava/util/stream/Stream;

    .line 141
    .line 142
    .line 143
    move-result-object v3

    .line 144
    new-instance v4, Lcom/android/server/om/OverlayManagerServiceExt$$ExternalSyntheticLambda1;

    .line 145
    .line 146
    const/4 v5, 0x0

    .line 147
    invoke-direct {v4, v5}, Lcom/android/server/om/OverlayManagerServiceExt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 148
    .line 149
    .line 150
    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 151
    .line 152
    .line 153
    move-result-object v3

    .line 154
    new-instance v4, Lcom/android/server/om/OverlayManagerServiceExt$$ExternalSyntheticLambda2;

    .line 155
    .line 156
    const/4 v5, 0x0

    .line 157
    invoke-direct {v4, v5}, Lcom/android/server/om/OverlayManagerServiceExt$$ExternalSyntheticLambda2;-><init>(I)V

    .line 158
    .line 159
    .line 160
    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 161
    .line 162
    .line 163
    move-result-object v3

    .line 164
    new-instance v4, Lcom/android/server/om/OverlayManagerServiceExt$$ExternalSyntheticLambda3;

    .line 165
    .line 166
    invoke-direct {v4, v1}, Lcom/android/server/om/OverlayManagerServiceExt$$ExternalSyntheticLambda3;-><init>(I)V

    .line 167
    .line 168
    .line 169
    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 174
    .line 175
    .line 176
    move-result-object v3

    .line 177
    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v1

    .line 181
    check-cast v1, Ljava/util/List;

    .line 182
    .line 183
    invoke-virtual {v2, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 184
    .line 185
    .line 186
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    .line 187
    .line 188
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 192
    .line 193
    .line 194
    move-result v2

    .line 195
    if-eqz v2, :cond_3

    .line 196
    .line 197
    const-string p0, "Working without any overlayInfoExts ? + for user "

    .line 198
    .line 199
    const-string v0, "OverlayManagerExt"

    .line 200
    .line 201
    invoke-static {p1, p0, v0}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    return-void

    .line 205
    :cond_3
    invoke-static {v1}, Lcom/android/server/om/OverlayManagerServiceExt;->getSafeStream(Ljava/util/Collection;)Ljava/util/stream/Stream;

    .line 206
    .line 207
    .line 208
    move-result-object v2

    .line 209
    invoke-interface {v2}, Ljava/util/stream/Stream;->parallel()Ljava/util/stream/BaseStream;

    .line 210
    .line 211
    .line 212
    move-result-object v2

    .line 213
    check-cast v2, Ljava/util/stream/Stream;

    .line 214
    .line 215
    new-instance v3, Lcom/android/server/om/OverlayManagerServiceExt$$ExternalSyntheticLambda0;

    .line 216
    .line 217
    const/4 v4, 0x0

    .line 218
    const/4 v5, 0x0

    .line 219
    invoke-direct {v3, p0, p1, v4, v5}, Lcom/android/server/om/OverlayManagerServiceExt$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/om/OverlayManagerServiceExt;ILandroid/content/om/ISamsungOverlayCallback;I)V

    .line 220
    .line 221
    .line 222
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 223
    .line 224
    .line 225
    move-result-object v2

    .line 226
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 227
    .line 228
    .line 229
    move-result-object v3

    .line 230
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move-result-object v2

    .line 234
    check-cast v2, Ljava/util/List;

    .line 235
    .line 236
    invoke-virtual {p0, p1, v2, v1}, Lcom/android/server/om/OverlayManagerServiceExt;->notifySystemServices(ILjava/util/List;Ljava/util/List;)V

    .line 237
    .line 238
    .line 239
    iput-boolean v0, p0, Lcom/android/server/om/OverlayManagerServiceExt;->mIsInitOnBoot:Z

    .line 240
    .line 241
    return-void
.end method

.method public final isOverlayUsedByOtherUser(Landroid/content/om/OverlayInfoExt;Z)Z
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_3

    .line 3
    .line 4
    iget-object v1, p1, Landroid/content/om/OverlayInfoExt;->info:Landroid/content/om/OverlayInfo;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    goto :goto_1

    .line 9
    :cond_0
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerServiceExt;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerSettings;->getUsers()[I

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    array-length v2, v1

    .line 16
    move v3, v0

    .line 17
    :goto_0
    if-ge v3, v2, :cond_3

    .line 18
    .line 19
    aget v4, v1, v3

    .line 20
    .line 21
    :try_start_0
    invoke-virtual {p1}, Landroid/content/om/OverlayInfoExt;->getOverlayIdentifier()Landroid/content/om/OverlayIdentifier;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    invoke-virtual {p0, v5, v4}, Lcom/android/server/om/OverlayManagerSettings;->getOverlayInfo(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    if-eqz v5, :cond_2

    .line 30
    .line 31
    if-eqz p2, :cond_1

    .line 32
    .line 33
    if-eqz v4, :cond_1

    .line 34
    .line 35
    const/4 p0, 0x1

    .line 36
    return p0

    .line 37
    :cond_1
    invoke-virtual {v5}, Landroid/content/om/OverlayInfo;->isEnabled()Z

    .line 38
    .line 39
    .line 40
    move-result p0
    :try_end_0
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    return p0

    .line 42
    :catch_0
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_3
    :goto_1
    return v0
.end method

.method public final notifySystemServices(ILjava/util/List;Ljava/util/List;)V
    .locals 8

    .line 1
    invoke-static {p3}, Lcom/android/server/om/OverlayManagerServiceExt;->getSafeStream(Ljava/util/Collection;)Ljava/util/stream/Stream;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/stream/Stream;->parallel()Ljava/util/stream/BaseStream;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/util/stream/Stream;

    .line 10
    .line 11
    new-instance v1, Lcom/android/server/om/OverlayManagerServiceExt$$ExternalSyntheticLambda8;

    .line 12
    .line 13
    invoke-direct {v1, p0, p1}, Lcom/android/server/om/OverlayManagerServiceExt$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/om/OverlayManagerServiceExt;I)V

    .line 14
    .line 15
    .line 16
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Ljava/util/List;

    .line 29
    .line 30
    new-instance v0, Ljava/util/HashSet;

    .line 31
    .line 32
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_0

    .line 44
    .line 45
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    check-cast v1, Ljava/util/List;

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_7

    .line 64
    .line 65
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    check-cast v0, Ljava/lang/Integer;

    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    const/4 v3, 0x0

    .line 84
    if-eqz v2, :cond_2

    .line 85
    .line 86
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    check-cast v2, Landroid/content/om/OverlayInfoExt;

    .line 91
    .line 92
    const-string v4, "android"

    .line 93
    .line 94
    iget-object v5, v2, Landroid/content/om/OverlayInfoExt;->info:Landroid/content/om/OverlayInfo;

    .line 95
    .line 96
    iget-object v5, v5, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    .line 97
    .line 98
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v4

    .line 102
    if-eqz v4, :cond_1

    .line 103
    .line 104
    iget v4, v2, Landroid/content/om/OverlayInfoExt;->configFlags:I

    .line 105
    .line 106
    and-int/lit16 v4, v4, 0x400

    .line 107
    .line 108
    if-nez v4, :cond_1

    .line 109
    .line 110
    const-string v1, "OverlayManagerExt"

    .line 111
    .line 112
    new-instance v4, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    const-string v5, "Not pruning targets because of overlayInfoExt of category - "

    .line 115
    .line 116
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    iget v5, v2, Landroid/content/om/OverlayInfoExt;->category:I

    .line 120
    .line 121
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    const-string v5, " "

    .line 125
    .line 126
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    iget-object v2, v2, Landroid/content/om/OverlayInfoExt;->info:Landroid/content/om/OverlayInfo;

    .line 130
    .line 131
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    .line 140
    .line 141
    move v1, v3

    .line 142
    goto :goto_2

    .line 143
    :cond_2
    const/4 v1, 0x1

    .line 144
    :goto_2
    const-string v2, "android"

    .line 145
    .line 146
    invoke-interface {p2, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result v2

    .line 150
    if-eqz v2, :cond_3

    .line 151
    .line 152
    if-eqz v1, :cond_3

    .line 153
    .line 154
    sget-object v2, Landroid/content/om/SamsungThemeConstants;->changeableApps:Ljava/util/HashSet;

    .line 155
    .line 156
    invoke-interface {p2, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 157
    .line 158
    .line 159
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerServiceExt;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    .line 160
    .line 161
    invoke-virtual {v2, v0}, Lcom/android/server/om/OverlayManagerSettings;->getOverlaysForUser(I)Landroid/util/ArrayMap;

    .line 162
    .line 163
    .line 164
    move-result-object v2

    .line 165
    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 170
    .line 171
    .line 172
    move-result-object v2

    .line 173
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 174
    .line 175
    .line 176
    move-result v4

    .line 177
    if-eqz v4, :cond_3

    .line 178
    .line 179
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v4

    .line 183
    check-cast v4, Ljava/util/List;

    .line 184
    .line 185
    invoke-static {v4}, Lcom/android/server/om/OverlayManagerServiceExt;->getSafeStream(Ljava/util/Collection;)Ljava/util/stream/Stream;

    .line 186
    .line 187
    .line 188
    move-result-object v4

    .line 189
    new-instance v5, Lcom/android/server/om/OverlayManagerServiceExt$$ExternalSyntheticLambda1;

    .line 190
    .line 191
    const/4 v6, 0x1

    .line 192
    invoke-direct {v5, v6}, Lcom/android/server/om/OverlayManagerServiceExt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 193
    .line 194
    .line 195
    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 196
    .line 197
    .line 198
    move-result-object v4

    .line 199
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 200
    .line 201
    .line 202
    move-result-object v5

    .line 203
    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v4

    .line 207
    check-cast v4, Ljava/util/List;

    .line 208
    .line 209
    invoke-interface {p2, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 210
    .line 211
    .line 212
    goto :goto_3

    .line 213
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    .line 214
    .line 215
    new-instance v4, Ljava/util/HashSet;

    .line 216
    .line 217
    invoke-direct {v4, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 218
    .line 219
    .line 220
    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 221
    .line 222
    .line 223
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerServiceExt;->mPackageUpdateHelper:Lcom/android/server/om/OverlayManagerService$PackageUpdateHelper;

    .line 224
    .line 225
    iget-object v5, v4, Lcom/android/server/om/OverlayManagerService$PackageUpdateHelper;->this$0:Lcom/android/server/om/OverlayManagerService;

    .line 226
    .line 227
    iget-object v5, v5, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    .line 228
    .line 229
    monitor-enter v5

    .line 230
    :try_start_0
    iget-object v4, v4, Lcom/android/server/om/OverlayManagerService$PackageUpdateHelper;->this$0:Lcom/android/server/om/OverlayManagerService;

    .line 231
    .line 232
    invoke-virtual {v4, v0, v2, v1}, Lcom/android/server/om/OverlayManagerService;->updatePackageManagerLocked(ILjava/util/Collection;Z)Ljava/util/List;

    .line 233
    .line 234
    .line 235
    move-result-object v2

    .line 236
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 237
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerServiceExt;->mPackageUpdateHelper:Lcom/android/server/om/OverlayManagerService$PackageUpdateHelper;

    .line 238
    .line 239
    iget-object v5, v4, Lcom/android/server/om/OverlayManagerService$PackageUpdateHelper;->this$0:Lcom/android/server/om/OverlayManagerService;

    .line 240
    .line 241
    iget-object v6, v5, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    .line 242
    .line 243
    monitor-enter v6

    .line 244
    :try_start_1
    iget-object v4, v4, Lcom/android/server/om/OverlayManagerService$PackageUpdateHelper;->this$0:Lcom/android/server/om/OverlayManagerService;

    .line 245
    .line 246
    invoke-virtual {v4}, Lcom/android/server/om/OverlayManagerService;->persistSettingsLocked()V

    .line 247
    .line 248
    .line 249
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 250
    new-instance v4, Ljava/lang/StringBuilder;

    .line 251
    .line 252
    const-string/jumbo v5, "notifyActivityManager() called with: targetPackageNames = "

    .line 253
    .line 254
    .line 255
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    const-string v5, ", userId = ["

    .line 262
    .line 263
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    const-string v5, "], targetsPruned = "

    .line 270
    .line 271
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    const-string v5, "OverlayManagerExt"

    .line 275
    .line 276
    invoke-static {v5, v4, v1}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 277
    .line 278
    .line 279
    :try_start_2
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerServiceExt;->mContext:Landroid/content/Context;

    .line 280
    .line 281
    const-string/jumbo v6, "textservices"

    .line 282
    .line 283
    .line 284
    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 285
    .line 286
    .line 287
    move-result-object v4

    .line 288
    check-cast v4, Landroid/view/textservice/TextServicesManager;

    .line 289
    .line 290
    invoke-virtual {v4}, Landroid/view/textservice/TextServicesManager;->getCurrentSpellCheckerInfo()Landroid/view/textservice/SpellCheckerInfo;

    .line 291
    .line 292
    .line 293
    move-result-object v4

    .line 294
    if-eqz v4, :cond_4

    .line 295
    .line 296
    invoke-virtual {v4}, Landroid/view/textservice/SpellCheckerInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    .line 297
    .line 298
    .line 299
    move-result-object v6

    .line 300
    invoke-virtual {v4}, Landroid/view/textservice/SpellCheckerInfo;->getPackageName()Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v4

    .line 304
    goto :goto_4

    .line 305
    :catch_0
    move-exception v3

    .line 306
    goto :goto_5

    .line 307
    :cond_4
    const/4 v6, 0x0

    .line 308
    move-object v4, v6

    .line 309
    :goto_4
    move-object v7, v2

    .line 310
    check-cast v7, Ljava/util/ArrayList;

    .line 311
    .line 312
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 313
    .line 314
    .line 315
    move-result v7

    .line 316
    if-eqz v7, :cond_5

    .line 317
    .line 318
    if-eqz v6, :cond_5

    .line 319
    .line 320
    iget-object v7, p0, Lcom/android/server/om/OverlayManagerServiceExt;->mContext:Landroid/content/Context;

    .line 321
    .line 322
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 323
    .line 324
    .line 325
    move-result-object v7

    .line 326
    invoke-virtual {v7, v4, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 327
    .line 328
    .line 329
    move-result-object v3

    .line 330
    if-eqz v3, :cond_5

    .line 331
    .line 332
    iget-object v4, v6, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 333
    .line 334
    iget-object v6, v3, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    .line 335
    .line 336
    iput-object v6, v4, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    .line 337
    .line 338
    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->overlayPaths:[Ljava/lang/String;

    .line 339
    .line 340
    iput-object v3, v4, Landroid/content/pm/ApplicationInfo;->overlayPaths:[Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 341
    .line 342
    goto :goto_6

    .line 343
    :goto_5
    new-instance v4, Ljava/lang/StringBuilder;

    .line 344
    .line 345
    const-string v6, "Exception during getting spell checker service "

    .line 346
    .line 347
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 348
    .line 349
    .line 350
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object v3

    .line 354
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    .line 356
    .line 357
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object v3

    .line 361
    invoke-static {v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    .line 363
    .line 364
    :cond_5
    :goto_6
    if-eqz v1, :cond_6

    .line 365
    .line 366
    const-string v1, "android"

    .line 367
    .line 368
    move-object v3, v2

    .line 369
    check-cast v3, Ljava/util/ArrayList;

    .line 370
    .line 371
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 372
    .line 373
    .line 374
    move-result v4

    .line 375
    if-eqz v4, :cond_6

    .line 376
    .line 377
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 378
    .line 379
    .line 380
    const-string v1, "framework-res"

    .line 381
    .line 382
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 383
    .line 384
    .line 385
    :cond_6
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    .line 386
    .line 387
    .line 388
    move-result-object v1

    .line 389
    new-instance v3, Lcom/android/server/om/OverlayManagerServiceExt$$ExternalSyntheticLambda11;

    .line 390
    .line 391
    invoke-direct {v3, v0, v2}, Lcom/android/server/om/OverlayManagerServiceExt$$ExternalSyntheticLambda11;-><init>(ILjava/util/List;)V

    .line 392
    .line 393
    .line 394
    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 395
    .line 396
    .line 397
    goto/16 :goto_1

    .line 398
    .line 399
    :catchall_0
    move-exception p0

    .line 400
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 401
    throw p0

    .line 402
    :catchall_1
    move-exception p0

    .line 403
    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 404
    throw p0

    .line 405
    :cond_7
    return-void
.end method

.method public final removeIdmap(Landroid/content/om/OverlayInfoExt;)V
    .locals 4

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    iget-object v0, p1, Landroid/content/om/OverlayInfoExt;->info:Landroid/content/om/OverlayInfo;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceExt;->mIdmapManager:Lcom/android/server/om/IdmapManagerWrapper;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    iget-object v2, v0, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    .line 14
    .line 15
    iget v0, v0, Landroid/content/om/OverlayInfo;->userId:I

    .line 16
    .line 17
    iget-object v3, v1, Lcom/android/server/om/IdmapManagerWrapper;->mIdmapDaemon:Lcom/android/server/om/IdmapDaemon;

    .line 18
    .line 19
    invoke-virtual {v3, v0, v2}, Lcom/android/server/om/IdmapDaemon;->idmapExists(ILjava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    const/4 v0, 0x0

    .line 27
    invoke-virtual {p0, p1, v0}, Lcom/android/server/om/OverlayManagerServiceExt;->isOverlayUsedByOtherUser(Landroid/content/om/OverlayInfoExt;Z)Z

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    if-nez p0, :cond_2

    .line 32
    .line 33
    new-instance p0, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string/jumbo v0, "removing idmap for "

    .line 36
    .line 37
    .line 38
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Landroid/content/om/OverlayInfoExt;->getTargetPackageName()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v0, " - "

    .line 49
    .line 50
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    iget-object v0, p1, Landroid/content/om/OverlayInfoExt;->info:Landroid/content/om/OverlayInfo;

    .line 54
    .line 55
    iget-object v0, v0, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    .line 56
    .line 57
    const-string v2, "OverlayManagerExt"

    .line 58
    .line 59
    invoke-static {p0, v0, v2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    iget-object p0, p1, Landroid/content/om/OverlayInfoExt;->info:Landroid/content/om/OverlayInfo;

    .line 63
    .line 64
    iget p1, p0, Landroid/content/om/OverlayInfo;->userId:I

    .line 65
    .line 66
    iget-object v0, v1, Lcom/android/server/om/IdmapManagerWrapper;->mIdmapManager:Lcom/android/server/om/IdmapManager;

    .line 67
    .line 68
    invoke-virtual {v0, p0, p1}, Lcom/android/server/om/IdmapManager;->removeIdmap(Landroid/content/om/OverlayInfo;I)Z

    .line 69
    .line 70
    .line 71
    :cond_2
    :goto_0
    return-void
.end method

.method public final removeOverlaysInternal(Ljava/util/List;Landroid/content/om/ISamsungOverlayCallback;I)Ljava/util/List;
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/android/server/om/OverlayManagerServiceExt;->getSafeStream(Ljava/util/Collection;)Ljava/util/stream/Stream;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p1}, Ljava/util/stream/Stream;->parallel()Ljava/util/stream/BaseStream;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Ljava/util/stream/Stream;

    .line 10
    .line 11
    new-instance v0, Lcom/android/server/om/OverlayManagerServiceExt$$ExternalSyntheticLambda0;

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-direct {v0, p0, p3, p2, v1}, Lcom/android/server/om/OverlayManagerServiceExt$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/om/OverlayManagerServiceExt;ILandroid/content/om/ISamsungOverlayCallback;I)V

    .line 15
    .line 16
    .line 17
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    new-instance p1, Lcom/android/server/om/OverlayManagerServiceExt$$ExternalSyntheticLambda2;

    .line 22
    .line 23
    const/4 p2, 0x1

    .line 24
    invoke-direct {p1, p2}, Lcom/android/server/om/OverlayManagerServiceExt$$ExternalSyntheticLambda2;-><init>(I)V

    .line 25
    .line 26
    .line 27
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    check-cast p0, Ljava/util/List;

    .line 40
    .line 41
    return-object p0
.end method

.method public final replaceOverlays(Ljava/util/List;Ljava/util/List;Landroid/content/om/ISamsungOverlayCallback;I)V
    .locals 4

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    :cond_0
    if-nez p2, :cond_1

    .line 8
    .line 9
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    :cond_1
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/om/OverlayManagerServiceExt;->removeOverlaysInternal(Ljava/util/List;Landroid/content/om/ISamsungOverlayCallback;I)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {p2}, Lcom/android/server/om/OverlayManagerServiceExt;->getSafeStream(Ljava/util/Collection;)Ljava/util/stream/Stream;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-interface {v1}, Ljava/util/stream/Stream;->parallel()Ljava/util/stream/BaseStream;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Ljava/util/stream/Stream;

    .line 26
    .line 27
    new-instance v2, Lcom/android/server/om/OverlayManagerServiceExt$$ExternalSyntheticLambda0;

    .line 28
    .line 29
    const/4 v3, 0x0

    .line 30
    invoke-direct {v2, p0, p4, p3, v3}, Lcom/android/server/om/OverlayManagerServiceExt$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/om/OverlayManagerServiceExt;ILandroid/content/om/ISamsungOverlayCallback;I)V

    .line 31
    .line 32
    .line 33
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 34
    .line 35
    .line 36
    move-result-object p3

    .line 37
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-interface {p3, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p3

    .line 45
    check-cast p3, Ljava/util/List;

    .line 46
    .line 47
    new-instance v1, Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-direct {v1, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 53
    .line 54
    .line 55
    new-instance p3, Ljava/util/ArrayList;

    .line 56
    .line 57
    new-instance v0, Ljava/util/HashSet;

    .line 58
    .line 59
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 60
    .line 61
    .line 62
    invoke-direct {p3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 63
    .line 64
    .line 65
    new-instance v0, Ljava/util/ArrayList;

    .line 66
    .line 67
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, p4, p3, v0}, Lcom/android/server/om/OverlayManagerServiceExt;->notifySystemServices(ILjava/util/List;Ljava/util/List;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public final updateOverlayState(Lcom/android/server/pm/pkg/AndroidPackage;Landroid/content/om/OverlayInfoExt;II)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move/from16 v3, p3

    .line 8
    .line 9
    move/from16 v4, p4

    .line 10
    .line 11
    const/4 v5, 0x2

    .line 12
    iget-object v6, v0, Lcom/android/server/om/OverlayManagerServiceExt;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    .line 13
    .line 14
    const/4 v8, 0x1

    .line 15
    const-string v9, "OverlayManagerExt"

    .line 16
    .line 17
    const/4 v10, -0x1

    .line 18
    if-eqz v4, :cond_b

    .line 19
    .line 20
    iget-boolean v11, v0, Lcom/android/server/om/OverlayManagerServiceExt;->mIsInitOnBoot:Z

    .line 21
    .line 22
    if-eqz v11, :cond_0

    .line 23
    .line 24
    iget-object v0, v2, Landroid/content/om/OverlayInfoExt;->info:Landroid/content/om/OverlayInfo;

    .line 25
    .line 26
    iget v0, v0, Landroid/content/om/OverlayInfo;->state:I

    .line 27
    .line 28
    goto/16 :goto_5

    .line 29
    .line 30
    :cond_0
    const/4 v11, 0x3

    .line 31
    if-ne v4, v11, :cond_a

    .line 32
    .line 33
    iget v12, v2, Landroid/content/om/OverlayInfoExt;->configFlags:I

    .line 34
    .line 35
    and-int/lit16 v12, v12, 0x200

    .line 36
    .line 37
    if-eqz v12, :cond_1

    .line 38
    .line 39
    sget-object v12, Lcom/android/server/om/SemSamsungThemeUtils;->disableOverlayList:Ljava/util/List;

    .line 40
    .line 41
    if-eqz v1, :cond_1

    .line 42
    .line 43
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getMetaData()Landroid/os/Bundle;

    .line 44
    .line 45
    .line 46
    move-result-object v12

    .line 47
    if-eqz v12, :cond_1

    .line 48
    .line 49
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getMetaData()Landroid/os/Bundle;

    .line 50
    .line 51
    .line 52
    move-result-object v12

    .line 53
    const-string/jumbo v13, "resource-map"

    .line 54
    .line 55
    .line 56
    invoke-virtual {v12, v13}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 57
    .line 58
    .line 59
    move-result v12

    .line 60
    if-eqz v12, :cond_1

    .line 61
    .line 62
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getBaseApkPath()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v12

    .line 66
    if-eqz v12, :cond_1

    .line 67
    .line 68
    new-instance v13, Ljava/io/File;

    .line 69
    .line 70
    new-instance v14, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    const-string v15, "/data/overlays/remaps/"

    .line 73
    .line 74
    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    const-string v15, "/"

    .line 78
    .line 79
    const-string v7, "."

    .line 80
    .line 81
    invoke-virtual {v12, v15, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v7

    .line 85
    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string v7, ".map"

    .line 89
    .line 90
    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v7

    .line 97
    invoke-direct {v13, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    .line 101
    .line 102
    .line 103
    move-result v7

    .line 104
    if-eqz v7, :cond_1

    .line 105
    .line 106
    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    .line 107
    .line 108
    .line 109
    :cond_1
    if-ne v4, v11, :cond_5

    .line 110
    .line 111
    invoke-static/range {p3 .. p3}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    .line 112
    .line 113
    .line 114
    move-result v4

    .line 115
    if-nez v4, :cond_3

    .line 116
    .line 117
    invoke-static/range {p3 .. p3}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    .line 118
    .line 119
    .line 120
    move-result v4

    .line 121
    if-eqz v4, :cond_2

    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_2
    move v7, v3

    .line 125
    goto :goto_1

    .line 126
    :cond_3
    :goto_0
    const/4 v7, 0x0

    .line 127
    :goto_1
    iget-object v0, v0, Lcom/android/server/om/OverlayManagerServiceExt;->mIdmapManager:Lcom/android/server/om/IdmapManagerWrapper;

    .line 128
    .line 129
    invoke-virtual {v0, v1, v2, v7}, Lcom/android/server/om/IdmapManagerWrapper;->createIdmap(Lcom/android/server/pm/pkg/AndroidPackage;Landroid/content/om/OverlayInfoExt;I)I

    .line 130
    .line 131
    .line 132
    move-result v4

    .line 133
    and-int/lit8 v12, v4, 0x2

    .line 134
    .line 135
    if-nez v12, :cond_4

    .line 136
    .line 137
    iget v12, v2, Landroid/content/om/OverlayInfoExt;->configFlags:I

    .line 138
    .line 139
    and-int/lit8 v12, v12, 0x8

    .line 140
    .line 141
    if-eqz v12, :cond_4

    .line 142
    .line 143
    invoke-virtual {v0, v1, v2, v7}, Lcom/android/server/om/IdmapManagerWrapper;->createIdmap(Lcom/android/server/pm/pkg/AndroidPackage;Landroid/content/om/OverlayInfoExt;I)I

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    goto :goto_2

    .line 148
    :cond_4
    move v0, v4

    .line 149
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    .line 150
    .line 151
    const-string v12, "createidmap for "

    .line 152
    .line 153
    invoke-direct {v4, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    const-string v1, " "

    .line 160
    .line 161
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    iget-object v1, v2, Landroid/content/om/OverlayInfoExt;->info:Landroid/content/om/OverlayInfo;

    .line 165
    .line 166
    iget-object v1, v1, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    .line 167
    .line 168
    const-string v12, " for user= "

    .line 169
    .line 170
    const-string v13, " created ? "

    .line 171
    .line 172
    invoke-static {v7, v1, v12, v13, v4}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 173
    .line 174
    .line 175
    invoke-static {v4, v0, v9}, Lcom/android/server/VaultKeeperService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 176
    .line 177
    .line 178
    move v7, v0

    .line 179
    goto :goto_3

    .line 180
    :cond_5
    if-ne v4, v5, :cond_6

    .line 181
    .line 182
    invoke-virtual {v0, v2}, Lcom/android/server/om/OverlayManagerServiceExt;->removeIdmap(Landroid/content/om/OverlayInfoExt;)V

    .line 183
    .line 184
    .line 185
    :cond_6
    const/4 v7, 0x0

    .line 186
    :goto_3
    and-int/lit8 v0, v7, 0x2

    .line 187
    .line 188
    if-nez v0, :cond_7

    .line 189
    .line 190
    and-int/lit8 v0, v7, 0x1

    .line 191
    .line 192
    if-eqz v0, :cond_8

    .line 193
    .line 194
    :cond_7
    move v8, v11

    .line 195
    :cond_8
    and-int/lit16 v0, v7, 0x80

    .line 196
    .line 197
    if-eqz v0, :cond_9

    .line 198
    .line 199
    move v8, v10

    .line 200
    :cond_9
    move v0, v8

    .line 201
    goto/16 :goto_5

    .line 202
    .line 203
    :cond_a
    move v0, v4

    .line 204
    goto/16 :goto_5

    .line 205
    .line 206
    :cond_b
    iget-object v4, v2, Landroid/content/om/OverlayInfoExt;->info:Landroid/content/om/OverlayInfo;

    .line 207
    .line 208
    if-nez v3, :cond_f

    .line 209
    .line 210
    if-nez v1, :cond_f

    .line 211
    .line 212
    new-instance v1, Ljava/lang/StringBuilder;

    .line 213
    .line 214
    const-string/jumbo v5, "updateOverlayState(): target package is null, removing idmap for overlay: "

    .line 215
    .line 216
    .line 217
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v1

    .line 227
    invoke-static {v9, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    .line 229
    .line 230
    invoke-virtual {v0, v2}, Lcom/android/server/om/OverlayManagerServiceExt;->removeIdmap(Landroid/content/om/OverlayInfoExt;)V

    .line 231
    .line 232
    .line 233
    if-eqz v4, :cond_e

    .line 234
    .line 235
    invoke-virtual {v4}, Landroid/content/om/OverlayInfo;->getCategory()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v1

    .line 239
    if-eqz v1, :cond_e

    .line 240
    .line 241
    invoke-virtual {v4}, Landroid/content/om/OverlayInfo;->getCategory()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v1

    .line 245
    const-string/jumbo v5, "zipped-overlay"

    .line 246
    .line 247
    .line 248
    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 249
    .line 250
    .line 251
    move-result v1

    .line 252
    if-eqz v1, :cond_e

    .line 253
    .line 254
    invoke-virtual {v0, v2, v8}, Lcom/android/server/om/OverlayManagerServiceExt;->isOverlayUsedByOtherUser(Landroid/content/om/OverlayInfoExt;Z)Z

    .line 255
    .line 256
    .line 257
    move-result v0

    .line 258
    if-nez v0, :cond_d

    .line 259
    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    .line 261
    .line 262
    const-string/jumbo v1, "updateOverlayState(): deleting overlay "

    .line 263
    .line 264
    .line 265
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v0

    .line 275
    invoke-static {v9, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    .line 277
    .line 278
    iget-object v0, v4, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    .line 279
    .line 280
    sget-object v1, Lcom/android/server/om/SemSamsungThemeUtils;->disableOverlayList:Ljava/util/List;

    .line 281
    .line 282
    const-string v1, "deleteFile, file deletion failed for path ="

    .line 283
    .line 284
    const-string v4, "OverlayManager"

    .line 285
    .line 286
    if-nez v0, :cond_c

    .line 287
    .line 288
    const-string v0, "deleteFile, path is null"

    .line 289
    .line 290
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    .line 292
    .line 293
    goto :goto_4

    .line 294
    :cond_c
    :try_start_0
    new-instance v5, Ljava/io/File;

    .line 295
    .line 296
    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 300
    .line 301
    .line 302
    move-result v5

    .line 303
    if-nez v5, :cond_d

    .line 304
    .line 305
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v0

    .line 309
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 310
    .line 311
    .line 312
    goto :goto_4

    .line 313
    :catch_0
    move-exception v0

    .line 314
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 315
    .line 316
    .line 317
    :cond_d
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/content/om/OverlayInfoExt;->getOverlayIdentifier()Landroid/content/om/OverlayIdentifier;

    .line 318
    .line 319
    .line 320
    move-result-object v0

    .line 321
    invoke-virtual {v6, v0, v3}, Lcom/android/server/om/OverlayManagerSettings;->remove(Landroid/content/om/OverlayIdentifier;I)Z

    .line 322
    .line 323
    .line 324
    return-void

    .line 325
    :cond_e
    if-eqz v4, :cond_f

    .line 326
    .line 327
    invoke-virtual {v4}, Landroid/content/om/OverlayInfo;->getBaseCodePath()Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object v0

    .line 331
    if-eqz v0, :cond_f

    .line 332
    .line 333
    invoke-virtual {v4}, Landroid/content/om/OverlayInfo;->getBaseCodePath()Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v0

    .line 337
    const-string v1, "/data/overlays/currentstyle"

    .line 338
    .line 339
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 340
    .line 341
    .line 342
    move-result v0

    .line 343
    if-eqz v0, :cond_f

    .line 344
    .line 345
    const/4 v0, 0x0

    .line 346
    goto :goto_5

    .line 347
    :cond_f
    move v0, v10

    .line 348
    :goto_5
    iget-object v1, v2, Landroid/content/om/OverlayInfoExt;->info:Landroid/content/om/OverlayInfo;

    .line 349
    .line 350
    if-eqz v1, :cond_10

    .line 351
    .line 352
    :try_start_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/om/OverlayInfoExt;->getOverlayIdentifier()Landroid/content/om/OverlayIdentifier;

    .line 353
    .line 354
    .line 355
    move-result-object v1

    .line 356
    invoke-virtual {v6, v1, v3, v0}, Lcom/android/server/om/OverlayManagerSettings;->setState(Landroid/content/om/OverlayIdentifier;II)Z
    :try_end_1
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_1 .. :try_end_1} :catch_1

    .line 357
    .line 358
    .line 359
    goto :goto_6

    .line 360
    :catch_1
    move-exception v0

    .line 361
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 362
    .line 363
    .line 364
    new-instance v0, Ljava/lang/StringBuilder;

    .line 365
    .line 366
    const-string v1, "Couldnt update overlay state "

    .line 367
    .line 368
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 369
    .line 370
    .line 371
    iget-object v1, v2, Landroid/content/om/OverlayInfoExt;->info:Landroid/content/om/OverlayInfo;

    .line 372
    .line 373
    iget-object v1, v1, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    .line 374
    .line 375
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    .line 377
    .line 378
    const-string v1, " for "

    .line 379
    .line 380
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    .line 382
    .line 383
    iget-object v1, v2, Landroid/content/om/OverlayInfoExt;->info:Landroid/content/om/OverlayInfo;

    .line 384
    .line 385
    iget-object v1, v1, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    .line 386
    .line 387
    invoke-static {v0, v1, v9}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    .line 389
    .line 390
    :cond_10
    :goto_6
    return-void
.end method
