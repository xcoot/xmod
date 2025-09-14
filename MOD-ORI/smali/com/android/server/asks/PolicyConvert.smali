.class public final Lcom/android/server/asks/PolicyConvert;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public TAG:Ljava/lang/String;

.field public pkgInfos:Ljava/util/Map;


# direct methods
.method public static MakeString(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-ge v0, v1, :cond_2

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-interface {p3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Ljava/util/ArrayList;

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .line 33
    .line 34
    :goto_1
    const-string v2, "DELETE"

    .line 35
    .line 36
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_1

    .line 41
    .line 42
    new-instance v2, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    const-string v3, "        <delete version=\"00000000\" datelimit=\""

    .line 45
    .line 46
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v3, "\"/>"

    .line 53
    .line 54
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_1
    const-string v2, "        <restrict version=\"00000000\" type=\""

    .line 66
    .line 67
    const-string v3, "\" datelimit=\""

    .line 68
    .line 69
    const-string v4, "\" from=\"Token\"/>"

    .line 70
    .line 71
    invoke-static {v2, p1, v3, p2, v4}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    :goto_2
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    check-cast v2, Ljava/lang/String;

    .line 83
    .line 84
    invoke-interface {p3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    add-int/lit8 v0, v0, 0x1

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_2
    return-void
.end method

.method public static parseToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    array-length p1, p0

    .line 8
    const/4 v0, 0x2

    .line 9
    if-ne p1, v0, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    aget-object p0, p0, p1

    .line 13
    .line 14
    const-string p1, "\"/>"

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    if-eqz p0, :cond_0

    .line 21
    .line 22
    const/4 p1, 0x0

    .line 23
    aget-object p0, p0, p1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 p0, 0x0

    .line 27
    :goto_0
    return-object p0
.end method


# virtual methods
.method public final convert(Ljava/lang/String;)Z
    .locals 23

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v2, "/data/system/.aasa/RestrictPackages.xml"

    .line 4
    .line 5
    const-string v3, "/data/system/.aasa/EMSupportPackages.xml"

    .line 6
    .line 7
    const-string v4, "\"/>"

    .line 8
    .line 9
    const-string v5, "/data/system/.aasa/AASApackages.xml"

    .line 10
    .line 11
    const-string v6, "\""

    .line 12
    .line 13
    const-string v7, ""

    .line 14
    .line 15
    iget-object v8, v1, Lcom/android/server/asks/PolicyConvert;->TAG:Ljava/lang/String;

    .line 16
    .line 17
    const-string/jumbo v0, "working.."

    .line 18
    .line 19
    .line 20
    invoke-static {v8, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    const-string v0, "<PM>"

    .line 24
    .line 25
    const-string v9, "<PKG>"

    .line 26
    .line 27
    const-string v10, "<AASA VERSION=\""

    .line 28
    .line 29
    const-string v11, "0"

    .line 30
    .line 31
    new-instance v12, Ljava/util/HashMap;

    .line 32
    .line 33
    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 34
    .line 35
    .line 36
    :try_start_0
    new-instance v15, Ljava/io/File;

    .line 37
    .line 38
    invoke-direct {v15, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    .line 42
    .line 43
    .line 44
    move-result v16

    .line 45
    if-eqz v16, :cond_9

    .line 46
    .line 47
    new-instance v13, Ljava/io/FileReader;

    .line 48
    .line 49
    invoke-direct {v13, v15}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 50
    .line 51
    .line 52
    :try_start_1
    new-instance v15, Ljava/io/BufferedReader;

    .line 53
    .line 54
    invoke-direct {v15, v13}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 55
    .line 56
    .line 57
    move-object/from16 v18, v7

    .line 58
    .line 59
    const/16 v17, 0x0

    .line 60
    .line 61
    :goto_0
    :try_start_2
    invoke-virtual {v15}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v14

    .line 65
    if-eqz v14, :cond_8

    .line 66
    .line 67
    invoke-virtual {v14, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 68
    .line 69
    .line 70
    move-result v19
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 71
    if-eqz v19, :cond_1

    .line 72
    .line 73
    move-object/from16 v19, v11

    .line 74
    .line 75
    :try_start_3
    invoke-static {v14, v10}, Lcom/android/server/asks/PolicyConvert;->parseToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v11

    .line 79
    move-object/from16 v20, v10

    .line 80
    .line 81
    invoke-virtual {v11, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    move-result v10
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 85
    move-object/from16 v21, v5

    .line 86
    .line 87
    const/4 v5, -0x1

    .line 88
    if-ne v10, v5, :cond_0

    .line 89
    .line 90
    :try_start_4
    invoke-virtual {v15}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 91
    .line 92
    .line 93
    goto :goto_1

    .line 94
    :catch_0
    move-exception v0

    .line 95
    move-object v5, v0

    .line 96
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 97
    .line 98
    .line 99
    :goto_1
    :try_start_5
    invoke-virtual {v13}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 100
    .line 101
    .line 102
    goto/16 :goto_12

    .line 103
    .line 104
    :catch_1
    move-exception v0

    .line 105
    move-object v5, v0

    .line 106
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 107
    .line 108
    .line 109
    goto/16 :goto_12

    .line 110
    .line 111
    :cond_0
    const/4 v5, 0x0

    .line 112
    :try_start_6
    invoke-virtual {v11, v5, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v10
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 116
    move-object v11, v10

    .line 117
    goto :goto_3

    .line 118
    :catchall_0
    move-exception v0

    .line 119
    move-object v1, v0

    .line 120
    goto/16 :goto_38

    .line 121
    .line 122
    :catch_2
    move-exception v0

    .line 123
    :goto_2
    move-object/from16 v11, v19

    .line 124
    .line 125
    goto/16 :goto_c

    .line 126
    .line 127
    :catch_3
    move-exception v0

    .line 128
    move-object/from16 v21, v5

    .line 129
    .line 130
    goto :goto_2

    .line 131
    :cond_1
    move-object/from16 v21, v5

    .line 132
    .line 133
    move-object/from16 v20, v10

    .line 134
    .line 135
    move-object/from16 v19, v11

    .line 136
    .line 137
    :goto_3
    :try_start_7
    const-string v5, "<BlockBySPD>"

    .line 138
    .line 139
    invoke-virtual {v14, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 140
    .line 141
    .line 142
    move-result v5

    .line 143
    if-eqz v5, :cond_2

    .line 144
    .line 145
    const/16 v17, 0x1

    .line 146
    .line 147
    goto :goto_4

    .line 148
    :cond_2
    const-string v5, "</BlockBySPD>"

    .line 149
    .line 150
    invoke-virtual {v14, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 151
    .line 152
    .line 153
    move-result v5

    .line 154
    if-eqz v5, :cond_3

    .line 155
    .line 156
    goto/16 :goto_a

    .line 157
    .line 158
    :cond_3
    :goto_4
    if-eqz v17, :cond_7

    .line 159
    .line 160
    invoke-virtual {v14, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 161
    .line 162
    .line 163
    move-result v5
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 164
    const-string v10, "<"

    .line 165
    .line 166
    if-eqz v5, :cond_4

    .line 167
    .line 168
    :try_start_8
    invoke-static {v14, v9}, Lcom/android/server/asks/PolicyConvert;->parseToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v5

    .line 172
    move-object/from16 v22, v9

    .line 173
    .line 174
    invoke-virtual {v5, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 175
    .line 176
    .line 177
    move-result v9
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 178
    move-object/from16 v19, v11

    .line 179
    .line 180
    const/4 v11, 0x0

    .line 181
    :try_start_9
    invoke-virtual {v5, v11, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v5

    .line 185
    goto :goto_6

    .line 186
    :catch_4
    move-exception v0

    .line 187
    :goto_5
    move-object/from16 v19, v11

    .line 188
    .line 189
    goto/16 :goto_c

    .line 190
    .line 191
    :cond_4
    move-object/from16 v22, v9

    .line 192
    .line 193
    move-object/from16 v19, v11

    .line 194
    .line 195
    move-object/from16 v5, v18

    .line 196
    .line 197
    :goto_6
    invoke-virtual {v14, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 198
    .line 199
    .line 200
    move-result v9

    .line 201
    if-eqz v9, :cond_6

    .line 202
    .line 203
    invoke-static {v14, v0}, Lcom/android/server/asks/PolicyConvert;->parseToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v9

    .line 207
    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 208
    .line 209
    .line 210
    move-result v10

    .line 211
    invoke-virtual {v12, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    move-result v11

    .line 215
    if-eqz v11, :cond_5

    .line 216
    .line 217
    invoke-virtual {v12, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object v11

    .line 221
    check-cast v11, Ljava/util/ArrayList;

    .line 222
    .line 223
    const/4 v14, 0x0

    .line 224
    invoke-virtual {v9, v14, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v9

    .line 228
    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    .line 230
    .line 231
    invoke-virtual {v12, v5, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    goto :goto_7

    .line 235
    :cond_5
    new-instance v11, Ljava/util/ArrayList;

    .line 236
    .line 237
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 238
    .line 239
    .line 240
    const/4 v14, 0x0

    .line 241
    invoke-virtual {v9, v14, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v9

    .line 245
    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    .line 247
    .line 248
    invoke-virtual {v12, v5, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 249
    .line 250
    .line 251
    :cond_6
    :goto_7
    move-object/from16 v18, v5

    .line 252
    .line 253
    move-object/from16 v11, v19

    .line 254
    .line 255
    move-object/from16 v10, v20

    .line 256
    .line 257
    move-object/from16 v5, v21

    .line 258
    .line 259
    move-object/from16 v9, v22

    .line 260
    .line 261
    goto/16 :goto_0

    .line 262
    .line 263
    :cond_7
    move-object/from16 v19, v11

    .line 264
    .line 265
    move-object/from16 v10, v20

    .line 266
    .line 267
    move-object/from16 v5, v21

    .line 268
    .line 269
    goto/16 :goto_0

    .line 270
    .line 271
    :catch_5
    move-exception v0

    .line 272
    move-object/from16 v21, v5

    .line 273
    .line 274
    goto :goto_5

    .line 275
    :cond_8
    move-object/from16 v21, v5

    .line 276
    .line 277
    move-object/from16 v19, v11

    .line 278
    .line 279
    goto :goto_a

    .line 280
    :catchall_1
    move-exception v0

    .line 281
    move-object v1, v0

    .line 282
    :goto_8
    const/4 v15, 0x0

    .line 283
    goto/16 :goto_38

    .line 284
    .line 285
    :catch_6
    move-exception v0

    .line 286
    move-object/from16 v21, v5

    .line 287
    .line 288
    :goto_9
    const/4 v15, 0x0

    .line 289
    const/16 v17, 0x0

    .line 290
    .line 291
    goto :goto_c

    .line 292
    :catchall_2
    move-exception v0

    .line 293
    move-object v1, v0

    .line 294
    const/4 v13, 0x0

    .line 295
    goto :goto_8

    .line 296
    :catch_7
    move-exception v0

    .line 297
    move-object/from16 v21, v5

    .line 298
    .line 299
    const/4 v13, 0x0

    .line 300
    goto :goto_9

    .line 301
    :cond_9
    move-object/from16 v21, v5

    .line 302
    .line 303
    const/4 v13, 0x0

    .line 304
    const/4 v15, 0x0

    .line 305
    const/16 v17, 0x0

    .line 306
    .line 307
    :goto_a
    if-eqz v15, :cond_a

    .line 308
    .line 309
    :try_start_a
    invoke-virtual {v15}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    .line 310
    .line 311
    .line 312
    goto :goto_b

    .line 313
    :catch_8
    move-exception v0

    .line 314
    move-object v5, v0

    .line 315
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 316
    .line 317
    .line 318
    :cond_a
    :goto_b
    if-eqz v13, :cond_c

    .line 319
    .line 320
    :try_start_b
    invoke-virtual {v13}, Ljava/io/FileReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9

    .line 321
    .line 322
    .line 323
    goto :goto_e

    .line 324
    :catch_9
    move-exception v0

    .line 325
    move-object v5, v0

    .line 326
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 327
    .line 328
    .line 329
    goto :goto_e

    .line 330
    :goto_c
    :try_start_c
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 331
    .line 332
    invoke-virtual {v5, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 333
    .line 334
    .line 335
    if-eqz v15, :cond_b

    .line 336
    .line 337
    :try_start_d
    invoke-virtual {v15}, Ljava/io/BufferedReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_a

    .line 338
    .line 339
    .line 340
    goto :goto_d

    .line 341
    :catch_a
    move-exception v0

    .line 342
    move-object v5, v0

    .line 343
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 344
    .line 345
    .line 346
    :cond_b
    :goto_d
    if-eqz v13, :cond_c

    .line 347
    .line 348
    :try_start_e
    invoke-virtual {v13}, Ljava/io/FileReader;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_9

    .line 349
    .line 350
    .line 351
    :cond_c
    :goto_e
    if-eqz v17, :cond_f

    .line 352
    .line 353
    invoke-virtual {v12}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 354
    .line 355
    .line 356
    move-result-object v0

    .line 357
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 358
    .line 359
    .line 360
    move-result-object v0

    .line 361
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 362
    .line 363
    .line 364
    move-result v5

    .line 365
    if-eqz v5, :cond_f

    .line 366
    .line 367
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 368
    .line 369
    .line 370
    move-result-object v5

    .line 371
    check-cast v5, Ljava/lang/String;

    .line 372
    .line 373
    invoke-virtual {v12, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    .line 375
    .line 376
    move-result-object v9

    .line 377
    check-cast v9, Ljava/util/ArrayList;

    .line 378
    .line 379
    iget-object v10, v1, Lcom/android/server/asks/PolicyConvert;->pkgInfos:Ljava/util/Map;

    .line 380
    .line 381
    check-cast v10, Ljava/util/HashMap;

    .line 382
    .line 383
    invoke-virtual {v10, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 384
    .line 385
    .line 386
    move-result v13

    .line 387
    if-eqz v13, :cond_d

    .line 388
    .line 389
    invoke-interface {v10, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    .line 391
    .line 392
    move-result-object v13

    .line 393
    check-cast v13, Ljava/util/ArrayList;

    .line 394
    .line 395
    goto :goto_10

    .line 396
    :cond_d
    new-instance v13, Ljava/util/ArrayList;

    .line 397
    .line 398
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 399
    .line 400
    .line 401
    :goto_10
    new-instance v14, Ljava/lang/StringBuilder;

    .line 402
    .line 403
    const-string v15, "        <restrict version=\""

    .line 404
    .line 405
    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 406
    .line 407
    .line 408
    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    .line 410
    .line 411
    const-string v15, "\" type=\"REVOKE\" datelimit=\"00000000\" from=\"Token\">"

    .line 412
    .line 413
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    .line 415
    .line 416
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 417
    .line 418
    .line 419
    move-result-object v14

    .line 420
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 421
    .line 422
    .line 423
    const/4 v14, 0x0

    .line 424
    :goto_11
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 425
    .line 426
    .line 427
    move-result v15

    .line 428
    if-ge v14, v15, :cond_e

    .line 429
    .line 430
    new-instance v15, Ljava/lang/StringBuilder;

    .line 431
    .line 432
    move-object/from16 v17, v0

    .line 433
    .line 434
    const-string v0, "            <permission value=\""

    .line 435
    .line 436
    invoke-direct {v15, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 437
    .line 438
    .line 439
    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 440
    .line 441
    .line 442
    move-result-object v0

    .line 443
    check-cast v0, Ljava/lang/String;

    .line 444
    .line 445
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    .line 447
    .line 448
    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    .line 450
    .line 451
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 452
    .line 453
    .line 454
    move-result-object v0

    .line 455
    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 456
    .line 457
    .line 458
    add-int/lit8 v14, v14, 0x1

    .line 459
    .line 460
    move-object/from16 v0, v17

    .line 461
    .line 462
    goto :goto_11

    .line 463
    :cond_e
    move-object/from16 v17, v0

    .line 464
    .line 465
    const-string v0, "        </restrict>"

    .line 466
    .line 467
    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 468
    .line 469
    .line 470
    invoke-interface {v10, v5, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    .line 472
    .line 473
    move-object/from16 v0, v17

    .line 474
    .line 475
    goto :goto_f

    .line 476
    :cond_f
    :goto_12
    new-instance v5, Ljava/util/HashMap;

    .line 477
    .line 478
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 479
    .line 480
    .line 481
    :try_start_f
    new-instance v0, Ljava/io/File;

    .line 482
    .line 483
    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 484
    .line 485
    .line 486
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 487
    .line 488
    .line 489
    move-result v9

    .line 490
    if-eqz v9, :cond_15

    .line 491
    .line 492
    new-instance v9, Ljava/io/FileReader;

    .line 493
    .line 494
    invoke-direct {v9, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_d
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    .line 495
    .line 496
    .line 497
    :try_start_10
    new-instance v10, Ljava/io/BufferedReader;

    .line 498
    .line 499
    invoke-direct {v10, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_c
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    .line 500
    .line 501
    .line 502
    move-object v0, v7

    .line 503
    move-object v12, v0

    .line 504
    const/4 v11, 0x0

    .line 505
    :cond_10
    :goto_13
    :try_start_11
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 506
    .line 507
    .line 508
    move-result-object v13

    .line 509
    if-eqz v13, :cond_16

    .line 510
    .line 511
    const-string v14, "<package value="

    .line 512
    .line 513
    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 514
    .line 515
    .line 516
    move-result v14

    .line 517
    if-eqz v14, :cond_12

    .line 518
    .line 519
    const-string v0, "<package value=\""

    .line 520
    .line 521
    invoke-static {v13, v0}, Lcom/android/server/asks/PolicyConvert;->parseToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 522
    .line 523
    .line 524
    move-result-object v0

    .line 525
    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 526
    .line 527
    .line 528
    move-result v13

    .line 529
    const/4 v14, -0x1

    .line 530
    if-eq v13, v14, :cond_11

    .line 531
    .line 532
    const/4 v14, 0x0

    .line 533
    invoke-virtual {v0, v14, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 534
    .line 535
    .line 536
    move-result-object v0

    .line 537
    goto :goto_13

    .line 538
    :catchall_3
    move-exception v0

    .line 539
    move-object v1, v0

    .line 540
    move-object v15, v10

    .line 541
    goto/16 :goto_35

    .line 542
    .line 543
    :catch_b
    move-exception v0

    .line 544
    goto/16 :goto_19

    .line 545
    .line 546
    :cond_11
    :goto_14
    const/4 v11, 0x0

    .line 547
    goto :goto_17

    .line 548
    :cond_12
    const-string v14, "<mode value"

    .line 549
    .line 550
    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 551
    .line 552
    .line 553
    move-result v14

    .line 554
    if-eqz v14, :cond_13

    .line 555
    .line 556
    const-string v12, "<mode value=\""

    .line 557
    .line 558
    invoke-static {v13, v12}, Lcom/android/server/asks/PolicyConvert;->parseToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 559
    .line 560
    .line 561
    move-result-object v12

    .line 562
    goto :goto_13

    .line 563
    :cond_13
    const-string v14, "</package>"

    .line 564
    .line 565
    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 566
    .line 567
    .line 568
    move-result v13

    .line 569
    if-eqz v13, :cond_10

    .line 570
    .line 571
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 572
    .line 573
    .line 574
    move-result v13

    .line 575
    if-lez v13, :cond_14

    .line 576
    .line 577
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    .line 578
    .line 579
    .line 580
    move-result v13

    .line 581
    if-lez v13, :cond_14

    .line 582
    .line 583
    invoke-virtual {v5, v0, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_b
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    .line 584
    .line 585
    .line 586
    const/4 v11, 0x1

    .line 587
    :cond_14
    move-object v0, v7

    .line 588
    move-object v12, v0

    .line 589
    goto :goto_13

    .line 590
    :catchall_4
    move-exception v0

    .line 591
    move-object v1, v0

    .line 592
    :goto_15
    const/4 v15, 0x0

    .line 593
    goto/16 :goto_35

    .line 594
    .line 595
    :catch_c
    move-exception v0

    .line 596
    :goto_16
    const/4 v10, 0x0

    .line 597
    const/4 v11, 0x0

    .line 598
    goto :goto_19

    .line 599
    :catchall_5
    move-exception v0

    .line 600
    move-object v1, v0

    .line 601
    const/4 v9, 0x0

    .line 602
    goto :goto_15

    .line 603
    :catch_d
    move-exception v0

    .line 604
    const/4 v9, 0x0

    .line 605
    goto :goto_16

    .line 606
    :cond_15
    const/4 v9, 0x0

    .line 607
    const/4 v10, 0x0

    .line 608
    goto :goto_14

    .line 609
    :cond_16
    :goto_17
    if-eqz v10, :cond_17

    .line 610
    .line 611
    :try_start_12
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_e

    .line 612
    .line 613
    .line 614
    goto :goto_18

    .line 615
    :catch_e
    move-exception v0

    .line 616
    move-object v10, v0

    .line 617
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    .line 618
    .line 619
    .line 620
    :cond_17
    :goto_18
    if-eqz v9, :cond_19

    .line 621
    .line 622
    :try_start_13
    invoke-virtual {v9}, Ljava/io/FileReader;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_f

    .line 623
    .line 624
    .line 625
    goto :goto_1b

    .line 626
    :catch_f
    move-exception v0

    .line 627
    move-object v9, v0

    .line 628
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    .line 629
    .line 630
    .line 631
    goto :goto_1b

    .line 632
    :goto_19
    :try_start_14
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 633
    .line 634
    invoke-virtual {v12, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    .line 635
    .line 636
    .line 637
    if-eqz v10, :cond_18

    .line 638
    .line 639
    :try_start_15
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_10

    .line 640
    .line 641
    .line 642
    goto :goto_1a

    .line 643
    :catch_10
    move-exception v0

    .line 644
    move-object v10, v0

    .line 645
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    .line 646
    .line 647
    .line 648
    :cond_18
    :goto_1a
    if-eqz v9, :cond_19

    .line 649
    .line 650
    :try_start_16
    invoke-virtual {v9}, Ljava/io/FileReader;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_f

    .line 651
    .line 652
    .line 653
    :cond_19
    :goto_1b
    if-eqz v11, :cond_1b

    .line 654
    .line 655
    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 656
    .line 657
    .line 658
    move-result-object v0

    .line 659
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 660
    .line 661
    .line 662
    move-result-object v0

    .line 663
    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 664
    .line 665
    .line 666
    move-result v9

    .line 667
    if-eqz v9, :cond_1b

    .line 668
    .line 669
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 670
    .line 671
    .line 672
    move-result-object v9

    .line 673
    check-cast v9, Ljava/lang/String;

    .line 674
    .line 675
    invoke-virtual {v5, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 676
    .line 677
    .line 678
    move-result-object v10

    .line 679
    check-cast v10, Ljava/lang/String;

    .line 680
    .line 681
    iget-object v11, v1, Lcom/android/server/asks/PolicyConvert;->pkgInfos:Ljava/util/Map;

    .line 682
    .line 683
    check-cast v11, Ljava/util/HashMap;

    .line 684
    .line 685
    invoke-virtual {v11, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 686
    .line 687
    .line 688
    move-result v12

    .line 689
    if-eqz v12, :cond_1a

    .line 690
    .line 691
    invoke-interface {v11, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 692
    .line 693
    .line 694
    move-result-object v12

    .line 695
    check-cast v12, Ljava/util/ArrayList;

    .line 696
    .line 697
    goto :goto_1d

    .line 698
    :cond_1a
    new-instance v12, Ljava/util/ArrayList;

    .line 699
    .line 700
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 701
    .line 702
    .line 703
    :goto_1d
    new-instance v13, Ljava/lang/StringBuilder;

    .line 704
    .line 705
    const-string v14, "        <emmode value=\""

    .line 706
    .line 707
    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 708
    .line 709
    .line 710
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 711
    .line 712
    .line 713
    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 714
    .line 715
    .line 716
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 717
    .line 718
    .line 719
    move-result-object v10

    .line 720
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 721
    .line 722
    .line 723
    invoke-interface {v11, v9, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 724
    .line 725
    .line 726
    goto :goto_1c

    .line 727
    :cond_1b
    new-instance v4, Ljava/util/HashMap;

    .line 728
    .line 729
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 730
    .line 731
    .line 732
    new-instance v5, Ljava/util/HashMap;

    .line 733
    .line 734
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 735
    .line 736
    .line 737
    :try_start_17
    new-instance v0, Ljava/io/File;

    .line 738
    .line 739
    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 740
    .line 741
    .line 742
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 743
    .line 744
    .line 745
    move-result v9

    .line 746
    if-eqz v9, :cond_28

    .line 747
    .line 748
    new-instance v9, Ljava/io/FileReader;

    .line 749
    .line 750
    invoke-direct {v9, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_14
    .catchall {:try_start_17 .. :try_end_17} :catchall_8

    .line 751
    .line 752
    .line 753
    :try_start_18
    new-instance v10, Ljava/io/BufferedReader;

    .line 754
    .line 755
    invoke-direct {v10, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_13
    .catchall {:try_start_18 .. :try_end_18} :catchall_7

    .line 756
    .line 757
    .line 758
    move-object v0, v7

    .line 759
    const/4 v11, 0x0

    .line 760
    const/4 v12, 0x0

    .line 761
    :goto_1e
    const/4 v13, 0x0

    .line 762
    :goto_1f
    :try_start_19
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 763
    .line 764
    .line 765
    move-result-object v14

    .line 766
    if-eqz v14, :cond_27

    .line 767
    .line 768
    const-string v15, "<DATELIMIT value="

    .line 769
    .line 770
    invoke-virtual {v14, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 771
    .line 772
    .line 773
    move-result v15

    .line 774
    if-eqz v15, :cond_1e

    .line 775
    .line 776
    const-string v15, "<DATELIMIT value=\""

    .line 777
    .line 778
    invoke-static {v14, v15}, Lcom/android/server/asks/PolicyConvert;->parseToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 779
    .line 780
    .line 781
    move-result-object v14

    .line 782
    invoke-virtual {v14, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 783
    .line 784
    .line 785
    move-result v15

    .line 786
    move-object/from16 v17, v6

    .line 787
    .line 788
    const/4 v6, -0x1

    .line 789
    if-eq v15, v6, :cond_1d

    .line 790
    .line 791
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 792
    .line 793
    .line 794
    move-result v0
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_12
    .catchall {:try_start_19 .. :try_end_19} :catchall_6

    .line 795
    if-nez v0, :cond_1d

    .line 796
    .line 797
    const/4 v6, 0x0

    .line 798
    :try_start_1a
    invoke-virtual {v14, v6, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 799
    .line 800
    .line 801
    move-result-object v0

    .line 802
    :cond_1c
    :goto_20
    move-object/from16 v6, v17

    .line 803
    .line 804
    goto :goto_1f

    .line 805
    :catchall_6
    move-exception v0

    .line 806
    move-object v1, v0

    .line 807
    move-object v15, v10

    .line 808
    goto/16 :goto_32

    .line 809
    .line 810
    :catch_11
    move-exception v0

    .line 811
    goto/16 :goto_26

    .line 812
    .line 813
    :cond_1d
    const/4 v6, 0x0

    .line 814
    goto :goto_21

    .line 815
    :catch_12
    move-exception v0

    .line 816
    const/4 v6, 0x0

    .line 817
    goto/16 :goto_26

    .line 818
    .line 819
    :goto_21
    move v11, v6

    .line 820
    goto/16 :goto_24

    .line 821
    .line 822
    :cond_1e
    move-object/from16 v17, v6

    .line 823
    .line 824
    const/4 v6, 0x0

    .line 825
    const-string v15, "<DELETE>"

    .line 826
    .line 827
    invoke-virtual {v14, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 828
    .line 829
    .line 830
    move-result v15

    .line 831
    if-eqz v15, :cond_1f

    .line 832
    .line 833
    new-instance v12, Ljava/util/ArrayList;

    .line 834
    .line 835
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 836
    .line 837
    .line 838
    goto :goto_20

    .line 839
    :cond_1f
    const-string v15, "<DENY>"

    .line 840
    .line 841
    invoke-virtual {v14, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 842
    .line 843
    .line 844
    move-result v15

    .line 845
    if-eqz v15, :cond_20

    .line 846
    .line 847
    new-instance v13, Ljava/util/ArrayList;

    .line 848
    .line 849
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 850
    .line 851
    .line 852
    goto :goto_20

    .line 853
    :cond_20
    const-string v15, "<PKG value="

    .line 854
    .line 855
    invoke-virtual {v14, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 856
    .line 857
    .line 858
    move-result v15

    .line 859
    if-eqz v15, :cond_22

    .line 860
    .line 861
    const-string v15, "<PKG value=\""

    .line 862
    .line 863
    invoke-static {v14, v15}, Lcom/android/server/asks/PolicyConvert;->parseToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 864
    .line 865
    .line 866
    move-result-object v14

    .line 867
    if-eqz v12, :cond_21

    .line 868
    .line 869
    if-nez v13, :cond_21

    .line 870
    .line 871
    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 872
    .line 873
    .line 874
    :cond_21
    if-eqz v13, :cond_1c

    .line 875
    .line 876
    if-nez v12, :cond_1c

    .line 877
    .line 878
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 879
    .line 880
    .line 881
    goto :goto_20

    .line 882
    :cond_22
    const-string v15, "</DELETE>"

    .line 883
    .line 884
    invoke-virtual {v14, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 885
    .line 886
    .line 887
    move-result v15

    .line 888
    if-eqz v15, :cond_24

    .line 889
    .line 890
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 891
    .line 892
    .line 893
    move-result v14

    .line 894
    if-lez v14, :cond_23

    .line 895
    .line 896
    if-eqz v12, :cond_23

    .line 897
    .line 898
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    .line 899
    .line 900
    .line 901
    move-result v14

    .line 902
    if-lez v14, :cond_23

    .line 903
    .line 904
    invoke-virtual {v4, v0, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 905
    .line 906
    .line 907
    :cond_23
    move-object/from16 v6, v17

    .line 908
    .line 909
    const/4 v12, 0x0

    .line 910
    goto/16 :goto_1f

    .line 911
    .line 912
    :cond_24
    const-string v15, "</DENY>"

    .line 913
    .line 914
    invoke-virtual {v14, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 915
    .line 916
    .line 917
    move-result v15

    .line 918
    if-eqz v15, :cond_26

    .line 919
    .line 920
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 921
    .line 922
    .line 923
    move-result v14

    .line 924
    if-lez v14, :cond_25

    .line 925
    .line 926
    if-eqz v13, :cond_25

    .line 927
    .line 928
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    .line 929
    .line 930
    .line 931
    move-result v14

    .line 932
    if-lez v14, :cond_25

    .line 933
    .line 934
    invoke-virtual {v5, v0, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 935
    .line 936
    .line 937
    :cond_25
    move-object/from16 v6, v17

    .line 938
    .line 939
    goto/16 :goto_1e

    .line 940
    .line 941
    :cond_26
    const-string v15, "</DATELIMIT>"

    .line 942
    .line 943
    invoke-virtual {v14, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 944
    .line 945
    .line 946
    move-result v14
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_11
    .catchall {:try_start_1a .. :try_end_1a} :catchall_6

    .line 947
    if-eqz v14, :cond_1c

    .line 948
    .line 949
    move-object v0, v7

    .line 950
    move-object/from16 v6, v17

    .line 951
    .line 952
    const/4 v11, 0x1

    .line 953
    goto/16 :goto_1f

    .line 954
    .line 955
    :cond_27
    const/4 v6, 0x0

    .line 956
    goto :goto_24

    .line 957
    :catchall_7
    move-exception v0

    .line 958
    move-object v1, v0

    .line 959
    :goto_22
    const/4 v15, 0x0

    .line 960
    goto/16 :goto_32

    .line 961
    .line 962
    :catch_13
    move-exception v0

    .line 963
    const/4 v6, 0x0

    .line 964
    move v11, v6

    .line 965
    :goto_23
    const/4 v10, 0x0

    .line 966
    goto :goto_26

    .line 967
    :catchall_8
    move-exception v0

    .line 968
    move-object v1, v0

    .line 969
    const/4 v9, 0x0

    .line 970
    goto :goto_22

    .line 971
    :catch_14
    move-exception v0

    .line 972
    const/4 v6, 0x0

    .line 973
    move v11, v6

    .line 974
    const/4 v9, 0x0

    .line 975
    goto :goto_23

    .line 976
    :cond_28
    const/4 v6, 0x0

    .line 977
    move v11, v6

    .line 978
    const/4 v9, 0x0

    .line 979
    const/4 v10, 0x0

    .line 980
    :goto_24
    if-eqz v10, :cond_29

    .line 981
    .line 982
    :try_start_1b
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_15

    .line 983
    .line 984
    .line 985
    goto :goto_25

    .line 986
    :catch_15
    move-exception v0

    .line 987
    move-object v10, v0

    .line 988
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    .line 989
    .line 990
    .line 991
    :cond_29
    :goto_25
    if-eqz v9, :cond_2b

    .line 992
    .line 993
    :try_start_1c
    invoke-virtual {v9}, Ljava/io/FileReader;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_16

    .line 994
    .line 995
    .line 996
    goto :goto_28

    .line 997
    :catch_16
    move-exception v0

    .line 998
    move-object v9, v0

    .line 999
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    .line 1000
    .line 1001
    .line 1002
    goto :goto_28

    .line 1003
    :goto_26
    :try_start_1d
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 1004
    .line 1005
    invoke-virtual {v12, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_6

    .line 1006
    .line 1007
    .line 1008
    if-eqz v10, :cond_2a

    .line 1009
    .line 1010
    :try_start_1e
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_17

    .line 1011
    .line 1012
    .line 1013
    goto :goto_27

    .line 1014
    :catch_17
    move-exception v0

    .line 1015
    move-object v10, v0

    .line 1016
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    .line 1017
    .line 1018
    .line 1019
    :cond_2a
    :goto_27
    if-eqz v9, :cond_2b

    .line 1020
    .line 1021
    :try_start_1f
    invoke-virtual {v9}, Ljava/io/FileReader;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_16

    .line 1022
    .line 1023
    .line 1024
    :cond_2b
    :goto_28
    if-eqz v11, :cond_2d

    .line 1025
    .line 1026
    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    .line 1027
    .line 1028
    .line 1029
    move-result v0

    .line 1030
    if-lez v0, :cond_2c

    .line 1031
    .line 1032
    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 1033
    .line 1034
    .line 1035
    move-result-object v0

    .line 1036
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 1037
    .line 1038
    .line 1039
    move-result-object v0

    .line 1040
    :goto_29
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1041
    .line 1042
    .line 1043
    move-result v9

    .line 1044
    if-eqz v9, :cond_2c

    .line 1045
    .line 1046
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1047
    .line 1048
    .line 1049
    move-result-object v9

    .line 1050
    check-cast v9, Ljava/lang/String;

    .line 1051
    .line 1052
    invoke-virtual {v4, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1053
    .line 1054
    .line 1055
    move-result-object v10

    .line 1056
    check-cast v10, Ljava/util/ArrayList;

    .line 1057
    .line 1058
    iget-object v11, v1, Lcom/android/server/asks/PolicyConvert;->pkgInfos:Ljava/util/Map;

    .line 1059
    .line 1060
    const-string v12, "DELETE"

    .line 1061
    .line 1062
    invoke-static {v10, v12, v9, v11}, Lcom/android/server/asks/PolicyConvert;->MakeString(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1063
    .line 1064
    .line 1065
    goto :goto_29

    .line 1066
    :cond_2c
    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    .line 1067
    .line 1068
    .line 1069
    move-result v0

    .line 1070
    if-lez v0, :cond_2d

    .line 1071
    .line 1072
    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 1073
    .line 1074
    .line 1075
    move-result-object v0

    .line 1076
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 1077
    .line 1078
    .line 1079
    move-result-object v0

    .line 1080
    :goto_2a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1081
    .line 1082
    .line 1083
    move-result v4

    .line 1084
    if-eqz v4, :cond_2d

    .line 1085
    .line 1086
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1087
    .line 1088
    .line 1089
    move-result-object v4

    .line 1090
    check-cast v4, Ljava/lang/String;

    .line 1091
    .line 1092
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1093
    .line 1094
    .line 1095
    move-result-object v9

    .line 1096
    check-cast v9, Ljava/util/ArrayList;

    .line 1097
    .line 1098
    iget-object v10, v1, Lcom/android/server/asks/PolicyConvert;->pkgInfos:Ljava/util/Map;

    .line 1099
    .line 1100
    const-string v11, "DENY"

    .line 1101
    .line 1102
    invoke-static {v9, v11, v4, v10}, Lcom/android/server/asks/PolicyConvert;->MakeString(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1103
    .line 1104
    .line 1105
    goto :goto_2a

    .line 1106
    :cond_2d
    iget-object v0, v1, Lcom/android/server/asks/PolicyConvert;->pkgInfos:Ljava/util/Map;

    .line 1107
    .line 1108
    const-string v4, "\">\n"

    .line 1109
    .line 1110
    check-cast v0, Ljava/util/HashMap;

    .line 1111
    .line 1112
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 1113
    .line 1114
    .line 1115
    move-result-object v5

    .line 1116
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 1117
    .line 1118
    .line 1119
    move-result-object v5

    .line 1120
    :cond_2e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 1121
    .line 1122
    .line 1123
    move-result v9

    .line 1124
    if-eqz v9, :cond_2f

    .line 1125
    .line 1126
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1127
    .line 1128
    .line 1129
    move-result-object v9

    .line 1130
    check-cast v9, Ljava/lang/String;

    .line 1131
    .line 1132
    new-instance v10, Ljava/lang/StringBuilder;

    .line 1133
    .line 1134
    invoke-direct {v10, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1135
    .line 1136
    .line 1137
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1138
    .line 1139
    .line 1140
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1141
    .line 1142
    .line 1143
    move-result-object v10

    .line 1144
    invoke-static {v8, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1145
    .line 1146
    .line 1147
    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1148
    .line 1149
    .line 1150
    move-result-object v9

    .line 1151
    check-cast v9, Ljava/util/ArrayList;

    .line 1152
    .line 1153
    move v10, v6

    .line 1154
    :goto_2b
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 1155
    .line 1156
    .line 1157
    move-result v11

    .line 1158
    if-ge v10, v11, :cond_2e

    .line 1159
    .line 1160
    new-instance v11, Ljava/lang/StringBuilder;

    .line 1161
    .line 1162
    invoke-direct {v11, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1163
    .line 1164
    .line 1165
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1166
    .line 1167
    .line 1168
    move-result-object v12

    .line 1169
    check-cast v12, Ljava/lang/String;

    .line 1170
    .line 1171
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1172
    .line 1173
    .line 1174
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1175
    .line 1176
    .line 1177
    move-result-object v11

    .line 1178
    invoke-static {v8, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    .line 1180
    .line 1181
    add-int/lit8 v10, v10, 0x1

    .line 1182
    .line 1183
    goto :goto_2b

    .line 1184
    :cond_2f
    new-instance v5, Ljava/io/File;

    .line 1185
    .line 1186
    const-string v7, "/data/system/.aasa/asks.xml"

    .line 1187
    .line 1188
    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1189
    .line 1190
    .line 1191
    :try_start_20
    invoke-interface {v0}, Ljava/util/Map;->size()I

    .line 1192
    .line 1193
    .line 1194
    move-result v7

    .line 1195
    if-lez v7, :cond_32

    .line 1196
    .line 1197
    new-instance v7, Ljava/io/FileWriter;

    .line 1198
    .line 1199
    invoke-direct {v7, v5}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 1200
    .line 1201
    .line 1202
    new-instance v5, Ljava/io/BufferedWriter;

    .line 1203
    .line 1204
    invoke-direct {v5, v7}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_19
    .catchall {:try_start_20 .. :try_end_20} :catchall_a

    .line 1205
    .line 1206
    .line 1207
    :try_start_21
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 1208
    .line 1209
    .line 1210
    move-result-object v0

    .line 1211
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 1212
    .line 1213
    .line 1214
    move-result-object v0

    .line 1215
    new-instance v7, Ljava/lang/StringBuilder;

    .line 1216
    .line 1217
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1218
    .line 1219
    .line 1220
    const-string v9, "<asks version=\""

    .line 1221
    .line 1222
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1223
    .line 1224
    .line 1225
    move-object/from16 v9, p1

    .line 1226
    .line 1227
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1228
    .line 1229
    .line 1230
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1231
    .line 1232
    .line 1233
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1234
    .line 1235
    .line 1236
    move-result-object v7

    .line 1237
    invoke-virtual {v5, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1238
    .line 1239
    .line 1240
    :goto_2c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1241
    .line 1242
    .line 1243
    move-result v7

    .line 1244
    if-eqz v7, :cond_31

    .line 1245
    .line 1246
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1247
    .line 1248
    .line 1249
    move-result-object v7

    .line 1250
    check-cast v7, Ljava/lang/String;

    .line 1251
    .line 1252
    new-instance v9, Ljava/lang/StringBuilder;

    .line 1253
    .line 1254
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 1255
    .line 1256
    .line 1257
    const-string v10, "    <package name=\""

    .line 1258
    .line 1259
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1260
    .line 1261
    .line 1262
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1263
    .line 1264
    .line 1265
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1266
    .line 1267
    .line 1268
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1269
    .line 1270
    .line 1271
    move-result-object v9

    .line 1272
    invoke-virtual {v5, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1273
    .line 1274
    .line 1275
    iget-object v9, v1, Lcom/android/server/asks/PolicyConvert;->pkgInfos:Ljava/util/Map;

    .line 1276
    .line 1277
    check-cast v9, Ljava/util/HashMap;

    .line 1278
    .line 1279
    invoke-virtual {v9, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1280
    .line 1281
    .line 1282
    move-result-object v7

    .line 1283
    check-cast v7, Ljava/util/ArrayList;

    .line 1284
    .line 1285
    move v9, v6

    .line 1286
    :goto_2d
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 1287
    .line 1288
    .line 1289
    move-result v10

    .line 1290
    if-ge v9, v10, :cond_30

    .line 1291
    .line 1292
    new-instance v10, Ljava/lang/StringBuilder;

    .line 1293
    .line 1294
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 1295
    .line 1296
    .line 1297
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1298
    .line 1299
    .line 1300
    move-result-object v11

    .line 1301
    check-cast v11, Ljava/lang/String;

    .line 1302
    .line 1303
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1304
    .line 1305
    .line 1306
    const-string v11, "\n"

    .line 1307
    .line 1308
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1309
    .line 1310
    .line 1311
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1312
    .line 1313
    .line 1314
    move-result-object v10

    .line 1315
    invoke-virtual {v5, v10}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1316
    .line 1317
    .line 1318
    add-int/lit8 v9, v9, 0x1

    .line 1319
    .line 1320
    goto :goto_2d

    .line 1321
    :catchall_9
    move-exception v0

    .line 1322
    move-object v15, v5

    .line 1323
    goto/16 :goto_31

    .line 1324
    .line 1325
    :catch_18
    move-exception v0

    .line 1326
    move-object v15, v5

    .line 1327
    goto :goto_2f

    .line 1328
    :cond_30
    const-string v7, "    </package>\n"

    .line 1329
    .line 1330
    invoke-virtual {v5, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1331
    .line 1332
    .line 1333
    goto :goto_2c

    .line 1334
    :cond_31
    const-string v0, "</asks>\n"

    .line 1335
    .line 1336
    invoke-virtual {v5, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_18
    .catchall {:try_start_21 .. :try_end_21} :catchall_9

    .line 1337
    .line 1338
    .line 1339
    move-object v15, v5

    .line 1340
    const/4 v13, 0x1

    .line 1341
    goto :goto_2e

    .line 1342
    :catchall_a
    move-exception v0

    .line 1343
    const/4 v15, 0x0

    .line 1344
    goto/16 :goto_31

    .line 1345
    .line 1346
    :catch_19
    move-exception v0

    .line 1347
    const/4 v15, 0x0

    .line 1348
    goto :goto_2f

    .line 1349
    :cond_32
    move v13, v6

    .line 1350
    const/4 v15, 0x0

    .line 1351
    :goto_2e
    if-eqz v15, :cond_34

    .line 1352
    .line 1353
    :try_start_22
    invoke-virtual {v15}, Ljava/io/BufferedWriter;->close()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_22} :catch_1b

    .line 1354
    .line 1355
    .line 1356
    goto :goto_30

    .line 1357
    :goto_2f
    :try_start_23
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1358
    .line 1359
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1360
    .line 1361
    .line 1362
    const-string v4, "ERROR::"

    .line 1363
    .line 1364
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1365
    .line 1366
    .line 1367
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1368
    .line 1369
    .line 1370
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1371
    .line 1372
    .line 1373
    move-result-object v0

    .line 1374
    invoke-static {v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_b

    .line 1375
    .line 1376
    .line 1377
    if-eqz v15, :cond_33

    .line 1378
    .line 1379
    :try_start_24
    invoke-virtual {v15}, Ljava/io/BufferedWriter;->close()V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_24} :catch_1a

    .line 1380
    .line 1381
    .line 1382
    :catch_1a
    :cond_33
    move v13, v6

    .line 1383
    :catch_1b
    :cond_34
    :goto_30
    if-eqz v13, :cond_39

    .line 1384
    .line 1385
    new-instance v0, Ljava/io/File;

    .line 1386
    .line 1387
    const-string v1, "/data/system/.aasa/AASApolicy/AASA.xml"

    .line 1388
    .line 1389
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1390
    .line 1391
    .line 1392
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 1393
    .line 1394
    .line 1395
    move-result v1

    .line 1396
    if-eqz v1, :cond_35

    .line 1397
    .line 1398
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1399
    .line 1400
    .line 1401
    :cond_35
    new-instance v0, Ljava/io/File;

    .line 1402
    .line 1403
    const-string v1, "/data/system/.aasa/AASApolicy/AASA-TEMP.xml"

    .line 1404
    .line 1405
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1406
    .line 1407
    .line 1408
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 1409
    .line 1410
    .line 1411
    move-result v1

    .line 1412
    if-eqz v1, :cond_36

    .line 1413
    .line 1414
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1415
    .line 1416
    .line 1417
    :cond_36
    new-instance v0, Ljava/io/File;

    .line 1418
    .line 1419
    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1420
    .line 1421
    .line 1422
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 1423
    .line 1424
    .line 1425
    move-result v1

    .line 1426
    if-eqz v1, :cond_37

    .line 1427
    .line 1428
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1429
    .line 1430
    .line 1431
    :cond_37
    new-instance v0, Ljava/io/File;

    .line 1432
    .line 1433
    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1434
    .line 1435
    .line 1436
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 1437
    .line 1438
    .line 1439
    move-result v1

    .line 1440
    if-eqz v1, :cond_38

    .line 1441
    .line 1442
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1443
    .line 1444
    .line 1445
    :cond_38
    new-instance v0, Ljava/io/File;

    .line 1446
    .line 1447
    move-object/from16 v1, v21

    .line 1448
    .line 1449
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1450
    .line 1451
    .line 1452
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 1453
    .line 1454
    .line 1455
    move-result v1

    .line 1456
    if-eqz v1, :cond_39

    .line 1457
    .line 1458
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1459
    .line 1460
    .line 1461
    :cond_39
    const-string/jumbo v0, "end"

    .line 1462
    .line 1463
    .line 1464
    invoke-static {v8, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1465
    .line 1466
    .line 1467
    return v13

    .line 1468
    :catchall_b
    move-exception v0

    .line 1469
    :goto_31
    if-eqz v15, :cond_3a

    .line 1470
    .line 1471
    :try_start_25
    invoke-virtual {v15}, Ljava/io/BufferedWriter;->close()V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_25} :catch_1c

    .line 1472
    .line 1473
    .line 1474
    :catch_1c
    :cond_3a
    throw v0

    .line 1475
    :goto_32
    if-eqz v15, :cond_3b

    .line 1476
    .line 1477
    :try_start_26
    invoke-virtual {v15}, Ljava/io/BufferedReader;->close()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_26} :catch_1d

    .line 1478
    .line 1479
    .line 1480
    goto :goto_33

    .line 1481
    :catch_1d
    move-exception v0

    .line 1482
    move-object v2, v0

    .line 1483
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 1484
    .line 1485
    .line 1486
    :cond_3b
    :goto_33
    if-eqz v9, :cond_3c

    .line 1487
    .line 1488
    :try_start_27
    invoke-virtual {v9}, Ljava/io/FileReader;->close()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_27} :catch_1e

    .line 1489
    .line 1490
    .line 1491
    goto :goto_34

    .line 1492
    :catch_1e
    move-exception v0

    .line 1493
    move-object v2, v0

    .line 1494
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 1495
    .line 1496
    .line 1497
    :cond_3c
    :goto_34
    throw v1

    .line 1498
    :goto_35
    if-eqz v15, :cond_3d

    .line 1499
    .line 1500
    :try_start_28
    invoke-virtual {v15}, Ljava/io/BufferedReader;->close()V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_28} :catch_1f

    .line 1501
    .line 1502
    .line 1503
    goto :goto_36

    .line 1504
    :catch_1f
    move-exception v0

    .line 1505
    move-object v2, v0

    .line 1506
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 1507
    .line 1508
    .line 1509
    :cond_3d
    :goto_36
    if-eqz v9, :cond_3e

    .line 1510
    .line 1511
    :try_start_29
    invoke-virtual {v9}, Ljava/io/FileReader;->close()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_29} :catch_20

    .line 1512
    .line 1513
    .line 1514
    goto :goto_37

    .line 1515
    :catch_20
    move-exception v0

    .line 1516
    move-object v2, v0

    .line 1517
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 1518
    .line 1519
    .line 1520
    :cond_3e
    :goto_37
    throw v1

    .line 1521
    :goto_38
    if-eqz v15, :cond_3f

    .line 1522
    .line 1523
    :try_start_2a
    invoke-virtual {v15}, Ljava/io/BufferedReader;->close()V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2a} :catch_21

    .line 1524
    .line 1525
    .line 1526
    goto :goto_39

    .line 1527
    :catch_21
    move-exception v0

    .line 1528
    move-object v2, v0

    .line 1529
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 1530
    .line 1531
    .line 1532
    :cond_3f
    :goto_39
    if-eqz v13, :cond_40

    .line 1533
    .line 1534
    :try_start_2b
    invoke-virtual {v13}, Ljava/io/FileReader;->close()V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2b} :catch_22

    .line 1535
    .line 1536
    .line 1537
    goto :goto_3a

    .line 1538
    :catch_22
    move-exception v0

    .line 1539
    move-object v2, v0

    .line 1540
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 1541
    .line 1542
    .line 1543
    :cond_40
    :goto_3a
    throw v1
.end method
