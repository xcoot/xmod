.class public final Lcom/android/server/enterprise/apn/ApnSettingsPolicy;
.super Lcom/samsung/android/knox/net/apn/IApnSettingsPolicy$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# instance fields
.field public mContext:Landroid/content/Context;

.field public mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field public mMDMConfigVersion:I

.field public mPendingGetApnList:Ljava/util/HashMap;


# direct methods
.method public static getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, ""

    .line 3
    :try_start_0
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 6
    move-result p0

    .line 7
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 10
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    if-nez p0, :cond_0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move-object v0, p0

    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-exception p0

    .line 17
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 20
    :goto_0
    return-object v0
.end method

.method public static getTelephonyProperty(ILjava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    const-string/jumbo v0, "ril.ICC_TYPE0"

    .line 4
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    move-result-object v1

    .line 8
    const-string/jumbo v2, "ril.ICC_TYPE1"

    .line 11
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    move-result-object v3

    .line 15
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    move-result v0

    .line 19
    const-string v4, "0"

    .line 21
    if-eqz v0, :cond_1

    .line 23
    if-eqz v1, :cond_0

    .line 25
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 28
    move-result v0

    .line 29
    if-lez v0, :cond_0

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    move-object v1, v4

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_3

    .line 40
    if-eqz v3, :cond_2

    .line 42
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 45
    move-result v0

    .line 46
    if-lez v0, :cond_2

    .line 48
    goto :goto_0

    .line 49
    :cond_2
    move-object v3, v4

    .line 50
    :goto_0
    move-object v1, v3

    .line 51
    goto :goto_1

    .line 52
    :cond_3
    const/4 v1, 0x0

    .line 53
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_4

    .line 59
    invoke-static {p0, p1, v4}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 62
    move-result-object v1

    .line 63
    :cond_4
    const-string/jumbo p0, "getTelephonyProperty : "

    .line 66
    const-string p1, "ApnSettingsPolicyService"

    .line 68
    invoke-static {p0, v1, p1}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    return-object v1
.end method

.method public static setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_1

    .line 3
    if-nez p3, :cond_0

    .line 5
    const-string p0, ""

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 11
    move-result-object p0

    .line 12
    :goto_0
    invoke-virtual {p1, p2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    if-eqz p3, :cond_2

    .line 18
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {p1, p2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    :cond_2
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 27
    const-string/jumbo p1, "setColumnValue: key="

    .line 30
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    const-string p1, " value="

    .line 38
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    move-result-object p0

    .line 48
    const-string p1, "ApnSettingsPolicyService"

    .line 50
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    return-void
.end method

.method public static validateString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    if-nez p0, :cond_0

    .line 3
    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 7
    move-result-object p0

    .line 8
    :goto_0
    return-object p0
.end method


# virtual methods
.method public final declared-synchronized addUpdateApn(Lcom/samsung/android/knox/ContextInfo;ZLcom/samsung/android/knox/net/apn/ApnSettings;)J
    .locals 29

    .line 1
    move-object/from16 v1, p0

    .line 3
    move/from16 v0, p2

    .line 5
    move-object/from16 v2, p3

    .line 7
    const-string v8, "addUpdateAp() : invalid ap Id "

    .line 9
    const-string/jumbo v9, "isNewAp - "

    .line 12
    monitor-enter p0

    .line 13
    :try_start_0
    const-string v10, "ApnSettingsPolicyService"

    .line 15
    new-instance v11, Ljava/lang/StringBuilder;

    .line 17
    invoke-direct {v11, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    move-result-object v9

    .line 27
    invoke-static {v10, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->enforceOwnerOnlyAndApnPermission(Lcom/samsung/android/knox/ContextInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    const-wide/16 v9, -0x1

    .line 35
    if-nez v2, :cond_0

    .line 37
    monitor-exit p0

    .line 38
    return-wide v9

    .line 39
    :cond_0
    :try_start_1
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->getId()J

    .line 42
    move-result-wide v11

    .line 43
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->getUser()Ljava/lang/String;

    .line 46
    move-result-object v13

    .line 47
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->getServer()Ljava/lang/String;

    .line 50
    move-result-object v14

    .line 51
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->getPassword()Ljava/lang/String;

    .line 54
    move-result-object v15

    .line 55
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->getProxy()Ljava/lang/String;

    .line 58
    move-result-object v16

    .line 59
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->getPort()I

    .line 62
    move-result v4

    .line 63
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->getMmsProxy()Ljava/lang/String;

    .line 66
    move-result-object v18

    .line 67
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->getMmsc()Ljava/lang/String;

    .line 70
    move-result-object v19

    .line 71
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->getType()Ljava/lang/String;

    .line 74
    move-result-object v20

    .line 75
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->getAuthType()I

    .line 78
    move-result v5

    .line 79
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->getName()Ljava/lang/String;

    .line 82
    move-result-object v21

    .line 83
    invoke-static/range {v21 .. v21}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    .line 86
    move-result-object v6

    .line 87
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->getApn()Ljava/lang/String;

    .line 90
    move-result-object v21

    .line 91
    invoke-static/range {v21 .. v21}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    .line 94
    move-result-object v3

    .line 95
    if-eqz v6, :cond_2b

    .line 97
    if-nez v3, :cond_1

    .line 99
    goto/16 :goto_1e

    .line 101
    :cond_1
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 104
    move-result v7

    .line 105
    const/16 v9, 0x41

    .line 107
    if-le v7, v9, :cond_2

    .line 109
    const-string v0, "ApnSettingsPolicyService"

    .line 111
    const-string v2, "APN name maximum length (65)"

    .line 113
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    monitor-exit p0

    .line 117
    :goto_0
    const-wide/16 v1, -0x1

    .line 119
    return-wide v1

    .line 120
    :catchall_0
    move-exception v0

    .line 121
    goto/16 :goto_1f

    .line 123
    :cond_2
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 126
    move-result v7

    .line 127
    const/16 v9, 0x78

    .line 129
    if-le v7, v9, :cond_3

    .line 131
    const-string v0, "ApnSettingsPolicyService"

    .line 133
    const-string v2, "APN excedes maximum length (120)"

    .line 135
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 138
    monitor-exit p0

    .line 139
    goto :goto_0

    .line 140
    :cond_3
    :try_start_3
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->getMcc()Ljava/lang/String;

    .line 143
    move-result-object v7

    .line 144
    invoke-static {v7}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    .line 147
    move-result-object v7

    .line 148
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->getMnc()Ljava/lang/String;

    .line 151
    move-result-object v9

    .line 152
    invoke-static {v9}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    .line 155
    move-result-object v9

    .line 156
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->getMmsPort()Ljava/lang/String;

    .line 159
    move-result-object v10

    .line 160
    invoke-static {v10}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    .line 163
    move-result-object v10

    .line 164
    move-object/from16 v22, v8

    .line 166
    iget-object v8, v2, Lcom/samsung/android/knox/net/apn/ApnSettings;->protocol:Ljava/lang/String;

    .line 168
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 171
    move-result v23

    .line 172
    if-eqz v23, :cond_4

    .line 174
    goto :goto_4

    .line 175
    :cond_4
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 178
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    .line 181
    move-result v23

    .line 182
    move-object/from16 p1, v15

    .line 184
    sparse-switch v23, :sswitch_data_0

    .line 187
    :goto_1
    const/4 v15, -0x1

    .line 188
    goto :goto_3

    .line 189
    :sswitch_0
    const-string v15, "IPV6"

    .line 191
    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 194
    move-result v15

    .line 195
    if-nez v15, :cond_5

    .line 197
    goto :goto_2

    .line 198
    :cond_5
    const/4 v15, 0x2

    .line 199
    goto :goto_3

    .line 200
    :sswitch_1
    const-string v15, "IP"

    .line 202
    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 205
    move-result v15

    .line 206
    if-nez v15, :cond_6

    .line 208
    goto :goto_2

    .line 209
    :cond_6
    const/4 v15, 0x1

    .line 210
    goto :goto_3

    .line 211
    :sswitch_2
    const-string v15, "IPV4V6"

    .line 213
    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 216
    move-result v15

    .line 217
    if-nez v15, :cond_7

    .line 219
    :goto_2
    goto :goto_1

    .line 220
    :cond_7
    const/4 v15, 0x0

    .line 221
    :goto_3
    packed-switch v15, :pswitch_data_0

    .line 224
    :goto_4
    :try_start_4
    const-string v0, "ApnSettingsPolicyService"

    .line 226
    const-string v2, "Invalid protocol!"

    .line 228
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 231
    monitor-exit p0

    .line 232
    goto :goto_0

    .line 233
    :pswitch_0
    :try_start_5
    iget-object v15, v2, Lcom/samsung/android/knox/net/apn/ApnSettings;->roamingProtocol:Ljava/lang/String;

    .line 235
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 238
    move-result v23

    .line 239
    if-eqz v23, :cond_8

    .line 241
    goto :goto_8

    .line 242
    :cond_8
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 245
    invoke-virtual {v15}, Ljava/lang/String;->hashCode()I

    .line 248
    move-result v23

    .line 249
    sparse-switch v23, :sswitch_data_1

    .line 252
    move-object/from16 v23, v8

    .line 254
    :goto_5
    const/4 v8, -0x1

    .line 255
    goto :goto_7

    .line 256
    :sswitch_3
    move-object/from16 v23, v8

    .line 258
    const-string v8, "IPV6"

    .line 260
    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 263
    move-result v8

    .line 264
    if-nez v8, :cond_9

    .line 266
    goto :goto_6

    .line 267
    :cond_9
    const/4 v8, 0x2

    .line 268
    goto :goto_7

    .line 269
    :sswitch_4
    move-object/from16 v23, v8

    .line 271
    const-string v8, "IP"

    .line 273
    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 276
    move-result v8

    .line 277
    if-nez v8, :cond_a

    .line 279
    goto :goto_6

    .line 280
    :cond_a
    const/4 v8, 0x1

    .line 281
    goto :goto_7

    .line 282
    :sswitch_5
    move-object/from16 v23, v8

    .line 284
    const-string v8, "IPV4V6"

    .line 286
    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 289
    move-result v8

    .line 290
    if-nez v8, :cond_b

    .line 292
    :goto_6
    goto :goto_5

    .line 293
    :cond_b
    const/4 v8, 0x0

    .line 294
    :goto_7
    packed-switch v8, :pswitch_data_1

    .line 297
    :goto_8
    :try_start_6
    const-string v0, "ApnSettingsPolicyService"

    .line 299
    const-string v2, "Invalid Roaming Protocol!"

    .line 301
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 304
    monitor-exit p0

    .line 305
    goto/16 :goto_0

    .line 307
    :pswitch_1
    :try_start_7
    iget-object v8, v2, Lcom/samsung/android/knox/net/apn/ApnSettings;->mvno_type:Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 309
    if-eqz v8, :cond_2a

    .line 311
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    .line 314
    move-result v24

    .line 315
    sparse-switch v24, :sswitch_data_2

    .line 318
    move-object/from16 v24, v15

    .line 320
    :goto_9
    const/16 v17, -0x1

    .line 322
    goto :goto_b

    .line 323
    :sswitch_6
    move-object/from16 v24, v15

    .line 325
    const-string/jumbo v15, "imsi"

    .line 328
    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 331
    move-result v15

    .line 332
    if-nez v15, :cond_c

    .line 334
    goto :goto_a

    .line 335
    :cond_c
    const/16 v17, 0x3

    .line 337
    goto :goto_b

    .line 338
    :sswitch_7
    move-object/from16 v24, v15

    .line 340
    const-string/jumbo v15, "spn"

    .line 343
    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 346
    move-result v15

    .line 347
    if-nez v15, :cond_d

    .line 349
    goto :goto_a

    .line 350
    :cond_d
    const/16 v17, 0x2

    .line 352
    goto :goto_b

    .line 353
    :sswitch_8
    move-object/from16 v24, v15

    .line 355
    const-string/jumbo v15, "gid"

    .line 358
    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 361
    move-result v15

    .line 362
    if-nez v15, :cond_e

    .line 364
    goto :goto_a

    .line 365
    :cond_e
    const/16 v17, 0x1

    .line 367
    goto :goto_b

    .line 368
    :sswitch_9
    move-object/from16 v24, v15

    .line 370
    const-string v15, ""

    .line 372
    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 375
    move-result v15

    .line 376
    if-nez v15, :cond_f

    .line 378
    :goto_a
    goto :goto_9

    .line 379
    :cond_f
    const/16 v17, 0x0

    .line 381
    :goto_b
    packed-switch v17, :pswitch_data_2

    .line 384
    goto/16 :goto_1d

    .line 386
    :pswitch_2
    :try_start_8
    iget-object v2, v2, Lcom/samsung/android/knox/net/apn/ApnSettings;->mvno_value:Ljava/lang/String;

    .line 388
    invoke-static {v2}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    .line 391
    move-result-object v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 392
    :try_start_9
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 395
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 398
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    .line 401
    move-result v15

    .line 402
    if-nez v15, :cond_10

    .line 404
    const-string v15, "*"

    .line 406
    invoke-virtual {v10, v15}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 409
    move-result v15

    .line 410
    if-eqz v15, :cond_10

    .line 412
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 415
    move-result v15

    .line 416
    goto :goto_c

    .line 417
    :catch_0
    move-exception v0

    .line 418
    goto/16 :goto_1a

    .line 420
    :cond_10
    const/4 v15, -0x1

    .line 421
    :goto_c
    const-wide/16 v25, 0x1

    .line 423
    move-object/from16 p3, v2

    .line 425
    if-nez v0, :cond_12

    .line 427
    cmp-long v17, v25, v11

    .line 429
    if-gtz v17, :cond_11

    .line 431
    goto :goto_e

    .line 432
    :cond_11
    :goto_d
    move-wide v10, v11

    .line 433
    goto/16 :goto_16

    .line 435
    :cond_12
    :goto_e
    if-eqz v7, :cond_11

    .line 437
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 440
    move-result v17

    .line 441
    if-eqz v17, :cond_11

    .line 443
    if-eqz v9, :cond_11

    .line 445
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 448
    move-result v17

    .line 449
    if-eqz v17, :cond_11

    .line 451
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 454
    move-result v17

    .line 455
    if-eqz v17, :cond_11

    .line 457
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 460
    move-result v17
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 461
    if-eqz v17, :cond_11

    .line 463
    const/4 v2, -0x1

    .line 464
    if-gt v2, v4, :cond_11

    .line 466
    if-gt v2, v15, :cond_11

    .line 468
    const/4 v2, -0x2

    .line 469
    if-gt v2, v5, :cond_11

    .line 471
    const/4 v2, 0x3

    .line 472
    if-ge v2, v5, :cond_13

    .line 474
    goto :goto_d

    .line 475
    :cond_13
    :try_start_a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 478
    move-result-wide v25
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 479
    :try_start_b
    iget-object v2, v1, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    .line 481
    const-string/jumbo v15, "phone"

    .line 484
    invoke-virtual {v2, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 487
    move-result-object v2

    .line 488
    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 490
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    .line 493
    move-result-object v2

    .line 494
    if-eqz v2, :cond_14

    .line 496
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 499
    move-result v15

    .line 500
    move-wide/from16 v27, v11

    .line 502
    const/4 v11, 0x4

    .line 503
    if-ge v11, v15, :cond_15

    .line 505
    const/4 v11, 0x0

    .line 506
    const/4 v12, 0x3

    .line 507
    invoke-virtual {v2, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 510
    move-result-object v11

    .line 511
    invoke-virtual {v2, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 514
    move-result-object v2

    .line 515
    goto :goto_f

    .line 516
    :catchall_1
    move-exception v0

    .line 517
    goto/16 :goto_15

    .line 519
    :catch_1
    move-exception v0

    .line 520
    goto/16 :goto_14

    .line 522
    :cond_14
    move-wide/from16 v27, v11

    .line 524
    :cond_15
    const/4 v2, 0x0

    .line 525
    const/4 v11, 0x0

    .line 526
    :goto_f
    invoke-static {v13}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    .line 529
    move-result-object v12

    .line 530
    invoke-static {v14}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    .line 533
    move-result-object v13

    .line 534
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    .line 537
    move-result-object v14

    .line 538
    invoke-static/range {v16 .. v16}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    .line 541
    move-result-object v15

    .line 542
    move-object/from16 v16, v8

    .line 544
    invoke-static/range {v18 .. v18}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    .line 547
    move-result-object v8

    .line 548
    move-object/from16 p1, v11

    .line 550
    invoke-static/range {v19 .. v19}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    .line 553
    move-result-object v11

    .line 554
    move-object/from16 v18, v2

    .line 556
    invoke-static/range {v20 .. v20}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    .line 559
    move-result-object v2

    .line 560
    move-object/from16 v19, v2

    .line 562
    new-instance v2, Landroid/content/ContentValues;

    .line 564
    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 567
    move/from16 v20, v5

    .line 569
    const-string/jumbo v5, "name"

    .line 572
    invoke-static {v0, v2, v5, v6}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    const-string/jumbo v5, "numeric"

    .line 578
    invoke-virtual {v7, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 581
    move-result-object v6

    .line 582
    invoke-static {v0, v2, v5, v6}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    const-string/jumbo v5, "mcc"

    .line 588
    invoke-static {v0, v2, v5, v7}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    const-string/jumbo v5, "mnc"

    .line 594
    invoke-static {v0, v2, v5, v9}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    const-string v5, "apn"

    .line 599
    invoke-static {v0, v2, v5, v3}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    const-string/jumbo v3, "user"

    .line 605
    invoke-static {v0, v2, v3, v12}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    const-string/jumbo v3, "server"

    .line 611
    invoke-static {v0, v2, v3, v13}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    const-string/jumbo v3, "password"

    .line 617
    invoke-static {v0, v2, v3, v14}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    const-string/jumbo v3, "proxy"

    .line 623
    invoke-static {v0, v2, v3, v15}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    const-string/jumbo v3, "port"

    .line 629
    if-ltz v4, :cond_16

    .line 631
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 634
    move-result-object v4

    .line 635
    goto :goto_10

    .line 636
    :cond_16
    const-string v4, ""

    .line 638
    :goto_10
    invoke-static {v0, v2, v3, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    const-string/jumbo v3, "mmsproxy"

    .line 644
    invoke-static {v0, v2, v3, v8}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    const-string/jumbo v3, "mmsport"

    .line 650
    invoke-static {v0, v2, v3, v10}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    const-string/jumbo v3, "mmsc"

    .line 656
    invoke-static {v0, v2, v3, v11}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    if-eqz v0, :cond_18

    .line 661
    const-string v3, "authtype"

    .line 663
    move/from16 v5, v20

    .line 665
    const/4 v4, -0x2

    .line 666
    if-ge v4, v5, :cond_17

    .line 668
    const/4 v4, 0x4

    .line 669
    if-le v4, v5, :cond_17

    .line 671
    goto :goto_11

    .line 672
    :cond_17
    const/4 v5, -0x1

    .line 673
    :goto_11
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 676
    move-result-object v4

    .line 677
    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 680
    goto :goto_12

    .line 681
    :cond_18
    move/from16 v5, v20

    .line 683
    if-nez v0, :cond_19

    .line 685
    const/4 v3, -0x2

    .line 686
    if-ge v3, v5, :cond_19

    .line 688
    const/4 v3, 0x4

    .line 689
    if-le v3, v5, :cond_19

    .line 691
    const-string v3, "authtype"

    .line 693
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 696
    move-result-object v4

    .line 697
    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 700
    :cond_19
    :goto_12
    const-string/jumbo v3, "type"

    .line 703
    move-object/from16 v4, v19

    .line 705
    invoke-static {v0, v2, v3, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    if-eqz v18, :cond_1a

    .line 710
    if-eqz p1, :cond_1a

    .line 712
    move-object/from16 v3, v18

    .line 714
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 717
    move-result v3

    .line 718
    if-eqz v3, :cond_1a

    .line 720
    move-object/from16 v11, p1

    .line 722
    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 725
    move-result v3

    .line 726
    if-eqz v3, :cond_1a

    .line 728
    const-string/jumbo v3, "current"

    .line 731
    const/4 v4, 0x1

    .line 732
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 735
    move-result-object v5

    .line 736
    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 739
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    .line 742
    move-result-object v3

    .line 743
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    .line 746
    move-result v3

    .line 747
    new-instance v4, Ljava/lang/StringBuilder;

    .line 749
    const-string/jumbo v5, "simSlotCnt : "

    .line 752
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 755
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 758
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 761
    move-result-object v4

    .line 762
    const-string v5, "ApnSettingsPolicyService"

    .line 764
    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    const/4 v4, 0x1

    .line 768
    if-le v3, v4, :cond_1a

    .line 770
    const-string v3, "ApnSettingsPolicyService"

    .line 772
    const-string v5, "IS DUAL SIM"

    .line 774
    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    const-string/jumbo v3, "current1"

    .line 780
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 783
    move-result-object v5

    .line 784
    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 787
    :cond_1a
    const-string/jumbo v3, "edited"

    .line 790
    const/4 v4, 0x1

    .line 791
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 794
    move-result-object v4

    .line 795
    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 798
    iget v3, v1, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mMDMConfigVersion:I

    .line 800
    const/16 v4, 0x11

    .line 802
    if-lt v3, v4, :cond_1b

    .line 804
    const-string/jumbo v3, "protocol"

    .line 807
    move-object/from16 v4, v23

    .line 809
    invoke-static {v0, v2, v3, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 812
    const-string/jumbo v3, "roaming_protocol"

    .line 815
    move-object/from16 v4, v24

    .line 817
    invoke-static {v0, v2, v3, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 820
    :cond_1b
    const-string/jumbo v3, "mvno_type"

    .line 823
    move-object/from16 v4, v16

    .line 825
    invoke-static {v0, v2, v3, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 828
    const-string/jumbo v3, "mvno_match_data"

    .line 831
    move-object/from16 v4, p3

    .line 833
    invoke-static {v0, v2, v3, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 836
    invoke-virtual {v2}, Landroid/content/ContentValues;->size()I

    .line 839
    move-result v3

    .line 840
    if-lez v3, :cond_1d

    .line 842
    if-eqz v0, :cond_1c

    .line 844
    iget-object v0, v1, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    .line 846
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 849
    move-result-object v0

    .line 850
    sget-object v3, Lcom/android/server/enterprise/apn/ApnSettingsPolicy$Carriers;->CONTENT_URI:Landroid/net/Uri;

    .line 852
    invoke-virtual {v0, v3, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 855
    move-result-object v0

    .line 856
    if-eqz v0, :cond_1e

    .line 858
    const-string v2, "ApnSettingsPolicyService"

    .line 860
    const-string v3, "addUpdateAp Created rowUri : "

    .line 862
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    .line 868
    move-result-wide v9

    .line 869
    goto :goto_13

    .line 870
    :cond_1c
    sget-object v0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy$Carriers;->CONTENT_URI:Landroid/net/Uri;

    .line 872
    move-wide/from16 v10, v27

    .line 874
    invoke-static {v0, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    .line 877
    move-result-object v0

    .line 878
    iget-object v3, v1, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    .line 880
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 883
    move-result-object v3

    .line 884
    const/4 v4, 0x0

    .line 885
    invoke-virtual {v3, v0, v2, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 888
    move-result v2

    .line 889
    if-lez v2, :cond_1e

    .line 891
    const-string v2, "ApnSettingsPolicyService"

    .line 893
    const-string v3, "addUpdateAp Updated rowUri : "

    .line 895
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    .line 901
    move-result-wide v9

    .line 902
    goto :goto_13

    .line 903
    :cond_1d
    const-string v0, "ApnSettingsPolicyService"

    .line 905
    const-string v2, "addUpdateAp Error: Empty dataset."

    .line 907
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 910
    :cond_1e
    const-wide/16 v9, -0x1

    .line 912
    :goto_13
    :try_start_c
    invoke-static/range {v25 .. v26}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 915
    goto/16 :goto_1c

    .line 917
    :goto_14
    :try_start_d
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 920
    :try_start_e
    invoke-static/range {v25 .. v26}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 923
    goto/16 :goto_1b

    .line 925
    :goto_15
    invoke-static/range {v25 .. v26}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 928
    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 929
    :goto_16
    if-nez v0, :cond_1f

    .line 931
    cmp-long v0, v25, v10

    .line 933
    if-lez v0, :cond_1f

    .line 935
    :try_start_f
    const-string v0, "ApnSettingsPolicyService"

    .line 937
    new-instance v2, Ljava/lang/StringBuilder;

    .line 939
    move-object/from16 v8, v22

    .line 941
    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 944
    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 947
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 950
    move-result-object v2

    .line 951
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    :cond_1f
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 957
    move-result v0

    .line 958
    if-nez v0, :cond_20

    .line 960
    const-string v0, "ApnSettingsPolicyService"

    .line 962
    const-string v2, "addUpdateAp() : invalid ap name"

    .line 964
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    :cond_20
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 970
    move-result v0

    .line 971
    if-nez v0, :cond_21

    .line 973
    const-string v0, "ApnSettingsPolicyService"

    .line 975
    const-string v2, "addUpdateAp() : invalid ap apn"

    .line 977
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    :cond_21
    if-eqz v7, :cond_22

    .line 982
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 985
    move-result v0

    .line 986
    if-nez v0, :cond_23

    .line 988
    :cond_22
    const-string v0, "ApnSettingsPolicyService"

    .line 990
    const-string v2, "addUpdateAp() : invalid ap mcc"

    .line 992
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    :cond_23
    if-eqz v9, :cond_25

    .line 997
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 1000
    move-result v0

    .line 1001
    if-nez v0, :cond_24

    .line 1003
    goto :goto_18

    .line 1004
    :cond_24
    :goto_17
    const/4 v0, -0x1

    .line 1005
    goto :goto_19

    .line 1006
    :cond_25
    :goto_18
    const-string v0, "ApnSettingsPolicyService"

    .line 1008
    const-string v2, "addUpdateAp() : invalid ap mnc"

    .line 1010
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    goto :goto_17

    .line 1014
    :goto_19
    if-le v0, v4, :cond_26

    .line 1016
    const-string v0, "ApnSettingsPolicyService"

    .line 1018
    const-string v2, "addUpdateAp() : invalid ap port"

    .line 1020
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    const/4 v0, -0x1

    .line 1024
    :cond_26
    if-le v0, v15, :cond_27

    .line 1026
    const-string v0, "ApnSettingsPolicyService"

    .line 1028
    const-string v2, "addUpdateAp() : invalid ap iMmsPort"

    .line 1030
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    :cond_27
    const/4 v0, -0x2

    .line 1034
    if-gt v0, v5, :cond_28

    .line 1036
    const/4 v0, 0x3

    .line 1037
    if-ge v0, v5, :cond_29

    .line 1039
    :cond_28
    const-string v0, "ApnSettingsPolicyService"

    .line 1041
    const-string v2, "addUpdateAp() : invalid ap authType"

    .line 1043
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 1046
    goto :goto_1b

    .line 1047
    :goto_1a
    :try_start_10
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 1050
    :cond_29
    :goto_1b
    const-wide/16 v9, -0x1

    .line 1052
    :goto_1c
    monitor-exit p0

    .line 1053
    return-wide v9

    .line 1054
    :cond_2a
    :goto_1d
    :try_start_11
    const-string v0, "ApnSettingsPolicyService"

    .line 1056
    const-string v2, "Invalid mvno type!"

    .line 1058
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 1061
    monitor-exit p0

    .line 1062
    goto/16 :goto_0

    .line 1064
    :cond_2b
    :goto_1e
    :try_start_12
    const-string v0, "ApnSettingsPolicyService"

    .line 1066
    const-string v2, "Invalid value"

    .line 1068
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 1071
    monitor-exit p0

    .line 1072
    goto/16 :goto_0

    .line 1074
    :goto_1f
    monitor-exit p0

    .line 1075
    throw v0

    .line 1076
    nop

    .line 1077
    :sswitch_data_0
    .sparse-switch
        -0x7edefc9b -> :sswitch_2
        0x927 -> :sswitch_1
        0x226607 -> :sswitch_0
    .end sparse-switch

    .line 1091
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 1101
    :sswitch_data_1
    .sparse-switch
        -0x7edefc9b -> :sswitch_5
        0x927 -> :sswitch_4
        0x226607 -> :sswitch_3
    .end sparse-switch

    .line 1115
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 1125
    :sswitch_data_2
    .sparse-switch
        0x0 -> :sswitch_9
        0x18fc2 -> :sswitch_8
        0x1bdb1 -> :sswitch_7
        0x31627a -> :sswitch_6
    .end sparse-switch

    .line 1143
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public final declared-synchronized deleteApn(Lcom/samsung/android/knox/ContextInfo;J)Z
    .locals 5

    .line 1
    const-string/jumbo v0, "deleteAp : deleted rowCount from ApTable : "

    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->enforceOwnerOnlyAndApnPermission(Lcom/samsung/android/knox/ContextInfo;)V

    .line 8
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 11
    move-result-wide v1

    .line 12
    const-wide/16 v3, 0x1

    .line 14
    cmp-long p1, v3, p2

    .line 16
    const/4 v3, 0x0

    .line 17
    if-lez p1, :cond_0

    .line 19
    const-string p1, "ApnSettingsPolicyService"

    .line 21
    const-string/jumbo p2, "deleteAp : apId is invalid"

    .line 24
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    monitor-exit p0

    .line 28
    return v3

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    goto :goto_3

    .line 31
    :cond_0
    const/4 p1, -0x1

    .line 32
    :try_start_1
    sget-object v4, Lcom/android/server/enterprise/apn/ApnSettingsPolicy$Carriers;->CONTENT_URI:Landroid/net/Uri;

    .line 34
    invoke-static {v4, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    .line 37
    move-result-object p2

    .line 38
    iget-object p3, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    .line 40
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 43
    move-result-object p3

    .line 44
    const/4 v4, 0x0

    .line 45
    invoke-virtual {p3, p2, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 48
    move-result p1

    .line 49
    const-string p2, "ApnSettingsPolicyService"

    .line 51
    new-instance p3, Ljava/lang/StringBuilder;

    .line 53
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    move-result-object p3

    .line 63
    invoke-static {p2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 66
    :goto_0
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 69
    goto :goto_1

    .line 70
    :catchall_1
    move-exception p1

    .line 71
    goto :goto_2

    .line 72
    :catch_0
    move-exception p2

    .line 73
    :try_start_3
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 76
    goto :goto_0

    .line 77
    :goto_1
    if-lez p1, :cond_1

    .line 79
    const/4 v3, 0x1

    .line 80
    :cond_1
    monitor-exit p0

    .line 81
    return v3

    .line 82
    :goto_2
    :try_start_4
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 85
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 86
    :goto_3
    monitor-exit p0

    .line 87
    throw p1
.end method

.method public final enforceOwnerOnlyAndApnPermission(Lcom/samsung/android/knox/ContextInfo;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 3
    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    .line 7
    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 13
    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    .line 17
    const-string/jumbo v1, "com.samsung.android.knox.permission.KNOX_APN"

    .line 20
    filled-new-array {v1}, [Ljava/lang/String;

    .line 23
    move-result-object v1

    .line 24
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 27
    move-result-object v1

    .line 28
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 31
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 34
    return-void
.end method

.method public final getApnList(Lcom/samsung/android/knox/ContextInfo;I)Ljava/util/List;
    .locals 31

    .line 1
    move-object/from16 v0, p0

    .line 3
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->enforceOwnerOnlyAndApnPermission(Lcom/samsung/android/knox/ContextInfo;)V

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    .line 8
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    iget-object v2, v0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mPendingGetApnList:Ljava/util/HashMap;

    .line 13
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    move-result-object v3

    .line 17
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_0

    .line 23
    iget-object v2, v0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mPendingGetApnList:Ljava/util/HashMap;

    .line 25
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    move-result-object v3

    .line 29
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Ljava/util/Collection;

    .line 35
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 38
    goto/16 :goto_1

    .line 40
    :cond_0
    const-string v2, "ApnSettingsPolicyService"

    .line 42
    const-string/jumbo v3, "retrieveApnListFromDatabase"

    .line 45
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    new-instance v2, Ljava/util/ArrayList;

    .line 50
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 53
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 56
    move-result-wide v3

    .line 57
    const/4 v5, 0x0

    .line 58
    :try_start_0
    const-string v6, "_id"

    .line 60
    const-string/jumbo v7, "name"

    .line 63
    const-string/jumbo v8, "mcc"

    .line 66
    const-string/jumbo v9, "mnc"

    .line 69
    const-string v10, "apn"

    .line 71
    const-string/jumbo v11, "user"

    .line 74
    const-string/jumbo v12, "server"

    .line 77
    const-string/jumbo v13, "password"

    .line 80
    const-string/jumbo v14, "proxy"

    .line 83
    const-string/jumbo v15, "port"

    .line 86
    const-string/jumbo v16, "mmsproxy"

    .line 89
    const-string/jumbo v17, "mmsport"

    .line 92
    const-string/jumbo v18, "mmsc"

    .line 95
    const-string v19, "authtype"

    .line 97
    const-string/jumbo v20, "type"

    .line 100
    const-string/jumbo v21, "protocol"

    .line 103
    const-string/jumbo v22, "roaming_protocol"

    .line 106
    const-string/jumbo v23, "mvno_type"

    .line 109
    const-string/jumbo v24, "mvno_match_data"

    .line 112
    filled-new-array/range {v6 .. v24}, [Ljava/lang/String;

    .line 115
    move-result-object v27

    .line 116
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getFirstSlotIndex()I

    .line 119
    move-result v6

    .line 120
    invoke-virtual {v0, v6}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getApnListUri(I)Landroid/net/Uri;

    .line 123
    move-result-object v26

    .line 124
    iget-object v6, v0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    .line 126
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 129
    move-result-object v25

    .line 130
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getWhereClause()Ljava/lang/String;

    .line 133
    move-result-object v28

    .line 134
    const/16 v29, 0x0

    .line 136
    const/16 v30, 0x0

    .line 138
    invoke-virtual/range {v25 .. v30}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 141
    move-result-object v5

    .line 142
    if-eqz v5, :cond_7

    .line 144
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    .line 147
    move-result v6

    .line 148
    if-eqz v6, :cond_7

    .line 150
    :cond_1
    new-instance v6, Lcom/samsung/android/knox/net/apn/ApnSettings;

    .line 152
    invoke-direct {v6}, Lcom/samsung/android/knox/net/apn/ApnSettings;-><init>()V

    .line 155
    const-string v7, "_id"

    .line 157
    invoke-static {v7, v5}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    .line 160
    move-result-object v7

    .line 161
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 164
    move-result-wide v7

    .line 165
    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setId(J)V

    .line 168
    const-string/jumbo v7, "name"

    .line 171
    invoke-static {v7, v5}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    .line 174
    move-result-object v7

    .line 175
    invoke-virtual {v6, v7}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setName(Ljava/lang/String;)V

    .line 178
    const-string/jumbo v7, "mcc"

    .line 181
    invoke-static {v7, v5}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    .line 184
    move-result-object v7

    .line 185
    invoke-virtual {v6, v7}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setMcc(Ljava/lang/String;)V

    .line 188
    const-string/jumbo v7, "mnc"

    .line 191
    invoke-static {v7, v5}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    .line 194
    move-result-object v7

    .line 195
    invoke-virtual {v6, v7}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setMnc(Ljava/lang/String;)V

    .line 198
    const-string v7, "apn"

    .line 200
    invoke-static {v7, v5}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    .line 203
    move-result-object v7

    .line 204
    invoke-virtual {v6, v7}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setApn(Ljava/lang/String;)V

    .line 207
    const-string/jumbo v7, "user"

    .line 210
    invoke-static {v7, v5}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    .line 213
    move-result-object v7

    .line 214
    invoke-virtual {v6, v7}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setUser(Ljava/lang/String;)V

    .line 217
    const-string/jumbo v7, "server"

    .line 220
    invoke-static {v7, v5}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    .line 223
    move-result-object v7

    .line 224
    invoke-virtual {v6, v7}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setServer(Ljava/lang/String;)V

    .line 227
    const-string/jumbo v7, "password"

    .line 230
    invoke-static {v7, v5}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    .line 233
    move-result-object v7

    .line 234
    invoke-virtual {v6, v7}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setPassword(Ljava/lang/String;)V

    .line 237
    const-string/jumbo v7, "proxy"

    .line 240
    invoke-static {v7, v5}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    .line 243
    move-result-object v7

    .line 244
    invoke-virtual {v6, v7}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setProxy(Ljava/lang/String;)V

    .line 247
    const-string/jumbo v7, "port"

    .line 250
    invoke-static {v7, v5}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    .line 253
    move-result-object v7

    .line 254
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    .line 257
    move-result v8

    .line 258
    if-nez v8, :cond_2

    .line 260
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 263
    move-result v7

    .line 264
    invoke-virtual {v6, v7}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setPort(I)V

    .line 267
    goto :goto_0

    .line 268
    :catchall_0
    move-exception v0

    .line 269
    goto/16 :goto_3

    .line 271
    :cond_2
    :goto_0
    const-string/jumbo v7, "mmsproxy"

    .line 274
    invoke-static {v7, v5}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    .line 277
    move-result-object v7

    .line 278
    invoke-virtual {v6, v7}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setMmsProxy(Ljava/lang/String;)V

    .line 281
    const-string/jumbo v7, "mmsport"

    .line 284
    invoke-static {v7, v5}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    .line 287
    move-result-object v7

    .line 288
    invoke-virtual {v6, v7}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setMmsPort(Ljava/lang/String;)V

    .line 291
    const-string/jumbo v7, "mmsc"

    .line 294
    invoke-static {v7, v5}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    .line 297
    move-result-object v7

    .line 298
    invoke-virtual {v6, v7}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setMmsc(Ljava/lang/String;)V

    .line 301
    const-string v7, "authtype"

    .line 303
    invoke-static {v7, v5}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    .line 306
    move-result-object v7

    .line 307
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    .line 310
    move-result v8

    .line 311
    if-nez v8, :cond_3

    .line 313
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 316
    move-result v7

    .line 317
    invoke-virtual {v6, v7}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setAuthType(I)V

    .line 320
    :cond_3
    const-string/jumbo v7, "type"

    .line 323
    invoke-static {v7, v5}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    .line 326
    move-result-object v7

    .line 327
    invoke-virtual {v6, v7}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setType(Ljava/lang/String;)V

    .line 330
    iget v7, v0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mMDMConfigVersion:I

    .line 332
    const/16 v8, 0x11

    .line 334
    if-lt v7, v8, :cond_4

    .line 336
    const-string/jumbo v7, "protocol"

    .line 339
    invoke-static {v7, v5}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    .line 342
    move-result-object v7

    .line 343
    iput-object v7, v6, Lcom/samsung/android/knox/net/apn/ApnSettings;->protocol:Ljava/lang/String;

    .line 345
    const-string/jumbo v7, "roaming_protocol"

    .line 348
    invoke-static {v7, v5}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    .line 351
    move-result-object v7

    .line 352
    iput-object v7, v6, Lcom/samsung/android/knox/net/apn/ApnSettings;->roamingProtocol:Ljava/lang/String;

    .line 354
    :cond_4
    const-string/jumbo v7, "mvno_type"

    .line 357
    invoke-static {v7, v5}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    .line 360
    move-result-object v7

    .line 361
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    .line 364
    move-result v8

    .line 365
    if-nez v8, :cond_5

    .line 367
    iput-object v7, v6, Lcom/samsung/android/knox/net/apn/ApnSettings;->mvno_type:Ljava/lang/String;

    .line 369
    :cond_5
    const-string/jumbo v7, "mvno_match_data"

    .line 372
    invoke-static {v7, v5}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    .line 375
    move-result-object v7

    .line 376
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    .line 379
    move-result v8

    .line 380
    if-nez v8, :cond_6

    .line 382
    iput-object v7, v6, Lcom/samsung/android/knox/net/apn/ApnSettings;->mvno_value:Ljava/lang/String;

    .line 384
    :cond_6
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 387
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    .line 390
    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 391
    if-nez v6, :cond_1

    .line 393
    :cond_7
    if-eqz v5, :cond_8

    .line 395
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 398
    :cond_8
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 401
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 404
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 407
    move-result v2

    .line 408
    sget v3, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->MAXIMUM_APNS_OVER_IPC:I

    .line 410
    const/4 v4, 0x0

    .line 411
    if-lt v2, v3, :cond_9

    .line 413
    iget-object v0, v0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mPendingGetApnList:Ljava/util/HashMap;

    .line 415
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 418
    move-result-object v2

    .line 419
    sget v3, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->MAXIMUM_APNS_OVER_IPC:I

    .line 421
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 424
    move-result v5

    .line 425
    invoke-virtual {v1, v3, v5}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    .line 428
    move-result-object v3

    .line 429
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    sget v0, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->MAXIMUM_APNS_OVER_IPC:I

    .line 434
    invoke-virtual {v1, v4, v0}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    .line 437
    move-result-object v0

    .line 438
    goto :goto_2

    .line 439
    :cond_9
    iget-object v0, v0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mPendingGetApnList:Ljava/util/HashMap;

    .line 441
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 444
    move-result-object v2

    .line 445
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 451
    move-result v0

    .line 452
    invoke-virtual {v1, v4, v0}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    .line 455
    move-result-object v0

    .line 456
    :goto_2
    return-object v0

    .line 457
    :goto_3
    if-eqz v5, :cond_a

    .line 459
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 462
    :cond_a
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 465
    throw v0
.end method

.method public final getApnListUri(I)Landroid/net/Uri;
    .locals 3

    .line 1
    const-string/jumbo v0, "getApnListUri"

    .line 4
    const-string v1, "ApnSettingsPolicyService"

    .line 6
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_3

    .line 19
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    .line 22
    move-result v0

    .line 23
    const/4 v2, 0x1

    .line 24
    if-ne v0, v2, :cond_0

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    const/4 v0, -0x1

    .line 28
    if-eq p1, v0, :cond_1

    .line 30
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    .line 33
    move-result-object v1

    .line 34
    if-eqz v1, :cond_1

    .line 36
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    .line 39
    move-result-object p1

    .line 40
    const/4 v1, 0x0

    .line 41
    aget p1, p1, v1

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    move p1, v0

    .line 45
    :goto_0
    iget-object p0, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    .line 47
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    .line 50
    move-result-object p0

    .line 51
    invoke-virtual {p0, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    .line 54
    move-result-object p0

    .line 55
    if-eqz p0, :cond_2

    .line 57
    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    .line 60
    move-result v0

    .line 61
    :cond_2
    sget-object p0, Landroid/provider/Telephony$Carriers;->SIM_APN_URI:Landroid/net/Uri;

    .line 63
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 66
    move-result-object p1

    .line 67
    invoke-static {p0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    .line 70
    move-result-object p0

    .line 71
    goto :goto_2

    .line 72
    :cond_3
    :goto_1
    const-string p0, "No SIM "

    .line 74
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    sget-object p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy$Carriers;->CONTENT_URI:Landroid/net/Uri;

    .line 79
    :goto_2
    return-object p0
.end method

.method public final getApnSettings(Lcom/samsung/android/knox/ContextInfo;J)Lcom/samsung/android/knox/net/apn/ApnSettings;
    .locals 9

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->enforceOwnerOnlyAndApnPermission(Lcom/samsung/android/knox/ContextInfo;)V

    .line 4
    const-wide/16 v0, 0x1

    .line 6
    cmp-long p1, v0, p2

    .line 8
    const/4 v0, 0x0

    .line 9
    if-lez p1, :cond_0

    .line 11
    const-string p0, "ApnSettingsPolicyService"

    .line 13
    const-string/jumbo p1, "getApnSettings : apId is invalid"

    .line 16
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    return-object v0

    .line 20
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 23
    move-result-wide v1

    .line 24
    :try_start_0
    sget-object p1, Lcom/android/server/enterprise/apn/ApnSettingsPolicy$Carriers;->CONTENT_URI:Landroid/net/Uri;

    .line 26
    invoke-static {p1, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    .line 29
    move-result-object v4

    .line 30
    iget-object p1, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 35
    move-result-object v3

    .line 36
    const/4 v5, 0x0

    .line 37
    const/4 v6, 0x0

    .line 38
    const/4 v7, 0x0

    .line 39
    const/4 v8, 0x0

    .line 40
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 43
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 44
    if-eqz p1, :cond_6

    .line 46
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 49
    move-result p2

    .line 50
    if-eqz p2, :cond_6

    .line 52
    new-instance p2, Lcom/samsung/android/knox/net/apn/ApnSettings;

    .line 54
    invoke-direct {p2}, Lcom/samsung/android/knox/net/apn/ApnSettings;-><init>()V

    .line 57
    const-string p3, "_id"

    .line 59
    invoke-static {p3, p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    .line 62
    move-result-object p3

    .line 63
    invoke-static {p3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 66
    move-result-wide v3

    .line 67
    invoke-virtual {p2, v3, v4}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setId(J)V

    .line 70
    const-string/jumbo p3, "name"

    .line 73
    invoke-static {p3, p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    .line 76
    move-result-object p3

    .line 77
    invoke-virtual {p2, p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setName(Ljava/lang/String;)V

    .line 80
    const-string/jumbo p3, "mcc"

    .line 83
    invoke-static {p3, p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    .line 86
    move-result-object p3

    .line 87
    invoke-virtual {p2, p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setMcc(Ljava/lang/String;)V

    .line 90
    const-string/jumbo p3, "mnc"

    .line 93
    invoke-static {p3, p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    .line 96
    move-result-object p3

    .line 97
    invoke-virtual {p2, p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setMnc(Ljava/lang/String;)V

    .line 100
    const-string p3, "apn"

    .line 102
    invoke-static {p3, p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    .line 105
    move-result-object p3

    .line 106
    invoke-virtual {p2, p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setApn(Ljava/lang/String;)V

    .line 109
    const-string/jumbo p3, "user"

    .line 112
    invoke-static {p3, p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    .line 115
    move-result-object p3

    .line 116
    invoke-virtual {p2, p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setUser(Ljava/lang/String;)V

    .line 119
    const-string/jumbo p3, "server"

    .line 122
    invoke-static {p3, p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    .line 125
    move-result-object p3

    .line 126
    invoke-virtual {p2, p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setServer(Ljava/lang/String;)V

    .line 129
    const-string/jumbo p3, "password"

    .line 132
    invoke-static {p3, p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    .line 135
    move-result-object p3

    .line 136
    invoke-virtual {p2, p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setPassword(Ljava/lang/String;)V

    .line 139
    const-string/jumbo p3, "proxy"

    .line 142
    invoke-static {p3, p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    .line 145
    move-result-object p3

    .line 146
    invoke-virtual {p2, p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setProxy(Ljava/lang/String;)V

    .line 149
    const-string/jumbo p3, "port"

    .line 152
    invoke-static {p3, p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    .line 155
    move-result-object p3

    .line 156
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    .line 159
    move-result v3

    .line 160
    if-nez v3, :cond_1

    .line 162
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 165
    move-result p3

    .line 166
    invoke-virtual {p2, p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setPort(I)V

    .line 169
    goto :goto_0

    .line 170
    :catchall_0
    move-exception p0

    .line 171
    move-object v0, p1

    .line 172
    goto/16 :goto_4

    .line 174
    :catch_0
    move-exception p0

    .line 175
    goto/16 :goto_2

    .line 177
    :cond_1
    :goto_0
    const-string/jumbo p3, "mmsproxy"

    .line 180
    invoke-static {p3, p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    .line 183
    move-result-object p3

    .line 184
    invoke-virtual {p2, p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setMmsProxy(Ljava/lang/String;)V

    .line 187
    const-string/jumbo p3, "mmsport"

    .line 190
    invoke-static {p3, p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    .line 193
    move-result-object p3

    .line 194
    invoke-virtual {p2, p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setMmsPort(Ljava/lang/String;)V

    .line 197
    const-string/jumbo p3, "mmsc"

    .line 200
    invoke-static {p3, p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    .line 203
    move-result-object p3

    .line 204
    invoke-virtual {p2, p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setMmsc(Ljava/lang/String;)V

    .line 207
    const-string p3, "authtype"

    .line 209
    invoke-static {p3, p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    .line 212
    move-result-object p3

    .line 213
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    .line 216
    move-result v3

    .line 217
    if-nez v3, :cond_2

    .line 219
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 222
    move-result p3

    .line 223
    invoke-virtual {p2, p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setAuthType(I)V

    .line 226
    :cond_2
    const-string/jumbo p3, "type"

    .line 229
    invoke-static {p3, p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    .line 232
    move-result-object p3

    .line 233
    invoke-virtual {p2, p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setType(Ljava/lang/String;)V

    .line 236
    iget p0, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mMDMConfigVersion:I

    .line 238
    const/16 p3, 0x11

    .line 240
    if-lt p0, p3, :cond_3

    .line 242
    const-string/jumbo p0, "protocol"

    .line 245
    invoke-static {p0, p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    .line 248
    move-result-object p0

    .line 249
    iput-object p0, p2, Lcom/samsung/android/knox/net/apn/ApnSettings;->protocol:Ljava/lang/String;

    .line 251
    const-string/jumbo p0, "roaming_protocol"

    .line 254
    invoke-static {p0, p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    .line 257
    move-result-object p0

    .line 258
    iput-object p0, p2, Lcom/samsung/android/knox/net/apn/ApnSettings;->roamingProtocol:Ljava/lang/String;

    .line 260
    :cond_3
    const-string/jumbo p0, "mvno_type"

    .line 263
    invoke-static {p0, p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    .line 266
    move-result-object p0

    .line 267
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 270
    move-result p3

    .line 271
    if-nez p3, :cond_4

    .line 273
    iput-object p0, p2, Lcom/samsung/android/knox/net/apn/ApnSettings;->mvno_type:Ljava/lang/String;

    .line 275
    :cond_4
    const-string/jumbo p0, "mvno_match_data"

    .line 278
    invoke-static {p0, p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    .line 281
    move-result-object p0

    .line 282
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 285
    move-result p3

    .line 286
    if-nez p3, :cond_5

    .line 288
    iput-object p0, p2, Lcom/samsung/android/knox/net/apn/ApnSettings;->mvno_value:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 290
    :cond_5
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 293
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 296
    return-object p2

    .line 297
    :cond_6
    if-eqz p1, :cond_7

    .line 299
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 302
    :cond_7
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 305
    goto :goto_3

    .line 306
    :catchall_1
    move-exception p0

    .line 307
    goto :goto_4

    .line 308
    :catch_1
    move-exception p0

    .line 309
    move-object p1, v0

    .line 310
    :goto_2
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 313
    if-eqz p1, :cond_7

    .line 315
    goto :goto_1

    .line 316
    :goto_3
    return-object v0

    .line 317
    :goto_4
    if-eqz v0, :cond_8

    .line 319
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 322
    :cond_8
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 325
    throw p0
.end method

.method public final getFirstSlotIndex()I
    .locals 6

    .line 1
    const-string/jumbo v0, "ril.ICC_TYPE0"

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {v1, v0}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getTelephonyProperty(ILjava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    const-string/jumbo v2, "ril.ICC_TYPE1"

    .line 12
    const/4 v3, 0x1

    .line 13
    invoke-static {v3, v2}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getTelephonyProperty(ILjava/lang/String;)Ljava/lang/String;

    .line 16
    move-result-object v2

    .line 17
    iget-object v4, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    .line 19
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 22
    move-result-object v4

    .line 23
    const-string/jumbo v5, "phone1_on"

    .line 26
    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 29
    move-result v4

    .line 30
    if-ne v4, v3, :cond_0

    .line 32
    move v4, v3

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move v4, v1

    .line 35
    :goto_0
    iget-object p0, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    .line 37
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 40
    move-result-object p0

    .line 41
    const-string/jumbo v5, "phone2_on"

    .line 44
    invoke-static {p0, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 47
    move-result p0

    .line 48
    if-ne p0, v3, :cond_1

    .line 50
    move p0, v3

    .line 51
    goto :goto_1

    .line 52
    :cond_1
    move p0, v1

    .line 53
    :goto_1
    const-string v5, "0"

    .line 55
    if-eqz v4, :cond_2

    .line 57
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    move-result v0

    .line 61
    if-nez v0, :cond_2

    .line 63
    goto :goto_2

    .line 64
    :cond_2
    if-eqz p0, :cond_3

    .line 66
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    move-result p0

    .line 70
    if-nez p0, :cond_3

    .line 72
    move v1, v3

    .line 73
    goto :goto_2

    .line 74
    :cond_3
    const/4 v1, -0x1

    .line 75
    :goto_2
    const-string/jumbo p0, "getFirstSlotIndex : "

    .line 78
    const-string v0, "ApnSettingsPolicyService"

    .line 80
    invoke-static {v1, p0, v0}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 83
    return v1
.end method

.method public final declared-synchronized getPreferredApn(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/net/apn/ApnSettings;
    .locals 12

    .line 1
    const-string/jumbo v0, "getPreferredApn Ex: "

    .line 4
    const-string/jumbo v1, "getPreferredApn():"

    .line 7
    monitor-enter p0

    .line 8
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->enforceOwnerOnlyAndApnPermission(Lcom/samsung/android/knox/ContextInfo;)V

    .line 11
    const-string v2, "ApnSettingsPolicyService"

    .line 13
    const-string/jumbo v3, "getPreferredApn():"

    .line 16
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 22
    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 23
    const/4 v4, 0x0

    .line 24
    :try_start_1
    iget-object v5, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    .line 26
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 29
    move-result-object v6

    .line 30
    sget-object v7, Lcom/android/server/enterprise/apn/ApnSettingsPolicy$Carriers;->PREFERAPN_URI:Landroid/net/Uri;

    .line 32
    const-string v5, "_id"

    .line 34
    const-string/jumbo v8, "name"

    .line 37
    const-string v9, "apn"

    .line 39
    filled-new-array {v5, v8, v9}, [Ljava/lang/String;

    .line 42
    move-result-object v8

    .line 43
    const-string/jumbo v11, "name ASC"

    .line 46
    const/4 v9, 0x0

    .line 47
    const/4 v10, 0x0

    .line 48
    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 51
    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 52
    if-eqz v5, :cond_0

    .line 54
    :try_start_2
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    .line 57
    move-result v6

    .line 58
    if-eqz v6, :cond_0

    .line 60
    const-string v6, "_id"

    .line 62
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 65
    move-result v6

    .line 66
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getLong(I)J

    .line 69
    move-result-wide v6

    .line 70
    const-string v8, "ApnSettingsPolicyService"

    .line 72
    new-instance v9, Ljava/lang/StringBuilder;

    .line 74
    invoke-direct {v9, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    move-result-object v1

    .line 84
    invoke-static {v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    const-wide/16 v8, 0x0

    .line 89
    cmp-long v1, v6, v8

    .line 91
    if-lez v1, :cond_0

    .line 93
    invoke-virtual {p0, p1, v6, v7}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getApnSettings(Lcom/samsung/android/knox/ContextInfo;J)Lcom/samsung/android/knox/net/apn/ApnSettings;

    .line 96
    move-result-object v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 97
    goto :goto_0

    .line 98
    :catchall_0
    move-exception p1

    .line 99
    move-object v4, v5

    .line 100
    goto :goto_4

    .line 101
    :catch_0
    move-exception p1

    .line 102
    goto :goto_2

    .line 103
    :cond_0
    :goto_0
    if-eqz v5, :cond_1

    .line 105
    :try_start_3
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 108
    goto :goto_1

    .line 109
    :catchall_1
    move-exception p1

    .line 110
    goto :goto_5

    .line 111
    :cond_1
    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 114
    goto :goto_3

    .line 115
    :catchall_2
    move-exception p1

    .line 116
    goto :goto_4

    .line 117
    :catch_1
    move-exception p1

    .line 118
    move-object v5, v4

    .line 119
    :goto_2
    :try_start_4
    const-string v1, "ApnSettingsPolicyService"

    .line 121
    new-instance v6, Ljava/lang/StringBuilder;

    .line 123
    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 126
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    move-result-object p1

    .line 133
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 136
    if-eqz v5, :cond_1

    .line 138
    :try_start_5
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 141
    goto :goto_1

    .line 142
    :goto_3
    monitor-exit p0

    .line 143
    return-object v4

    .line 144
    :goto_4
    if-eqz v4, :cond_2

    .line 146
    :try_start_6
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 149
    :cond_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 152
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 153
    :goto_5
    monitor-exit p0

    .line 154
    throw p1
.end method

.method public final getWhereClause()Ljava/lang/String;
    .locals 9

    .line 1
    const-string/jumbo v0, "getWhereClause"

    .line 4
    const-string v1, "ApnSettingsPolicyService"

    .line 6
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    const-string v2, "NOT (type=\'ia\' AND (apn=\"\" OR apn IS NULL))"

    .line 13
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    .line 19
    move-result v2

    .line 20
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    .line 23
    move-result v2

    .line 24
    const-string/jumbo v3, "ril.ICC_TYPE0"

    .line 27
    const/4 v4, 0x0

    .line 28
    invoke-static {v4, v3}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getTelephonyProperty(ILjava/lang/String;)Ljava/lang/String;

    .line 31
    move-result-object v3

    .line 32
    iget-object v5, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    .line 34
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 37
    move-result-object v5

    .line 38
    const-string/jumbo v6, "phone1_on"

    .line 41
    const/4 v7, 0x1

    .line 42
    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 45
    move-result v5

    .line 46
    const-string v6, "0"

    .line 48
    if-ne v5, v7, :cond_0

    .line 50
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    move-result v3

    .line 54
    if-nez v3, :cond_0

    .line 56
    move v3, v7

    .line 57
    goto :goto_0

    .line 58
    :cond_0
    move v3, v4

    .line 59
    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    .line 62
    move-result-object v5

    .line 63
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    .line 66
    move-result v5

    .line 67
    const-string/jumbo v8, "simSlotCnt : "

    .line 70
    invoke-static {v5, v8, v1}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 73
    if-le v5, v7, :cond_3

    .line 75
    const-string/jumbo v1, "ril.ICC_TYPE1"

    .line 78
    invoke-static {v7, v1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getTelephonyProperty(ILjava/lang/String;)Ljava/lang/String;

    .line 81
    move-result-object v1

    .line 82
    iget-object p0, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    .line 84
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 87
    move-result-object p0

    .line 88
    const-string/jumbo v5, "phone2_on"

    .line 91
    invoke-static {p0, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 94
    move-result p0

    .line 95
    if-ne p0, v7, :cond_1

    .line 97
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 100
    move-result p0

    .line 101
    if-nez p0, :cond_1

    .line 103
    move v4, v7

    .line 104
    :cond_1
    if-eqz v3, :cond_2

    .line 106
    if-nez v2, :cond_2

    .line 108
    const-string p0, " AND current = 1 "

    .line 110
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    goto :goto_1

    .line 114
    :cond_2
    if-eqz v4, :cond_4

    .line 116
    if-ne v2, v7, :cond_4

    .line 118
    const-string p0, " AND current1 = 1 "

    .line 120
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    goto :goto_1

    .line 124
    :cond_3
    if-eqz v3, :cond_4

    .line 126
    if-nez v2, :cond_4

    .line 128
    const-string p0, " AND current = 1"

    .line 130
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    :cond_4
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    move-result-object p0

    .line 137
    return-object p0
.end method

.method public final isValidApnId(J)Z
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-wide/from16 v1, p1

    .line 5
    const-string/jumbo v3, "isValidApnId() row count : "

    .line 8
    const-string/jumbo v4, "isValidApnId: CTC card! numeric = "

    .line 11
    const-string/jumbo v5, "isValidApnId: simOp = "

    .line 14
    const-wide/16 v6, 0x0

    .line 16
    cmp-long v6, v6, v1

    .line 18
    const-string v7, "ApnSettingsPolicyService"

    .line 20
    const/4 v8, 0x0

    .line 21
    if-gez v6, :cond_6

    .line 23
    const-string/jumbo v6, "numeric"

    .line 26
    const-string/jumbo v9, "type"

    .line 29
    const-string v10, "_id"

    .line 31
    filled-new-array {v10, v6, v9}, [Ljava/lang/String;

    .line 34
    move-result-object v13

    .line 35
    const/4 v6, 0x0

    .line 36
    :try_start_0
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    .line 39
    move-result v9

    .line 40
    iget-object v10, v0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    .line 42
    const-string/jumbo v11, "phone"

    .line 45
    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 48
    move-result-object v10

    .line 49
    check-cast v10, Landroid/telephony/TelephonyManager;

    .line 51
    invoke-virtual {v10, v9}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    .line 54
    move-result-object v10

    .line 55
    invoke-static {v9}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    .line 58
    move-result v9

    .line 59
    const-string/jumbo v11, "ril.simoperator"

    .line 62
    const-string v12, "ETC"

    .line 64
    invoke-static {v9, v11, v12}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 67
    move-result-object v11

    .line 68
    new-instance v12, Ljava/lang/StringBuilder;

    .line 70
    invoke-direct {v12, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    const-string v5, ", numeric = "

    .line 78
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    move-result-object v5

    .line 88
    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    const-string v5, "CTC"

    .line 93
    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    move-result v5

    .line 97
    if-eqz v5, :cond_1

    .line 99
    const-string/jumbo v5, "gsm.sim.cdmaoperator.numeric"

    .line 102
    const-string v10, ""

    .line 104
    invoke-static {v9, v5, v10}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 107
    move-result-object v5

    .line 108
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 111
    move-result v9

    .line 112
    if-eqz v9, :cond_0

    .line 114
    const-string v9, "46003"

    .line 116
    move-object v10, v9

    .line 117
    goto :goto_0

    .line 118
    :catchall_0
    move-exception v0

    .line 119
    goto/16 :goto_5

    .line 121
    :catch_0
    move-exception v0

    .line 122
    goto/16 :goto_4

    .line 124
    :cond_0
    move-object v10, v5

    .line 125
    :goto_0
    new-instance v9, Ljava/lang/StringBuilder;

    .line 127
    invoke-direct {v9, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 130
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    const-string v4, ", cdmaOperator = "

    .line 135
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    move-result-object v4

    .line 145
    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_1
    sget-object v4, Lcom/android/server/enterprise/apn/ApnSettingsPolicy$Carriers;->CONTENT_URI:Landroid/net/Uri;

    .line 150
    invoke-static {v4, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    .line 153
    move-result-object v12

    .line 154
    iget-object v0, v0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    .line 156
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 159
    move-result-object v11

    .line 160
    const/4 v15, 0x0

    .line 161
    const/16 v16, 0x0

    .line 163
    const/4 v14, 0x0

    .line 164
    invoke-virtual/range {v11 .. v16}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 167
    move-result-object v6

    .line 168
    if-eqz v6, :cond_2

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    .line 172
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 175
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    .line 178
    move-result v3

    .line 179
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 182
    const-string v3, " for apId : "

    .line 184
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 190
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 193
    move-result-object v0

    .line 194
    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 200
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    move v1, v0

    .line 202
    goto :goto_1

    .line 203
    :cond_2
    move v1, v8

    .line 204
    :goto_1
    if-eqz v1, :cond_3

    .line 206
    const/4 v0, 0x1

    .line 207
    :try_start_1
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 210
    move-result-object v0

    .line 211
    invoke-virtual {v0, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 214
    move-result v0

    .line 215
    if-eqz v0, :cond_4

    .line 217
    const/4 v0, 0x2

    .line 218
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 221
    move-result-object v2

    .line 222
    if-eqz v2, :cond_4

    .line 224
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 227
    move-result-object v2

    .line 228
    const-string/jumbo v3, "dun"

    .line 231
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 234
    move-result v2

    .line 235
    if-nez v2, :cond_4

    .line 237
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 240
    move-result-object v0

    .line 241
    const-string/jumbo v2, "mms"

    .line 244
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 247
    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 248
    if-eqz v0, :cond_3

    .line 250
    goto :goto_2

    .line 251
    :catch_1
    move-exception v0

    .line 252
    move v8, v1

    .line 253
    goto :goto_4

    .line 254
    :cond_3
    move v8, v1

    .line 255
    :cond_4
    :goto_2
    if-eqz v6, :cond_7

    .line 257
    :goto_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 260
    goto :goto_6

    .line 261
    :goto_4
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 264
    if-eqz v6, :cond_7

    .line 266
    goto :goto_3

    .line 267
    :goto_5
    if-eqz v6, :cond_5

    .line 269
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 272
    :cond_5
    throw v0

    .line 273
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 275
    const-string/jumbo v3, "isValidApnId() : invalid apId : "

    .line 278
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 281
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 284
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 287
    move-result-object v0

    .line 288
    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    :cond_7
    :goto_6
    return v8
.end method

.method public final notifyToAddSystemService(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onAdminAdded(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onAdminRemoved(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onPreAdminRemoval(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final declared-synchronized setPreferredApn(Lcom/samsung/android/knox/ContextInfo;J)Z
    .locals 6

    .line 1
    const-string/jumbo v0, "setPreferedAp() row count : "

    .line 4
    const-string/jumbo v1, "setPreferedAp() : invalid ap Id "

    .line 7
    monitor-enter p0

    .line 8
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->enforceOwnerOnlyAndApnPermission(Lcom/samsung/android/knox/ContextInfo;)V

    .line 11
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 14
    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 15
    const-wide/16 v4, 0x0

    .line 17
    cmp-long p1, v4, p2

    .line 19
    const/4 v4, 0x0

    .line 20
    if-eqz p1, :cond_0

    .line 22
    if-lez p1, :cond_0

    .line 24
    :try_start_1
    const-string p1, "ApnSettingsPolicyService"

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    .line 28
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    move-result-object p2

    .line 38
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    goto :goto_0

    .line 42
    :catchall_0
    move-exception p1

    .line 43
    goto :goto_3

    .line 44
    :catch_0
    move-exception p1

    .line 45
    goto :goto_1

    .line 46
    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->isValidApnId(J)Z

    .line 49
    move-result v1

    .line 50
    if-eqz v1, :cond_3

    .line 52
    new-instance v1, Landroid/content/ContentValues;

    .line 54
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 57
    const-string v5, "apn_id"

    .line 59
    if-nez p1, :cond_1

    .line 61
    const-wide/16 p2, -0x1

    .line 63
    :cond_1
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 66
    move-result-object p1

    .line 67
    invoke-virtual {v1, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 70
    iget-object p1, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 75
    move-result-object p1

    .line 76
    sget-object p2, Lcom/android/server/enterprise/apn/ApnSettingsPolicy$Carriers;->PREFERAPN_URI:Landroid/net/Uri;

    .line 78
    const/4 p3, 0x0

    .line 79
    invoke-virtual {p1, p2, v1, p3, p3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 82
    move-result p1

    .line 83
    if-lez p1, :cond_2

    .line 85
    const/4 v4, 0x1

    .line 86
    :cond_2
    const-string p2, "ApnSettingsPolicyService"

    .line 88
    new-instance p3, Ljava/lang/StringBuilder;

    .line 90
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    move-result-object p1

    .line 100
    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    :cond_3
    :goto_0
    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 106
    goto :goto_2

    .line 107
    :catchall_1
    move-exception p1

    .line 108
    goto :goto_4

    .line 109
    :goto_1
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 112
    goto :goto_0

    .line 113
    :goto_2
    monitor-exit p0

    .line 114
    return v4

    .line 115
    :goto_3
    :try_start_4
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 118
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 119
    :goto_4
    monitor-exit p0

    .line 120
    throw p1
.end method

.method public final systemReady()V
    .locals 0

    .line 1
    return-void
.end method
