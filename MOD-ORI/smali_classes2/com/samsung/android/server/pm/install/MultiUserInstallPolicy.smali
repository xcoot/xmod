.class public final Lcom/samsung/android/server/pm/install/MultiUserInstallPolicy;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mMetaDataHelper:Lcom/samsung/android/server/pm/MetaDataHelper;

.field public final mSettingsDelegator:Lcom/samsung/android/server/pm/install/MultiUserInstallPolicy$PackageSettingsDelegator;

.field public final mUserManager:Lcom/android/server/pm/UserManagerService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/pm/install/MultiUserInstallPolicy$PackageSettingsDelegator;Lcom/samsung/android/server/pm/MetaDataHelper;Lcom/android/server/pm/UserManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/server/pm/install/MultiUserInstallPolicy;->mSettingsDelegator:Lcom/samsung/android/server/pm/install/MultiUserInstallPolicy$PackageSettingsDelegator;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/samsung/android/server/pm/install/MultiUserInstallPolicy;->mMetaDataHelper:Lcom/samsung/android/server/pm/MetaDataHelper;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/samsung/android/server/pm/install/MultiUserInstallPolicy;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 9
    .line 10
    return-void
.end method

.method public static checkIfInstallAllowed(Landroid/os/Bundle;ILcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda8;)I
    .locals 2

    .line 1
    const/4 v0, -0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eq p1, v0, :cond_3

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    if-nez p0, :cond_1

    .line 9
    .line 10
    return v1

    .line 11
    :cond_1
    const-string v0, "com.samsung.android.multiuser.install_only_owner"

    .line 12
    .line 13
    invoke-static {p0, v0}, Lcom/samsung/android/server/pm/MetaDataHelper;->isMetaDataInBundle(Landroid/os/Bundle;Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    const/4 p0, 0x1

    .line 20
    return p0

    .line 21
    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p2, p1}, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda8;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Landroid/content/pm/UserInfo;

    .line 30
    .line 31
    if-eqz p1, :cond_3

    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isGuest()Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-eqz p1, :cond_3

    .line 38
    .line 39
    const-string p1, "com.samsung.android.multiuser.disable_for_guest"

    .line 40
    .line 41
    invoke-static {p0, p1}, Lcom/samsung/android/server/pm/MetaDataHelper;->isMetaDataInBundle(Landroid/os/Bundle;Ljava/lang/String;)Z

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    if-eqz p0, :cond_3

    .line 46
    .line 47
    const/4 p0, 0x2

    .line 48
    return p0

    .line 49
    :cond_3
    :goto_0
    return v1
.end method


