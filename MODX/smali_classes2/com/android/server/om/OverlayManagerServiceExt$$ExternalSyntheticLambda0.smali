.class public final synthetic Lcom/android/server/om/OverlayManagerServiceExt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/om/OverlayManagerServiceExt;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/content/om/ISamsungOverlayCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/om/OverlayManagerServiceExt;ILandroid/content/om/ISamsungOverlayCallback;I)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/android/server/om/OverlayManagerServiceExt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/om/OverlayManagerServiceExt$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/om/OverlayManagerServiceExt;

    .line 4
    .line 5
    iput p2, p0, Lcom/android/server/om/OverlayManagerServiceExt$$ExternalSyntheticLambda0;->f$1:I

    .line 6
    .line 7
    iput-object p3, p0, Lcom/android/server/om/OverlayManagerServiceExt$$ExternalSyntheticLambda0;->f$2:Landroid/content/om/ISamsungOverlayCallback;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lcom/android/server/om/OverlayManagerServiceExt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 4
    .line 5
    packed-switch v1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object v1, v0, Lcom/android/server/om/OverlayManagerServiceExt$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/om/OverlayManagerServiceExt;

    .line 9
    .line 10
    iget v2, v0, Lcom/android/server/om/OverlayManagerServiceExt$$ExternalSyntheticLambda0;->f$1:I

    .line 11
    .line 12
    iget-object v0, v0, Lcom/android/server/om/OverlayManagerServiceExt$$ExternalSyntheticLambda0;->f$2:Landroid/content/om/ISamsungOverlayCallback;

    .line 13
    .line 14
    move-object/from16 v3, p1

    .line 15
    .line 16
    check-cast v3, Landroid/content/om/OverlayInfoExt;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    if-eqz v3, :cond_5

    .line 22
    .line 23
    iget-object v4, v3, Landroid/content/om/OverlayInfoExt;->info:Landroid/content/om/OverlayInfo;

    .line 24
    .line 25
    if-nez v4, :cond_0

    .line 26
    .line 27
    goto :goto_4

    .line 28
    :cond_0
    iget v4, v3, Landroid/content/om/OverlayInfoExt;->configFlags:I

    .line 29
    .line 30
    invoke-virtual {v1, v4, v2}, Lcom/android/server/om/OverlayManagerServiceExt;->getUserIds(II)[I

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    array-length v5, v4

    .line 35
    const/4 v6, 0x1

    .line 36
    sub-int/2addr v5, v6

    .line 37
    :goto_0
    if-ltz v5, :cond_3

    .line 38
    .line 39
    aget v7, v4, v5

    .line 40
    .line 41
    iget-object v8, v3, Landroid/content/om/OverlayInfoExt;->info:Landroid/content/om/OverlayInfo;

    .line 42
    .line 43
    invoke-virtual {v8}, Landroid/content/om/OverlayInfo;->getOverlayIdentifier()Landroid/content/om/OverlayIdentifier;

    .line 44
    .line 45
    .line 46
    move-result-object v8

    .line 47
    iget-object v9, v1, Lcom/android/server/om/OverlayManagerServiceExt;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    .line 48
    .line 49
    invoke-virtual {v9, v8, v7}, Lcom/android/server/om/OverlayManagerSettings;->remove(Landroid/content/om/OverlayIdentifier;I)Z

    .line 50
    .line 51
    .line 52
    iget v8, v3, Landroid/content/om/OverlayInfoExt;->configFlags:I

    .line 53
    .line 54
    and-int/lit16 v8, v8, 0x100

    .line 55
    .line 56
    if-eqz v8, :cond_1

    .line 57
    .line 58
    move v8, v6

    .line 59
    goto :goto_1

    .line 60
    :cond_1
    const/4 v8, 0x0

    .line 61
    :goto_1
    invoke-static {v7}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    .line 62
    .line 63
    .line 64
    move-result v7

    .line 65
    if-eqz v7, :cond_2

    .line 66
    .line 67
    if-eqz v8, :cond_2

    .line 68
    .line 69
    const-string v7, "OverlayManagerExt"

    .line 70
    .line 71
    const-string v8, "Skip deleting idmap for dual app"

    .line 72
    .line 73
    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_2
    invoke-virtual {v1, v3}, Lcom/android/server/om/OverlayManagerServiceExt;->removeIdmap(Landroid/content/om/OverlayInfoExt;)V

    .line 78
    .line 79
    .line 80
    :goto_2
    add-int/lit8 v5, v5, -0x1

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_3
    if-nez v0, :cond_4

    .line 84
    .line 85
    goto :goto_3

    .line 86
    :cond_4
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    new-instance v5, Lcom/android/server/om/OverlayManagerServiceExt$$ExternalSyntheticLambda9;

    .line 91
    .line 92
    invoke-direct {v5, v1, v3, v2, v0}, Lcom/android/server/om/OverlayManagerServiceExt$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/om/OverlayManagerServiceExt;Landroid/content/om/OverlayInfoExt;ILandroid/content/om/ISamsungOverlayCallback;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 96
    .line 97
    .line 98
    :goto_3
    iget-object v0, v3, Landroid/content/om/OverlayInfoExt;->info:Landroid/content/om/OverlayInfo;

    .line 99
    .line 100
    iget-object v0, v0, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    .line 101
    .line 102
    goto :goto_5

    .line 103
    :cond_5
    :goto_4
    const/4 v0, 0x0

    .line 104
    :goto_5
    return-object v0

    .line 105
    :pswitch_0
    iget-object v1, v0, Lcom/android/server/om/OverlayManagerServiceExt$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/om/OverlayManagerServiceExt;

    .line 106
    .line 107
    iget v2, v0, Lcom/android/server/om/OverlayManagerServiceExt$$ExternalSyntheticLambda0;->f$1:I

    .line 108
    .line 109
    iget-object v0, v0, Lcom/android/server/om/OverlayManagerServiceExt$$ExternalSyntheticLambda0;->f$2:Landroid/content/om/ISamsungOverlayCallback;

    .line 110
    .line 111
    move-object/from16 v3, p1

    .line 112
    .line 113
    check-cast v3, Landroid/content/om/OverlayInfoExt;

    .line 114
    .line 115
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 116
    .line 117
    .line 118
    if-eqz v3, :cond_e

    .line 119
    .line 120
    iget-object v5, v3, Landroid/content/om/OverlayInfoExt;->info:Landroid/content/om/OverlayInfo;

    .line 121
    .line 122
    if-nez v5, :cond_6

    .line 123
    .line 124
    goto/16 :goto_f

    .line 125
    .line 126
    :cond_6
    iget v5, v3, Landroid/content/om/OverlayInfoExt;->configFlags:I

    .line 127
    .line 128
    invoke-virtual {v1, v5, v2}, Lcom/android/server/om/OverlayManagerServiceExt;->getUserIds(II)[I

    .line 129
    .line 130
    .line 131
    move-result-object v5

    .line 132
    array-length v6, v5

    .line 133
    const/4 v7, 0x1

    .line 134
    sub-int/2addr v6, v7

    .line 135
    :goto_6
    if-ltz v6, :cond_c

    .line 136
    .line 137
    aget v15, v5, v6

    .line 138
    .line 139
    iget-object v8, v3, Landroid/content/om/OverlayInfoExt;->info:Landroid/content/om/OverlayInfo;

    .line 140
    .line 141
    iget-object v8, v8, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    .line 142
    .line 143
    iget-object v9, v1, Lcom/android/server/om/OverlayManagerServiceExt;->mPackageManager:Lcom/android/server/om/OverlayManagerServiceExt$PMSHelperImpl;

    .line 144
    .line 145
    iget-object v9, v9, Lcom/android/server/om/OverlayManagerServiceExt$PMSHelperImpl;->packageManagerHelper:Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

    .line 146
    .line 147
    invoke-virtual {v9, v15, v8}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->getPackageStateForUser(ILjava/lang/String;)Lcom/android/server/pm/pkg/PackageState;

    .line 148
    .line 149
    .line 150
    move-result-object v8

    .line 151
    if-nez v8, :cond_7

    .line 152
    .line 153
    const/4 v14, 0x0

    .line 154
    goto :goto_7

    .line 155
    :cond_7
    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    .line 156
    .line 157
    .line 158
    move-result-object v8

    .line 159
    move-object v14, v8

    .line 160
    :goto_7
    if-eq v15, v2, :cond_8

    .line 161
    .line 162
    iget-object v8, v3, Landroid/content/om/OverlayInfoExt;->info:Landroid/content/om/OverlayInfo;

    .line 163
    .line 164
    iget-object v8, v8, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    .line 165
    .line 166
    const-string v9, "com.android.systemui"

    .line 167
    .line 168
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    move-result v8

    .line 172
    if-eqz v8, :cond_8

    .line 173
    .line 174
    new-instance v8, Ljava/lang/StringBuilder;

    .line 175
    .line 176
    const-string/jumbo v9, "skip to update overlay : "

    .line 177
    .line 178
    .line 179
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    iget-object v9, v3, Landroid/content/om/OverlayInfoExt;->info:Landroid/content/om/OverlayInfo;

    .line 183
    .line 184
    iget-object v9, v9, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    .line 185
    .line 186
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    const-string v9, ", for "

    .line 190
    .line 191
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v8

    .line 201
    const-string v9, "OverlayManagerExt"

    .line 202
    .line 203
    invoke-static {v9, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    .line 205
    .line 206
    move/from16 v22, v2

    .line 207
    .line 208
    move-object/from16 v23, v5

    .line 209
    .line 210
    goto/16 :goto_d

    .line 211
    .line 212
    :cond_8
    invoke-virtual {v3}, Landroid/content/om/OverlayInfoExt;->getOverlayIdentifier()Landroid/content/om/OverlayIdentifier;

    .line 213
    .line 214
    .line 215
    move-result-object v9

    .line 216
    iget v8, v3, Landroid/content/om/OverlayInfoExt;->configFlags:I

    .line 217
    .line 218
    and-int/lit16 v8, v8, 0x800

    .line 219
    .line 220
    iget-object v13, v1, Lcom/android/server/om/OverlayManagerServiceExt;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    .line 221
    .line 222
    const/16 v20, 0x0

    .line 223
    .line 224
    if-eqz v8, :cond_9

    .line 225
    .line 226
    :try_start_0
    invoke-virtual {v13, v9, v15}, Lcom/android/server/om/OverlayManagerSettings;->getEnabled(Landroid/content/om/OverlayIdentifier;I)Z

    .line 227
    .line 228
    .line 229
    move-result v8
    :try_end_0
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    goto :goto_8

    .line 231
    :catch_0
    move/from16 v8, v20

    .line 232
    .line 233
    :goto_8
    invoke-virtual {v13, v9, v15}, Lcom/android/server/om/OverlayManagerSettings;->remove(Landroid/content/om/OverlayIdentifier;I)Z

    .line 234
    .line 235
    .line 236
    move/from16 v21, v8

    .line 237
    .line 238
    goto :goto_9

    .line 239
    :cond_9
    move/from16 v21, v7

    .line 240
    .line 241
    :goto_9
    iget-object v8, v3, Landroid/content/om/OverlayInfoExt;->info:Landroid/content/om/OverlayInfo;

    .line 242
    .line 243
    iget-object v11, v8, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    .line 244
    .line 245
    iget-object v12, v8, Landroid/content/om/OverlayInfo;->targetOverlayableName:Ljava/lang/String;

    .line 246
    .line 247
    iget-object v10, v8, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    .line 248
    .line 249
    iget v4, v8, Landroid/content/om/OverlayInfo;->priority:I

    .line 250
    .line 251
    iget-object v8, v8, Landroid/content/om/OverlayInfo;->category:Ljava/lang/String;

    .line 252
    .line 253
    invoke-virtual {v13, v9, v15}, Lcom/android/server/om/OverlayManagerSettings;->remove(Landroid/content/om/OverlayIdentifier;I)Z

    .line 254
    .line 255
    .line 256
    new-instance v7, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    .line 257
    .line 258
    const/16 v16, -0x1

    .line 259
    .line 260
    const/16 v17, 0x1

    .line 261
    .line 262
    const/16 v19, 0x0

    .line 263
    .line 264
    move-object/from16 v18, v8

    .line 265
    .line 266
    move-object v8, v7

    .line 267
    move-object/from16 v22, v10

    .line 268
    .line 269
    move v10, v15

    .line 270
    move-object/from16 v23, v5

    .line 271
    .line 272
    move-object v5, v13

    .line 273
    move-object/from16 v13, v22

    .line 274
    .line 275
    move/from16 v22, v2

    .line 276
    .line 277
    move-object v2, v14

    .line 278
    move/from16 v14, v16

    .line 279
    .line 280
    move/from16 v24, v15

    .line 281
    .line 282
    move/from16 v15, v21

    .line 283
    .line 284
    move/from16 v16, v17

    .line 285
    .line 286
    move/from16 v17, v4

    .line 287
    .line 288
    invoke-direct/range {v8 .. v19}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;-><init>(Landroid/content/om/OverlayIdentifier;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZILjava/lang/String;Z)V

    .line 289
    .line 290
    .line 291
    invoke-virtual {v5, v7}, Lcom/android/server/om/OverlayManagerSettings;->insert(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)V

    .line 292
    .line 293
    .line 294
    invoke-static {v7}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-$$Nest$mgetOverlayInfo(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Landroid/content/om/OverlayInfo;

    .line 295
    .line 296
    .line 297
    if-nez v2, :cond_a

    .line 298
    .line 299
    :goto_a
    move/from16 v4, v20

    .line 300
    .line 301
    move/from16 v5, v24

    .line 302
    .line 303
    goto :goto_c

    .line 304
    :cond_a
    if-eqz v21, :cond_b

    .line 305
    .line 306
    const/4 v4, 0x3

    .line 307
    :goto_b
    move/from16 v20, v4

    .line 308
    .line 309
    goto :goto_a

    .line 310
    :cond_b
    const/4 v4, 0x2

    .line 311
    goto :goto_b

    .line 312
    :goto_c
    invoke-virtual {v1, v2, v3, v5, v4}, Lcom/android/server/om/OverlayManagerServiceExt;->updateOverlayState(Lcom/android/server/pm/pkg/AndroidPackage;Landroid/content/om/OverlayInfoExt;II)V

    .line 313
    .line 314
    .line 315
    :goto_d
    add-int/lit8 v6, v6, -0x1

    .line 316
    .line 317
    move/from16 v2, v22

    .line 318
    .line 319
    move-object/from16 v5, v23

    .line 320
    .line 321
    const/4 v7, 0x1

    .line 322
    goto/16 :goto_6

    .line 323
    .line 324
    :cond_c
    move/from16 v22, v2

    .line 325
    .line 326
    if-nez v0, :cond_d

    .line 327
    .line 328
    goto :goto_e

    .line 329
    :cond_d
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    .line 330
    .line 331
    .line 332
    move-result-object v2

    .line 333
    new-instance v4, Lcom/android/server/om/OverlayManagerServiceExt$$ExternalSyntheticLambda9;

    .line 334
    .line 335
    move/from16 v5, v22

    .line 336
    .line 337
    invoke-direct {v4, v1, v3, v5, v0}, Lcom/android/server/om/OverlayManagerServiceExt$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/om/OverlayManagerServiceExt;Landroid/content/om/OverlayInfoExt;ILandroid/content/om/ISamsungOverlayCallback;)V

    .line 338
    .line 339
    .line 340
    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 341
    .line 342
    .line 343
    :goto_e
    iget-object v0, v3, Landroid/content/om/OverlayInfoExt;->info:Landroid/content/om/OverlayInfo;

    .line 344
    .line 345
    iget-object v4, v0, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    .line 346
    .line 347
    goto :goto_10

    .line 348
    :cond_e
    :goto_f
    const/4 v4, 0x0

    .line 349
    :goto_10
    return-object v4

    .line 350
    nop

    .line 351
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
