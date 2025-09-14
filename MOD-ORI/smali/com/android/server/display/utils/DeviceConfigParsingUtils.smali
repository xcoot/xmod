.class public abstract Lcom/android/server/display/utils/DeviceConfigParsingUtils;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static ambientBrightnessThresholdsIntToFloat([I)[F
    .locals 4

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    array-length v0, p0

    .line 6
    new-array v1, v0, [F

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    if-ge v2, v0, :cond_1

    .line 10
    .line 11
    aget v3, p0, v2

    .line 12
    .line 13
    int-to-float v3, v3

    .line 14
    aput v3, v1, v2

    .line 15
    .line 16
    add-int/lit8 v2, v2, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    return-object v1
.end method

.method public static displayBrightnessThresholdsIntToFloat([I)[F
    .locals 4

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    array-length v0, p0

    .line 6
    new-array v1, v0, [F

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    if-ge v2, v0, :cond_2

    .line 10
    .line 11
    aget v3, p0, v2

    .line 12
    .line 13
    if-gez v3, :cond_1

    .line 14
    .line 15
    int-to-float v3, v3

    .line 16
    aput v3, v1, v2

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    invoke-static {v3}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessIntToFloat(I)F

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    aput v3, v1, v2

    .line 24
    .line 25
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_2
    return-object v1
.end method

.method public static parseBrightness(Ljava/lang/String;)F
    .locals 2

    .line 1
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    cmpg-float v1, v0, v1

    .line 7
    .line 8
    if-ltz v1, :cond_0

    .line 9
    .line 10
    const/high16 v1, 0x3f800000    # 1.0f

    .line 11
    .line 12
    cmpl-float v1, v0, v1

    .line 13
    .line 14
    if-gtz v1, :cond_0

    .line 15
    .line 16
    return v0

    .line 17
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 18
    .line 19
    const-string v1, "Brightness value out of bounds: "

    .line 20
    .line 21
    invoke-static {v1, p0}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw v0
.end method

.method public static parseDeviceConfigMap(Ljava/lang/String;Ljava/util/function/BiFunction;Ljava/util/function/Function;)Ljava/util/Map;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Ljava/util/Map;->of()Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    .line 11
    .line 12
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v2, ";"

    .line 16
    .line 17
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    array-length v3, v2

    .line 22
    const/4 v4, 0x0

    .line 23
    move v5, v4

    .line 24
    :goto_0
    if-ge v5, v3, :cond_9

    .line 25
    .line 26
    aget-object v6, v2, v5

    .line 27
    .line 28
    const-string v7, ","

    .line 29
    .line 30
    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v7

    .line 34
    array-length v8, v7

    .line 35
    const/4 v9, 0x4

    .line 36
    const-string v10, "DeviceConfigParsingUtils"

    .line 37
    .line 38
    if-ge v8, v9, :cond_1

    .line 39
    .line 40
    const-string v0, "Invalid dataSet(not enough items):"

    .line 41
    .line 42
    invoke-virtual {v0, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    new-instance v1, Ljava/lang/Throwable;

    .line 47
    .line 48
    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    .line 49
    .line 50
    .line 51
    invoke-static {v10, v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 52
    .line 53
    .line 54
    invoke-static {}, Ljava/util/Map;->of()Ljava/util/Map;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    return-object v0

    .line 59
    :cond_1
    aget-object v9, v7, v4

    .line 60
    .line 61
    const/4 v11, 0x1

    .line 62
    aget-object v11, v7, v11

    .line 63
    .line 64
    :try_start_0
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    move-result v11
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    mul-int/lit8 v12, v11, 0x2

    .line 69
    .line 70
    add-int/lit8 v13, v12, 0x2

    .line 71
    .line 72
    if-lt v8, v13, :cond_8

    .line 73
    .line 74
    add-int/lit8 v12, v12, 0x3

    .line 75
    .line 76
    if-le v8, v12, :cond_2

    .line 77
    .line 78
    goto/16 :goto_3

    .line 79
    .line 80
    :cond_2
    new-instance v8, Ljava/util/ArrayList;

    .line 81
    .line 82
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .line 84
    .line 85
    const/4 v12, 0x2

    .line 86
    move v13, v4

    .line 87
    :goto_1
    const-string v14, ",dataSet="

    .line 88
    .line 89
    if-ge v13, v11, :cond_4

    .line 90
    .line 91
    add-int/lit8 v15, v12, 0x1

    .line 92
    .line 93
    aget-object v4, v7, v12

    .line 94
    .line 95
    add-int/lit8 v12, v12, 0x2

    .line 96
    .line 97
    aget-object v15, v7, v15

    .line 98
    .line 99
    move-object/from16 v16, v2

    .line 100
    .line 101
    move/from16 v17, v3

    .line 102
    .line 103
    move-object/from16 v2, p1

    .line 104
    .line 105
    invoke-interface {v2, v4, v15}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    if-nez v3, :cond_3

    .line 110
    .line 111
    const-string v0, "Invalid dataPoint ,key="

    .line 112
    .line 113
    const-string v1, ",value="

    .line 114
    .line 115
    invoke-static {v0, v4, v1, v15, v14}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    new-instance v1, Ljava/lang/Throwable;

    .line 127
    .line 128
    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    .line 129
    .line 130
    .line 131
    invoke-static {v10, v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 132
    .line 133
    .line 134
    invoke-static {}, Ljava/util/Map;->of()Ljava/util/Map;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    return-object v0

    .line 139
    :cond_3
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    add-int/lit8 v13, v13, 0x1

    .line 143
    .line 144
    move-object/from16 v2, v16

    .line 145
    .line 146
    move/from16 v3, v17

    .line 147
    .line 148
    const/4 v4, 0x0

    .line 149
    goto :goto_1

    .line 150
    :cond_4
    move-object/from16 v16, v2

    .line 151
    .line 152
    move/from16 v17, v3

    .line 153
    .line 154
    move-object/from16 v2, p1

    .line 155
    .line 156
    move-object/from16 v3, p2

    .line 157
    .line 158
    invoke-interface {v3, v8}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v4

    .line 162
    if-nez v4, :cond_5

    .line 163
    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    .line 165
    .line 166
    const-string v1, "Invalid dataSetMapped dataPoints="

    .line 167
    .line 168
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    new-instance v1, Ljava/lang/Throwable;

    .line 185
    .line 186
    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    .line 187
    .line 188
    .line 189
    invoke-static {v10, v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 190
    .line 191
    .line 192
    invoke-static {}, Ljava/util/Map;->of()Ljava/util/Map;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    return-object v0

    .line 197
    :cond_5
    array-length v6, v7

    .line 198
    if-ge v12, v6, :cond_6

    .line 199
    .line 200
    aget-object v6, v7, v12

    .line 201
    .line 202
    goto :goto_2

    .line 203
    :cond_6
    const-string/jumbo v6, "default"

    .line 204
    .line 205
    .line 206
    :goto_2
    new-instance v7, Lcom/android/server/display/utils/DeviceConfigParsingUtils$$ExternalSyntheticLambda0;

    .line 207
    .line 208
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v1, v9, v7}, Ljava/util/HashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object v7

    .line 215
    check-cast v7, Ljava/util/Map;

    .line 216
    .line 217
    invoke-interface {v7, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object v4

    .line 221
    if-eqz v4, :cond_7

    .line 222
    .line 223
    const-string v1, "Duplicate dataSetId="

    .line 224
    .line 225
    const-string v2, ",data="

    .line 226
    .line 227
    invoke-static {v1, v6, v2, v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    new-instance v1, Ljava/lang/Throwable;

    .line 232
    .line 233
    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    .line 234
    .line 235
    .line 236
    invoke-static {v10, v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 237
    .line 238
    .line 239
    invoke-static {}, Ljava/util/Map;->of()Ljava/util/Map;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    return-object v0

    .line 244
    :cond_7
    add-int/lit8 v5, v5, 0x1

    .line 245
    .line 246
    move-object/from16 v2, v16

    .line 247
    .line 248
    move/from16 v3, v17

    .line 249
    .line 250
    const/4 v4, 0x0

    .line 251
    goto/16 :goto_0

    .line 252
    .line 253
    :cond_8
    :goto_3
    const-string v0, "Invalid dataSet(wrong number of points):"

    .line 254
    .line 255
    invoke-virtual {v0, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v0

    .line 259
    new-instance v1, Ljava/lang/Throwable;

    .line 260
    .line 261
    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    .line 262
    .line 263
    .line 264
    invoke-static {v10, v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 265
    .line 266
    .line 267
    invoke-static {}, Ljava/util/Map;->of()Ljava/util/Map;

    .line 268
    .line 269
    .line 270
    move-result-object v0

    .line 271
    return-object v0

    .line 272
    :catch_0
    move-exception v0

    .line 273
    move-object v1, v0

    .line 274
    const-string v0, "Invalid dataSet(invalid number of points):"

    .line 275
    .line 276
    invoke-virtual {v0, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v0

    .line 280
    invoke-static {v10, v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 281
    .line 282
    .line 283
    invoke-static {}, Ljava/util/Map;->of()Ljava/util/Map;

    .line 284
    .line 285
    .line 286
    move-result-object v0

    .line 287
    return-object v0

    .line 288
    :cond_9
    return-object v1
.end method

.method public static parseThermalStatus(Ljava/lang/String;)I
    .locals 9

    .line 1
    const/4 v0, 0x6

    .line 2
    const/4 v1, 0x5

    .line 3
    const/4 v2, 0x4

    .line 4
    const/4 v3, 0x3

    .line 5
    const/4 v4, 0x2

    .line 6
    const/4 v5, 0x1

    .line 7
    const/4 v6, 0x0

    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    const/4 v7, -0x1

    .line 12
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 13
    .line 14
    .line 15
    move-result v8

    .line 16
    sparse-switch v8, :sswitch_data_0

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :sswitch_0
    const-string/jumbo v8, "critical"

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v8

    .line 27
    if-nez v8, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move v7, v0

    .line 31
    goto :goto_0

    .line 32
    :sswitch_1
    const-string/jumbo v8, "emergency"

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v8

    .line 39
    if-nez v8, :cond_1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    move v7, v1

    .line 43
    goto :goto_0

    .line 44
    :sswitch_2
    const-string/jumbo v8, "light"

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v8

    .line 51
    if-nez v8, :cond_2

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    move v7, v2

    .line 55
    goto :goto_0

    .line 56
    :sswitch_3
    const-string/jumbo v8, "none"

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v8

    .line 63
    if-nez v8, :cond_3

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_3
    move v7, v3

    .line 67
    goto :goto_0

    .line 68
    :sswitch_4
    const-string/jumbo v8, "shutdown"

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v8

    .line 75
    if-nez v8, :cond_4

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_4
    move v7, v4

    .line 79
    goto :goto_0

    .line 80
    :sswitch_5
    const-string/jumbo v8, "moderate"

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v8

    .line 87
    if-nez v8, :cond_5

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_5
    move v7, v5

    .line 91
    goto :goto_0

    .line 92
    :sswitch_6
    const-string/jumbo v8, "severe"

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v8

    .line 99
    if-nez v8, :cond_6

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_6
    move v7, v6

    .line 103
    :goto_0
    packed-switch v7, :pswitch_data_0

    .line 104
    .line 105
    .line 106
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 107
    .line 108
    const-string v1, "Invalid Thermal Status: "

    .line 109
    .line 110
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    throw v0

    .line 118
    :pswitch_0
    return v2

    .line 119
    :pswitch_1
    return v1

    .line 120
    :pswitch_2
    return v5

    .line 121
    :pswitch_3
    return v6

    .line 122
    :pswitch_4
    return v0

    .line 123
    :pswitch_5
    return v4

    .line 124
    :pswitch_6
    return v3

    .line 125
    :sswitch_data_0
    .sparse-switch
        -0x35fc3d8c -> :sswitch_6
        -0x24e302fd -> :sswitch_5
        -0xa17f9aa -> :sswitch_4
        0x33af38 -> :sswitch_3
        0x6233516 -> :sswitch_2
        0x6118c591 -> :sswitch_1
        0x745b779f -> :sswitch_0
    .end sparse-switch

    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
