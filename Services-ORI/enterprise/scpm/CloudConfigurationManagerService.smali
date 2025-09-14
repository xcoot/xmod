.class public final Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService;
.super Lcom/samsung/android/knox/localservice/CloudConfigurationManagerInternal;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field public final mPMS:Landroid/content/pm/IPackageManager;

.field public mRetryNumber:I

.field public mScpmBundle:Landroid/os/Bundle;

.field public mScpmToken:Ljava/lang/String;


# direct methods
.method public static -$$Nest$mtryRegister(Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, "CloudConfigurationManagerService"

    .line 5
    .line 6
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService;->registerScpm()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    const-string/jumbo v1, "tryRegister - register success"

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception v1

    .line 20
    new-instance v2, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string v3, "Failed to tryRegister "

    .line 23
    .line 24
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    const-string/jumbo v2, "tryRegister - register fail, retryNumber is "

    .line 44
    .line 45
    .line 46
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget v2, p0, Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService;->mRetryNumber:I

    .line 50
    .line 51
    invoke-static {v1, v2, v0}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget v0, p0, Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService;->mRetryNumber:I

    .line 55
    .line 56
    add-int/lit8 v1, v0, -0x1

    .line 57
    .line 58
    iput v1, p0, Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService;->mRetryNumber:I

    .line 59
    .line 60
    if-lez v0, :cond_1

    .line 61
    .line 62
    new-instance v0, Landroid/os/Handler;

    .line 63
    .line 64
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 65
    .line 66
    .line 67
    new-instance v1, Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService$2;

    .line 68
    .line 69
    const/4 v2, 0x0

    .line 70
    invoke-direct {v1, v2, p0}, Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService$2;-><init>(ILjava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    const-wide/16 v2, 0x7530

    .line 74
    .line 75
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 76
    .line 77
    .line 78
    :cond_1
    :goto_0
    return-void
.end method

.method public static -$$Nest$mupdateConfiguration(Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const-string/jumbo v2, "pkgName"

    .line 9
    .line 10
    .line 11
    const-string v3, ";"

    .line 12
    .line 13
    const-string v4, "ENT_APP_MGMT_RT"

    .line 14
    .line 15
    const-string v5, "Resource isn\'t closed"

    .line 16
    .line 17
    const-string v6, "CloudConfigurationManagerService"

    .line 18
    .line 19
    const-string v7, "It can\'t get the configuration data : "

    .line 20
    .line 21
    const-string/jumbo v8, "content://com.samsung.android.scpm.policy/"

    .line 22
    .line 23
    .line 24
    new-instance v9, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    const/4 v10, 0x0

    .line 30
    :try_start_0
    new-instance v11, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v11, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object v12, v0, Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService;->mScpmToken:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v12, "/"

    .line 41
    .line 42
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v11

    .line 52
    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 53
    .line 54
    .line 55
    move-result-object v11

    .line 56
    iget-object v12, v0, Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService;->mContext:Landroid/content/Context;

    .line 57
    .line 58
    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 59
    .line 60
    .line 61
    move-result-object v12

    .line 62
    const-string/jumbo v13, "r"

    .line 63
    .line 64
    .line 65
    invoke-virtual {v12, v11, v13}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    .line 66
    .line 67
    .line 68
    move-result-object v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 69
    const-string v12, ","

    .line 70
    .line 71
    if-nez v11, :cond_0

    .line 72
    .line 73
    :try_start_1
    new-instance v1, Landroid/os/Bundle;

    .line 74
    .line 75
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 76
    .line 77
    .line 78
    iget-object v0, v0, Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService;->mContext:Landroid/content/Context;

    .line 79
    .line 80
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    const-string/jumbo v2, "getLastError"

    .line 89
    .line 90
    .line 91
    const-string v3, "android"

    .line 92
    .line 93
    invoke-virtual {v0, v1, v2, v3, v10}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    const-string/jumbo v1, "rcode"

    .line 98
    .line 99
    .line 100
    const/4 v2, -0x1

    .line 101
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    const-string/jumbo v2, "rmsg"

    .line 106
    .line 107
    .line 108
    const-string v3, ""

    .line 109
    .line 110
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 128
    .line 129
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 136
    .line 137
    check-cast v0, Ljava/lang/String;

    .line 138
    .line 139
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    invoke-static {v6, v0}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 147
    .line 148
    .line 149
    if-eqz v11, :cond_7

    .line 150
    .line 151
    :goto_0
    :try_start_2
    invoke-virtual {v11}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 152
    .line 153
    .line 154
    goto/16 :goto_5

    .line 155
    .line 156
    :catch_0
    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    .line 158
    .line 159
    goto/16 :goto_5

    .line 160
    .line 161
    :catchall_0
    move-exception v0

    .line 162
    goto/16 :goto_6

    .line 163
    .line 164
    :catch_1
    move-exception v0

    .line 165
    goto/16 :goto_4

    .line 166
    .line 167
    :cond_0
    :try_start_3
    new-instance v7, Ljava/io/BufferedReader;

    .line 168
    .line 169
    new-instance v8, Ljava/io/InputStreamReader;

    .line 170
    .line 171
    new-instance v13, Ljava/io/FileInputStream;

    .line 172
    .line 173
    invoke-virtual {v11}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 174
    .line 175
    .line 176
    move-result-object v14

    .line 177
    invoke-direct {v13, v14}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 178
    .line 179
    .line 180
    const-string v14, "UTF-8"

    .line 181
    .line 182
    invoke-direct {v8, v13, v14}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    invoke-direct {v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 186
    .line 187
    .line 188
    :try_start_4
    const-string/jumbo v8, "knox-sdk-mam-configuration"

    .line 189
    .line 190
    .line 191
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    move-result v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 195
    const-string/jumbo v8, "updateConfiguration: "

    .line 196
    .line 197
    .line 198
    if-eqz v1, :cond_3

    .line 199
    .line 200
    :catch_2
    :cond_1
    :goto_1
    :try_start_5
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    if-eqz v1, :cond_5

    .line 205
    .line 206
    invoke-virtual {v1, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    const/4 v9, 0x1

    .line 211
    aget-object v9, v1, v9

    .line 212
    .line 213
    invoke-virtual {v9, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v9

    .line 217
    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 218
    .line 219
    .line 220
    move-result-object v9

    .line 221
    const/4 v10, 0x2

    .line 222
    aget-object v10, v1, v10

    .line 223
    .line 224
    invoke-virtual {v10, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v10

    .line 228
    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 229
    .line 230
    .line 231
    move-result-object v10

    .line 232
    const/4 v13, 0x0

    .line 233
    aget-object v1, v1, v13

    .line 234
    .line 235
    invoke-static {v9}, Lcom/android/server/enterprise/utils/Utils;->serializeObject(Ljava/lang/Object;)[B

    .line 236
    .line 237
    .line 238
    move-result-object v9

    .line 239
    invoke-static {v10}, Lcom/android/server/enterprise/utils/Utils;->serializeObject(Ljava/lang/Object;)[B

    .line 240
    .line 241
    .line 242
    move-result-object v10

    .line 243
    new-instance v14, Ljava/lang/StringBuilder;

    .line 244
    .line 245
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v14

    .line 258
    invoke-static {v6, v14}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    new-instance v14, Landroid/content/ContentValues;

    .line 262
    .line 263
    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 264
    .line 265
    .line 266
    const-string/jumbo v15, "signature"

    .line 267
    .line 268
    .line 269
    invoke-virtual {v14, v15, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 270
    .line 271
    .line 272
    const-string/jumbo v9, "permission"

    .line 273
    .line 274
    .line 275
    invoke-virtual {v14, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 276
    .line 277
    .line 278
    new-instance v9, Landroid/content/ContentValues;

    .line 279
    .line 280
    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 281
    .line 282
    .line 283
    invoke-virtual {v9, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    iget-object v10, v0, Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 287
    .line 288
    invoke-virtual {v10, v4, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    .line 289
    .line 290
    .line 291
    move-result v10

    .line 292
    if-lez v10, :cond_2

    .line 293
    .line 294
    iget-object v10, v0, Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 295
    .line 296
    invoke-virtual {v10, v4, v14, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    .line 297
    .line 298
    .line 299
    goto :goto_2

    .line 300
    :catchall_1
    move-exception v0

    .line 301
    move-object v10, v7

    .line 302
    goto/16 :goto_6

    .line 303
    .line 304
    :catch_3
    move-exception v0

    .line 305
    move-object v10, v7

    .line 306
    goto :goto_4

    .line 307
    :cond_2
    invoke-virtual {v14, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    iget-object v9, v0, Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 311
    .line 312
    invoke-virtual {v9, v4, v14}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 313
    .line 314
    .line 315
    :goto_2
    :try_start_6
    iget-object v9, v0, Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService;->mContext:Landroid/content/Context;

    .line 316
    .line 317
    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 318
    .line 319
    .line 320
    move-result-object v9

    .line 321
    invoke-virtual {v9, v1, v13}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 322
    .line 323
    .line 324
    move-result-object v9
    :try_end_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 325
    if-eqz v9, :cond_1

    .line 326
    .line 327
    :try_start_7
    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService;->setLicensePermissionsForMDM(Ljava/lang/String;)V

    .line 328
    .line 329
    .line 330
    goto/16 :goto_1

    .line 331
    .line 332
    :cond_3
    :goto_3
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v1

    .line 336
    if-eqz v1, :cond_4

    .line 337
    .line 338
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    .line 340
    .line 341
    goto :goto_3

    .line 342
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 343
    .line 344
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 345
    .line 346
    .line 347
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    .line 349
    .line 350
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object v2

    .line 354
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    .line 356
    .line 357
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object v1

    .line 361
    invoke-static {v6, v1}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    .line 363
    .line 364
    iget-object v12, v0, Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 365
    .line 366
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 367
    .line 368
    .line 369
    move-result-object v17

    .line 370
    const/4 v14, 0x0

    .line 371
    const/16 v13, 0x3e8

    .line 372
    .line 373
    move-object/from16 v15, p2

    .line 374
    .line 375
    move-object/from16 v16, p3

    .line 376
    .line 377
    invoke-virtual/range {v12 .. v17}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putString(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 378
    .line 379
    .line 380
    :cond_5
    :try_start_8
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 381
    .line 382
    .line 383
    goto/16 :goto_0

    .line 384
    .line 385
    :catchall_2
    move-exception v0

    .line 386
    move-object v11, v10

    .line 387
    goto :goto_6

    .line 388
    :catch_4
    move-exception v0

    .line 389
    move-object v11, v10

    .line 390
    :goto_4
    :try_start_9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 391
    .line 392
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 393
    .line 394
    .line 395
    const-string v2, "Unknown exception : "

    .line 396
    .line 397
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    .line 399
    .line 400
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 401
    .line 402
    .line 403
    move-result-object v0

    .line 404
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    .line 406
    .line 407
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 408
    .line 409
    .line 410
    move-result-object v0

    .line 411
    invoke-static {v6, v0}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 412
    .line 413
    .line 414
    if-eqz v10, :cond_6

    .line 415
    .line 416
    :try_start_a
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    .line 417
    .line 418
    .line 419
    :cond_6
    if-eqz v11, :cond_7

    .line 420
    .line 421
    goto/16 :goto_0

    .line 422
    .line 423
    :cond_7
    :goto_5
    return-void

    .line 424
    :goto_6
    if-eqz v10, :cond_8

    .line 425
    .line 426
    :try_start_b
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V

    .line 427
    .line 428
    .line 429
    :cond_8
    if-eqz v11, :cond_9

    .line 430
    .line 431
    invoke-virtual {v11}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    .line 432
    .line 433
    .line 434
    goto :goto_7

    .line 435
    :catch_5
    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    .line 437
    .line 438
    :cond_9
    :goto_7
    throw v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/knox/localservice/CloudConfigurationManagerInternal;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService;->mScpmToken:Ljava/lang/String;

    .line 6
    .line 7
    const/4 v1, 0x3

    .line 8
    iput v1, p0, Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService;->mRetryNumber:I

    .line 9
    .line 10
    iput-object v0, p0, Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 11
    .line 12
    iput-object p1, p0, Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService;->mContext:Landroid/content/Context;

    .line 13
    .line 14
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 15
    .line 16
    invoke-direct {v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;-><init>(Landroid/content/Context;)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 20
    .line 21
    const-string/jumbo v0, "package"

    .line 22
    .line 23
    .line 24
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService;->mPMS:Landroid/content/pm/IPackageManager;

    .line 33
    .line 34
    new-instance v0, Landroid/content/IntentFilter;

    .line 35
    .line 36
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 37
    .line 38
    .line 39
    const-string/jumbo v1, "com.samsung.intent.action.LAZY_BOOT_COMPLETE"

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const-string/jumbo v1, "com.samsung.android.scpm.policy.CLEAR_DATA"

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    const-string/jumbo v1, "com.samsung.android.scpm.policy.UPDATE.knox-sdk-mam-configuration"

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    const-string/jumbo v1, "com.samsung.android.scpm.policy.UPDATE.knox-remotecontrol"

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    new-instance v1, Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService$1;

    .line 64
    .line 65
    invoke-direct {v1, p0}, Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService$1;-><init>(Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService;)V

    .line 66
    .line 67
    .line 68
    const/4 p0, 0x2

    .line 69
    invoke-virtual {p1, v1, v0, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 70
    .line 71
    .line 72
    return-void
.end method


# virtual methods
.method public final registerScpm()Z
    .locals 10

    .line 1
    const-string v0, "android"

    .line 2
    .line 3
    const-string/jumbo v1, "register fail rCode:"

    .line 4
    .line 5
    .line 6
    const-string/jumbo v2, "trying to register package: android version:38 status: "

    .line 7
    .line 8
    .line 9
    iget-object v3, p0, Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService;->mScpmToken:Ljava/lang/String;

    .line 10
    .line 11
    const/4 v4, 0x1

    .line 12
    const-string v5, "CloudConfigurationManagerService"

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    const-string/jumbo p0, "token is not null"

    .line 17
    .line 18
    .line 19
    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    return v4

    .line 23
    :cond_0
    iget-object v3, p0, Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService;->mContext:Landroid/content/Context;

    .line 24
    .line 25
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    const-string/jumbo v6, "com.samsung.android.scpm.policy"

    .line 30
    .line 31
    .line 32
    const/4 v7, 0x0

    .line 33
    invoke-virtual {v3, v6, v7}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    if-eqz v3, :cond_5

    .line 38
    .line 39
    :try_start_0
    const-string/jumbo v3, "content://com.samsung.android.scpm.policy/"

    .line 40
    .line 41
    .line 42
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    new-instance v6, Landroid/os/Bundle;

    .line 47
    .line 48
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 49
    .line 50
    .line 51
    const-string/jumbo v8, "packageName"

    .line 52
    .line 53
    .line 54
    invoke-virtual {v6, v8, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    const-string v8, "appId"

    .line 58
    .line 59
    const-string/jumbo v9, "e8kk9dj1an"

    .line 60
    .line 61
    .line 62
    invoke-virtual {v6, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    const-string/jumbo v8, "version"

    .line 66
    .line 67
    .line 68
    const-string v9, "38"

    .line 69
    .line 70
    invoke-virtual {v6, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    const-string/jumbo v8, "receiverPackageName"

    .line 74
    .line 75
    .line 76
    invoke-virtual {v6, v8, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    iget-object v0, p0, Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService;->mContext:Landroid/content/Context;

    .line 80
    .line 81
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    const-string/jumbo v8, "register"

    .line 86
    .line 87
    .line 88
    iget-object v9, p0, Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService;->mContext:Landroid/content/Context;

    .line 89
    .line 90
    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v9

    .line 94
    invoke-virtual {v0, v3, v8, v9, v6}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    iput-object v0, p0, Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService;->mScpmBundle:Landroid/os/Bundle;

    .line 99
    .line 100
    if-eqz v0, :cond_3

    .line 101
    .line 102
    const-string/jumbo v3, "result"

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    if-ne v0, v4, :cond_1

    .line 110
    .line 111
    move v0, v4

    .line 112
    goto :goto_0

    .line 113
    :cond_1
    move v0, v7

    .line 114
    :goto_0
    iget-object v3, p0, Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService;->mScpmBundle:Landroid/os/Bundle;

    .line 115
    .line 116
    const-string/jumbo v6, "token"

    .line 117
    .line 118
    .line 119
    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    iput-object v3, p0, Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService;->mScpmToken:Ljava/lang/String;

    .line 124
    .line 125
    if-eqz v0, :cond_2

    .line 126
    .line 127
    const-string/jumbo v3, "registered"

    .line 128
    .line 129
    .line 130
    goto :goto_1

    .line 131
    :catch_0
    move-exception v0

    .line 132
    goto :goto_2

    .line 133
    :cond_2
    const-string/jumbo v3, "failed"

    .line 134
    .line 135
    .line 136
    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    invoke-static {v5, v2}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    if-nez v0, :cond_3

    .line 144
    .line 145
    iget-object v0, p0, Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService;->mScpmBundle:Landroid/os/Bundle;

    .line 146
    .line 147
    const-string/jumbo v2, "rcode"

    .line 148
    .line 149
    .line 150
    const/4 v3, -0x1

    .line 151
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 152
    .line 153
    .line 154
    move-result v2

    .line 155
    const-string/jumbo v3, "rmsg"

    .line 156
    .line 157
    .line 158
    const-string v6, ""

    .line 159
    .line 160
    invoke-virtual {v0, v3, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    invoke-static {v2, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    new-instance v2, Ljava/lang/StringBuilder;

    .line 173
    .line 174
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 178
    .line 179
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    const-string v1, ","

    .line 183
    .line 184
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 188
    .line 189
    check-cast v0, Ljava/lang/String;

    .line 190
    .line 191
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    invoke-static {v5, v0}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    .line 200
    .line 201
    goto :goto_3

    .line 202
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 203
    .line 204
    const-string/jumbo v2, "cannot register package : "

    .line 205
    .line 206
    .line 207
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    invoke-static {v5, v0}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    :cond_3
    :goto_3
    iget-object p0, p0, Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService;->mScpmToken:Ljava/lang/String;

    .line 225
    .line 226
    if-eqz p0, :cond_4

    .line 227
    .line 228
    goto :goto_4

    .line 229
    :cond_4
    move v4, v7

    .line 230
    :goto_4
    return v4

    .line 231
    :cond_5
    const-string/jumbo p0, "scpm v2 is not available"

    .line 232
    .line 233
    .line 234
    invoke-static {v5, p0}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    return v7
.end method

.method public final setLicensePermissionsForMDM(Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "CloudConfigurationManagerService"

    .line 2
    .line 3
    const-string/jumbo v1, "setLicensePermissionsForMDM = ["

    .line 4
    .line 5
    .line 6
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, "]"

    .line 15
    .line 16
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-static {v0, v1}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object p0, p0, Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService;->mPMS:Landroid/content/pm/IPackageManager;

    .line 27
    .line 28
    invoke-interface {p0, p1}, Landroid/content/pm/IPackageManager;->setLicensePermissionsForMDM(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catch_0
    const-string p0, "Error while grating license permissions for MDM"

    .line 33
    .line 34
    invoke-static {v0, p0}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    :goto_0
    return-void
.end method
