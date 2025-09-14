.class public abstract Lcom/android/server/asks/AuthorizedTokenManager;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static checkTokenConditions(Lcom/android/server/asks/AuthorizedToken;Ljava/lang/String;[Landroid/content/pm/Signature;Ljava/lang/String;)Z
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/asks/AuthorizedToken;->packageName:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const/4 v0, 0x0

    .line 8
    if-eqz p1, :cond_7

    .line 9
    .line 10
    const-string p1, "PackageInformation_Token"

    .line 11
    .line 12
    const-string v1, "[Token] PackageName matched"

    .line 13
    .line 14
    invoke-static {p1, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    if-eqz p2, :cond_7

    .line 18
    .line 19
    :try_start_0
    array-length v1, p2

    .line 20
    move v2, v0

    .line 21
    :goto_0
    if-ge v2, v1, :cond_7

    .line 22
    .line 23
    aget-object v3, p2, v2

    .line 24
    .line 25
    new-instance v4, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    const-string/jumbo v5, "sigHash : "

    .line 31
    .line 32
    .line 33
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-static {v3}, Lcom/android/server/asks/AuthorizedToken;->getSigHash(Landroid/content/pm/Signature;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    invoke-static {p1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    new-instance v4, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    const-string/jumbo v5, "signature : "

    .line 56
    .line 57
    .line 58
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    invoke-static {p1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    iget-object v4, p0, Lcom/android/server/asks/AuthorizedToken;->signature:Ljava/lang/String;

    .line 76
    .line 77
    invoke-static {v3}, Lcom/android/server/asks/AuthorizedToken;->getSigHash(Landroid/content/pm/Signature;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    invoke-virtual {v4, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    if-nez v3, :cond_6

    .line 86
    .line 87
    const-string/jumbo p2, "signature is same"

    .line 88
    .line 89
    .line 90
    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    .line 91
    .line 92
    .line 93
    new-instance p2, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    const-string v1, "[Token] Signature matched : "

    .line 96
    .line 97
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    const-string/jumbo v1, "ro.boot.em.status"

    .line 101
    .line 102
    .line 103
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    const-string v3, "0x1"

    .line 108
    .line 109
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    const-string v4, ""

    .line 114
    .line 115
    if-eqz v2, :cond_0

    .line 116
    .line 117
    iget-object v2, p0, Lcom/android/server/asks/AuthorizedToken;->signature:Ljava/lang/String;

    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_0
    move-object v2, v4

    .line 121
    :goto_1
    invoke-static {p2, v2, p1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    iget-object p2, p0, Lcom/android/server/asks/AuthorizedToken;->limit:Ljava/lang/String;

    .line 125
    .line 126
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    .line 127
    .line 128
    .line 129
    move-result p2

    .line 130
    const/4 v2, 0x1

    .line 131
    const-string v5, " token policy :"

    .line 132
    .line 133
    if-nez p2, :cond_4

    .line 134
    .line 135
    iget-object p2, p0, Lcom/android/server/asks/AuthorizedToken;->limitCondition:Ljava/lang/String;

    .line 136
    .line 137
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    .line 138
    .line 139
    .line 140
    move-result p2

    .line 141
    if-nez p2, :cond_4

    .line 142
    .line 143
    iget-object p2, p0, Lcom/android/server/asks/AuthorizedToken;->limit:Ljava/lang/String;

    .line 144
    .line 145
    iget-object v6, p0, Lcom/android/server/asks/AuthorizedToken;->limitCondition:Ljava/lang/String;

    .line 146
    .line 147
    const-string v7, "[Token] checkLimit : "

    .line 148
    .line 149
    :try_start_1
    new-instance v8, Ljava/lang/StringBuilder;

    .line 150
    .line 151
    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    const-string v7, " , "

    .line 158
    .line 159
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v7

    .line 169
    invoke-static {p1, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    .line 171
    .line 172
    const-string v7, "0"

    .line 173
    .line 174
    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    move-result v7

    .line 178
    if-eqz v7, :cond_1

    .line 179
    .line 180
    const-string/jumbo p2, "ro.build.version.oneui"

    .line 181
    .line 182
    .line 183
    invoke-static {p2, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 184
    .line 185
    .line 186
    move-result p2

    .line 187
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object p2

    .line 191
    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    move-result p2

    .line 195
    goto :goto_3

    .line 196
    :catch_0
    move-exception p2

    .line 197
    goto :goto_2

    .line 198
    :cond_1
    const-string v7, "1"

    .line 199
    .line 200
    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 201
    .line 202
    .line 203
    move-result p2

    .line 204
    if-eqz p2, :cond_2

    .line 205
    .line 206
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 207
    .line 208
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object p2

    .line 212
    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 213
    .line 214
    .line 215
    move-result p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 216
    goto :goto_3

    .line 217
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    .line 218
    .line 219
    const-string/jumbo v7, "checkLimit error : "

    .line 220
    .line 221
    .line 222
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    invoke-static {p2, v6, p1}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    :cond_2
    move p2, v0

    .line 229
    :goto_3
    if-eqz p2, :cond_7

    .line 230
    .line 231
    const-string p2, "[Token] Limit Condition matched "

    .line 232
    .line 233
    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    .line 235
    .line 236
    invoke-virtual {p0, p3}, Lcom/android/server/asks/AuthorizedToken;->checkExpiredDate(Ljava/lang/String;)Z

    .line 237
    .line 238
    .line 239
    move-result p2

    .line 240
    if-eqz p2, :cond_7

    .line 241
    .line 242
    new-instance p2, Ljava/lang/StringBuilder;

    .line 243
    .line 244
    const-string p3, "[Token] expired date matched "

    .line 245
    .line 246
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object p3

    .line 253
    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 254
    .line 255
    .line 256
    move-result p3

    .line 257
    if-eqz p3, :cond_3

    .line 258
    .line 259
    new-instance p3, Ljava/lang/StringBuilder;

    .line 260
    .line 261
    invoke-direct {p3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    iget-object p0, p0, Lcom/android/server/asks/AuthorizedToken;->policy:Ljava/lang/String;

    .line 265
    .line 266
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v4

    .line 273
    :cond_3
    invoke-static {p2, v4, p1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    return v2

    .line 277
    :cond_4
    const-string p2, "[Token] not exist limit condition "

    .line 278
    .line 279
    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    .line 281
    .line 282
    invoke-virtual {p0, p3}, Lcom/android/server/asks/AuthorizedToken;->checkExpiredDate(Ljava/lang/String;)Z

    .line 283
    .line 284
    .line 285
    move-result p2

    .line 286
    if-eqz p2, :cond_7

    .line 287
    .line 288
    new-instance p2, Ljava/lang/StringBuilder;

    .line 289
    .line 290
    const-string p3, "[Token] expired date matched"

    .line 291
    .line 292
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object p3

    .line 299
    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 300
    .line 301
    .line 302
    move-result p3

    .line 303
    if-eqz p3, :cond_5

    .line 304
    .line 305
    new-instance p3, Ljava/lang/StringBuilder;

    .line 306
    .line 307
    invoke-direct {p3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    iget-object p0, p0, Lcom/android/server/asks/AuthorizedToken;->policy:Ljava/lang/String;

    .line 311
    .line 312
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    .line 314
    .line 315
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v4

    .line 319
    :cond_5
    invoke-static {p2, v4, p1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    .line 321
    .line 322
    return v2

    .line 323
    :catch_1
    move-exception p0

    .line 324
    goto :goto_4

    .line 325
    :cond_6
    add-int/lit8 v2, v2, 0x1

    .line 326
    .line 327
    goto/16 :goto_0

    .line 328
    .line 329
    :goto_4
    new-instance p2, Ljava/lang/StringBuilder;

    .line 330
    .line 331
    const-string p3, "[Token] sigError : "

    .line 332
    .line 333
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 334
    .line 335
    .line 336
    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object p0

    .line 340
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    .line 342
    .line 343
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object p0

    .line 347
    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    .line 349
    .line 350
    :cond_7
    return v0
.end method

.method public static parseXML(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/asks/AuthorizedToken;
    .locals 5

    .line 1
    new-instance v0, Lcom/android/server/asks/AuthorizedToken;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, ""

    .line 7
    .line 8
    iput-object v1, v0, Lcom/android/server/asks/AuthorizedToken;->packageName:Ljava/lang/String;

    .line 9
    .line 10
    iput-object v1, v0, Lcom/android/server/asks/AuthorizedToken;->signature:Ljava/lang/String;

    .line 11
    .line 12
    iput-object v1, v0, Lcom/android/server/asks/AuthorizedToken;->policy:Ljava/lang/String;

    .line 13
    .line 14
    iput-object v1, v0, Lcom/android/server/asks/AuthorizedToken;->installAuthority:Ljava/lang/String;

    .line 15
    .line 16
    iput-object v1, v0, Lcom/android/server/asks/AuthorizedToken;->limit:Ljava/lang/String;

    .line 17
    .line 18
    iput-object v1, v0, Lcom/android/server/asks/AuthorizedToken;->limitCondition:Ljava/lang/String;

    .line 19
    .line 20
    iput-object v1, v0, Lcom/android/server/asks/AuthorizedToken;->createData:Ljava/lang/String;

    .line 21
    .line 22
    iput-object v1, v0, Lcom/android/server/asks/AuthorizedToken;->expireDate:Ljava/lang/String;

    .line 23
    .line 24
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    :goto_0
    const/4 v2, 0x1

    .line 29
    if-eq v1, v2, :cond_8

    .line 30
    .line 31
    :try_start_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    const/4 v3, 0x2

    .line 36
    if-ne v1, v3, :cond_7

    .line 37
    .line 38
    const/4 v1, 0x0

    .line 39
    if-eqz v2, :cond_0

    .line 40
    .line 41
    const-string v3, "PACKAGE"

    .line 42
    .line 43
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-eqz v3, :cond_0

    .line 48
    .line 49
    const-string/jumbo v2, "name"

    .line 50
    .line 51
    .line 52
    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    iput-object v1, v0, Lcom/android/server/asks/AuthorizedToken;->packageName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .line 58
    goto/16 :goto_1

    .line 59
    .line 60
    :catch_0
    move-exception p0

    .line 61
    goto/16 :goto_2

    .line 62
    .line 63
    :cond_0
    const-string/jumbo v3, "value"

    .line 64
    .line 65
    .line 66
    if-eqz v2, :cond_1

    .line 67
    .line 68
    :try_start_1
    const-string v4, "SIGNATURE"

    .line 69
    .line 70
    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    if-eqz v4, :cond_1

    .line 75
    .line 76
    invoke-interface {p0, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    iput-object v1, v0, Lcom/android/server/asks/AuthorizedToken;->signature:Ljava/lang/String;

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_1
    if-eqz v2, :cond_2

    .line 84
    .line 85
    const-string v4, "POLICY"

    .line 86
    .line 87
    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 88
    .line 89
    .line 90
    move-result v4

    .line 91
    if-eqz v4, :cond_2

    .line 92
    .line 93
    invoke-interface {p0, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    iput-object v1, v0, Lcom/android/server/asks/AuthorizedToken;->policy:Ljava/lang/String;

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_2
    if-eqz v2, :cond_3

    .line 101
    .line 102
    const-string v4, "INSTALL_AUTHORITY"

    .line 103
    .line 104
    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 105
    .line 106
    .line 107
    move-result v4

    .line 108
    if-eqz v4, :cond_3

    .line 109
    .line 110
    invoke-interface {p0, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    iput-object v1, v0, Lcom/android/server/asks/AuthorizedToken;->installAuthority:Ljava/lang/String;

    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_3
    if-eqz v2, :cond_4

    .line 118
    .line 119
    const-string v4, "LIMIT"

    .line 120
    .line 121
    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 122
    .line 123
    .line 124
    move-result v4

    .line 125
    if-eqz v4, :cond_4

    .line 126
    .line 127
    invoke-interface {p0, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    iput-object v1, v0, Lcom/android/server/asks/AuthorizedToken;->limit:Ljava/lang/String;

    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_4
    if-eqz v2, :cond_5

    .line 135
    .line 136
    const-string v4, "LIMIT_CONDITION"

    .line 137
    .line 138
    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 139
    .line 140
    .line 141
    move-result v4

    .line 142
    if-eqz v4, :cond_5

    .line 143
    .line 144
    invoke-interface {p0, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    iput-object v1, v0, Lcom/android/server/asks/AuthorizedToken;->limitCondition:Ljava/lang/String;

    .line 149
    .line 150
    goto :goto_1

    .line 151
    :cond_5
    if-eqz v2, :cond_6

    .line 152
    .line 153
    const-string v4, "CREATE_DATE"

    .line 154
    .line 155
    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 156
    .line 157
    .line 158
    move-result v4

    .line 159
    if-eqz v4, :cond_6

    .line 160
    .line 161
    invoke-interface {p0, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    iput-object v1, v0, Lcom/android/server/asks/AuthorizedToken;->createData:Ljava/lang/String;

    .line 166
    .line 167
    goto :goto_1

    .line 168
    :cond_6
    if-eqz v2, :cond_7

    .line 169
    .line 170
    const-string v4, "EXPIRE_DATE"

    .line 171
    .line 172
    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 173
    .line 174
    .line 175
    move-result v2

    .line 176
    if-eqz v2, :cond_7

    .line 177
    .line 178
    invoke-interface {p0, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    iput-object v1, v0, Lcom/android/server/asks/AuthorizedToken;->expireDate:Ljava/lang/String;

    .line 183
    .line 184
    :cond_7
    :goto_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 185
    .line 186
    .line 187
    move-result v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 188
    goto/16 :goto_0

    .line 189
    .line 190
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 191
    .line 192
    const-string/jumbo v2, "parseXML : "

    .line 193
    .line 194
    .line 195
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object p0

    .line 202
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object p0

    .line 209
    const-string v1, "PackageInformation_Token"

    .line 210
    .line 211
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    .line 213
    .line 214
    :cond_8
    return-object v0
.end method
