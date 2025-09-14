.class public final synthetic Lcom/android/server/pm/permission/LegacyPermissionManagerService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/pm/permission/LegacyPermissionManagerService;

.field public final synthetic f$1:[Ljava/lang/String;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/permission/LegacyPermissionManagerService;[Ljava/lang/String;II)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/permission/LegacyPermissionManagerService;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService$$ExternalSyntheticLambda0;->f$1:[Ljava/lang/String;

    .line 6
    .line 7
    iput p3, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService$$ExternalSyntheticLambda0;->f$2:I

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 11

    .line 1
    iget v0, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/permission/LegacyPermissionManagerService;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService$$ExternalSyntheticLambda0;->f$1:[Ljava/lang/String;

    .line 9
    .line 10
    iget p0, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService$$ExternalSyntheticLambda0;->f$2:I

    .line 11
    .line 12
    iget-object v0, v0, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mDefaultPermissionGrantPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v3, "Revoking permissions from disabled data services for user:"

    .line 20
    .line 21
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    const-string v3, "DefaultPermGrantPolicy"

    .line 32
    .line 33
    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    if-nez v1, :cond_0

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_0
    array-length v2, v1

    .line 40
    const/4 v3, 0x0

    .line 41
    :goto_0
    if-ge v3, v2, :cond_2

    .line 42
    .line 43
    aget-object v4, v1, v3

    .line 44
    .line 45
    iget-object v5, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NO_PM_CACHE:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$1;

    .line 46
    .line 47
    invoke-virtual {v5, v4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    invoke-virtual {v5, v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->isSystemPackage(Landroid/content/pm/PackageInfo;)Z

    .line 52
    .line 53
    .line 54
    move-result v7

    .line 55
    if-eqz v7, :cond_1

    .line 56
    .line 57
    invoke-static {v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    .line 58
    .line 59
    .line 60
    move-result v6

    .line 61
    if-eqz v6, :cond_1

    .line 62
    .line 63
    sget-object v6, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    .line 64
    .line 65
    const/4 v7, 0x1

    .line 66
    invoke-static {v5, v4, v6, v7, p0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->revokeRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;Ljava/util/Set;ZI)V

    .line 67
    .line 68
    .line 69
    sget-object v6, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    .line 70
    .line 71
    invoke-static {v5, v4, v6, v7, p0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->revokeRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;Ljava/util/Set;ZI)V

    .line 72
    .line 73
    .line 74
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_2
    :goto_1
    return-void

    .line 78
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/permission/LegacyPermissionManagerService;

    .line 79
    .line 80
    iget-object v1, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService$$ExternalSyntheticLambda0;->f$1:[Ljava/lang/String;

    .line 81
    .line 82
    iget p0, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService$$ExternalSyntheticLambda0;->f$2:I

    .line 83
    .line 84
    iget-object v0, v0, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mDefaultPermissionGrantPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    .line 85
    .line 86
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    .line 88
    .line 89
    new-instance v2, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    const-string v3, "Granting permissions to enabled data services for user:"

    .line 92
    .line 93
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    const-string v3, "DefaultPermGrantPolicy"

    .line 104
    .line 105
    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    .line 107
    .line 108
    if-nez v1, :cond_3

    .line 109
    .line 110
    goto :goto_3

    .line 111
    :cond_3
    array-length v8, v1

    .line 112
    const/4 v9, 0x0

    .line 113
    move v10, v9

    .line 114
    :goto_2
    if-ge v10, v8, :cond_4

    .line 115
    .line 116
    aget-object v4, v1, v10

    .line 117
    .line 118
    const/4 v2, 0x2

    .line 119
    new-array v7, v2, [Ljava/util/Set;

    .line 120
    .line 121
    sget-object v2, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    .line 122
    .line 123
    aput-object v2, v7, v9

    .line 124
    .line 125
    sget-object v2, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    .line 126
    .line 127
    const/4 v3, 0x1

    .line 128
    aput-object v2, v7, v3

    .line 129
    .line 130
    const/4 v6, 0x1

    .line 131
    iget-object v3, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NO_PM_CACHE:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$1;

    .line 132
    .line 133
    move-object v2, v0

    .line 134
    move v5, p0

    .line 135
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;IZ[Ljava/util/Set;)V

    .line 136
    .line 137
    .line 138
    add-int/lit8 v10, v10, 0x1

    .line 139
    .line 140
    goto :goto_2

    .line 141
    :cond_4
    :goto_3
    return-void

    .line 142
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/permission/LegacyPermissionManagerService;

    .line 143
    .line 144
    iget-object v1, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService$$ExternalSyntheticLambda0;->f$1:[Ljava/lang/String;

    .line 145
    .line 146
    iget p0, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService$$ExternalSyntheticLambda0;->f$2:I

    .line 147
    .line 148
    iget-object v0, v0, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mDefaultPermissionGrantPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    .line 149
    .line 150
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 151
    .line 152
    .line 153
    new-instance v2, Ljava/lang/StringBuilder;

    .line 154
    .line 155
    const-string v3, "Revoke permissions from LUI apps for user:"

    .line 156
    .line 157
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v2

    .line 167
    const-string v3, "DefaultPermGrantPolicy"

    .line 168
    .line 169
    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    .line 171
    .line 172
    if-nez v1, :cond_5

    .line 173
    .line 174
    goto :goto_5

    .line 175
    :cond_5
    array-length v2, v1

    .line 176
    const/4 v3, 0x0

    .line 177
    :goto_4
    if-ge v3, v2, :cond_7

    .line 178
    .line 179
    aget-object v4, v1, v3

    .line 180
    .line 181
    iget-object v5, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NO_PM_CACHE:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$1;

    .line 182
    .line 183
    invoke-virtual {v5, v4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    .line 184
    .line 185
    .line 186
    move-result-object v6

    .line 187
    invoke-virtual {v5, v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->isSystemPackage(Landroid/content/pm/PackageInfo;)Z

    .line 188
    .line 189
    .line 190
    move-result v7

    .line 191
    if-eqz v7, :cond_6

    .line 192
    .line 193
    invoke-static {v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    .line 194
    .line 195
    .line 196
    move-result v6

    .line 197
    if-eqz v6, :cond_6

    .line 198
    .line 199
    sget-object v6, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    .line 200
    .line 201
    const/4 v7, 0x1

    .line 202
    invoke-static {v5, v4, v6, v7, p0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->revokeRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;Ljava/util/Set;ZI)V

    .line 203
    .line 204
    .line 205
    :cond_6
    add-int/lit8 v3, v3, 0x1

    .line 206
    .line 207
    goto :goto_4

    .line 208
    :cond_7
    :goto_5
    return-void

    .line 209
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/permission/LegacyPermissionManagerService;

    .line 210
    .line 211
    iget-object v1, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService$$ExternalSyntheticLambda0;->f$1:[Ljava/lang/String;

    .line 212
    .line 213
    iget p0, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService$$ExternalSyntheticLambda0;->f$2:I

    .line 214
    .line 215
    iget-object v0, v0, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mDefaultPermissionGrantPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    .line 216
    .line 217
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 218
    .line 219
    .line 220
    new-instance v2, Ljava/lang/StringBuilder;

    .line 221
    .line 222
    const-string v3, "Granting permissions to enabled carrier apps for user:"

    .line 223
    .line 224
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v2

    .line 234
    const-string v3, "DefaultPermGrantPolicy"

    .line 235
    .line 236
    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    .line 238
    .line 239
    if-nez v1, :cond_8

    .line 240
    .line 241
    goto :goto_7

    .line 242
    :cond_8
    array-length v8, v1

    .line 243
    const/4 v9, 0x0

    .line 244
    move v10, v9

    .line 245
    :goto_6
    if-ge v10, v8, :cond_9

    .line 246
    .line 247
    aget-object v4, v1, v10

    .line 248
    .line 249
    const/4 v2, 0x3

    .line 250
    new-array v7, v2, [Ljava/util/Set;

    .line 251
    .line 252
    sget-object v2, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    .line 253
    .line 254
    aput-object v2, v7, v9

    .line 255
    .line 256
    sget-object v2, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    .line 257
    .line 258
    const/4 v3, 0x1

    .line 259
    aput-object v2, v7, v3

    .line 260
    .line 261
    sget-object v2, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    .line 262
    .line 263
    const/4 v3, 0x2

    .line 264
    aput-object v2, v7, v3

    .line 265
    .line 266
    const/4 v6, 0x0

    .line 267
    iget-object v3, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NO_PM_CACHE:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$1;

    .line 268
    .line 269
    move-object v2, v0

    .line 270
    move v5, p0

    .line 271
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;IZ[Ljava/util/Set;)V

    .line 272
    .line 273
    .line 274
    add-int/lit8 v10, v10, 0x1

    .line 275
    .line 276
    goto :goto_6

    .line 277
    :cond_9
    :goto_7
    return-void

    .line 278
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/permission/LegacyPermissionManagerService;

    .line 279
    .line 280
    iget-object v1, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService$$ExternalSyntheticLambda0;->f$1:[Ljava/lang/String;

    .line 281
    .line 282
    iget p0, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService$$ExternalSyntheticLambda0;->f$2:I

    .line 283
    .line 284
    iget-object v0, v0, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mDefaultPermissionGrantPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    .line 285
    .line 286
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 287
    .line 288
    .line 289
    new-instance v2, Ljava/lang/StringBuilder;

    .line 290
    .line 291
    const-string v3, "Granting permissions to enabled ImsServices for user:"

    .line 292
    .line 293
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 297
    .line 298
    .line 299
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v2

    .line 303
    const-string v3, "DefaultPermGrantPolicy"

    .line 304
    .line 305
    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    .line 307
    .line 308
    if-nez v1, :cond_a

    .line 309
    .line 310
    goto :goto_9

    .line 311
    :cond_a
    array-length v8, v1

    .line 312
    const/4 v9, 0x0

    .line 313
    move v10, v9

    .line 314
    :goto_8
    if-ge v10, v8, :cond_b

    .line 315
    .line 316
    aget-object v4, v1, v10

    .line 317
    .line 318
    const/4 v2, 0x5

    .line 319
    new-array v7, v2, [Ljava/util/Set;

    .line 320
    .line 321
    sget-object v2, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    .line 322
    .line 323
    aput-object v2, v7, v9

    .line 324
    .line 325
    sget-object v2, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    .line 326
    .line 327
    const/4 v3, 0x1

    .line 328
    aput-object v2, v7, v3

    .line 329
    .line 330
    sget-object v2, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    .line 331
    .line 332
    const/4 v3, 0x2

    .line 333
    aput-object v2, v7, v3

    .line 334
    .line 335
    sget-object v2, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    .line 336
    .line 337
    const/4 v3, 0x3

    .line 338
    aput-object v2, v7, v3

    .line 339
    .line 340
    sget-object v2, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    .line 341
    .line 342
    const/4 v3, 0x4

    .line 343
    aput-object v2, v7, v3

    .line 344
    .line 345
    const/4 v6, 0x0

    .line 346
    iget-object v3, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NO_PM_CACHE:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$1;

    .line 347
    .line 348
    move-object v2, v0

    .line 349
    move v5, p0

    .line 350
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;IZ[Ljava/util/Set;)V

    .line 351
    .line 352
    .line 353
    add-int/lit8 v10, v10, 0x1

    .line 354
    .line 355
    goto :goto_8

    .line 356
    :cond_b
    :goto_9
    return-void

    .line 357
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
