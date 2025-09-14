.class public final Lcom/android/server/enterprise/lso/LSOStorageProvider;
.super Lcom/android/server/enterprise/storage/EdmStorageProvider;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final tblColumns:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    .line 1
    const-string v16, "Item_Layer"

    .line 3
    const-string v17, "Item_ParentId"

    .line 5
    const-string v0, "Item_RowId"

    .line 7
    const-string v1, "Item_Type"

    .line 9
    const-string v2, "Item_Id"

    .line 11
    const-string v3, "Item_Width"

    .line 13
    const-string v4, "Item_Height"

    .line 15
    const-string v5, "Item_Weight"

    .line 17
    const-string v6, "Item_Bg_Color"

    .line 19
    const-string v7, "Item_Gravity"

    .line 21
    const-string v8, "Item_TxtColor_or_PollingInterval"

    .line 23
    const-string v9, "Item_Txt_or_ImgPath"

    .line 25
    const-string v10, "Item_TxtStyle_or_ScaleType"

    .line 27
    const-string v11, "Item_TxtSize"

    .line 29
    const-string v12, "Item_Url"

    .line 31
    const-string v13, "Item_Orientation"

    .line 33
    const-string v14, "Item_PackageName"

    .line 35
    const-string v15, "Item_Attributes"

    .line 37
    filled-new-array/range {v0 .. v17}, [Ljava/lang/String;

    .line 40
    move-result-object v0

    .line 41
    sput-object v0, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    .line 43
    return-void
.end method


# virtual methods
.method public final deleteRecord([Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    .line 3
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 6
    move-result-object p0

    .line 7
    const-string v0, "Delete from ADMIN_REF where "

    .line 9
    const-string v1, "LSOStorageProvider"

    .line 11
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    const-string v0, "ADMIN_REF"

    .line 16
    const-string/jumbo v1, "policyName=?"

    .line 19
    invoke-virtual {p0, v0, v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 22
    return-void
.end method

.method public final getAdminUid(Ljava/lang/String;)I
    .locals 2

    .line 1
    const-string v0, "ADMIN_REF"

    .line 3
    const-string/jumbo v1, "policyName"

    .line 6
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminByField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    move-result p0

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    const-string p1, " - Configured admin UID: "

    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object p1

    .line 30
    const-string v0, "LSOStorageProvider"

    .line 32
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    return p0
.end method

.method public final insertRecord(Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 6

    .line 1
    const-string v0, "Insert record: "

    .line 3
    const-string v1, " -- "

    .line 5
    invoke-static {v0, p1, v1}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p2}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    const-string v1, "LSOStorageProvider"

    .line 22
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    iget-object p0, p0, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    .line 27
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 30
    move-result-object p0

    .line 31
    const/4 v0, 0x0

    .line 32
    invoke-virtual {p0, p1, v0, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 35
    move-result-wide v2

    .line 36
    const-wide/16 v4, -0x1

    .line 38
    cmp-long v0, v2, v4

    .line 40
    if-nez v0, :cond_0

    .line 42
    const-string v0, ": Failed to insert record - "

    .line 44
    invoke-static {p1, v0}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {p2}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    .line 51
    move-result-object p2

    .line 52
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    move-result-object p1

    .line 59
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 65
    :cond_0
    return-wide v2
.end method

.method public final loadItemData(Lcom/samsung/android/knox/lockscreen/LSOItemData;Landroid/database/Cursor;)V
    .locals 12

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 5
    move-result-object v1

    .line 6
    if-eqz v1, :cond_0

    .line 8
    invoke-virtual {p1, v1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setId(Ljava/lang/String;)V

    .line 11
    :cond_0
    const/4 v1, 0x3

    .line 12
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    .line 15
    move-result v2

    .line 16
    const/16 v3, -0x63

    .line 18
    if-eq v2, v3, :cond_1

    .line 20
    invoke-virtual {p1, v2}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setWidth(I)V

    .line 23
    :cond_1
    const/4 v2, 0x4

    .line 24
    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    .line 27
    move-result v4

    .line 28
    if-eq v4, v3, :cond_2

    .line 30
    invoke-virtual {p1, v4}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setHeight(I)V

    .line 33
    :cond_2
    const/4 v3, 0x5

    .line 34
    invoke-interface {p2, v3}, Landroid/database/Cursor;->getFloat(I)F

    .line 37
    move-result v4

    .line 38
    const/4 v5, 0x0

    .line 39
    cmpl-float v6, v4, v5

    .line 41
    if-eqz v6, :cond_3

    .line 43
    invoke-virtual {p1, v4}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setWeight(F)V

    .line 46
    :cond_3
    const/4 v4, 0x6

    .line 47
    invoke-interface {p2, v4}, Landroid/database/Cursor;->getInt(I)I

    .line 50
    move-result v4

    .line 51
    const/4 v6, -0x1

    .line 52
    if-eq v4, v6, :cond_4

    .line 54
    invoke-virtual {p1, v4}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setBgColor(I)V

    .line 57
    :cond_4
    invoke-virtual {p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->getType()B

    .line 60
    move-result v4

    .line 61
    const/4 v7, 0x1

    .line 62
    const-string v8, "LSOStorageProvider"

    .line 64
    if-ne v4, v7, :cond_5

    .line 66
    new-instance p0, Ljava/lang/StringBuilder;

    .line 68
    const-string p2, "LoadItemData -- "

    .line 70
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->toString()Ljava/lang/String;

    .line 76
    move-result-object p1

    .line 77
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    move-result-object p0

    .line 84
    invoke-static {v8, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    return-void

    .line 88
    :cond_5
    const/4 v4, 0x7

    .line 89
    invoke-interface {p2, v4}, Landroid/database/Cursor;->getInt(I)I

    .line 92
    move-result v4

    .line 93
    if-eq v4, v6, :cond_6

    .line 95
    invoke-virtual {p1, v4}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setGravity(I)V

    .line 98
    :cond_6
    const/16 v4, 0xf

    .line 100
    invoke-interface {p2, v4}, Landroid/database/Cursor;->getBlob(I)[B

    .line 103
    move-result-object v4

    .line 104
    if-eqz v4, :cond_7

    .line 106
    invoke-static {v4}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->fromByteArray([B)Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    .line 109
    move-result-object v4

    .line 110
    invoke-virtual {p1, v4}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setAttrs(Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;)V

    .line 113
    :cond_7
    invoke-virtual {p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->getType()B

    .line 116
    move-result v4

    .line 117
    const/16 v9, 0x8

    .line 119
    const/16 v10, 0xa

    .line 121
    const/16 v11, 0x9

    .line 123
    if-eq v4, v0, :cond_14

    .line 125
    if-eq v4, v1, :cond_11

    .line 127
    if-eq v4, v2, :cond_a

    .line 129
    if-eq v4, v3, :cond_8

    .line 131
    goto/16 :goto_3

    .line 133
    :cond_8
    check-cast p1, Lcom/samsung/android/knox/lockscreen/LSOItemWidget;

    .line 135
    const/16 p0, 0xe

    .line 137
    invoke-interface {p2, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 140
    move-result-object p0

    .line 141
    if-eqz p0, :cond_9

    .line 143
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 146
    move-result p2

    .line 147
    if-eqz p2, :cond_9

    .line 149
    invoke-virtual {p1, p0}, Lcom/samsung/android/knox/lockscreen/LSOItemWidget;->setWidget(Ljava/lang/String;)V

    .line 152
    :cond_9
    new-instance p0, Ljava/lang/StringBuilder;

    .line 154
    const-string p2, "LoadWidgetData -- "

    .line 156
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p1}, Lcom/samsung/android/knox/lockscreen/LSOItemWidget;->toString()Ljava/lang/String;

    .line 162
    move-result-object p1

    .line 163
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    move-result-object p0

    .line 170
    invoke-static {v8, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    goto/16 :goto_3

    .line 175
    :cond_a
    check-cast p1, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;

    .line 177
    invoke-interface {p2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 180
    move-result-object v0

    .line 181
    const/16 v1, 0xd

    .line 183
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    .line 186
    move-result v1

    .line 187
    if-eqz v0, :cond_b

    .line 189
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 192
    move-result v2

    .line 193
    if-eqz v2, :cond_b

    .line 195
    invoke-virtual {p1, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->setBGImage(Ljava/lang/String;)V

    .line 198
    :cond_b
    if-eqz v1, :cond_c

    .line 200
    sget-object v0, Lcom/samsung/android/knox/lockscreen/LSOItemContainer$ORIENTATION;->HORIZONTAL:Lcom/samsung/android/knox/lockscreen/LSOItemContainer$ORIENTATION;

    .line 202
    invoke-virtual {p1, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->setOrientation(Lcom/samsung/android/knox/lockscreen/LSOItemContainer$ORIENTATION;)V

    .line 205
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    .line 207
    const-string v1, "LoadContainerData -- "

    .line 209
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 212
    invoke-virtual {p1}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->toString()Ljava/lang/String;

    .line 215
    move-result-object v1

    .line 216
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 222
    move-result-object v0

    .line 223
    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    const/4 v0, 0x0

    .line 227
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 230
    move-result p2

    .line 231
    new-instance v0, Landroid/content/ContentValues;

    .line 233
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 236
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 239
    move-result-object p2

    .line 240
    const-string v1, "Item_ParentId"

    .line 242
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 245
    sget-object p2, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    .line 247
    const-string v1, "LOCKSCREEN_OVERLAY"

    .line 249
    invoke-virtual {p0, v1, p2, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getCursor(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Landroid/database/Cursor;

    .line 252
    move-result-object p2

    .line 253
    if-nez p2, :cond_d

    .line 255
    goto/16 :goto_3

    .line 257
    :cond_d
    :try_start_0
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    .line 260
    move-result v0
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    if-nez v0, :cond_f

    .line 263
    :cond_e
    :goto_0
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 266
    goto/16 :goto_3

    .line 268
    :cond_f
    :goto_1
    :try_start_1
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    .line 271
    move-result v0

    .line 272
    if-eqz v0, :cond_e

    .line 274
    invoke-interface {p2, v7}, Landroid/database/Cursor;->getInt(I)I

    .line 277
    move-result v0

    .line 278
    int-to-byte v0, v0

    .line 279
    invoke-static {v0}, Lcom/samsung/android/knox/lockscreen/LSOItemCreator;->createItem(B)Lcom/samsung/android/knox/lockscreen/LSOItemData;

    .line 282
    move-result-object v0

    .line 283
    if-nez v0, :cond_10

    .line 285
    goto :goto_1

    .line 286
    :cond_10
    invoke-virtual {p0, v0, p2}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->loadItemData(Lcom/samsung/android/knox/lockscreen/LSOItemData;Landroid/database/Cursor;)V

    .line 289
    invoke-virtual {p1, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->addItem(Lcom/samsung/android/knox/lockscreen/LSOItemData;)Z
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 292
    goto :goto_1

    .line 293
    :catchall_0
    move-exception p0

    .line 294
    goto :goto_2

    .line 295
    :catch_0
    move-exception p0

    .line 296
    :try_start_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 298
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 301
    const-string v0, "Exception occurred accessing Enterprise db "

    .line 303
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    invoke-virtual {p0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    .line 309
    move-result-object p0

    .line 310
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 316
    move-result-object p0

    .line 317
    invoke-static {v8, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 320
    goto :goto_0

    .line 321
    :goto_2
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 324
    throw p0

    .line 325
    :cond_11
    check-cast p1, Lcom/samsung/android/knox/lockscreen/LSOItemImage;

    .line 327
    invoke-interface {p2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 330
    move-result-object p0

    .line 331
    if-eqz p0, :cond_13

    .line 333
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 336
    move-result v0

    .line 337
    if-eqz v0, :cond_13

    .line 339
    invoke-virtual {p1, p0}, Lcom/samsung/android/knox/lockscreen/LSOItemImage;->setImagePath(Ljava/lang/String;)V

    .line 342
    invoke-interface {p2, v10}, Landroid/database/Cursor;->getInt(I)I

    .line 345
    move-result p0

    .line 346
    if-eq p0, v6, :cond_12

    .line 348
    invoke-virtual {p1, p0}, Lcom/samsung/android/knox/lockscreen/LSOItemImage;->setScaleType(I)V

    .line 351
    :cond_12
    invoke-interface {p2, v9}, Landroid/database/Cursor;->getInt(I)I

    .line 354
    move-result p0

    .line 355
    const/16 v0, 0xc

    .line 357
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 360
    move-result-object p2

    .line 361
    if-eqz p2, :cond_13

    .line 363
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 366
    move-result v0

    .line 367
    if-eqz v0, :cond_13

    .line 369
    int-to-long v0, p0

    .line 370
    invoke-virtual {p1, p2, v0, v1}, Lcom/samsung/android/knox/lockscreen/LSOItemImage;->setURL(Ljava/lang/String;J)V

    .line 373
    :cond_13
    new-instance p0, Ljava/lang/StringBuilder;

    .line 375
    const-string p2, "LoadImageData -- "

    .line 377
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 380
    invoke-virtual {p1}, Lcom/samsung/android/knox/lockscreen/LSOItemImage;->toString()Ljava/lang/String;

    .line 383
    move-result-object p1

    .line 384
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 390
    move-result-object p0

    .line 391
    invoke-static {v8, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    goto :goto_3

    .line 395
    :cond_14
    check-cast p1, Lcom/samsung/android/knox/lockscreen/LSOItemText;

    .line 397
    invoke-interface {p2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 400
    move-result-object p0

    .line 401
    if-eqz p0, :cond_15

    .line 403
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 406
    move-result v0

    .line 407
    if-eqz v0, :cond_15

    .line 409
    invoke-virtual {p1, p0}, Lcom/samsung/android/knox/lockscreen/LSOItemText;->setText(Ljava/lang/String;)V

    .line 412
    :cond_15
    invoke-interface {p2, v9}, Landroid/database/Cursor;->getInt(I)I

    .line 415
    move-result p0

    .line 416
    if-eq p0, v6, :cond_16

    .line 418
    invoke-virtual {p1, p0}, Lcom/samsung/android/knox/lockscreen/LSOItemText;->setTextColor(I)V

    .line 421
    :cond_16
    invoke-interface {p2, v10}, Landroid/database/Cursor;->getInt(I)I

    .line 424
    move-result p0

    .line 425
    if-eq p0, v6, :cond_17

    .line 427
    invoke-virtual {p1, p0}, Lcom/samsung/android/knox/lockscreen/LSOItemText;->setTextStyle(I)V

    .line 430
    :cond_17
    const/16 p0, 0xb

    .line 432
    invoke-interface {p2, p0}, Landroid/database/Cursor;->getFloat(I)F

    .line 435
    move-result p0

    .line 436
    cmpl-float p2, p0, v5

    .line 438
    if-eqz p2, :cond_18

    .line 440
    invoke-virtual {p1, p0}, Lcom/samsung/android/knox/lockscreen/LSOItemText;->setTextSize(F)V

    .line 443
    :cond_18
    new-instance p0, Ljava/lang/StringBuilder;

    .line 445
    const-string p2, "LoadTextData -- "

    .line 447
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 450
    invoke-virtual {p1}, Lcom/samsung/android/knox/lockscreen/LSOItemText;->toString()Ljava/lang/String;

    .line 453
    move-result-object p1

    .line 454
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 460
    move-result-object p0

    .line 461
    invoke-static {v8, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    :goto_3
    return-void
.end method

.method public final resetOverlayData(I)V
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->wipeLayerData(I)V

    .line 4
    const-string v0, "LOCKSCREEN_OVERLAY"

    .line 6
    filled-new-array {v0}, [Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    .line 12
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 15
    move-result-object v1

    .line 16
    const-string v2, "SELECT COUNT(*) from LOCKSCREEN_OVERLAY"

    .line 18
    const/4 v3, 0x0

    .line 19
    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 22
    move-result-object v1

    .line 23
    const-string v2, "LSOStorageProvider"

    .line 25
    const/4 v3, 0x0

    .line 26
    if-nez v1, :cond_0

    .line 28
    move v4, v3

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 33
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    .line 36
    move-result v4

    .line 37
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 40
    const-string/jumbo v1, "getCount(LOCKSCREEN_OVERLAY) - "

    .line 43
    invoke-static {v4, v1, v2}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 46
    :goto_0
    if-nez v4, :cond_1

    .line 48
    const/4 v3, 0x1

    .line 49
    :cond_1
    if-eqz v3, :cond_2

    .line 51
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->deleteRecord([Ljava/lang/String;)V

    .line 54
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    .line 56
    const-string/jumbo v0, "resetOverlayData() LOCKSCREEN_OVERLAY - resetted layer : "

    .line 59
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    invoke-static {p1}, Lcom/samsung/android/knox/lockscreen/LSOConstants;->getLayerName(I)Ljava/lang/String;

    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    move-result-object p0

    .line 73
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    return-void
.end method

.method public final resetWallpaperData()V
    .locals 1

    .line 1
    const-string v0, "LOCKSCREEN_WALLPAPER"

    .line 3
    filled-new-array {v0}, [Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->deleteRecord([Ljava/lang/String;)V

    .line 10
    const-string p0, "LSOStorageProvider"

    .line 12
    const-string/jumbo v0, "resetWallpaperData() LOCKSCREEN_WALLPAPER - resetted"

    .line 15
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    return-void
.end method

.method public final setOverlayData(JLcom/samsung/android/knox/lockscreen/LSOItemData;ILcom/samsung/android/knox/lockscreen/LSOAttributeSet;)Z
    .locals 6

    if-eqz p3, :cond_4

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-eqz v2, :cond_4

    .line 1
    const-string v2, "LOCKSCREEN_OVERLAY"

    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->getAdminUid(Ljava/lang/String;)I

    move-result v3

    .line 2
    invoke-virtual {p0, p4}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->wipeLayerData(I)V

    const-wide/16 v4, 0x0

    .line 3
    invoke-virtual {p0, p3, p4, v4, v5}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->setOverlayData(Lcom/samsung/android/knox/lockscreen/LSOItemData;IJ)Z

    move-result p3

    const/4 p4, 0x0

    if-nez p3, :cond_0

    .line 4
    invoke-virtual {p0, p4}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->resetOverlayData(I)V

    goto :goto_1

    :cond_0
    int-to-long v3, v3

    cmp-long v3, v3, p1

    if-eqz v3, :cond_3

    .line 5
    const-string/jumbo p3, "policyName"

    .line 6
    invoke-static {p3, v2}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object p3

    .line 7
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "adminUid"

    invoke-virtual {p3, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    if-eqz p5, :cond_1

    .line 8
    const-string p1, "accountObject"

    invoke-virtual {p5}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->toByteArray()[B

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 9
    :cond_1
    const-string p1, "ADMIN_REF"

    invoke-virtual {p0, p1, p3}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->insertRecord(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p1

    cmp-long p1, v0, p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    move p3, p1

    goto :goto_0

    :cond_2
    move p3, p4

    :goto_0
    if-nez p3, :cond_3

    .line 10
    invoke-virtual {p0, p4}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->resetOverlayData(I)V

    :cond_3
    :goto_1
    return p3

    .line 11
    :cond_4
    new-instance p0, Ljava/security/InvalidParameterException;

    const-string p1, "Parameter cannot be null"

    invoke-direct {p0, p1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setOverlayData(Lcom/samsung/android/knox/lockscreen/LSOItemData;IJ)Z
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return v1

    .line 15
    :cond_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 16
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->getType()B

    move-result v3

    .line 17
    sget-object v4, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    const/16 v5, 0x10

    aget-object v6, v4, v5

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/16 v6, 0x11

    .line 18
    aget-object v6, v4, v6

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 v6, 0x1

    .line 19
    aget-object v7, v4, v6

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Byte;)V

    .line 20
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->getUpdatedFields()[I

    move-result-object v7

    const/4 v8, 0x4

    .line 21
    const-string v9, "LSOStorageProvider"

    if-eqz v7, :cond_19

    array-length v10, v7

    if-nez v10, :cond_1

    goto/16 :goto_3

    :cond_1
    move v10, v1

    move v11, v10

    .line 22
    :goto_0
    array-length v12, v7

    if-ge v10, v12, :cond_18

    if-nez v11, :cond_18

    .line 23
    aget v12, v7, v10

    const/4 v13, 0x2

    if-eq v12, v6, :cond_17

    const/4 v14, 0x3

    if-eq v12, v13, :cond_16

    if-eq v12, v8, :cond_15

    const/4 v15, 0x5

    const/16 v6, 0x8

    if-eq v12, v6, :cond_14

    if-eq v12, v5, :cond_13

    const/16 v5, 0x20

    if-eq v12, v5, :cond_12

    const/16 v5, 0x40

    if-eq v12, v5, :cond_11

    const/16 v1, 0x200

    const/16 v16, 0x9

    const/16 v6, 0x100

    const/16 v5, 0x80

    if-eq v3, v13, :cond_c

    if-eq v3, v14, :cond_8

    if-eq v3, v8, :cond_4

    if-eq v3, v15, :cond_2

    .line 24
    const-string/jumbo v1, "unknown LSOItem"

    invoke-static {v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x1

    goto/16 :goto_2

    .line 25
    :cond_2
    move-object/from16 v1, p1

    check-cast v1, Lcom/samsung/android/knox/lockscreen/LSOItemWidget;

    if-eq v12, v5, :cond_3

    goto/16 :goto_2

    :cond_3
    const/16 v5, 0xe

    .line 26
    aget-object v5, v4, v5

    invoke-virtual {v1}, Lcom/samsung/android/knox/lockscreen/LSOItemWidget;->getWidget()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 27
    :cond_4
    move-object/from16 v1, p1

    check-cast v1, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;

    if-eq v12, v5, :cond_6

    if-eq v12, v6, :cond_5

    goto/16 :goto_2

    .line 28
    :cond_5
    aget-object v5, v4, v16

    .line 29
    invoke-virtual {v1}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->getBGImagePath()Ljava/lang/String;

    move-result-object v1

    .line 30
    invoke-virtual {v2, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_6
    const/16 v5, 0xd

    .line 31
    aget-object v5, v4, v5

    .line 32
    invoke-virtual {v1}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->getOrientation()Lcom/samsung/android/knox/lockscreen/LSOItemContainer$ORIENTATION;

    move-result-object v1

    sget-object v6, Lcom/samsung/android/knox/lockscreen/LSOItemContainer$ORIENTATION;->VERTICAL:Lcom/samsung/android/knox/lockscreen/LSOItemContainer$ORIENTATION;

    if-ne v1, v6, :cond_7

    const/4 v1, 0x0

    goto :goto_1

    :cond_7
    const/4 v1, 0x1

    .line 33
    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_2

    .line 34
    :cond_8
    move-object/from16 v13, p1

    check-cast v13, Lcom/samsung/android/knox/lockscreen/LSOItemImage;

    if-eq v12, v5, :cond_b

    if-eq v12, v6, :cond_a

    if-eq v12, v1, :cond_9

    goto/16 :goto_2

    :cond_9
    const/16 v1, 0xa

    .line 35
    aget-object v1, v4, v1

    .line 36
    invoke-virtual {v13}, Lcom/samsung/android/knox/lockscreen/LSOItemImage;->getScaleTypeAsInteger()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 37
    invoke-virtual {v2, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_2

    :cond_a
    const/16 v1, 0xc

    .line 38
    aget-object v1, v4, v1

    invoke-virtual {v13}, Lcom/samsung/android/knox/lockscreen/LSOItemImage;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x8

    .line 39
    aget-object v1, v4, v1

    .line 40
    invoke-virtual {v13}, Lcom/samsung/android/knox/lockscreen/LSOItemImage;->getPollingInterval()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 41
    invoke-virtual {v2, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_2

    .line 42
    :cond_b
    aget-object v1, v4, v16

    invoke-virtual {v13}, Lcom/samsung/android/knox/lockscreen/LSOItemImage;->getImagePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 43
    :cond_c
    move-object/from16 v13, p1

    check-cast v13, Lcom/samsung/android/knox/lockscreen/LSOItemText;

    if-eq v12, v5, :cond_10

    if-eq v12, v6, :cond_f

    if-eq v12, v1, :cond_e

    const/16 v1, 0x400

    if-eq v12, v1, :cond_d

    goto/16 :goto_2

    :cond_d
    const/16 v1, 0xa

    .line 44
    aget-object v1, v4, v1

    invoke-virtual {v13}, Lcom/samsung/android/knox/lockscreen/LSOItemText;->getTextStyle()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_2

    :cond_e
    const/16 v1, 0xb

    .line 45
    aget-object v1, v4, v1

    .line 46
    invoke-virtual {v13}, Lcom/samsung/android/knox/lockscreen/LSOItemText;->getTextSizeAsFloat()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    .line 47
    invoke-virtual {v2, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    goto/16 :goto_2

    :cond_f
    const/16 v1, 0x8

    .line 48
    aget-object v1, v4, v1

    invoke-virtual {v13}, Lcom/samsung/android/knox/lockscreen/LSOItemText;->getTextColor()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_2

    .line 49
    :cond_10
    aget-object v1, v4, v16

    invoke-virtual {v13}, Lcom/samsung/android/knox/lockscreen/LSOItemText;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_11
    const/16 v1, 0xf

    .line 50
    aget-object v1, v4, v1

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->getAttrs()Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->toByteArray()[B

    move-result-object v5

    invoke-virtual {v2, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto :goto_2

    :cond_12
    const/4 v1, 0x7

    .line 51
    aget-object v1, v4, v1

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->getGravity()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_2

    :cond_13
    const/4 v1, 0x6

    .line 52
    aget-object v1, v4, v1

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->getBgColor()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_2

    .line 53
    :cond_14
    aget-object v1, v4, v15

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->getWeight()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v2, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    goto :goto_2

    .line 54
    :cond_15
    aget-object v1, v4, v8

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->getHeight()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_2

    .line 55
    :cond_16
    aget-object v1, v4, v14

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->getWidth()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_2

    .line 56
    :cond_17
    aget-object v1, v4, v13

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v10, v10, 0x1

    const/4 v1, 0x0

    const/16 v5, 0x10

    const/4 v6, 0x1

    goto/16 :goto_0

    :cond_18
    if-eqz v11, :cond_19

    const/4 v2, 0x0

    :cond_19
    :goto_3
    if-nez v2, :cond_1a

    .line 57
    const-string v0, "Cannot construct content values"

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1

    :cond_1a
    const/4 v1, 0x0

    .line 58
    const-string v3, "LOCKSCREEN_OVERLAY"

    invoke-virtual {v0, v3, v2}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->insertRecord(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-nez v4, :cond_1b

    return v1

    .line 59
    :cond_1b
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->getType()B

    move-result v4

    if-eq v4, v8, :cond_1c

    const/4 v4, 0x1

    return v4

    :cond_1c
    const/4 v4, 0x1

    .line 60
    move-object/from16 v5, p1

    check-cast v5, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;

    move v6, v4

    .line 61
    :goto_4
    invoke-virtual {v5}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->getNumItems()I

    move-result v4

    if-ge v1, v4, :cond_1d

    if-eqz v6, :cond_1d

    .line 62
    invoke-virtual {v5, v1}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->getItem(I)Lcom/samsung/android/knox/lockscreen/LSOItemData;

    move-result-object v4

    move/from16 v7, p2

    invoke-virtual {v0, v4, v7, v2, v3}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->setOverlayData(Lcom/samsung/android/knox/lockscreen/LSOItemData;IJ)Z

    move-result v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_1d
    if-nez v6, :cond_1e

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Failed to store LSOItemData for "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " with ParendId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    return v6
.end method

.method public final wipeLayerData(I)V
    .locals 3

    .line 1
    const-string v0, "LOCKSCREEN_OVERLAY"

    .line 3
    if-nez p1, :cond_0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const-string v1, "Item_Layer"

    .line 12
    filled-new-array {v1}, [Ljava/lang/String;

    .line 15
    move-result-object v1

    .line 16
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 19
    move-result-object v2

    .line 20
    filled-new-array {v2}, [Ljava/lang/String;

    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    .line 27
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 29
    const-string/jumbo v0, "wipeLayerData() - LOCKSCREEN_OVERLAY - cleaned : "

    .line 32
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    invoke-static {p1}, Lcom/samsung/android/knox/lockscreen/LSOConstants;->getLayerName(I)Ljava/lang/String;

    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    move-result-object p0

    .line 46
    const-string p1, "LSOStorageProvider"

    .line 48
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    return-void
.end method
