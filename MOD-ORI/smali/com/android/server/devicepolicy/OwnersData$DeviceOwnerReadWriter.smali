.class public final Lcom/android/server/devicepolicy/OwnersData$DeviceOwnerReadWriter;
.super Lcom/android/server/devicepolicy/OwnersData$FileReadWriter;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/devicepolicy/OwnersData;


# direct methods
.method public constructor <init>(Lcom/android/server/devicepolicy/OwnersData;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/devicepolicy/OwnersData$DeviceOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/OwnersData;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/android/server/devicepolicy/OwnersData;->getDeviceOwnerFile()Ljava/io/File;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/OwnersData$FileReadWriter;-><init>(Ljava/io/File;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final readInner(Lcom/android/modules/utils/TypedXmlPullParser;ILjava/lang/String;)Z
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x2

    .line 3
    const/4 v2, 0x1

    .line 4
    if-le p2, v1, :cond_0

    .line 5
    .line 6
    return v2

    .line 7
    :cond_0
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const-string/jumbo p2, "package"

    .line 11
    .line 12
    .line 13
    const-string v3, "DevicePolicyManagerService"

    .line 14
    .line 15
    const/4 v4, 0x0

    .line 16
    iget-object p0, p0, Lcom/android/server/devicepolicy/OwnersData$DeviceOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/OwnersData;

    .line 17
    .line 18
    const/4 v5, -0x1

    .line 19
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    .line 20
    .line 21
    .line 22
    move-result v6

    .line 23
    sparse-switch v6, :sswitch_data_0

    .line 24
    .line 25
    .line 26
    :goto_0
    move v1, v5

    .line 27
    goto/16 :goto_1

    .line 28
    .line 29
    :sswitch_0
    const-string/jumbo v1, "system-update-policy"

    .line 30
    .line 31
    .line 32
    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-nez v1, :cond_1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const/4 v1, 0x7

    .line 40
    goto :goto_1

    .line 41
    :sswitch_1
    const-string/jumbo v1, "freeze-record"

    .line 42
    .line 43
    .line 44
    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-nez v1, :cond_2

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    const/4 v1, 0x6

    .line 52
    goto :goto_1

    .line 53
    :sswitch_2
    const-string/jumbo v1, "device-owner-type"

    .line 54
    .line 55
    .line 56
    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-nez v1, :cond_3

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_3
    const/4 v1, 0x5

    .line 64
    goto :goto_1

    .line 65
    :sswitch_3
    const-string/jumbo v1, "device-owner-protected-packages"

    .line 66
    .line 67
    .line 68
    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-nez v1, :cond_4

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_4
    const/4 v1, 0x4

    .line 76
    goto :goto_1

    .line 77
    :sswitch_4
    const-string/jumbo v1, "policy-engine-migration"

    .line 78
    .line 79
    .line 80
    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    if-nez v1, :cond_5

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_5
    const/4 v1, 0x3

    .line 88
    goto :goto_1

    .line 89
    :sswitch_5
    const-string/jumbo v6, "device-owner-context"

    .line 90
    .line 91
    .line 92
    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v6

    .line 96
    if-nez v6, :cond_8

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :sswitch_6
    const-string/jumbo v1, "device-owner"

    .line 100
    .line 101
    .line 102
    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    if-nez v1, :cond_6

    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_6
    move v1, v2

    .line 110
    goto :goto_1

    .line 111
    :sswitch_7
    const-string/jumbo v1, "pending-ota-info"

    .line 112
    .line 113
    .line 114
    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    if-nez v1, :cond_7

    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_7
    move v1, v0

    .line 122
    :cond_8
    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 123
    .line 124
    .line 125
    const-string p0, "Unexpected tag: "

    .line 126
    .line 127
    invoke-virtual {p0, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p0

    .line 131
    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    .line 133
    .line 134
    return v0

    .line 135
    :pswitch_0
    invoke-static {p1}, Landroid/app/admin/SystemUpdatePolicy;->restoreFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/app/admin/SystemUpdatePolicy;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    iput-object p1, p0, Lcom/android/server/devicepolicy/OwnersData;->mSystemUpdatePolicy:Landroid/app/admin/SystemUpdatePolicy;

    .line 140
    .line 141
    goto/16 :goto_5

    .line 142
    .line 143
    :pswitch_1
    const-string/jumbo p2, "start"

    .line 144
    .line 145
    .line 146
    invoke-interface {p1, v4, p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p2

    .line 150
    const-string/jumbo p3, "end"

    .line 151
    .line 152
    .line 153
    invoke-interface {p1, v4, p3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    if-eqz p2, :cond_e

    .line 158
    .line 159
    if-eqz p1, :cond_e

    .line 160
    .line 161
    invoke-static {p2}, Ljava/time/LocalDate;->parse(Ljava/lang/CharSequence;)Ljava/time/LocalDate;

    .line 162
    .line 163
    .line 164
    move-result-object p2

    .line 165
    iput-object p2, p0, Lcom/android/server/devicepolicy/OwnersData;->mSystemUpdateFreezeStart:Ljava/time/LocalDate;

    .line 166
    .line 167
    invoke-static {p1}, Ljava/time/LocalDate;->parse(Ljava/lang/CharSequence;)Ljava/time/LocalDate;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    iput-object p1, p0, Lcom/android/server/devicepolicy/OwnersData;->mSystemUpdateFreezeEnd:Ljava/time/LocalDate;

    .line 172
    .line 173
    iget-object p2, p0, Lcom/android/server/devicepolicy/OwnersData;->mSystemUpdateFreezeStart:Ljava/time/LocalDate;

    .line 174
    .line 175
    invoke-virtual {p2, p1}, Ljava/time/LocalDate;->isAfter(Ljava/time/chrono/ChronoLocalDate;)Z

    .line 176
    .line 177
    .line 178
    move-result p1

    .line 179
    if-eqz p1, :cond_e

    .line 180
    .line 181
    const-string p1, "Invalid system update freeze record loaded"

    .line 182
    .line 183
    invoke-static {v3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    .line 185
    .line 186
    iput-object v4, p0, Lcom/android/server/devicepolicy/OwnersData;->mSystemUpdateFreezeStart:Ljava/time/LocalDate;

    .line 187
    .line 188
    iput-object v4, p0, Lcom/android/server/devicepolicy/OwnersData;->mSystemUpdateFreezeEnd:Ljava/time/LocalDate;

    .line 189
    .line 190
    goto/16 :goto_5

    .line 191
    .line 192
    :pswitch_2
    invoke-interface {p1, v4, p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object p2

    .line 196
    const-string/jumbo p3, "value"

    .line 197
    .line 198
    .line 199
    invoke-interface {p1, v4, p3, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 200
    .line 201
    .line 202
    move-result p1

    .line 203
    iget-object p0, p0, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwnerTypes:Landroid/util/ArrayMap;

    .line 204
    .line 205
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 206
    .line 207
    .line 208
    move-result-object p1

    .line 209
    invoke-virtual {p0, p2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    goto/16 :goto_5

    .line 213
    .line 214
    :pswitch_3
    invoke-interface {p1, v4, p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object p2

    .line 218
    const-string/jumbo p3, "size"

    .line 219
    .line 220
    .line 221
    invoke-interface {p1, v4, p3, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 222
    .line 223
    .line 224
    move-result p3

    .line 225
    new-instance v1, Ljava/util/ArrayList;

    .line 226
    .line 227
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 228
    .line 229
    .line 230
    :goto_2
    if-ge v0, p3, :cond_9

    .line 231
    .line 232
    new-instance v3, Ljava/lang/StringBuilder;

    .line 233
    .line 234
    const-string/jumbo v5, "name"

    .line 235
    .line 236
    .line 237
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v3

    .line 247
    invoke-interface {p1, v4, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v3

    .line 251
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    .line 253
    .line 254
    add-int/2addr v0, v2

    .line 255
    goto :goto_2

    .line 256
    :cond_9
    iget-object p1, p0, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwnerProtectedPackages:Landroid/util/ArrayMap;

    .line 257
    .line 258
    if-nez p1, :cond_a

    .line 259
    .line 260
    new-instance p1, Landroid/util/ArrayMap;

    .line 261
    .line 262
    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    .line 263
    .line 264
    .line 265
    iput-object p1, p0, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwnerProtectedPackages:Landroid/util/ArrayMap;

    .line 266
    .line 267
    :cond_a
    iget-object p0, p0, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwnerProtectedPackages:Landroid/util/ArrayMap;

    .line 268
    .line 269
    invoke-virtual {p0, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    goto :goto_5

    .line 273
    :pswitch_4
    const-string/jumbo p2, "migratedToPolicyEngine"

    .line 274
    .line 275
    .line 276
    invoke-interface {p1, v4, p2, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 277
    .line 278
    .line 279
    move-result p2

    .line 280
    iput-boolean p2, p0, Lcom/android/server/devicepolicy/OwnersData;->mMigratedToPolicyEngine:Z

    .line 281
    .line 282
    const-string/jumbo p2, "migratedPostUpgrade"

    .line 283
    .line 284
    .line 285
    invoke-interface {p1, v4, p2, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 286
    .line 287
    .line 288
    move-result p2

    .line 289
    iput-boolean p2, p0, Lcom/android/server/devicepolicy/OwnersData;->mPoliciesMigratedPostUpdate:Z

    .line 290
    .line 291
    invoke-static {}, Landroid/app/admin/flags/Flags;->securityLogV2Enabled()Z

    .line 292
    .line 293
    .line 294
    move-result p2

    .line 295
    if-eqz p2, :cond_b

    .line 296
    .line 297
    const-string/jumbo p2, "securityLogMigrated"

    .line 298
    .line 299
    .line 300
    invoke-interface {p1, v4, p2, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 301
    .line 302
    .line 303
    move-result p2

    .line 304
    if-eqz p2, :cond_b

    .line 305
    .line 306
    move p2, v2

    .line 307
    goto :goto_3

    .line 308
    :cond_b
    move p2, v0

    .line 309
    :goto_3
    iput-boolean p2, p0, Lcom/android/server/devicepolicy/OwnersData;->mSecurityLoggingMigrated:Z

    .line 310
    .line 311
    invoke-static {}, Landroid/app/admin/flags/Flags;->unmanagedModeMigration()Z

    .line 312
    .line 313
    .line 314
    move-result p2

    .line 315
    if-eqz p2, :cond_c

    .line 316
    .line 317
    const-string/jumbo p2, "passwordComplexityMigrated"

    .line 318
    .line 319
    .line 320
    invoke-interface {p1, v4, p2, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 321
    .line 322
    .line 323
    move-result p2

    .line 324
    if-eqz p2, :cond_c

    .line 325
    .line 326
    move p2, v2

    .line 327
    goto :goto_4

    .line 328
    :cond_c
    move p2, v0

    .line 329
    :goto_4
    iput-boolean p2, p0, Lcom/android/server/devicepolicy/OwnersData;->mRequiredPasswordComplexityMigrated:Z

    .line 330
    .line 331
    invoke-static {}, Landroid/app/admin/flags/Flags;->unmanagedModeMigration()Z

    .line 332
    .line 333
    .line 334
    move-result p2

    .line 335
    if-eqz p2, :cond_d

    .line 336
    .line 337
    const-string/jumbo p2, "suspendedPackagesMigrated"

    .line 338
    .line 339
    .line 340
    invoke-interface {p1, v4, p2, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 341
    .line 342
    .line 343
    move-result p1

    .line 344
    if-eqz p1, :cond_d

    .line 345
    .line 346
    move v0, v2

    .line 347
    :cond_d
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/OwnersData;->mSuspendedPackagesMigrated:Z

    .line 348
    .line 349
    goto :goto_5

    .line 350
    :pswitch_5
    iget p2, p0, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwnerUserId:I

    .line 351
    .line 352
    const-string/jumbo p3, "userId"

    .line 353
    .line 354
    .line 355
    invoke-interface {p1, v4, p3, p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 356
    .line 357
    .line 358
    move-result p1

    .line 359
    iput p1, p0, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwnerUserId:I

    .line 360
    .line 361
    goto :goto_5

    .line 362
    :pswitch_6
    invoke-static {p1}, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->readFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    .line 363
    .line 364
    .line 365
    move-result-object p1

    .line 366
    iput-object p1, p0, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwner:Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    .line 367
    .line 368
    iput v0, p0, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwnerUserId:I

    .line 369
    .line 370
    goto :goto_5

    .line 371
    :pswitch_7
    invoke-static {p1}, Landroid/app/admin/SystemUpdateInfo;->readFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/app/admin/SystemUpdateInfo;

    .line 372
    .line 373
    .line 374
    move-result-object p1

    .line 375
    iput-object p1, p0, Lcom/android/server/devicepolicy/OwnersData;->mSystemUpdateInfo:Landroid/app/admin/SystemUpdateInfo;

    .line 376
    .line 377
    :cond_e
    :goto_5
    return v2

    .line 378
    nop

    .line 379
    :sswitch_data_0
    .sparse-switch
        -0x7d4643cb -> :sswitch_7
        -0x786d7384 -> :sswitch_6
        -0x714796a2 -> :sswitch_5
        -0x2b382ec2 -> :sswitch_4
        -0x1bbd56e3 -> :sswitch_3
        0x206e91eb -> :sswitch_2
        0x4db6d447 -> :sswitch_1
        0x6834f798 -> :sswitch_0
    .end sparse-switch

    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final shouldWrite()Z
    .locals 1

    .line 1
    invoke-static {}, Landroid/app/admin/flags/Flags;->alwaysPersistDo()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/devicepolicy/OwnersData$DeviceOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/OwnersData;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwner:Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/devicepolicy/OwnersData;->mSystemUpdatePolicy:Landroid/app/admin/SystemUpdatePolicy;

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/server/devicepolicy/OwnersData;->mSystemUpdateInfo:Landroid/app/admin/SystemUpdateInfo;

    .line 18
    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 25
    :goto_1
    return p0
.end method

.method public final writeInner(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/android/server/devicepolicy/OwnersData$DeviceOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/OwnersData;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwner:Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const-string/jumbo v2, "device-owner"

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1, v2}, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->writeToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string/jumbo v0, "device-owner-context"

    .line 15
    .line 16
    .line 17
    invoke-interface {p1, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 18
    .line 19
    .line 20
    const-string/jumbo v2, "userId"

    .line 21
    .line 22
    .line 23
    iget v3, p0, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwnerUserId:I

    .line 24
    .line 25
    invoke-interface {p1, v1, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 26
    .line 27
    .line 28
    invoke-interface {p1, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 29
    .line 30
    .line 31
    :cond_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwnerTypes:Landroid/util/ArrayMap;

    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_1

    .line 38
    .line 39
    iget-object v0, p0, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwnerTypes:Landroid/util/ArrayMap;

    .line 40
    .line 41
    invoke-virtual {v0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-eqz v2, :cond_1

    .line 54
    .line 55
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    check-cast v2, Ljava/util/Map$Entry;

    .line 60
    .line 61
    const-string/jumbo v3, "device-owner-type"

    .line 62
    .line 63
    .line 64
    invoke-interface {p1, v1, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 65
    .line 66
    .line 67
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    check-cast v4, Ljava/lang/String;

    .line 72
    .line 73
    const-string/jumbo v5, "package"

    .line 74
    .line 75
    .line 76
    invoke-interface {p1, v1, v5, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 77
    .line 78
    .line 79
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    check-cast v2, Ljava/lang/Integer;

    .line 84
    .line 85
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    const-string/jumbo v4, "value"

    .line 90
    .line 91
    .line 92
    invoke-interface {p1, v1, v4, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 93
    .line 94
    .line 95
    invoke-interface {p1, v1, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/android/server/devicepolicy/OwnersData;->mSystemUpdatePolicy:Landroid/app/admin/SystemUpdatePolicy;

    .line 100
    .line 101
    if-eqz v0, :cond_2

    .line 102
    .line 103
    const-string/jumbo v0, "system-update-policy"

    .line 104
    .line 105
    .line 106
    invoke-interface {p1, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 107
    .line 108
    .line 109
    iget-object v2, p0, Lcom/android/server/devicepolicy/OwnersData;->mSystemUpdatePolicy:Landroid/app/admin/SystemUpdatePolicy;

    .line 110
    .line 111
    invoke-virtual {v2, p1}, Landroid/app/admin/SystemUpdatePolicy;->saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 112
    .line 113
    .line 114
    invoke-interface {p1, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 115
    .line 116
    .line 117
    :cond_2
    iget-object v0, p0, Lcom/android/server/devicepolicy/OwnersData;->mSystemUpdateInfo:Landroid/app/admin/SystemUpdateInfo;

    .line 118
    .line 119
    if-eqz v0, :cond_3

    .line 120
    .line 121
    const-string/jumbo v2, "pending-ota-info"

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0, p1, v2}, Landroid/app/admin/SystemUpdateInfo;->writeToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    :cond_3
    iget-object v0, p0, Lcom/android/server/devicepolicy/OwnersData;->mSystemUpdateFreezeStart:Ljava/time/LocalDate;

    .line 128
    .line 129
    if-nez v0, :cond_4

    .line 130
    .line 131
    iget-object v0, p0, Lcom/android/server/devicepolicy/OwnersData;->mSystemUpdateFreezeEnd:Ljava/time/LocalDate;

    .line 132
    .line 133
    if-eqz v0, :cond_7

    .line 134
    .line 135
    :cond_4
    const-string/jumbo v0, "freeze-record"

    .line 136
    .line 137
    .line 138
    invoke-interface {p1, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 139
    .line 140
    .line 141
    iget-object v2, p0, Lcom/android/server/devicepolicy/OwnersData;->mSystemUpdateFreezeStart:Ljava/time/LocalDate;

    .line 142
    .line 143
    if-eqz v2, :cond_5

    .line 144
    .line 145
    const-string/jumbo v3, "start"

    .line 146
    .line 147
    .line 148
    invoke-virtual {v2}, Ljava/time/LocalDate;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    invoke-interface {p1, v1, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 153
    .line 154
    .line 155
    :cond_5
    iget-object v2, p0, Lcom/android/server/devicepolicy/OwnersData;->mSystemUpdateFreezeEnd:Ljava/time/LocalDate;

    .line 156
    .line 157
    if-eqz v2, :cond_6

    .line 158
    .line 159
    const-string/jumbo v3, "end"

    .line 160
    .line 161
    .line 162
    invoke-virtual {v2}, Ljava/time/LocalDate;->toString()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v2

    .line 166
    invoke-interface {p1, v1, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 167
    .line 168
    .line 169
    :cond_6
    invoke-interface {p1, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 170
    .line 171
    .line 172
    :cond_7
    const-string/jumbo v0, "policy-engine-migration"

    .line 173
    .line 174
    .line 175
    invoke-interface {p1, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 176
    .line 177
    .line 178
    const-string/jumbo v2, "migratedToPolicyEngine"

    .line 179
    .line 180
    .line 181
    iget-boolean v3, p0, Lcom/android/server/devicepolicy/OwnersData;->mMigratedToPolicyEngine:Z

    .line 182
    .line 183
    invoke-interface {p1, v1, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 184
    .line 185
    .line 186
    const-string/jumbo v2, "migratedPostUpgrade"

    .line 187
    .line 188
    .line 189
    iget-boolean v3, p0, Lcom/android/server/devicepolicy/OwnersData;->mPoliciesMigratedPostUpdate:Z

    .line 190
    .line 191
    invoke-interface {p1, v1, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 192
    .line 193
    .line 194
    invoke-static {}, Landroid/app/admin/flags/Flags;->securityLogV2Enabled()Z

    .line 195
    .line 196
    .line 197
    move-result v2

    .line 198
    if-eqz v2, :cond_8

    .line 199
    .line 200
    const-string/jumbo v2, "securityLogMigrated"

    .line 201
    .line 202
    .line 203
    iget-boolean v3, p0, Lcom/android/server/devicepolicy/OwnersData;->mSecurityLoggingMigrated:Z

    .line 204
    .line 205
    invoke-interface {p1, v1, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 206
    .line 207
    .line 208
    :cond_8
    invoke-static {}, Landroid/app/admin/flags/Flags;->unmanagedModeMigration()Z

    .line 209
    .line 210
    .line 211
    move-result v2

    .line 212
    if-eqz v2, :cond_9

    .line 213
    .line 214
    const-string/jumbo v2, "passwordComplexityMigrated"

    .line 215
    .line 216
    .line 217
    iget-boolean v3, p0, Lcom/android/server/devicepolicy/OwnersData;->mRequiredPasswordComplexityMigrated:Z

    .line 218
    .line 219
    invoke-interface {p1, v1, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 220
    .line 221
    .line 222
    const-string/jumbo v2, "suspendedPackagesMigrated"

    .line 223
    .line 224
    .line 225
    iget-boolean p0, p0, Lcom/android/server/devicepolicy/OwnersData;->mSuspendedPackagesMigrated:Z

    .line 226
    .line 227
    invoke-interface {p1, v1, v2, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 228
    .line 229
    .line 230
    :cond_9
    invoke-interface {p1, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 231
    .line 232
    .line 233
    return-void
.end method