# virtual methods
.method public final applyInstallPolicyPackageInternalLPw(Lcom/android/server/pm/PackageSetting;Ljava/util/List;I)V
    .locals 12

    .line 1
    const-string v0, "MultiUserInstallPolicy"

    .line 2
    .line 3
    if-eqz p1, :cond_f

    .line 4
    .line 5
    iget-object v1, p0, Lcom/samsung/android/server/pm/install/MultiUserInstallPolicy;->mMetaDataHelper:Lcom/samsung/android/server/pm/MetaDataHelper;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    iget-object v2, p1, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    :goto_0
    move-object v2, v1

    .line 16
    goto :goto_1

    .line 17
    :cond_0
    const/4 v3, -0x1

    .line 18
    invoke-virtual {p1, v3}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    .line 19
    .line 20
    .line 21
    move-result-object v5

    .line 22
    const-wide/16 v3, 0x80

    .line 23
    .line 24
    const/4 v6, -0x1

    .line 25
    move-object v7, p1

    .line 26
    invoke-static/range {v2 .. v7}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateApplicationInfo(Lcom/android/server/pm/pkg/AndroidPackage;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ApplicationInfo;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    if-nez v2, :cond_1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 34
    .line 35
    :goto_1
    const-string v3, "com.samsung.android.multiuser.install_only_owner"

    .line 36
    .line 37
    iget-object p0, p0, Lcom/samsung/android/server/pm/install/MultiUserInstallPolicy;->mSettingsDelegator:Lcom/samsung/android/server/pm/install/MultiUserInstallPolicy$PackageSettingsDelegator;

    .line 38
    .line 39
    const-string v4, " for userId: "

    .line 40
    .line 41
    if-eqz v2, :cond_4

    .line 42
    .line 43
    invoke-static {v2, v3}, Lcom/samsung/android/server/pm/MetaDataHelper;->isMetaDataInBundle(Landroid/os/Bundle;Ljava/lang/String;)Z

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    const-string v6, "com.samsung.android.multiuser.disable_for_guest"

    .line 48
    .line 49
    invoke-static {v2, v6}, Lcom/samsung/android/server/pm/MetaDataHelper;->isMetaDataInBundle(Landroid/os/Bundle;Ljava/lang/String;)Z

    .line 50
    .line 51
    .line 52
    move-result v6

    .line 53
    const-string v7, "Set package state as uninstalled: "

    .line 54
    .line 55
    if-eqz v5, :cond_2

    .line 56
    .line 57
    move-object v8, p2

    .line 58
    check-cast v8, Ljava/util/ArrayList;

    .line 59
    .line 60
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 61
    .line 62
    .line 63
    move-result-object v8

    .line 64
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 65
    .line 66
    .line 67
    move-result v9

    .line 68
    if-eqz v9, :cond_2

    .line 69
    .line 70
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v9

    .line 74
    check-cast v9, Ljava/lang/Integer;

    .line 75
    .line 76
    new-instance v10, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    invoke-direct {v10, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    iget-object v11, p1, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    .line 82
    .line 83
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v10

    .line 96
    invoke-static {v0, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    .line 101
    .line 102
    iget-object v10, p0, Lcom/samsung/android/server/pm/install/MultiUserInstallPolicy$PackageSettingsDelegator;->mSetInstalled:Lcom/android/internal/util/function/TriConsumer;

    .line 103
    .line 104
    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 105
    .line 106
    invoke-interface {v10, p1, v11, v9}, Lcom/android/internal/util/function/TriConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_2
    if-eqz v6, :cond_3

    .line 111
    .line 112
    if-lez p3, :cond_3

    .line 113
    .line 114
    new-instance v8, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    iget-object v7, p1, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    .line 120
    .line 121
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v7

    .line 134
    invoke-static {v0, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    .line 136
    .line 137
    iget-object v7, p0, Lcom/samsung/android/server/pm/install/MultiUserInstallPolicy$PackageSettingsDelegator;->mSetInstalled:Lcom/android/internal/util/function/TriConsumer;

    .line 138
    .line 139
    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 140
    .line 141
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 142
    .line 143
    .line 144
    move-result-object v9

    .line 145
    invoke-interface {v7, p1, v8, v9}, Lcom/android/internal/util/function/TriConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    :cond_3
    const-string v7, "com.samsung.android.multiuser.disable_sub_user"

    .line 149
    .line 150
    invoke-static {v2, v7}, Lcom/samsung/android/server/pm/MetaDataHelper;->isMetaDataInBundle(Landroid/os/Bundle;Ljava/lang/String;)Z

    .line 151
    .line 152
    .line 153
    move-result v2

    .line 154
    if-eqz v2, :cond_5

    .line 155
    .line 156
    move-object v7, p2

    .line 157
    check-cast v7, Ljava/util/ArrayList;

    .line 158
    .line 159
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 160
    .line 161
    .line 162
    move-result-object v7

    .line 163
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 164
    .line 165
    .line 166
    move-result v8

    .line 167
    if-eqz v8, :cond_5

    .line 168
    .line 169
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v8

    .line 173
    check-cast v8, Ljava/lang/Integer;

    .line 174
    .line 175
    new-instance v9, Ljava/lang/StringBuilder;

    .line 176
    .line 177
    const-string v10, "Set package state as disabled: "

    .line 178
    .line 179
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    iget-object v10, p1, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    .line 183
    .line 184
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v9

    .line 197
    invoke-static {v0, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    .line 199
    .line 200
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 201
    .line 202
    .line 203
    iget-object v9, p0, Lcom/samsung/android/server/pm/install/MultiUserInstallPolicy$PackageSettingsDelegator;->mSetEnabled:Lcom/android/internal/util/function/TriConsumer;

    .line 204
    .line 205
    const/4 v10, 0x2

    .line 206
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 207
    .line 208
    .line 209
    move-result-object v10

    .line 210
    invoke-interface {v9, p1, v10, v8}, Lcom/android/internal/util/function/TriConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 211
    .line 212
    .line 213
    goto :goto_3

    .line 214
    :cond_4
    const/4 v5, 0x0

    .line 215
    move v2, v5

    .line 216
    move v6, v2

    .line 217
    :cond_5
    if-nez v5, :cond_e

    .line 218
    .line 219
    if-nez v6, :cond_e

    .line 220
    .line 221
    if-nez v2, :cond_e

    .line 222
    .line 223
    new-instance p3, Ljava/util/ArrayList;

    .line 224
    .line 225
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 226
    .line 227
    .line 228
    iget-object v2, p1, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 229
    .line 230
    if-nez v2, :cond_6

    .line 231
    .line 232
    new-instance p3, Ljava/lang/StringBuilder;

    .line 233
    .line 234
    const-string v2, "Package "

    .line 235
    .line 236
    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    iget-object v2, p1, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    .line 240
    .line 241
    const-string v3, " has not package object"

    .line 242
    .line 243
    invoke-static {p3, v2, v3, v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    goto/16 :goto_7

    .line 247
    .line 248
    :cond_6
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getActivities()Ljava/util/List;

    .line 249
    .line 250
    .line 251
    move-result-object v1

    .line 252
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 253
    .line 254
    .line 255
    move-result-object v1

    .line 256
    :cond_7
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 257
    .line 258
    .line 259
    move-result v5

    .line 260
    if-eqz v5, :cond_8

    .line 261
    .line 262
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    move-result-object v5

    .line 266
    check-cast v5, Lcom/android/internal/pm/pkg/component/ParsedActivity;

    .line 267
    .line 268
    invoke-interface {v5}, Lcom/android/internal/pm/pkg/component/ParsedComponent;->getMetaData()Landroid/os/Bundle;

    .line 269
    .line 270
    .line 271
    move-result-object v6

    .line 272
    invoke-static {v6, v3}, Lcom/samsung/android/server/pm/MetaDataHelper;->isMetaDataInBundle(Landroid/os/Bundle;Ljava/lang/String;)Z

    .line 273
    .line 274
    .line 275
    move-result v6

    .line 276
    if-eqz v6, :cond_7

    .line 277
    .line 278
    invoke-interface {v5}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getName()Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v6

    .line 282
    invoke-virtual {p3, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 283
    .line 284
    .line 285
    move-result v6

    .line 286
    if-nez v6, :cond_7

    .line 287
    .line 288
    invoke-interface {v5}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getName()Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v5

    .line 292
    invoke-virtual {p3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    .line 294
    .line 295
    goto :goto_4

    .line 296
    :cond_8
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getServices()Ljava/util/List;

    .line 297
    .line 298
    .line 299
    move-result-object v1

    .line 300
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 301
    .line 302
    .line 303
    move-result-object v1

    .line 304
    :cond_9
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 305
    .line 306
    .line 307
    move-result v5

    .line 308
    if-eqz v5, :cond_a

    .line 309
    .line 310
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 311
    .line 312
    .line 313
    move-result-object v5

    .line 314
    check-cast v5, Lcom/android/internal/pm/pkg/component/ParsedService;

    .line 315
    .line 316
    invoke-interface {v5}, Lcom/android/internal/pm/pkg/component/ParsedComponent;->getMetaData()Landroid/os/Bundle;

    .line 317
    .line 318
    .line 319
    move-result-object v6

    .line 320
    invoke-static {v6, v3}, Lcom/samsung/android/server/pm/MetaDataHelper;->isMetaDataInBundle(Landroid/os/Bundle;Ljava/lang/String;)Z

    .line 321
    .line 322
    .line 323
    move-result v6

    .line 324
    if-eqz v6, :cond_9

    .line 325
    .line 326
    invoke-interface {v5}, Lcom/android/internal/pm/pkg/component/ParsedService;->getName()Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object v6

    .line 330
    invoke-virtual {p3, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 331
    .line 332
    .line 333
    move-result v6

    .line 334
    if-nez v6, :cond_9

    .line 335
    .line 336
    invoke-interface {v5}, Lcom/android/internal/pm/pkg/component/ParsedService;->getName()Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v5

    .line 340
    invoke-virtual {p3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 341
    .line 342
    .line 343
    goto :goto_5

    .line 344
    :cond_a
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getReceivers()Ljava/util/List;

    .line 345
    .line 346
    .line 347
    move-result-object v1

    .line 348
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 349
    .line 350
    .line 351
    move-result-object v1

    .line 352
    :cond_b
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 353
    .line 354
    .line 355
    move-result v2

    .line 356
    if-eqz v2, :cond_c

    .line 357
    .line 358
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 359
    .line 360
    .line 361
    move-result-object v2

    .line 362
    check-cast v2, Lcom/android/internal/pm/pkg/component/ParsedActivity;

    .line 363
    .line 364
    invoke-interface {v2}, Lcom/android/internal/pm/pkg/component/ParsedComponent;->getMetaData()Landroid/os/Bundle;

    .line 365
    .line 366
    .line 367
    move-result-object v5

    .line 368
    invoke-static {v5, v3}, Lcom/samsung/android/server/pm/MetaDataHelper;->isMetaDataInBundle(Landroid/os/Bundle;Ljava/lang/String;)Z

    .line 369
    .line 370
    .line 371
    move-result v5

    .line 372
    if-eqz v5, :cond_b

    .line 373
    .line 374
    invoke-interface {v2}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getName()Ljava/lang/String;

    .line 375
    .line 376
    .line 377
    move-result-object v5

    .line 378
    invoke-virtual {p3, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 379
    .line 380
    .line 381
    move-result v5

    .line 382
    if-nez v5, :cond_b

    .line 383
    .line 384
    invoke-interface {v2}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getName()Ljava/lang/String;

    .line 385
    .line 386
    .line 387
    move-result-object v2

    .line 388
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 389
    .line 390
    .line 391
    goto :goto_6

    .line 392
    :cond_c
    move-object v1, p3

    .line 393
    :goto_7
    if-eqz v1, :cond_e

    .line 394
    .line 395
    check-cast p2, Ljava/util/ArrayList;

    .line 396
    .line 397
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 398
    .line 399
    .line 400
    move-result-object p2

    .line 401
    :cond_d
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 402
    .line 403
    .line 404
    move-result p3

    .line 405
    if-eqz p3, :cond_e

    .line 406
    .line 407
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 408
    .line 409
    .line 410
    move-result-object p3

    .line 411
    check-cast p3, Ljava/lang/Integer;

    .line 412
    .line 413
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 414
    .line 415
    .line 416
    move-result-object v2

    .line 417
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 418
    .line 419
    .line 420
    move-result v3

    .line 421
    if-eqz v3, :cond_d

    .line 422
    .line 423
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 424
    .line 425
    .line 426
    move-result-object v3

    .line 427
    check-cast v3, Ljava/lang/String;

    .line 428
    .line 429
    const-string v5, "Set component state as disabled: "

    .line 430
    .line 431
    const-string v6, " in pkg: "

    .line 432
    .line 433
    invoke-static {v5, v3, v6}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    .line 435
    .line 436
    move-result-object v5

    .line 437
    iget-object v6, p1, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    .line 438
    .line 439
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    .line 441
    .line 442
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    .line 444
    .line 445
    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 446
    .line 447
    .line 448
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 449
    .line 450
    .line 451
    move-result-object v5

    .line 452
    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    .line 454
    .line 455
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 456
    .line 457
    .line 458
    iget-object v5, p0, Lcom/samsung/android/server/pm/install/MultiUserInstallPolicy$PackageSettingsDelegator;->mAddDisabledComponent:Lcom/android/internal/util/function/TriConsumer;

    .line 459
    .line 460
    invoke-interface {v5, p1, v3, p3}, Lcom/android/internal/util/function/TriConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 461
    .line 462
    .line 463
    goto :goto_8

    .line 464
    :cond_e
    return-void

    .line 465
    :cond_f
    const-string p0, "Subuser id is null"

    .line 466
    .line 467
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    .line 469
    .line 470
    return-void
.end method

.method public final getSubUserIdsAndGuestUserId(Ljava/util/List;)I
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/pm/install/MultiUserInstallPolicy;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-virtual {p0, v2, v2, v2}, Lcom/android/server/pm/UserManagerService;->getUsers(ZZZ)Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 18
    .line 19
    .line 20
    throw p0

    .line 21
    :catch_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 22
    .line 23
    .line 24
    const/4 p0, 0x0

    .line 25
    :goto_0
    const/4 v0, -0x1

    .line 26
    if-nez p0, :cond_0

    .line 27
    .line 28
    return v0

    .line 29
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    :cond_1
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_3

    .line 38
    .line 39
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    check-cast v1, Landroid/content/pm/UserInfo;

    .line 44
    .line 45
    iget v2, v1, Landroid/content/pm/UserInfo;->id:I

    .line 46
    .line 47
    if-nez v2, :cond_2

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    move-object v3, p1

    .line 55
    check-cast v3, Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isGuest()Z

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    if-eqz v2, :cond_1

    .line 65
    .line 66
    iget v0, v1, Landroid/content/pm/UserInfo;->id:I

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_3
    return v0
.end method
