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

    .line 4
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 7
    move-result v0

    .line 8
    sput-boolean v0, Lcom/android/server/NetworkScorerAppManager;->DEBUG:Z

    .line 10
    const/4 v0, 0x2

    .line 11
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 14
    move-result v0

    .line 15
    sput-boolean v0, Lcom/android/server/NetworkScorerAppManager;->VERBOSE:Z

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/NetworkScorerAppManager$SettingsFacade;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/NetworkScorerAppManager;->mContext:Landroid/content/Context;

    .line 6
    iput-object p2, p0, Lcom/android/server/NetworkScorerAppManager;->mSettingsFacade:Lcom/android/server/NetworkScorerAppManager$SettingsFacade;

    .line 8
    return-void
.end method


# virtual methods
.method public getActiveScorer()Landroid/net/NetworkScorerAppData;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/NetworkScorerAppManager;->mContext:Landroid/content/Context;

    .line 3
    iget-object v1, p0, Lcom/android/server/NetworkScorerAppManager;->mSettingsFacade:Lcom/android/server/NetworkScorerAppManager$SettingsFacade;

    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 11
    move-result-object v0

    .line 12
    const-string/jumbo v2, "network_recommendations_enabled"

    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 19
    move-result v0

    .line 20
    const/4 v2, -0x1

    .line 21
    if-ne v0, v2, :cond_0

    .line 23
    const/4 p0, 0x0

    .line 24
    return-object p0

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/android/server/NetworkScorerAppManager;->mContext:Landroid/content/Context;

    .line 27
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 33
    move-result-object v0

    .line 34
    const-string/jumbo v1, "network_recommendations_package"

    .line 37
    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {p0, v0}, Lcom/android/server/NetworkScorerAppManager;->getScorer(Ljava/lang/String;)Landroid/net/NetworkScorerAppData;

    .line 44
    move-result-object p0

    .line 45
    return-object p0
.end method

