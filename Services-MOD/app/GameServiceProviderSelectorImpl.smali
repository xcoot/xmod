.class public final Lcom/android/server/app/GameServiceProviderSelectorImpl;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public final mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/content/pm/PackageManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/app/GameServiceProviderSelectorImpl;->mResources:Landroid/content/res/Resources;

    .line 6
    iput-object p2, p0, Lcom/android/server/app/GameServiceProviderSelectorImpl;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 8
    return-void
.end method


# virtual methods
.method public final get(Lcom/android/server/SystemService$TargetUser;Ljava/lang/String;)Lcom/android/server/app/GameServiceConfiguration;
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 4
    return-object v0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->isFull()Z

    .line 8
    move-result v1

    .line 9
    const-string v2, "GameServiceProviderSelector"

    .line 11
    if-eqz v1, :cond_f

    .line 13
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->isManagedProfile()Z

    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_f

    .line 19
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 22
    move-result v1

    .line 23
    const/4 v3, 0x0

    .line 24
    if-nez v1, :cond_1

    .line 26
    move v1, v3

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    iget-object p2, p0, Lcom/android/server/app/GameServiceProviderSelectorImpl;->mResources:Landroid/content/res/Resources;

    .line 30
    const v1, 0x10403c2

    .line 33
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 36
    move-result-object p2

    .line 37
    const/high16 v1, 0x100000

    .line 39
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 42
    move-result v4

    .line 43
    if-eqz v4, :cond_2

    .line 45
    const-string p0, "No game service package defined"

    .line 47
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    return-object v0

    .line 51
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    .line 54
    move-result p1

    .line 55
    iget-object v4, p0, Lcom/android/server/app/GameServiceProviderSelectorImpl;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 57
    new-instance v5, Landroid/content/Intent;

    .line 59
    const-string v6, "android.service.games.action.GAME_SERVICE"

    .line 61
    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v5, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    move-result-object v5

    .line 68
    or-int/lit16 v1, v1, 0x80

    .line 70
    invoke-virtual {v4, v5, v1, p1}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    .line 73
    move-result-object v1

    .line 74
    if-eqz v1, :cond_e

    .line 76
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 79
    move-result v4

    .line 80
    if-eqz v4, :cond_3

    .line 82
    goto/16 :goto_a

    .line 84
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 87
    move-result-object v1

    .line 88
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 91
    move-result v4

    .line 92
    if-eqz v4, :cond_c

    .line 94
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 97
    move-result-object v4

    .line 98
    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 100
    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 102
    if-nez v4, :cond_4

    .line 104
    goto :goto_1

    .line 105
    :cond_4
    const-string v5, "No android.game_service meta-data found for "

    .line 107
    :try_start_0
    iget-object v6, p0, Lcom/android/server/app/GameServiceProviderSelectorImpl;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 109
    const-string v7, "android.game_service"

    .line 111
    invoke-virtual {v4, v6, v7}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    .line 114
    move-result-object v6
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    if-nez v6, :cond_6

    .line 117
    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    .line 119
    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 122
    invoke-virtual {v4}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    .line 125
    move-result-object v5

    .line 126
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    move-result-object v5

    .line 133
    invoke-static {v2, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    if-eqz v6, :cond_5

    .line 138
    :goto_2
    :try_start_2
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 141
    goto :goto_3

    .line 142
    :catch_0
    move-exception v5

    .line 143
    goto/16 :goto_7

    .line 145
    :cond_5
    :goto_3
    move-object v5, v0

    .line 146
    goto/16 :goto_8

    .line 148
    :catchall_0
    move-exception v5

    .line 149
    goto :goto_5

    .line 150
    :cond_6
    :try_start_3
    iget-object v5, p0, Lcom/android/server/app/GameServiceProviderSelectorImpl;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 152
    iget-object v7, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 154
    invoke-virtual {v5, v7}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    .line 157
    move-result-object v5

    .line 158
    invoke-static {v6}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    .line 161
    move-result-object v7

    .line 162
    :goto_4
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->next()I

    .line 165
    move-result v8

    .line 166
    const/4 v9, 0x1

    .line 167
    if-eq v8, v9, :cond_7

    .line 169
    const/4 v9, 0x2

    .line 170
    if-eq v8, v9, :cond_7

    .line 172
    goto :goto_4

    .line 173
    :cond_7
    const-string/jumbo v8, "game-service"

    .line 176
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    .line 179
    move-result-object v9

    .line 180
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 183
    move-result v8

    .line 184
    if-nez v8, :cond_8

    .line 186
    const-string v5, "Meta-data does not start with game-service tag"

    .line 188
    invoke-static {v2, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    goto :goto_2

    .line 192
    :cond_8
    sget-object v8, Lcom/android/internal/R$styleable;->GameService:[I

    .line 194
    invoke-virtual {v5, v7, v8}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 197
    move-result-object v5

    .line 198
    invoke-virtual {v5, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 201
    move-result-object v7

    .line 202
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 205
    :try_start_4
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 208
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 211
    move-result v5

    .line 212
    if-eqz v5, :cond_9

    .line 214
    const-string v5, "No gameSessionService specified"

    .line 216
    invoke-static {v2, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    goto :goto_3

    .line 220
    :cond_9
    new-instance v5, Landroid/content/ComponentName;

    .line 222
    iget-object v6, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 224
    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    :try_start_5
    iget-object v6, p0, Lcom/android/server/app/GameServiceProviderSelectorImpl;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 229
    invoke-virtual {v6, v5, v3}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_1

    .line 232
    goto :goto_8

    .line 233
    :catch_1
    new-instance v6, Ljava/lang/StringBuilder;

    .line 235
    const-string v7, "GameSessionService does not exist: "

    .line 237
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 240
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 243
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 246
    move-result-object v5

    .line 247
    invoke-static {v2, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    goto :goto_3

    .line 251
    :goto_5
    if-eqz v6, :cond_a

    .line 253
    :try_start_6
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 256
    goto :goto_6

    .line 257
    :catchall_1
    move-exception v6

    .line 258
    :try_start_7
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 261
    :cond_a
    :goto_6
    throw v5
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    .line 262
    :goto_7
    new-instance v6, Ljava/lang/StringBuilder;

    .line 264
    const-string v7, "Error while parsing meta-data for "

    .line 266
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 269
    invoke-virtual {v4}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    .line 272
    move-result-object v7

    .line 273
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 276
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 279
    move-result-object v6

    .line 280
    invoke-static {v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 283
    goto/16 :goto_3

    .line 285
    :goto_8
    if-nez v5, :cond_b

    .line 287
    goto/16 :goto_1

    .line 289
    :cond_b
    new-instance p0, Lcom/android/server/app/GameServiceConfiguration;

    .line 291
    new-instance v1, Lcom/android/server/app/GameServiceConfiguration$GameServiceComponentConfiguration;

    .line 293
    new-instance v3, Landroid/os/UserHandle;

    .line 295
    invoke-direct {v3, p1}, Landroid/os/UserHandle;-><init>(I)V

    .line 298
    invoke-virtual {v4}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    .line 301
    move-result-object v4

    .line 302
    invoke-direct {v1, v3, v4, v5}, Lcom/android/server/app/GameServiceConfiguration$GameServiceComponentConfiguration;-><init>(Landroid/os/UserHandle;Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 305
    invoke-direct {p0, p2, v1}, Lcom/android/server/app/GameServiceConfiguration;-><init>(Ljava/lang/String;Lcom/android/server/app/GameServiceConfiguration$GameServiceComponentConfiguration;)V

    .line 308
    goto :goto_9

    .line 309
    :cond_c
    move-object p0, v0

    .line 310
    :goto_9
    if-nez p0, :cond_d

    .line 312
    new-instance p0, Ljava/lang/StringBuilder;

    .line 314
    const-string v1, "No valid game service found for user id: "

    .line 316
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 319
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 322
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 325
    move-result-object p0

    .line 326
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    new-instance p0, Lcom/android/server/app/GameServiceConfiguration;

    .line 331
    invoke-direct {p0, p2, v0}, Lcom/android/server/app/GameServiceConfiguration;-><init>(Ljava/lang/String;Lcom/android/server/app/GameServiceConfiguration$GameServiceComponentConfiguration;)V

    .line 334
    :cond_d
    return-object p0

    .line 335
    :cond_e
    :goto_a
    new-instance p0, Ljava/lang/StringBuilder;

    .line 337
    const-string v1, "No available game service found for user id: "

    .line 339
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 342
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 345
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 348
    move-result-object p0

    .line 349
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    new-instance p0, Lcom/android/server/app/GameServiceConfiguration;

    .line 354
    invoke-direct {p0, p2, v0}, Lcom/android/server/app/GameServiceConfiguration;-><init>(Ljava/lang/String;Lcom/android/server/app/GameServiceConfiguration$GameServiceComponentConfiguration;)V

    .line 357
    return-object p0

    .line 358
    :cond_f
    new-instance p0, Ljava/lang/StringBuilder;

    .line 360
    const-string p2, "Game Service not supported for user: "

    .line 362
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 365
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    .line 368
    move-result p1

    .line 369
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 372
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 375
    move-result-object p0

    .line 376
    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    return-object v0
.end method
