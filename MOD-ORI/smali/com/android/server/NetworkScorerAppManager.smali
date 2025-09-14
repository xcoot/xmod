.class public Lcom/android/server/NetworkScorerAppManager;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DEBUG:Z

.field public static final VERBOSE:Z


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mSettingsFacade:Lcom/android/server/NetworkScorerAppManager$SettingsFacade;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/4 v0, 0x3

    .line 2
    const-string v1, "NetworkScorerAppManager"

    .line 3
    .line 4
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    sput-boolean v0, Lcom/android/server/NetworkScorerAppManager;->DEBUG:Z

    .line 9
    .line 10
    const/4 v0, 0x2

    .line 11
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    sput-boolean v0, Lcom/android/server/NetworkScorerAppManager;->VERBOSE:Z

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/NetworkScorerAppManager$SettingsFacade;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/NetworkScorerAppManager;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/NetworkScorerAppManager;->mSettingsFacade:Lcom/android/server/NetworkScorerAppManager$SettingsFacade;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public getActiveScorer()Landroid/net/NetworkScorerAppData;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/NetworkScorerAppManager;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/NetworkScorerAppManager;->mSettingsFacade:Lcom/android/server/NetworkScorerAppManager$SettingsFacade;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string/jumbo v2, "network_recommendations_enabled"

    .line 13
    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v2, -0x1

    .line 21
    if-ne v0, v2, :cond_0

    .line 22
    .line 23
    const/4 p0, 0x0

    .line 24
    return-object p0

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/android/server/NetworkScorerAppManager;->mContext:Landroid/content/Context;

    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const-string/jumbo v1, "network_recommendations_package"

    .line 35
    .line 36
    .line 37
    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {p0, v0}, Lcom/android/server/NetworkScorerAppManager;->getScorer(Ljava/lang/String;)Landroid/net/NetworkScorerAppData;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    return-object p0
.end method

