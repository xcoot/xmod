.class public abstract Lcom/samsung/android/server/dynamicfeature/json/JsonParser;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static converter(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 17

    .line 1
    const-string v1, "dynamicfeature_JsonParser"

    .line 2
    .line 3
    const-string v0, ",,"

    .line 4
    .line 5
    const-string/jumbo v2, "signature"

    .line 6
    .line 7
    .line 8
    const-string/jumbo v3, "packagename"

    .line 9
    .line 10
    .line 11
    const-string v4, "abTestAllocation"

    .line 12
    .line 13
    const-string/jumbo v5, "releasedAt"

    .line 14
    .line 15
    .line 16
    const-string/jumbo v6, "virtualId"

    .line 17
    .line 18
    .line 19
    const-string v7, "features"

    .line 20
    .line 21
    const-string v8, "/"

    .line 22
    .line 23
    new-instance v9, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .line 27
    .line 28
    :try_start_0
    new-instance v11, Lorg/json/JSONObject;

    .line 29
    .line 30
    move-object/from16 v12, p0

    .line 31
    .line 32
    invoke-direct {v11, v12}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v11, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    move-result v12

    .line 39
    if-eqz v12, :cond_0

    .line 40
    .line 41
    invoke-virtual {v11, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 42
    .line 43
    .line 44
    move-result-object v7

    .line 45
    const/4 v12, 0x0

    .line 46
    :goto_0
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    .line 47
    .line 48
    .line 49
    move-result v14

    .line 50
    if-ge v12, v14, :cond_0

    .line 51
    .line 52
    invoke-virtual {v7, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 53
    .line 54
    .line 55
    move-result-object v14

    .line 56
    new-instance v15, Lcom/samsung/android/server/dynamicfeature/DFeature;

    .line 57
    .line 58
    invoke-direct {v15, v14}, Lcom/samsung/android/server/dynamicfeature/DFeature;-><init>(Lorg/json/JSONObject;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    add-int/lit8 v12, v12, 0x1

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :catch_0
    move-exception v0

    .line 68
    goto/16 :goto_9

    .line 69
    .line 70
    :cond_0
    invoke-virtual {v11, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 71
    .line 72
    .line 73
    move-result v7

    .line 74
    const/4 v12, 0x1

    .line 75
    if-eqz v7, :cond_2

    .line 76
    .line 77
    invoke-virtual {v11, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v6

    .line 81
    sget-object v7, Lcom/samsung/android/server/dynamicfeature/InfoBoard;->basicInfo:Lcom/samsung/android/server/dynamicfeature/InfoBoard$BasicInfos;

    .line 82
    .line 83
    iget-object v14, v7, Lcom/samsung/android/server/dynamicfeature/InfoBoard$BasicInfos;->vid:Ljava/lang/String;

    .line 84
    .line 85
    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v14

    .line 89
    if-eqz v14, :cond_1

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_1
    sput-boolean v12, Lcom/samsung/android/server/dynamicfeature/InfoBoard;->sDirty:Z

    .line 93
    .line 94
    iput-object v6, v7, Lcom/samsung/android/server/dynamicfeature/InfoBoard$BasicInfos;->vid:Ljava/lang/String;

    .line 95
    .line 96
    :cond_2
    :goto_1
    invoke-virtual {v11, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 97
    .line 98
    .line 99
    move-result v6

    .line 100
    if-eqz v6, :cond_3

    .line 101
    .line 102
    invoke-virtual {v11, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v5

    .line 106
    sput-boolean v12, Lcom/samsung/android/server/dynamicfeature/InfoBoard;->sDirty:Z

    .line 107
    .line 108
    sget-object v6, Lcom/samsung/android/server/dynamicfeature/InfoBoard;->basicInfo:Lcom/samsung/android/server/dynamicfeature/InfoBoard$BasicInfos;

    .line 109
    .line 110
    iput-object v5, v6, Lcom/samsung/android/server/dynamicfeature/InfoBoard$BasicInfos;->lastUpdatedTime:Ljava/lang/String;

    .line 111
    .line 112
    :cond_3
    invoke-virtual {v11, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 113
    .line 114
    .line 115
    move-result v5

    .line 116
    if-eqz v5, :cond_b

    .line 117
    .line 118
    invoke-virtual {v11, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    const/4 v5, 0x0

    .line 123
    :goto_2
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    .line 124
    .line 125
    .line 126
    move-result v6

    .line 127
    if-ge v5, v6, :cond_b

    .line 128
    .line 129
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 130
    .line 131
    .line 132
    move-result-object v6

    .line 133
    const-string/jumbo v7, "namespace"

    .line 134
    .line 135
    .line 136
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v7

    .line 140
    const-string/jumbo v11, "name"

    .line 141
    .line 142
    .line 143
    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v11

    .line 147
    const-string v12, "abType"

    .line 148
    .line 149
    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v12

    .line 153
    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 154
    .line 155
    .line 156
    move-result v14

    .line 157
    if-eqz v14, :cond_4

    .line 158
    .line 159
    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 160
    .line 161
    .line 162
    move-result-object v14

    .line 163
    goto :goto_3

    .line 164
    :cond_4
    const/4 v14, 0x0

    .line 165
    :goto_3
    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 166
    .line 167
    .line 168
    move-result v15

    .line 169
    if-eqz v15, :cond_5

    .line 170
    .line 171
    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 172
    .line 173
    .line 174
    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    goto :goto_4

    .line 176
    :cond_5
    const/4 v6, 0x0

    .line 177
    :goto_4
    const-string v15, ""

    .line 178
    .line 179
    if-eqz v14, :cond_7

    .line 180
    .line 181
    if-eqz v6, :cond_7

    .line 182
    .line 183
    :try_start_1
    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    .line 184
    .line 185
    .line 186
    move-result v13

    .line 187
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    .line 188
    .line 189
    .line 190
    move-result v10

    .line 191
    if-ne v13, v10, :cond_6

    .line 192
    .line 193
    move-object/from16 v16, v2

    .line 194
    .line 195
    move-object v10, v15

    .line 196
    const/4 v13, 0x0

    .line 197
    :goto_5
    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    .line 198
    .line 199
    .line 200
    move-result v2

    .line 201
    if-ge v13, v2, :cond_8

    .line 202
    .line 203
    new-instance v2, Ljava/lang/StringBuilder;

    .line 204
    .line 205
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v14, v13}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object v15

    .line 215
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v15

    .line 225
    new-instance v2, Ljava/lang/StringBuilder;

    .line 226
    .line 227
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {v6, v13}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object v10

    .line 237
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v10

    .line 247
    add-int/lit8 v13, v13, 0x1

    .line 248
    .line 249
    goto :goto_5

    .line 250
    :cond_6
    move-object/from16 v16, v2

    .line 251
    .line 252
    new-instance v2, Ljava/lang/StringBuilder;

    .line 253
    .line 254
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 255
    .line 256
    .line 257
    const-string v10, "Feature package and signature info is not match "

    .line 258
    .line 259
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v2

    .line 287
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    .line 289
    .line 290
    goto :goto_6

    .line 291
    :cond_7
    move-object/from16 v16, v2

    .line 292
    .line 293
    :goto_6
    move-object v10, v15

    .line 294
    :cond_8
    const/4 v2, 0x0

    .line 295
    :goto_7
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 296
    .line 297
    .line 298
    move-result v6

    .line 299
    if-ge v2, v6, :cond_a

    .line 300
    .line 301
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 302
    .line 303
    .line 304
    move-result-object v6

    .line 305
    check-cast v6, Lcom/samsung/android/server/dynamicfeature/DFeature;

    .line 306
    .line 307
    invoke-virtual {v6, v7, v11}, Lcom/samsung/android/server/dynamicfeature/DFeature;->isThis(Ljava/lang/String;Ljava/lang/String;)Z

    .line 308
    .line 309
    .line 310
    move-result v13

    .line 311
    if-eqz v13, :cond_9

    .line 312
    .line 313
    invoke-virtual {v6, v12, v15, v10}, Lcom/samsung/android/server/dynamicfeature/DFeature;->setAbTypeAndValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 314
    .line 315
    .line 316
    goto :goto_8

    .line 317
    :cond_9
    add-int/lit8 v2, v2, 0x1

    .line 318
    .line 319
    goto :goto_7

    .line 320
    :cond_a
    :goto_8
    add-int/lit8 v5, v5, 0x1

    .line 321
    .line 322
    move-object/from16 v2, v16

    .line 323
    .line 324
    goto/16 :goto_2

    .line 325
    .line 326
    :cond_b
    return-object v9

    .line 327
    :goto_9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 328
    .line 329
    const-string v3, "Fail to parse json : "

    .line 330
    .line 331
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 332
    .line 333
    .line 334
    invoke-static {v0, v2, v1}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 335
    .line 336
    .line 337
    const/4 v1, 0x0

    .line 338
    return-object v1
.end method
