.class public final Lcom/samsung/android/server/pm/appcategory/AppCategoryListParserWithScpm;
.super Lcom/samsung/android/server/pm/appcategory/AppCategoryListParser;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final FILE_PATH:Ljava/lang/String;

.field public static final NAME_PATTERN:Ljava/util/regex/Pattern;

.field public static final TEMP_FILE_PATH:Ljava/lang/String;


# instance fields
.field public mShouldDecode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, "/system/appcategory/"

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string/jumbo v1, "tempcategory.xml"

    .line 27
    .line 28
    .line 29
    invoke-static {v0, v1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    sput-object v1, Lcom/samsung/android/server/pm/appcategory/AppCategoryListParserWithScpm;->TEMP_FILE_PATH:Ljava/lang/String;

    .line 34
    .line 35
    const-string/jumbo v1, "pm_app_category_from_scpm.xml"

    .line 36
    .line 37
    .line 38
    invoke-static {v0, v1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    sput-object v0, Lcom/samsung/android/server/pm/appcategory/AppCategoryListParserWithScpm;->FILE_PATH:Ljava/lang/String;

    .line 43
    .line 44
    const-string/jumbo v0, "name=\"(.+)\""

    .line 45
    .line 46
    .line 47
    const/16 v1, 0x20

    .line 48
    .line 49
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    sput-object v0, Lcom/samsung/android/server/pm/appcategory/AppCategoryListParserWithScpm;->NAME_PATTERN:Ljava/util/regex/Pattern;

    .line 54
    .line 55
    return-void
.end method

.method public static getNameInPattern(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/server/pm/appcategory/AppCategoryListParserWithScpm;->NAME_PATTERN:Ljava/util/regex/Pattern;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    add-int/lit8 v1, v1, 0x6

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    add-int/lit8 v0, v0, -0x1

    .line 24
    .line 25
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 p0, 0x0

    .line 31
    :goto_0
    return-object p0
.end method

.method public static updateParserIfNeeded(Ljava/io/FileDescriptor;)Lcom/samsung/android/server/pm/appcategory/AppCategoryListParserWithScpm;
    .locals 18

    .line 1
    const-string v1, ", oldVersion="

    .line 2
    .line 3
    const-string/jumbo v2, "updateParserIfNeeded: newVersion="

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/io/File;

    .line 7
    .line 8
    new-instance v3, Ljava/io/File;

    .line 9
    .line 10
    sget-object v4, Lcom/samsung/android/server/pm/appcategory/AppCategoryListParserWithScpm;->TEMP_FILE_PATH:Ljava/lang/String;

    .line 11
    .line 12
    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    const/4 v5, 0x0

    .line 27
    const-string v6, "AppCategoryListParserWithScpm"

    .line 28
    .line 29
    if-nez v3, :cond_0

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_0

    .line 36
    .line 37
    const-string v0, "Failed to mkdirs"

    .line 38
    .line 39
    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    return-object v5

    .line 43
    :cond_0
    const-wide/32 v7, 0x78a41d35    # 9.999993913E-315

    .line 44
    .line 45
    .line 46
    const-string/jumbo v3, "persist.sys.package_feature.version.appcategory"

    .line 47
    .line 48
    .line 49
    invoke-static {v3, v7, v8}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    .line 50
    .line 51
    .line 52
    move-result-wide v7

    .line 53
    const-wide/16 v9, 0x0

    .line 54
    .line 55
    :try_start_0
    new-instance v11, Ljava/io/BufferedReader;

    .line 56
    .line 57
    new-instance v0, Ljava/io/FileReader;

    .line 58
    .line 59
    move-object/from16 v12, p0

    .line 60
    .line 61
    invoke-direct {v0, v12}, Ljava/io/FileReader;-><init>(Ljava/io/FileDescriptor;)V

    .line 62
    .line 63
    .line 64
    invoke-direct {v11, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_f

    .line 65
    .line 66
    .line 67
    :try_start_1
    new-instance v12, Ljava/io/BufferedWriter;

    .line 68
    .line 69
    new-instance v0, Ljava/io/FileWriter;

    .line 70
    .line 71
    invoke-direct {v0, v4}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-direct {v12, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_d

    .line 75
    .line 76
    .line 77
    const/4 v0, 0x0

    .line 78
    :goto_0
    :try_start_2
    invoke-virtual {v11}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_b

    .line 82
    if-eqz v13, :cond_5

    .line 83
    .line 84
    add-int/lit8 v14, v0, 0x1

    .line 85
    .line 86
    :try_start_3
    const-string/jumbo v0, "version name"

    .line 87
    .line 88
    .line 89
    invoke-virtual {v13, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 90
    .line 91
    .line 92
    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    .line 93
    if-eqz v0, :cond_3

    .line 94
    .line 95
    :try_start_4
    invoke-static {v13}, Lcom/samsung/android/server/pm/appcategory/AppCategoryListParserWithScpm;->getNameInPattern(Ljava/lang/String;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 104
    .line 105
    .line 106
    move-result-wide v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 107
    cmp-long v0, v9, v7

    .line 108
    .line 109
    if-gtz v0, :cond_2

    .line 110
    .line 111
    :try_start_5
    invoke-virtual {v12}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 112
    .line 113
    .line 114
    :try_start_6
    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 115
    .line 116
    .line 117
    invoke-static {v2, v9, v10, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    .line 130
    .line 131
    new-instance v0, Ljava/io/File;

    .line 132
    .line 133
    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    if-eqz v1, :cond_1

    .line 141
    .line 142
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 143
    .line 144
    .line 145
    :cond_1
    return-object v5

    .line 146
    :catchall_0
    move-exception v0

    .line 147
    goto/16 :goto_c

    .line 148
    .line 149
    :catchall_1
    move-exception v0

    .line 150
    :goto_1
    move-object v3, v0

    .line 151
    goto/16 :goto_a

    .line 152
    .line 153
    :cond_2
    move-wide/from16 v16, v7

    .line 154
    .line 155
    goto :goto_6

    .line 156
    :catchall_2
    move-exception v0

    .line 157
    :goto_2
    move-object v3, v0

    .line 158
    goto/16 :goto_8

    .line 159
    .line 160
    :cond_3
    :try_start_7
    const-string/jumbo v0, "package name"

    .line 161
    .line 162
    .line 163
    invoke-virtual {v13, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 164
    .line 165
    .line 166
    move-result v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    .line 167
    if-eqz v0, :cond_2

    .line 168
    .line 169
    :try_start_8
    invoke-static {v13}, Lcom/samsung/android/server/pm/appcategory/AppCategoryListParserWithScpm;->getNameInPattern(Ljava/lang/String;)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    if-nez v0, :cond_4

    .line 174
    .line 175
    move-object v15, v5

    .line 176
    move-wide/from16 v16, v7

    .line 177
    .line 178
    goto :goto_3

    .line 179
    :cond_4
    new-instance v15, Ljava/lang/String;

    .line 180
    .line 181
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 182
    .line 183
    .line 184
    move-result-object v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 185
    move-wide/from16 v16, v7

    .line 186
    .line 187
    const/4 v7, 0x2

    .line 188
    :try_start_9
    invoke-static {v5, v7}, Landroid/util/Base64;->encode([BI)[B

    .line 189
    .line 190
    .line 191
    move-result-object v5

    .line 192
    invoke-direct {v15, v5}, Ljava/lang/String;-><init>([B)V

    .line 193
    .line 194
    .line 195
    :goto_3
    invoke-virtual {v13, v0, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v13
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 199
    goto :goto_6

    .line 200
    :catchall_3
    move-exception v0

    .line 201
    goto :goto_4

    .line 202
    :catchall_4
    move-exception v0

    .line 203
    move-wide/from16 v16, v7

    .line 204
    .line 205
    :goto_4
    :try_start_a
    new-instance v5, Ljava/lang/StringBuilder;

    .line 206
    .line 207
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 208
    .line 209
    .line 210
    const-string v7, "Failed line="

    .line 211
    .line 212
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    const-string v7, ", e="

    .line 219
    .line 220
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    .line 232
    .line 233
    goto :goto_6

    .line 234
    :catchall_5
    move-exception v0

    .line 235
    move-object v3, v0

    .line 236
    move-wide/from16 v7, v16

    .line 237
    .line 238
    :goto_5
    const/4 v5, 0x0

    .line 239
    goto/16 :goto_8

    .line 240
    .line 241
    :goto_6
    invoke-virtual {v12, v13}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v12}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 245
    .line 246
    .line 247
    move v0, v14

    .line 248
    move-wide/from16 v7, v16

    .line 249
    .line 250
    const/4 v5, 0x0

    .line 251
    goto/16 :goto_0

    .line 252
    .line 253
    :catchall_6
    move-exception v0

    .line 254
    move-wide/from16 v16, v7

    .line 255
    .line 256
    :goto_7
    move-object v3, v0

    .line 257
    goto :goto_5

    .line 258
    :cond_5
    move-wide/from16 v16, v7

    .line 259
    .line 260
    :try_start_b
    invoke-virtual {v12}, Ljava/io/BufferedWriter;->flush()V

    .line 261
    .line 262
    .line 263
    new-instance v0, Ljava/io/File;

    .line 264
    .line 265
    sget-object v5, Lcom/samsung/android/server/pm/appcategory/AppCategoryListParserWithScpm;->FILE_PATH:Ljava/lang/String;

    .line 266
    .line 267
    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 271
    .line 272
    .line 273
    move-result v5
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_a

    .line 274
    if-eqz v5, :cond_6

    .line 275
    .line 276
    :try_start_c
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 277
    .line 278
    .line 279
    :cond_6
    :try_start_d
    new-instance v5, Ljava/io/File;

    .line 280
    .line 281
    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    invoke-virtual {v5, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 285
    .line 286
    .line 287
    move-result v0

    .line 288
    if-eqz v0, :cond_7

    .line 289
    .line 290
    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v0

    .line 294
    invoke-static {v3, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    new-instance v3, Lcom/samsung/android/server/pm/appcategory/AppCategoryListParserWithScpm;

    .line 298
    .line 299
    invoke-direct {v3}, Lcom/samsung/android/server/pm/appcategory/AppCategoryListParser;-><init>()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_a

    .line 300
    .line 301
    .line 302
    :try_start_e
    invoke-virtual {v3}, Lcom/samsung/android/server/pm/appcategory/AppCategoryListParserWithScpm;->parseAppCategoryList()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_9

    .line 303
    .line 304
    .line 305
    :try_start_f
    invoke-virtual {v12}, Ljava/io/BufferedWriter;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    .line 306
    .line 307
    .line 308
    :try_start_10
    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    .line 309
    .line 310
    .line 311
    invoke-static {v2, v9, v10, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    .line 313
    .line 314
    move-result-object v0

    .line 315
    move-wide/from16 v7, v16

    .line 316
    .line 317
    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 318
    .line 319
    .line 320
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v0

    .line 324
    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    .line 326
    .line 327
    new-instance v0, Ljava/io/File;

    .line 328
    .line 329
    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 330
    .line 331
    .line 332
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 333
    .line 334
    .line 335
    move-result v1

    .line 336
    if-eqz v1, :cond_9

    .line 337
    .line 338
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 339
    .line 340
    .line 341
    goto :goto_d

    .line 342
    :catchall_7
    move-exception v0

    .line 343
    move-wide/from16 v7, v16

    .line 344
    .line 345
    move-object v5, v3

    .line 346
    goto :goto_c

    .line 347
    :catchall_8
    move-exception v0

    .line 348
    move-wide/from16 v7, v16

    .line 349
    .line 350
    move-object v5, v3

    .line 351
    goto/16 :goto_1

    .line 352
    .line 353
    :catchall_9
    move-exception v0

    .line 354
    move-wide/from16 v7, v16

    .line 355
    .line 356
    move-object v5, v3

    .line 357
    goto/16 :goto_2

    .line 358
    .line 359
    :catchall_a
    move-exception v0

    .line 360
    move-wide/from16 v7, v16

    .line 361
    .line 362
    goto :goto_7

    .line 363
    :cond_7
    move-wide/from16 v7, v16

    .line 364
    .line 365
    :try_start_11
    new-instance v0, Ljava/lang/RuntimeException;

    .line 366
    .line 367
    const-string v3, "Failed to renameTo."

    .line 368
    .line 369
    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 370
    .line 371
    .line 372
    throw v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_b

    .line 373
    :catchall_b
    move-exception v0

    .line 374
    goto :goto_7

    .line 375
    :goto_8
    :try_start_12
    invoke-virtual {v12}, Ljava/io/BufferedWriter;->close()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_c

    .line 376
    .line 377
    .line 378
    goto :goto_9

    .line 379
    :catchall_c
    move-exception v0

    .line 380
    move-object v12, v0

    .line 381
    :try_start_13
    invoke-virtual {v3, v12}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 382
    .line 383
    .line 384
    :goto_9
    throw v3
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    .line 385
    :catchall_d
    move-exception v0

    .line 386
    move-object v3, v0

    .line 387
    const/4 v5, 0x0

    .line 388
    :goto_a
    :try_start_14
    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_e

    .line 389
    .line 390
    .line 391
    goto :goto_b

    .line 392
    :catchall_e
    move-exception v0

    .line 393
    move-object v11, v0

    .line 394
    :try_start_15
    invoke-virtual {v3, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 395
    .line 396
    .line 397
    :goto_b
    throw v3
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    .line 398
    :catchall_f
    move-exception v0

    .line 399
    const/4 v5, 0x0

    .line 400
    :goto_c
    :try_start_16
    const-string v3, "Failed to updateParserIfNeeded."

    .line 401
    .line 402
    invoke-static {v6, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_10

    .line 403
    .line 404
    .line 405
    invoke-static {v2, v9, v10, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    .line 407
    .line 408
    move-result-object v0

    .line 409
    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 410
    .line 411
    .line 412
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 413
    .line 414
    .line 415
    move-result-object v0

    .line 416
    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    .line 418
    .line 419
    new-instance v0, Ljava/io/File;

    .line 420
    .line 421
    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 422
    .line 423
    .line 424
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 425
    .line 426
    .line 427
    move-result v1

    .line 428
    if-eqz v1, :cond_8

    .line 429
    .line 430
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 431
    .line 432
    .line 433
    :cond_8
    move-object v3, v5

    .line 434
    :cond_9
    :goto_d
    return-object v3

    .line 435
    :catchall_10
    move-exception v0

    .line 436
    invoke-static {v2, v9, v10, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    .line 438
    .line 439
    move-result-object v1

    .line 440
    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 441
    .line 442
    .line 443
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 444
    .line 445
    .line 446
    move-result-object v1

    .line 447
    invoke-static {v6, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    .line 449
    .line 450
    new-instance v1, Ljava/io/File;

    .line 451
    .line 452
    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 453
    .line 454
    .line 455
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 456
    .line 457
    .line 458
    move-result v2

    .line 459
    if-eqz v2, :cond_a

    .line 460
    .line 461
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 462
    .line 463
    .line 464
    :cond_a
    throw v0
.end method


# virtual methods
.method public final parseAppCategoryList()V
    .locals 9

    .line 1
    const-string/jumbo v0, "parseAppCategoryList: ScpmVersion="

    .line 2
    .line 3
    .line 4
    new-instance v1, Ljava/io/File;

    .line 5
    .line 6
    sget-object v2, Lcom/samsung/android/server/pm/appcategory/AppCategoryListParserWithScpm;->FILE_PATH:Ljava/lang/String;

    .line 7
    .line 8
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const-wide/32 v3, 0x78a41d35    # 9.999993913E-315

    .line 16
    .line 17
    .line 18
    const-string/jumbo v5, "persist.sys.package_feature.version.appcategory"

    .line 19
    .line 20
    .line 21
    const-string v6, "AppCategoryListParserWithScpm"

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    iput-boolean v1, p0, Lcom/samsung/android/server/pm/appcategory/AppCategoryListParserWithScpm;->mShouldDecode:Z

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/samsung/android/server/pm/appcategory/AppCategoryListParser;->parseAppCategoryList(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    new-instance v2, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-static {v5, v3, v4}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    .line 38
    .line 39
    .line 40
    move-result-wide v7

    .line 41
    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    .line 50
    .line 51
    iput-boolean v1, p0, Lcom/samsung/android/server/pm/appcategory/AppCategoryListParserWithScpm;->mShouldDecode:Z

    .line 52
    .line 53
    return-void

    .line 54
    :catchall_0
    move-exception v0

    .line 55
    goto :goto_0

    .line 56
    :catch_0
    move-exception v0

    .line 57
    :try_start_1
    const-string v2, "Failed to read SCPM file."

    .line 58
    .line 59
    invoke-static {v6, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    .line 61
    .line 62
    iput-boolean v1, p0, Lcom/samsung/android/server/pm/appcategory/AppCategoryListParserWithScpm;->mShouldDecode:Z

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :goto_0
    iput-boolean v1, p0, Lcom/samsung/android/server/pm/appcategory/AppCategoryListParserWithScpm;->mShouldDecode:Z

    .line 66
    .line 67
    throw v0

    .line 68
    :cond_0
    :goto_1
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-static {v5, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    const/4 v0, 0x0

    .line 76
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/pm/appcategory/AppCategoryListParser;->parseAppCategoryList(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    const-string p0, "SCPM file was not existed or corrupted. Read system file"

    .line 80
    .line 81
    invoke-static {v6, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method public final parsePackages(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/samsung/android/server/pm/appcategory/AppCategoryListParser;->parsePackages(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-boolean p0, p0, Lcom/samsung/android/server/pm/appcategory/AppCategoryListParserWithScpm;->mShouldDecode:Z

    .line 6
    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    return-object p1

    .line 10
    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    check-cast p1, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Ljava/lang/String;

    .line 32
    .line 33
    if-nez v0, :cond_1

    .line 34
    .line 35
    const/4 v0, 0x0

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    new-instance v1, Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    const/4 v2, 0x2

    .line 44
    invoke-static {v0, v2}, Landroid/util/Base64;->decode([BI)[B

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 49
    .line 50
    .line 51
    move-object v0, v1

    .line 52
    :goto_1
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    return-object p0
.end method

.method public final restoreToSystemFile()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/samsung/android/server/pm/appcategory/AppCategoryListParserWithScpm;->mShouldDecode:Z

    .line 3
    .line 4
    const-wide/32 v0, 0x78a41d35    # 9.999993913E-315

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string/jumbo v1, "persist.sys.package_feature.version.appcategory"

    .line 12
    .line 13
    .line 14
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-super {p0}, Lcom/samsung/android/server/pm/appcategory/AppCategoryListParser;->parseAppCategoryList()V

    .line 18
    .line 19
    .line 20
    const-string p0, "AppCategoryListParserWithScpm"

    .line 21
    .line 22
    const-string v0, "SCPM file might be corrupted. Read system file instead"

    .line 23
    .line 24
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    return-void
.end method