.method public getAllValidScorers()Ljava/util/List;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "NetworkScorerAppManager"

    .line 4
    .line 5
    sget-boolean v2, Lcom/android/server/NetworkScorerAppManager;->VERBOSE:Z

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    const-string/jumbo v3, "getAllValidScorers()"

    .line 10
    .line 11
    .line 12
    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object v3, v0, Lcom/android/server/NetworkScorerAppManager;->mContext:Landroid/content/Context;

    .line 16
    .line 17
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    new-instance v4, Landroid/content/Intent;

    .line 22
    .line 23
    const-string v5, "android.net.action.RECOMMEND_NETWORKS"

    .line 24
    .line 25
    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const/16 v5, 0x80

    .line 29
    .line 30
    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    sget-boolean v6, Lcom/android/server/NetworkScorerAppManager;->DEBUG:Z

    .line 35
    .line 36
    if-eqz v5, :cond_e

    .line 37
    .line 38
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    .line 39
    .line 40
    .line 41
    move-result v7

    .line 42
    if-eqz v7, :cond_1

    .line 43
    .line 44
    goto/16 :goto_7

    .line 45
    .line 46
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .line 50
    .line 51
    const/4 v7, 0x0

    .line 52
    move v8, v7

    .line 53
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 54
    .line 55
    .line 56
    move-result v9

    .line 57
    if-ge v8, v9, :cond_d

    .line 58
    .line 59
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v9

    .line 63
    check-cast v9, Landroid/content/pm/ResolveInfo;

    .line 64
    .line 65
    iget-object v9, v9, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 66
    .line 67
    iget-object v10, v9, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 68
    .line 69
    iget v10, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 70
    .line 71
    iget-object v11, v9, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 72
    .line 73
    iget-object v12, v0, Lcom/android/server/NetworkScorerAppManager;->mContext:Landroid/content/Context;

    .line 74
    .line 75
    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 76
    .line 77
    .line 78
    move-result-object v12

    .line 79
    const-string v13, "android.permission.SCORE_NETWORKS"

    .line 80
    .line 81
    invoke-virtual {v12, v13, v11}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    move-result v12

    .line 85
    if-nez v12, :cond_b

    .line 86
    .line 87
    iget-object v12, v0, Lcom/android/server/NetworkScorerAppManager;->mContext:Landroid/content/Context;

    .line 88
    .line 89
    iget-object v13, v0, Lcom/android/server/NetworkScorerAppManager;->mSettingsFacade:Lcom/android/server/NetworkScorerAppManager$SettingsFacade;

    .line 90
    .line 91
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 95
    .line 96
    .line 97
    move-result-object v12

    .line 98
    invoke-virtual {v12}, Landroid/content/ContentResolver;->getUserId()I

    .line 99
    .line 100
    .line 101
    move-result v13

    .line 102
    const-string/jumbo v14, "location_mode"

    .line 103
    .line 104
    .line 105
    invoke-static {v12, v14, v7, v13}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 106
    .line 107
    .line 108
    move-result v12

    .line 109
    if-eqz v12, :cond_b

    .line 110
    .line 111
    iget-object v12, v0, Lcom/android/server/NetworkScorerAppManager;->mContext:Landroid/content/Context;

    .line 112
    .line 113
    const-string v13, "android.permission.ACCESS_COARSE_LOCATION"

    .line 114
    .line 115
    const/4 v14, -0x1

    .line 116
    invoke-static {v12, v13, v14, v10, v11}, Landroid/content/PermissionChecker;->checkPermissionForPreflight(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I

    .line 117
    .line 118
    .line 119
    move-result v10

    .line 120
    if-nez v10, :cond_b

    .line 121
    .line 122
    if-eqz v2, :cond_2

    .line 123
    .line 124
    new-instance v10, Ljava/lang/StringBuilder;

    .line 125
    .line 126
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    .line 128
    .line 129
    iget-object v11, v9, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 130
    .line 131
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    const-string v11, " is a valid scorer/recommender."

    .line 135
    .line 136
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v10

    .line 143
    invoke-static {v1, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    .line 145
    .line 146
    :cond_2
    new-instance v13, Landroid/content/ComponentName;

    .line 147
    .line 148
    iget-object v10, v9, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 149
    .line 150
    iget-object v11, v9, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 151
    .line 152
    invoke-direct {v13, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    iget-object v10, v9, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    .line 156
    .line 157
    if-eqz v10, :cond_3

    .line 158
    .line 159
    const-string v12, "android.net.scoring.recommendation_service_label"

    .line 160
    .line 161
    invoke-virtual {v10, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v10

    .line 165
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 166
    .line 167
    .line 168
    move-result v12

    .line 169
    if-nez v12, :cond_3

    .line 170
    .line 171
    :goto_1
    move-object v14, v10

    .line 172
    goto :goto_2

    .line 173
    :cond_3
    invoke-virtual {v9, v3}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 174
    .line 175
    .line 176
    move-result-object v10

    .line 177
    if-nez v10, :cond_4

    .line 178
    .line 179
    const/4 v10, 0x0

    .line 180
    goto :goto_1

    .line 181
    :cond_4
    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v10

    .line 185
    goto :goto_1

    .line 186
    :goto_2
    iget-object v10, v9, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    .line 187
    .line 188
    const-string v12, "No metadata found on "

    .line 189
    .line 190
    if-nez v10, :cond_6

    .line 191
    .line 192
    if-eqz v6, :cond_5

    .line 193
    .line 194
    new-instance v10, Ljava/lang/StringBuilder;

    .line 195
    .line 196
    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v9}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    .line 200
    .line 201
    .line 202
    move-result-object v15

    .line 203
    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v10

    .line 210
    invoke-static {v1, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    .line 212
    .line 213
    :cond_5
    :goto_3
    const/4 v15, 0x0

    .line 214
    goto :goto_4

    .line 215
    :cond_6
    const-string v15, "android.net.wifi.use_open_wifi_package"

    .line 216
    .line 217
    invoke-virtual {v10, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v10

    .line 221
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 222
    .line 223
    .line 224
    move-result v15

    .line 225
    if-eqz v15, :cond_7

    .line 226
    .line 227
    if-eqz v6, :cond_5

    .line 228
    .line 229
    new-instance v10, Ljava/lang/StringBuilder;

    .line 230
    .line 231
    const-string v15, "No use_open_wifi_package metadata found on "

    .line 232
    .line 233
    invoke-direct {v10, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {v9}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    .line 237
    .line 238
    .line 239
    move-result-object v15

    .line 240
    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v10

    .line 247
    invoke-static {v1, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    .line 249
    .line 250
    goto :goto_3

    .line 251
    :cond_7
    new-instance v15, Landroid/content/Intent;

    .line 252
    .line 253
    const-string v11, "android.net.scoring.CUSTOM_ENABLE"

    .line 254
    .line 255
    invoke-direct {v15, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v15, v10}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 259
    .line 260
    .line 261
    move-result-object v10

    .line 262
    iget-object v11, v0, Lcom/android/server/NetworkScorerAppManager;->mContext:Landroid/content/Context;

    .line 263
    .line 264
    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 265
    .line 266
    .line 267
    move-result-object v11

    .line 268
    invoke-virtual {v11, v10, v7}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    .line 269
    .line 270
    .line 271
    move-result-object v11

    .line 272
    if-eqz v2, :cond_8

    .line 273
    .line 274
    new-instance v15, Ljava/lang/StringBuilder;

    .line 275
    .line 276
    const-string v7, "Resolved "

    .line 277
    .line 278
    invoke-direct {v15, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    const-string v7, " to "

    .line 285
    .line 286
    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v7

    .line 296
    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    .line 298
    .line 299
    :cond_8
    if-eqz v11, :cond_5

    .line 300
    .line 301
    iget-object v7, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 302
    .line 303
    if-eqz v7, :cond_5

    .line 304
    .line 305
    invoke-virtual {v7}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    .line 306
    .line 307
    .line 308
    move-result-object v7

    .line 309
    move-object v15, v7

    .line 310
    :goto_4
    iget-object v7, v9, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    .line 311
    .line 312
    if-nez v7, :cond_a

    .line 313
    .line 314
    if-eqz v6, :cond_9

    .line 315
    .line 316
    new-instance v7, Ljava/lang/StringBuilder;

    .line 317
    .line 318
    invoke-direct {v7, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 319
    .line 320
    .line 321
    invoke-virtual {v9}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    .line 322
    .line 323
    .line 324
    move-result-object v10

    .line 325
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v7

    .line 332
    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    .line 334
    .line 335
    :cond_9
    const/16 v16, 0x0

    .line 336
    .line 337
    goto :goto_5

    .line 338
    :cond_a
    const-string v10, "android.net.wifi.notification_channel_id_network_available"

    .line 339
    .line 340
    invoke-virtual {v7, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object v7

    .line 344
    move-object/from16 v16, v7

    .line 345
    .line 346
    :goto_5
    new-instance v7, Landroid/net/NetworkScorerAppData;

    .line 347
    .line 348
    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 349
    .line 350
    iget v12, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 351
    .line 352
    move-object v11, v7

    .line 353
    invoke-direct/range {v11 .. v16}, Landroid/net/NetworkScorerAppData;-><init>(ILandroid/content/ComponentName;Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 354
    .line 355
    .line 356
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 357
    .line 358
    .line 359
    goto :goto_6

    .line 360
    :cond_b
    if-eqz v2, :cond_c

    .line 361
    .line 362
    new-instance v7, Ljava/lang/StringBuilder;

    .line 363
    .line 364
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 365
    .line 366
    .line 367
    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 368
    .line 369
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    .line 371
    .line 372
    const-string v9, " is NOT a valid scorer/recommender."

    .line 373
    .line 374
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    .line 376
    .line 377
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 378
    .line 379
    .line 380
    move-result-object v7

    .line 381
    invoke-static {v1, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    .line 383
    .line 384
    :cond_c
    :goto_6
    add-int/lit8 v8, v8, 0x1

    .line 385
    .line 386
    const/4 v7, 0x0

    .line 387
    goto/16 :goto_0

    .line 388
    .line 389
    :cond_d
    return-object v4

    .line 390
    :cond_e
    :goto_7
    if-eqz v6, :cond_f

    .line 391
    .line 392
    new-instance v0, Ljava/lang/StringBuilder;

    .line 393
    .line 394
    const-string v2, "Found 0 Services able to handle "

    .line 395
    .line 396
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 397
    .line 398
    .line 399
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 400
    .line 401
    .line 402
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 403
    .line 404
    .line 405
    move-result-object v0

    .line 406
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    .line 408
    .line 409
    :cond_f
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 410
    .line 411
    .line 412
    move-result-object v0

    .line 413
    return-object v0
.end method

.method public final getScorer(Ljava/lang/String;)Landroid/net/NetworkScorerAppData;
    .locals 4

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/NetworkScorerAppManager;->getAllValidScorers()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const/4 v0, 0x0

    .line 14
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-ge v0, v2, :cond_2

    .line 19
    .line 20
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Landroid/net/NetworkScorerAppData;

    .line 25
    .line 26
    invoke-virtual {v2}, Landroid/net/NetworkScorerAppData;->getRecommendationServicePackageName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-eqz v3, :cond_1

    .line 35
    .line 36
    return-object v2

    .line 37
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    return-object v1
.end method

.method public migrateNetworkScorerAppSettingIfNeeded()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/NetworkScorerAppManager;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/NetworkScorerAppManager;->mSettingsFacade:Lcom/android/server/NetworkScorerAppManager$SettingsFacade;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string/jumbo v1, "network_scorer_app"

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/NetworkScorerAppManager;->getActiveScorer()Landroid/net/NetworkScorerAppData;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    if-nez v2, :cond_1

    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    const-string v3, "NetworkScorerAppManager"

    .line 34
    .line 35
    sget-boolean v4, Lcom/android/server/NetworkScorerAppManager;->DEBUG:Z

    .line 36
    .line 37
    if-eqz v4, :cond_2

    .line 38
    .line 39
    const-string v5, "Migrating Settings.Global.NETWORK_SCORER_APP ("

    .line 40
    .line 41
    const-string v6, ")..."

    .line 42
    .line 43
    invoke-static {v5, v0, v6, v3}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    :cond_2
    invoke-virtual {v2}, Landroid/net/NetworkScorerAppData;->getEnableUseOpenWifiActivity()Landroid/content/ComponentName;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    iget-object v5, p0, Lcom/android/server/NetworkScorerAppManager;->mContext:Landroid/content/Context;

    .line 51
    .line 52
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    const-string/jumbo v6, "use_open_wifi_package"

    .line 57
    .line 58
    .line 59
    invoke-static {v5, v6}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 64
    .line 65
    .line 66
    move-result v5

    .line 67
    const-string v7, "\'."

    .line 68
    .line 69
    if-eqz v5, :cond_3

    .line 70
    .line 71
    if-eqz v2, :cond_3

    .line 72
    .line 73
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    if-eqz v2, :cond_3

    .line 82
    .line 83
    iget-object v2, p0, Lcom/android/server/NetworkScorerAppManager;->mContext:Landroid/content/Context;

    .line 84
    .line 85
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    invoke-static {v2, v6, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 90
    .line 91
    .line 92
    if-eqz v4, :cond_3

    .line 93
    .line 94
    const-string v2, "Settings.Global.USE_OPEN_WIFI_PACKAGE set to \'"

    .line 95
    .line 96
    invoke-static {v2, v0, v7, v3}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    :cond_3
    iget-object v0, p0, Lcom/android/server/NetworkScorerAppManager;->mContext:Landroid/content/Context;

    .line 100
    .line 101
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    const/4 v2, 0x0

    .line 106
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 107
    .line 108
    .line 109
    if-eqz v4, :cond_4

    .line 110
    .line 111
    const-string v0, "Settings.Global.NETWORK_SCORER_APP migration complete."

    .line 112
    .line 113
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    .line 115
    .line 116
    iget-object p0, p0, Lcom/android/server/NetworkScorerAppManager;->mContext:Landroid/content/Context;

    .line 117
    .line 118
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    invoke-static {p0, v6}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    const-string v0, "Settings.Global.USE_OPEN_WIFI_PACKAGE is: \'"

    .line 127
    .line 128
    invoke-static {v0, p0, v7, v3}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    :cond_4
    return-void
.end method

.method public setActiveScorer(Ljava/lang/String;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/NetworkScorerAppManager;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/NetworkScorerAppManager;->mSettingsFacade:Lcom/android/server/NetworkScorerAppManager$SettingsFacade;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string/jumbo v1, "network_recommendations_package"

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    const/4 v2, 0x1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    return v2

    .line 27
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    const-string v3, "NetworkScorerAppManager"

    .line 32
    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    new-instance p1, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string v1, "Network scorer forced off, was: "

    .line 38
    .line 39
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    const/4 p1, 0x0

    .line 53
    invoke-virtual {p0, p1}, Lcom/android/server/NetworkScorerAppManager;->setNetworkRecommendationsPackage(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    const/4 p1, -0x1

    .line 57
    invoke-virtual {p0, p1}, Lcom/android/server/NetworkScorerAppManager;->setNetworkRecommendationsEnabledSetting(I)V

    .line 58
    .line 59
    .line 60
    return v2

    .line 61
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/NetworkScorerAppManager;->getScorer(Ljava/lang/String;)Landroid/net/NetworkScorerAppData;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    if-eqz v1, :cond_2

    .line 66
    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    const-string v4, "Changing network scorer from "

    .line 70
    .line 71
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string v0, " to "

    .line 78
    .line 79
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0, p1}, Lcom/android/server/NetworkScorerAppManager;->setNetworkRecommendationsPackage(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0, v2}, Lcom/android/server/NetworkScorerAppManager;->setNetworkRecommendationsEnabledSetting(I)V

    .line 96
    .line 97
    .line 98
    return v2

    .line 99
    :cond_2
    const-string p0, "Requested network scorer is not valid: "

    .line 100
    .line 101
    invoke-static {p0, p1, v3}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    const/4 p0, 0x0

    .line 105
    return p0
.end method

.method public final setNetworkRecommendationsEnabledSetting(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/NetworkScorerAppManager;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/NetworkScorerAppManager;->mSettingsFacade:Lcom/android/server/NetworkScorerAppManager$SettingsFacade;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    const-string/jumbo v0, "network_recommendations_enabled"

    .line 13
    .line 14
    .line 15
    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 16
    .line 17
    .line 18
    sget-boolean p0, Lcom/android/server/NetworkScorerAppManager;->VERBOSE:Z

    .line 19
    .line 20
    if-eqz p0, :cond_0

    .line 21
    .line 22
    const-string/jumbo p0, "network_recommendations_enabled set to "

    .line 23
    .line 24
    .line 25
    const-string v0, "NetworkScorerAppManager"

    .line 26
    .line 27
    invoke-static {p1, p0, v0}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method public final setNetworkRecommendationsPackage(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/NetworkScorerAppManager;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/NetworkScorerAppManager;->mSettingsFacade:Lcom/android/server/NetworkScorerAppManager$SettingsFacade;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    const-string/jumbo v0, "network_recommendations_package"

    .line 13
    .line 14
    .line 15
    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    sget-boolean p0, Lcom/android/server/NetworkScorerAppManager;->VERBOSE:Z

    .line 19
    .line 20
    if-eqz p0, :cond_0

    .line 21
    .line 22
    const-string/jumbo p0, "network_recommendations_package set to "

    .line 23
    .line 24
    .line 25
    const-string v0, "NetworkScorerAppManager"

    .line 26
    .line 27
    invoke-static {p0, p1, v0}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method public updateState()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/NetworkScorerAppManager;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/NetworkScorerAppManager;->mSettingsFacade:Lcom/android/server/NetworkScorerAppManager$SettingsFacade;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string/jumbo v2, "network_recommendations_enabled"

    .line 13
    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v2, -0x1

    .line 21
    sget-boolean v4, Lcom/android/server/NetworkScorerAppManager;->DEBUG:Z

    .line 22
    .line 23
    const-string v5, "NetworkScorerAppManager"

    .line 24
    .line 25
    if-ne v0, v2, :cond_1

    .line 26
    .line 27
    if-eqz v4, :cond_0

    .line 28
    .line 29
    const-string p0, "Recommendations forced off."

    .line 30
    .line 31
    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void

    .line 35
    :cond_1
    iget-object v0, p0, Lcom/android/server/NetworkScorerAppManager;->mContext:Landroid/content/Context;

    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    const-string/jumbo v1, "network_recommendations_package"

    .line 45
    .line 46
    .line 47
    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {p0, v0}, Lcom/android/server/NetworkScorerAppManager;->getScorer(Ljava/lang/String;)Landroid/net/NetworkScorerAppData;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    const/4 v2, 0x1

    .line 56
    if-eqz v1, :cond_3

    .line 57
    .line 58
    sget-boolean v1, Lcom/android/server/NetworkScorerAppManager;->VERBOSE:Z

    .line 59
    .line 60
    if-eqz v1, :cond_2

    .line 61
    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string v0, " is the active scorer."

    .line 71
    .line 72
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-static {v5, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/server/NetworkScorerAppManager;->setNetworkRecommendationsEnabledSetting(I)V

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    :cond_3
    iget-object v1, p0, Lcom/android/server/NetworkScorerAppManager;->mContext:Landroid/content/Context;

    .line 87
    .line 88
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    const v6, 0x1040325

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    if-nez v0, :cond_5

    .line 104
    .line 105
    invoke-virtual {p0, v1}, Lcom/android/server/NetworkScorerAppManager;->getScorer(Ljava/lang/String;)Landroid/net/NetworkScorerAppData;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    if-eqz v0, :cond_5

    .line 110
    .line 111
    if-eqz v4, :cond_4

    .line 112
    .line 113
    const-string v0, "Defaulting the network recommendations app to: "

    .line 114
    .line 115
    invoke-static {v0, v1, v5}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    :cond_4
    invoke-virtual {p0, v1}, Lcom/android/server/NetworkScorerAppManager;->setNetworkRecommendationsPackage(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    move v3, v2

    .line 122
    :cond_5
    invoke-virtual {p0, v3}, Lcom/android/server/NetworkScorerAppManager;->setNetworkRecommendationsEnabledSetting(I)V

    .line 123
    .line 124
    .line 125
    return-void
.end method