.method public getAllValidScorers()Ljava/util/List;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 3
    const-string v1, "NetworkScorerAppManager"

    .line 5
    sget-boolean v2, Lcom/android/server/NetworkScorerAppManager;->VERBOSE:Z

    .line 7
    if-eqz v2, :cond_0

    .line 9
    const-string/jumbo v3, "getAllValidScorers()"

    .line 12
    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    :cond_0
    iget-object v3, v0, Lcom/android/server/NetworkScorerAppManager;->mContext:Landroid/content/Context;

    .line 17
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 20
    move-result-object v3

    .line 21
    new-instance v4, Landroid/content/Intent;

    .line 23
    const-string v5, "android.net.action.RECOMMEND_NETWORKS"

    .line 25
    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 28
    const/16 v5, 0x80

    .line 30
    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    .line 33
    move-result-object v5

    .line 34
    sget-boolean v6, Lcom/android/server/NetworkScorerAppManager;->DEBUG:Z

    .line 36
    if-eqz v5, :cond_e

    .line 38
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    .line 41
    move-result v7

    .line 42
    if-eqz v7, :cond_1

    .line 44
    goto/16 :goto_7

    .line 46
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    .line 48
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 51
    const/4 v7, 0x0

    .line 52
    move v8, v7

    .line 53
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 56
    move-result v9

    .line 57
    if-ge v8, v9, :cond_d

    .line 59
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 62
    move-result-object v9

    .line 63
    check-cast v9, Landroid/content/pm/ResolveInfo;

    .line 65
    iget-object v9, v9, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 67
    iget-object v10, v9, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 69
    iget v10, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 71
    iget-object v11, v9, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 73
    iget-object v12, v0, Lcom/android/server/NetworkScorerAppManager;->mContext:Landroid/content/Context;

    .line 75
    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 78
    move-result-object v12

    .line 79
    const-string v13, "android.permission.SCORE_NETWORKS"

    .line 81
    invoke-virtual {v12, v13, v11}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    move-result v12

    .line 85
    if-nez v12, :cond_b

    .line 87
    iget-object v12, v0, Lcom/android/server/NetworkScorerAppManager;->mContext:Landroid/content/Context;

    .line 89
    iget-object v13, v0, Lcom/android/server/NetworkScorerAppManager;->mSettingsFacade:Lcom/android/server/NetworkScorerAppManager$SettingsFacade;

    .line 91
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 97
    move-result-object v12

    .line 98
    invoke-virtual {v12}, Landroid/content/ContentResolver;->getUserId()I

    .line 101
    move-result v13

    .line 102
    const-string/jumbo v14, "location_mode"

    .line 105
    invoke-static {v12, v14, v7, v13}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 108
    move-result v12

    .line 109
    if-eqz v12, :cond_b

    .line 111
    iget-object v12, v0, Lcom/android/server/NetworkScorerAppManager;->mContext:Landroid/content/Context;

    .line 113
    const-string v13, "android.permission.ACCESS_COARSE_LOCATION"

    .line 115
    const/4 v14, -0x1

    .line 116
    invoke-static {v12, v13, v14, v10, v11}, Landroid/content/PermissionChecker;->checkPermissionForPreflight(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I

    .line 119
    move-result v10

    .line 120
    if-nez v10, :cond_b

    .line 122
    if-eqz v2, :cond_2

    .line 124
    new-instance v10, Ljava/lang/StringBuilder;

    .line 126
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    iget-object v11, v9, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 131
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    const-string v11, " is a valid scorer/recommender."

    .line 136
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    move-result-object v10

    .line 143
    invoke-static {v1, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_2
    new-instance v13, Landroid/content/ComponentName;

    .line 148
    iget-object v10, v9, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 150
    iget-object v11, v9, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 152
    invoke-direct {v13, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iget-object v10, v9, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    .line 157
    if-eqz v10, :cond_3

    .line 159
    const-string v12, "android.net.scoring.recommendation_service_label"

    .line 161
    invoke-virtual {v10, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 164
    move-result-object v10

    .line 165
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 168
    move-result v12

    .line 169
    if-nez v12, :cond_3

    .line 171
    :goto_1
    move-object v14, v10

    .line 172
    goto :goto_2

    .line 173
    :cond_3
    invoke-virtual {v9, v3}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 176
    move-result-object v10

    .line 177
    if-nez v10, :cond_4

    .line 179
    const/4 v10, 0x0

    .line 180
    goto :goto_1

    .line 181
    :cond_4
    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 184
    move-result-object v10

    .line 185
    goto :goto_1

    .line 186
    :goto_2
    iget-object v10, v9, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    .line 188
    const-string v12, "No metadata found on "

    .line 190
    if-nez v10, :cond_6

    .line 192
    if-eqz v6, :cond_5

    .line 194
    new-instance v10, Ljava/lang/StringBuilder;

    .line 196
    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 199
    invoke-virtual {v9}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    .line 202
    move-result-object v15

    .line 203
    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 206
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 209
    move-result-object v10

    .line 210
    invoke-static {v1, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :cond_5
    :goto_3
    const/4 v15, 0x0

    .line 214
    goto :goto_4

    .line 215
    :cond_6
    const-string v15, "android.net.wifi.use_open_wifi_package"

    .line 217
    invoke-virtual {v10, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 220
    move-result-object v10

    .line 221
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 224
    move-result v15

    .line 225
    if-eqz v15, :cond_7

    .line 227
    if-eqz v6, :cond_5

    .line 229
    new-instance v10, Ljava/lang/StringBuilder;

    .line 231
    const-string v15, "No use_open_wifi_package metadata found on "

    .line 233
    invoke-direct {v10, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 236
    invoke-virtual {v9}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    .line 239
    move-result-object v15

    .line 240
    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 243
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 246
    move-result-object v10

    .line 247
    invoke-static {v1, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    goto :goto_3

    .line 251
    :cond_7
    new-instance v15, Landroid/content/Intent;

    .line 253
    const-string v11, "android.net.scoring.CUSTOM_ENABLE"

    .line 255
    invoke-direct {v15, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 258
    invoke-virtual {v15, v10}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 261
    move-result-object v10

    .line 262
    iget-object v11, v0, Lcom/android/server/NetworkScorerAppManager;->mContext:Landroid/content/Context;

    .line 264
    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 267
    move-result-object v11

    .line 268
    invoke-virtual {v11, v10, v7}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    .line 271
    move-result-object v11

    .line 272
    if-eqz v2, :cond_8

    .line 274
    new-instance v15, Ljava/lang/StringBuilder;

    .line 276
    const-string v7, "Resolved "

    .line 278
    invoke-direct {v15, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 281
    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 284
    const-string v7, " to "

    .line 286
    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 292
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 295
    move-result-object v7

    .line 296
    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :cond_8
    if-eqz v11, :cond_5

    .line 301
    iget-object v7, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 303
    if-eqz v7, :cond_5

    .line 305
    invoke-virtual {v7}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    .line 308
    move-result-object v7

    .line 309
    move-object v15, v7

    .line 310
    :goto_4
    iget-object v7, v9, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    .line 312
    if-nez v7, :cond_a

    .line 314
    if-eqz v6, :cond_9

    .line 316
    new-instance v7, Ljava/lang/StringBuilder;

    .line 318
    invoke-direct {v7, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 321
    invoke-virtual {v9}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    .line 324
    move-result-object v10

    .line 325
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 328
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 331
    move-result-object v7

    .line 332
    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    :cond_9
    const/16 v16, 0x0

    .line 337
    goto :goto_5

    .line 338
    :cond_a
    const-string v10, "android.net.wifi.notification_channel_id_network_available"

    .line 340
    invoke-virtual {v7, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 343
    move-result-object v7

    .line 344
    move-object/from16 v16, v7

    .line 346
    :goto_5
    new-instance v7, Landroid/net/NetworkScorerAppData;

    .line 348
    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 350
    iget v12, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 352
    move-object v11, v7

    .line 353
    invoke-direct/range {v11 .. v16}, Landroid/net/NetworkScorerAppData;-><init>(ILandroid/content/ComponentName;Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 356
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 359
    goto :goto_6

    .line 360
    :cond_b
    if-eqz v2, :cond_c

    .line 362
    new-instance v7, Ljava/lang/StringBuilder;

    .line 364
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 367
    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 369
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    const-string v9, " is NOT a valid scorer/recommender."

    .line 374
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 380
    move-result-object v7

    .line 381
    invoke-static {v1, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    :cond_c
    :goto_6
    add-int/lit8 v8, v8, 0x1

    .line 386
    const/4 v7, 0x0

    .line 387
    goto/16 :goto_0

    .line 389
    :cond_d
    return-object v4

    .line 390
    :cond_e
    :goto_7
    if-eqz v6, :cond_f

    .line 392
    new-instance v0, Ljava/lang/StringBuilder;

    .line 394
    const-string v2, "Found 0 Services able to handle "

    .line 396
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 399
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 402
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 405
    move-result-object v0

    .line 406
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    :cond_f
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 412
    move-result-object v0

    .line 413
    return-object v0
.end method

.method public final getScorer(Ljava/lang/String;)Landroid/net/NetworkScorerAppData;
    .locals 4

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 8
    return-object v1

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/NetworkScorerAppManager;->getAllValidScorers()Ljava/util/List;

    .line 12
    move-result-object p0

    .line 13
    const/4 v0, 0x0

    .line 14
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 17
    move-result v2

    .line 18
    if-ge v0, v2, :cond_2

    .line 20
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Landroid/net/NetworkScorerAppData;

    .line 26
    invoke-virtual {v2}, Landroid/net/NetworkScorerAppData;->getRecommendationServicePackageName()Ljava/lang/String;

    .line 29
    move-result-object v3

    .line 30
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    move-result v3

    .line 34
    if-eqz v3, :cond_1

    .line 36
    return-object v2

    .line 37
    :cond_1
    add-int/lit8 v0, v0, 0x1

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

    .line 3
    iget-object v1, p0, Lcom/android/server/NetworkScorerAppManager;->mSettingsFacade:Lcom/android/server/NetworkScorerAppManager$SettingsFacade;

    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 11
    move-result-object v0

    .line 12
    const-string/jumbo v1, "network_scorer_app"

    .line 15
    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_0

    .line 25
    return-void

    .line 26
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/NetworkScorerAppManager;->getActiveScorer()Landroid/net/NetworkScorerAppData;

    .line 29
    move-result-object v2

    .line 30
    if-nez v2, :cond_1

    .line 32
    return-void

    .line 33
    :cond_1
    const-string v3, "NetworkScorerAppManager"

    .line 35
    sget-boolean v4, Lcom/android/server/NetworkScorerAppManager;->DEBUG:Z

    .line 37
    if-eqz v4, :cond_2

    .line 39
    const-string v5, "Migrating Settings.Global.NETWORK_SCORER_APP ("

    .line 41
    const-string v6, ")..."

    .line 43
    invoke-static {v5, v0, v6, v3}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    :cond_2
    invoke-virtual {v2}, Landroid/net/NetworkScorerAppData;->getEnableUseOpenWifiActivity()Landroid/content/ComponentName;

    .line 49
    move-result-object v2

    .line 50
    iget-object v5, p0, Lcom/android/server/NetworkScorerAppManager;->mContext:Landroid/content/Context;

    .line 52
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 55
    move-result-object v5

    .line 56
    const-string/jumbo v6, "use_open_wifi_package"

    .line 59
    invoke-static {v5, v6}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 62
    move-result-object v5

    .line 63
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 66
    move-result v5

    .line 67
    const-string v7, "\'."

    .line 69
    if-eqz v5, :cond_3

    .line 71
    if-eqz v2, :cond_3

    .line 73
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 76
    move-result-object v2

    .line 77
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    move-result v2

    .line 81
    if-eqz v2, :cond_3

    .line 83
    iget-object v2, p0, Lcom/android/server/NetworkScorerAppManager;->mContext:Landroid/content/Context;

    .line 85
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 88
    move-result-object v2

    .line 89
    invoke-static {v2, v6, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 92
    if-eqz v4, :cond_3

    .line 94
    const-string v2, "Settings.Global.USE_OPEN_WIFI_PACKAGE set to \'"

    .line 96
    invoke-static {v2, v0, v7, v3}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    :cond_3
    iget-object v0, p0, Lcom/android/server/NetworkScorerAppManager;->mContext:Landroid/content/Context;

    .line 101
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 104
    move-result-object v0

    .line 105
    const/4 v2, 0x0

    .line 106
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 109
    if-eqz v4, :cond_4

    .line 111
    const-string v0, "Settings.Global.NETWORK_SCORER_APP migration complete."

    .line 113
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object p0, p0, Lcom/android/server/NetworkScorerAppManager;->mContext:Landroid/content/Context;

    .line 118
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 121
    move-result-object p0

    .line 122
    invoke-static {p0, v6}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 125
    move-result-object p0

    .line 126
    const-string v0, "Settings.Global.USE_OPEN_WIFI_PACKAGE is: \'"

    .line 128
    invoke-static {v0, p0, v7, v3}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    :cond_4
    return-void
.end method

.method public setActiveScorer(Ljava/lang/String;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/NetworkScorerAppManager;->mContext:Landroid/content/Context;

    .line 3
    iget-object v1, p0, Lcom/android/server/NetworkScorerAppManager;->mSettingsFacade:Lcom/android/server/NetworkScorerAppManager$SettingsFacade;

    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 11
    move-result-object v0

    .line 12
    const-string/jumbo v1, "network_recommendations_package"

    .line 15
    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 22
    move-result v1

    .line 23
    const/4 v2, 0x1

    .line 24
    if-eqz v1, :cond_0

    .line 26
    return v2

    .line 27
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 30
    move-result v1

    .line 31
    const-string v3, "NetworkScorerAppManager"

    .line 33
    if-eqz v1, :cond_1

    .line 35
    new-instance p1, Ljava/lang/StringBuilder;

    .line 37
    const-string v1, "Network scorer forced off, was: "

    .line 39
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    move-result-object p1

    .line 49
    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    const/4 p1, 0x0

    .line 53
    invoke-virtual {p0, p1}, Lcom/android/server/NetworkScorerAppManager;->setNetworkRecommendationsPackage(Ljava/lang/String;)V

    .line 56
    const/4 p1, -0x1

    .line 57
    invoke-virtual {p0, p1}, Lcom/android/server/NetworkScorerAppManager;->setNetworkRecommendationsEnabledSetting(I)V

    .line 60
    return v2

    .line 61
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/NetworkScorerAppManager;->getScorer(Ljava/lang/String;)Landroid/net/NetworkScorerAppData;

    .line 64
    move-result-object v1

    .line 65
    if-eqz v1, :cond_2

    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    .line 69
    const-string v4, "Changing network scorer from "

    .line 71
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    const-string v0, " to "

    .line 79
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    move-result-object v0

    .line 89
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-virtual {p0, p1}, Lcom/android/server/NetworkScorerAppManager;->setNetworkRecommendationsPackage(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0, v2}, Lcom/android/server/NetworkScorerAppManager;->setNetworkRecommendationsEnabledSetting(I)V

    .line 98
    return v2

    .line 99
    :cond_2
    const-string p0, "Requested network scorer is not valid: "

    .line 101
    invoke-static {p0, p1, v3}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const/4 p0, 0x0

    .line 105
    return p0
.end method

.method public final setNetworkRecommendationsEnabledSetting(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/NetworkScorerAppManager;->mContext:Landroid/content/Context;

    .line 3
    iget-object p0, p0, Lcom/android/server/NetworkScorerAppManager;->mSettingsFacade:Lcom/android/server/NetworkScorerAppManager$SettingsFacade;

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 11
    move-result-object p0

    .line 12
    const-string/jumbo v0, "network_recommendations_enabled"

    .line 15
    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 18
    sget-boolean p0, Lcom/android/server/NetworkScorerAppManager;->VERBOSE:Z

    .line 20
    if-eqz p0, :cond_0

    .line 22
    const-string/jumbo p0, "network_recommendations_enabled set to "

    .line 25
    const-string v0, "NetworkScorerAppManager"

    .line 27
    invoke-static {p1, p0, v0}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 30
    :cond_0
    return-void
.end method

.method public final setNetworkRecommendationsPackage(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/NetworkScorerAppManager;->mContext:Landroid/content/Context;

    .line 3
    iget-object p0, p0, Lcom/android/server/NetworkScorerAppManager;->mSettingsFacade:Lcom/android/server/NetworkScorerAppManager$SettingsFacade;

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 11
    move-result-object p0

    .line 12
    const-string/jumbo v0, "network_recommendations_package"

    .line 15
    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 18
    sget-boolean p0, Lcom/android/server/NetworkScorerAppManager;->VERBOSE:Z

    .line 20
    if-eqz p0, :cond_0

    .line 22
    const-string/jumbo p0, "network_recommendations_package set to "

    .line 25
    const-string v0, "NetworkScorerAppManager"

    .line 27
    invoke-static {p0, p1, v0}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    :cond_0
    return-void
.end method

.method public updateState()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/NetworkScorerAppManager;->mContext:Landroid/content/Context;

    .line 3
    iget-object v1, p0, Lcom/android/server/NetworkScorerAppManager;->mSettingsFacade:Lcom/android/server/NetworkScorerAppManager$SettingsFacade;

    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 11
    move-result-object v0

    .line 12
    const-string/jumbo v2, "network_recommendations_enabled"

    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 19
    move-result v0

    .line 20
    const/4 v2, -0x1

    .line 21
    sget-boolean v4, Lcom/android/server/NetworkScorerAppManager;->DEBUG:Z

    .line 23
    const-string v5, "NetworkScorerAppManager"

    .line 25
    if-ne v0, v2, :cond_1

    .line 27
    if-eqz v4, :cond_0

    .line 29
    const-string p0, "Recommendations forced off."

    .line 31
    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    :cond_0
    return-void

    .line 35
    :cond_1
    iget-object v0, p0, Lcom/android/server/NetworkScorerAppManager;->mContext:Landroid/content/Context;

    .line 37
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 43
    move-result-object v0

    .line 44
    const-string/jumbo v1, "network_recommendations_package"

    .line 47
    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {p0, v0}, Lcom/android/server/NetworkScorerAppManager;->getScorer(Ljava/lang/String;)Landroid/net/NetworkScorerAppData;

    .line 54
    move-result-object v1

    .line 55
    const/4 v2, 0x1

    .line 56
    if-eqz v1, :cond_3

    .line 58
    sget-boolean v1, Lcom/android/server/NetworkScorerAppManager;->VERBOSE:Z

    .line 60
    if-eqz v1, :cond_2

    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    .line 64
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    const-string v0, " is the active scorer."

    .line 72
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    move-result-object v0

    .line 79
    invoke-static {v5, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/server/NetworkScorerAppManager;->setNetworkRecommendationsEnabledSetting(I)V

    .line 85
    return-void

    .line 86
    :cond_3
    iget-object v1, p0, Lcom/android/server/NetworkScorerAppManager;->mContext:Landroid/content/Context;

    .line 88
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 91
    move-result-object v1

    .line 92
    const v6, 0x1040325

    .line 95
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 98
    move-result-object v1

    .line 99
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 102
    move-result v0

    .line 103
    if-nez v0, :cond_5

    .line 105
    invoke-virtual {p0, v1}, Lcom/android/server/NetworkScorerAppManager;->getScorer(Ljava/lang/String;)Landroid/net/NetworkScorerAppData;

    .line 108
    move-result-object v0

    .line 109
    if-eqz v0, :cond_5

    .line 111
    if-eqz v4, :cond_4

    .line 113
    const-string v0, "Defaulting the network recommendations app to: "

    .line 115
    invoke-static {v0, v1, v5}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    :cond_4
    invoke-virtual {p0, v1}, Lcom/android/server/NetworkScorerAppManager;->setNetworkRecommendationsPackage(Ljava/lang/String;)V

    .line 121
    move v3, v2

    .line 122
    :cond_5
    invoke-virtual {p0, v3}, Lcom/android/server/NetworkScorerAppManager;->setNetworkRecommendationsEnabledSetting(I)V

    .line 125
    return-void
.end method
