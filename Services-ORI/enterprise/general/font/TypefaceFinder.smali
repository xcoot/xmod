.class public final Lcom/android/server/enterprise/general/font/TypefaceFinder;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mTypefaces:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/enterprise/general/font/TypefaceFinder;->mTypefaces:Ljava/util/List;

    .line 10
    .line 11
    return-void
.end method

.method public static deleteWhiteSpace(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-ge v1, v2, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    const/16 v3, 0x20

    .line 18
    .line 19
    if-eq v2, v3, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 26
    .line 27
    .line 28
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0
.end method


# virtual methods
.method public final findTypefaces(Landroid/content/res/AssetManager;Ljava/lang/String;)V
    .locals 4

    .line 1
    :try_start_0
    const-string/jumbo v0, "xml"

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, v0}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 8
    const/4 v1, 0x0

    .line 9
    :goto_0
    array-length v2, v0

    .line 10
    if-ge v1, v2, :cond_0

    .line 11
    .line 12
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string/jumbo v3, "xml/"

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    aget-object v3, v0, v1

    .line 24
    .line 25
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {p1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    aget-object v3, v0, v1

    .line 37
    .line 38
    invoke-virtual {p0, v3, v2, p2}, Lcom/android/server/enterprise/general/font/TypefaceFinder;->parseTypefaceXml(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 39
    .line 40
    .line 41
    :catch_0
    add-int/lit8 v1, v1, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catch_1
    :cond_0
    return-void
.end method

.method public final getSansEntries(Landroid/content/pm/PackageManager;Ljava/util/Vector;Ljava/util/Vector;Ljava/util/Vector;)V
    .locals 9

    .line 1
    const-string v0, ".ttf"

    .line 2
    .line 3
    const-string/jumbo v1, "default"

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    invoke-virtual {p3, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    const-string v1, ""

    .line 13
    .line 14
    invoke-virtual {p4, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    iget-object v2, p0, Lcom/android/server/enterprise/general/font/TypefaceFinder;->mTypefaces:Ljava/util/List;

    .line 18
    .line 19
    new-instance v3, Lcom/android/server/enterprise/general/font/TypefaceFinder$TypefaceSortByName;

    .line 20
    .line 21
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 25
    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    :goto_0
    iget-object v3, p0, Lcom/android/server/enterprise/general/font/TypefaceFinder;->mTypefaces:Ljava/util/List;

    .line 29
    .line 30
    check-cast v3, Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-ge v2, v3, :cond_8

    .line 37
    .line 38
    iget-object v3, p0, Lcom/android/server/enterprise/general/font/TypefaceFinder;->mTypefaces:Ljava/util/List;

    .line 39
    .line 40
    check-cast v3, Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    check-cast v3, Lcom/android/server/enterprise/general/font/Typeface;

    .line 47
    .line 48
    iget-object v4, v3, Lcom/android/server/enterprise/general/font/Typeface;->mSansFonts:Ljava/util/List;

    .line 49
    .line 50
    check-cast v4, Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    if-eqz v4, :cond_0

    .line 57
    .line 58
    const/4 v3, 0x0

    .line 59
    goto :goto_1

    .line 60
    :cond_0
    iget-object v3, v3, Lcom/android/server/enterprise/general/font/Typeface;->mName:Ljava/lang/String;

    .line 61
    .line 62
    :goto_1
    if-eqz v3, :cond_7

    .line 63
    .line 64
    iget-object v4, p0, Lcom/android/server/enterprise/general/font/TypefaceFinder;->mTypefaces:Ljava/util/List;

    .line 65
    .line 66
    check-cast v4, Ljava/util/ArrayList;

    .line 67
    .line 68
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    check-cast v4, Lcom/android/server/enterprise/general/font/Typeface;

    .line 73
    .line 74
    iget-object v4, v4, Lcom/android/server/enterprise/general/font/Typeface;->mTypefaceFilename:Ljava/lang/String;

    .line 75
    .line 76
    const/16 v5, 0x2f

    .line 77
    .line 78
    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(I)I

    .line 79
    .line 80
    .line 81
    move-result v5

    .line 82
    const/16 v6, 0x2e

    .line 83
    .line 84
    invoke-virtual {v4, v6}, Ljava/lang/String;->lastIndexOf(I)I

    .line 85
    .line 86
    .line 87
    move-result v6

    .line 88
    if-gez v6, :cond_1

    .line 89
    .line 90
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 91
    .line 92
    .line 93
    move-result v6

    .line 94
    :cond_1
    const/4 v7, 0x1

    .line 95
    add-int/2addr v5, v7

    .line 96
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    const-string v5, " "

    .line 101
    .line 102
    invoke-virtual {v4, v5, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    iget-object v5, p0, Lcom/android/server/enterprise/general/font/TypefaceFinder;->mTypefaces:Ljava/util/List;

    .line 107
    .line 108
    check-cast v5, Ljava/util/ArrayList;

    .line 109
    .line 110
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v5

    .line 114
    check-cast v5, Lcom/android/server/enterprise/general/font/Typeface;

    .line 115
    .line 116
    iget-object v5, v5, Lcom/android/server/enterprise/general/font/Typeface;->mFontPackageName:Ljava/lang/String;

    .line 117
    .line 118
    const/16 v6, 0x80

    .line 119
    .line 120
    :try_start_0
    invoke-virtual {p1, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 121
    .line 122
    .line 123
    move-result-object v5

    .line 124
    iget-object v6, v5, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 125
    .line 126
    iput-object v6, v5, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 127
    .line 128
    invoke-virtual {p1, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    .line 129
    .line 130
    .line 131
    move-result-object v5

    .line 132
    invoke-virtual {v5}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    .line 133
    .line 134
    .line 135
    move-result-object v5

    .line 136
    new-instance v6, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    .line 140
    .line 141
    const-string/jumbo v8, "fonts/"

    .line 142
    .line 143
    .line 144
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v6

    .line 157
    invoke-static {v5, v6}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    .line 158
    .line 159
    .line 160
    iget-object v5, p0, Lcom/android/server/enterprise/general/font/TypefaceFinder;->mTypefaces:Ljava/util/List;

    .line 161
    .line 162
    check-cast v5, Ljava/util/ArrayList;

    .line 163
    .line 164
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v5

    .line 168
    check-cast v5, Lcom/android/server/enterprise/general/font/Typeface;

    .line 169
    .line 170
    iget-object v5, v5, Lcom/android/server/enterprise/general/font/Typeface;->mFontPackageName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    .line 172
    const-string/jumbo v6, "com.monotype.android.font.samsungone"

    .line 173
    .line 174
    .line 175
    if-eqz v5, :cond_4

    .line 176
    .line 177
    :try_start_1
    iget-object v5, p0, Lcom/android/server/enterprise/general/font/TypefaceFinder;->mTypefaces:Ljava/util/List;

    .line 178
    .line 179
    check-cast v5, Ljava/util/ArrayList;

    .line 180
    .line 181
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v5

    .line 185
    check-cast v5, Lcom/android/server/enterprise/general/font/Typeface;

    .line 186
    .line 187
    iget-object v5, v5, Lcom/android/server/enterprise/general/font/Typeface;->mFontPackageName:Ljava/lang/String;

    .line 188
    .line 189
    const-string/jumbo v8, "com.monotype.android.font.droidserifitalic"

    .line 190
    .line 191
    .line 192
    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 193
    .line 194
    .line 195
    move-result v5

    .line 196
    if-eqz v5, :cond_2

    .line 197
    .line 198
    goto/16 :goto_3

    .line 199
    .line 200
    :cond_2
    iget-object v5, p0, Lcom/android/server/enterprise/general/font/TypefaceFinder;->mTypefaces:Ljava/util/List;

    .line 201
    .line 202
    check-cast v5, Ljava/util/ArrayList;

    .line 203
    .line 204
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object v5

    .line 208
    check-cast v5, Lcom/android/server/enterprise/general/font/Typeface;

    .line 209
    .line 210
    iget-object v5, v5, Lcom/android/server/enterprise/general/font/Typeface;->mFontPackageName:Ljava/lang/String;

    .line 211
    .line 212
    const-string/jumbo v8, "com.monotype.android.font.samsungoneuiregular"

    .line 213
    .line 214
    .line 215
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    move-result v5

    .line 219
    if-eqz v5, :cond_4

    .line 220
    .line 221
    iget-object v5, p0, Lcom/android/server/enterprise/general/font/TypefaceFinder;->mTypefaces:Ljava/util/List;

    .line 222
    .line 223
    check-cast v5, Ljava/util/ArrayList;

    .line 224
    .line 225
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 226
    .line 227
    .line 228
    move-result-object v5

    .line 229
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 230
    .line 231
    .line 232
    move-result v8

    .line 233
    if-eqz v8, :cond_4

    .line 234
    .line 235
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object v8

    .line 239
    check-cast v8, Lcom/android/server/enterprise/general/font/Typeface;

    .line 240
    .line 241
    iget-object v8, v8, Lcom/android/server/enterprise/general/font/Typeface;->mFontPackageName:Ljava/lang/String;

    .line 242
    .line 243
    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 244
    .line 245
    .line 246
    move-result v8

    .line 247
    if-eqz v8, :cond_3

    .line 248
    .line 249
    goto/16 :goto_3

    .line 250
    .line 251
    :catch_0
    move-exception v3

    .line 252
    goto/16 :goto_2

    .line 253
    .line 254
    :cond_4
    iget-object v5, p0, Lcom/android/server/enterprise/general/font/TypefaceFinder;->mTypefaces:Ljava/util/List;

    .line 255
    .line 256
    check-cast v5, Ljava/util/ArrayList;

    .line 257
    .line 258
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    move-result-object v5

    .line 262
    check-cast v5, Lcom/android/server/enterprise/general/font/Typeface;

    .line 263
    .line 264
    iget-object v5, v5, Lcom/android/server/enterprise/general/font/Typeface;->mFontPackageName:Ljava/lang/String;

    .line 265
    .line 266
    const-string/jumbo v8, "com.monotype.android.font.foundation"

    .line 267
    .line 268
    .line 269
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 270
    .line 271
    .line 272
    move-result v5

    .line 273
    if-eqz v5, :cond_5

    .line 274
    .line 275
    invoke-static {v3}, Lcom/android/server/enterprise/general/font/TypefaceFinder;->deleteWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v3

    .line 279
    invoke-virtual {p2, v7, v3}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    .line 280
    .line 281
    .line 282
    iget-object v3, p0, Lcom/android/server/enterprise/general/font/TypefaceFinder;->mTypefaces:Ljava/util/List;

    .line 283
    .line 284
    check-cast v3, Ljava/util/ArrayList;

    .line 285
    .line 286
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 287
    .line 288
    .line 289
    move-result-object v3

    .line 290
    check-cast v3, Lcom/android/server/enterprise/general/font/Typeface;

    .line 291
    .line 292
    iget-object v3, v3, Lcom/android/server/enterprise/general/font/Typeface;->mTypefaceFilename:Ljava/lang/String;

    .line 293
    .line 294
    invoke-virtual {p3, v7, v3}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    .line 295
    .line 296
    .line 297
    iget-object v3, p0, Lcom/android/server/enterprise/general/font/TypefaceFinder;->mTypefaces:Ljava/util/List;

    .line 298
    .line 299
    check-cast v3, Ljava/util/ArrayList;

    .line 300
    .line 301
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 302
    .line 303
    .line 304
    move-result-object v3

    .line 305
    check-cast v3, Lcom/android/server/enterprise/general/font/Typeface;

    .line 306
    .line 307
    iget-object v3, v3, Lcom/android/server/enterprise/general/font/Typeface;->mFontPackageName:Ljava/lang/String;

    .line 308
    .line 309
    invoke-virtual {p4, v7, v3}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    .line 310
    .line 311
    .line 312
    goto :goto_3

    .line 313
    :cond_5
    iget-object v5, p0, Lcom/android/server/enterprise/general/font/TypefaceFinder;->mTypefaces:Ljava/util/List;

    .line 314
    .line 315
    check-cast v5, Ljava/util/ArrayList;

    .line 316
    .line 317
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 318
    .line 319
    .line 320
    move-result-object v5

    .line 321
    check-cast v5, Lcom/android/server/enterprise/general/font/Typeface;

    .line 322
    .line 323
    iget-object v5, v5, Lcom/android/server/enterprise/general/font/Typeface;->mFontPackageName:Ljava/lang/String;

    .line 324
    .line 325
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 326
    .line 327
    .line 328
    move-result v5

    .line 329
    if-eqz v5, :cond_6

    .line 330
    .line 331
    invoke-static {v3}, Lcom/android/server/enterprise/general/font/TypefaceFinder;->deleteWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object v3

    .line 335
    invoke-virtual {p2, v7, v3}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    .line 336
    .line 337
    .line 338
    iget-object v3, p0, Lcom/android/server/enterprise/general/font/TypefaceFinder;->mTypefaces:Ljava/util/List;

    .line 339
    .line 340
    check-cast v3, Ljava/util/ArrayList;

    .line 341
    .line 342
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 343
    .line 344
    .line 345
    move-result-object v3

    .line 346
    check-cast v3, Lcom/android/server/enterprise/general/font/Typeface;

    .line 347
    .line 348
    iget-object v3, v3, Lcom/android/server/enterprise/general/font/Typeface;->mTypefaceFilename:Ljava/lang/String;

    .line 349
    .line 350
    invoke-virtual {p3, v7, v3}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    .line 351
    .line 352
    .line 353
    iget-object v3, p0, Lcom/android/server/enterprise/general/font/TypefaceFinder;->mTypefaces:Ljava/util/List;

    .line 354
    .line 355
    check-cast v3, Ljava/util/ArrayList;

    .line 356
    .line 357
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 358
    .line 359
    .line 360
    move-result-object v3

    .line 361
    check-cast v3, Lcom/android/server/enterprise/general/font/Typeface;

    .line 362
    .line 363
    iget-object v3, v3, Lcom/android/server/enterprise/general/font/Typeface;->mFontPackageName:Ljava/lang/String;

    .line 364
    .line 365
    invoke-virtual {p4, v7, v3}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    .line 366
    .line 367
    .line 368
    goto :goto_3

    .line 369
    :cond_6
    invoke-virtual {p2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 370
    .line 371
    .line 372
    iget-object v3, p0, Lcom/android/server/enterprise/general/font/TypefaceFinder;->mTypefaces:Ljava/util/List;

    .line 373
    .line 374
    check-cast v3, Ljava/util/ArrayList;

    .line 375
    .line 376
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 377
    .line 378
    .line 379
    move-result-object v3

    .line 380
    check-cast v3, Lcom/android/server/enterprise/general/font/Typeface;

    .line 381
    .line 382
    iget-object v3, v3, Lcom/android/server/enterprise/general/font/Typeface;->mTypefaceFilename:Ljava/lang/String;

    .line 383
    .line 384
    invoke-virtual {p3, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 385
    .line 386
    .line 387
    iget-object v3, p0, Lcom/android/server/enterprise/general/font/TypefaceFinder;->mTypefaces:Ljava/util/List;

    .line 388
    .line 389
    check-cast v3, Ljava/util/ArrayList;

    .line 390
    .line 391
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 392
    .line 393
    .line 394
    move-result-object v3

    .line 395
    check-cast v3, Lcom/android/server/enterprise/general/font/Typeface;

    .line 396
    .line 397
    iget-object v3, v3, Lcom/android/server/enterprise/general/font/Typeface;->mFontPackageName:Ljava/lang/String;

    .line 398
    .line 399
    invoke-virtual {p4, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 400
    .line 401
    .line 402
    goto :goto_3

    .line 403
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    .line 404
    .line 405
    const-string/jumbo v6, "getSansEntries - Typeface.createFromAsset caused an exception for - fonts/"

    .line 406
    .line 407
    .line 408
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 409
    .line 410
    .line 411
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    .line 413
    .line 414
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    .line 416
    .line 417
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 418
    .line 419
    .line 420
    move-result-object v4

    .line 421
    const-string v5, "TypefaceFinder"

    .line 422
    .line 423
    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    .line 425
    .line 426
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 427
    .line 428
    .line 429
    :cond_7
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 430
    .line 431
    goto/16 :goto_0

    .line 432
    .line 433
    :cond_8
    return-void
.end method

.method public final parseTypefaceXml(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    new-instance v1, Lcom/android/server/enterprise/general/font/TypefaceParser;

    .line 14
    .line 15
    invoke-direct {v1}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 16
    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    iput-boolean v2, v1, Lcom/android/server/enterprise/general/font/TypefaceParser;->in_sans:Z

    .line 20
    .line 21
    iput-boolean v2, v1, Lcom/android/server/enterprise/general/font/TypefaceParser;->in_serif:Z

    .line 22
    .line 23
    iput-boolean v2, v1, Lcom/android/server/enterprise/general/font/TypefaceParser;->in_monospace:Z

    .line 24
    .line 25
    iput-boolean v2, v1, Lcom/android/server/enterprise/general/font/TypefaceParser;->in_filename:Z

    .line 26
    .line 27
    iput-boolean v2, v1, Lcom/android/server/enterprise/general/font/TypefaceParser;->in_droidname:Z

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    iput-object v2, v1, Lcom/android/server/enterprise/general/font/TypefaceParser;->mFont:Lcom/android/server/enterprise/general/font/Typeface;

    .line 31
    .line 32
    iput-object v2, v1, Lcom/android/server/enterprise/general/font/TypefaceParser;->mFontFile:Lcom/android/server/enterprise/general/font/TypefaceFile;

    .line 33
    .line 34
    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 35
    .line 36
    .line 37
    new-instance v2, Lorg/xml/sax/InputSource;

    .line 38
    .line 39
    invoke-direct {v2, p2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 40
    .line 41
    .line 42
    invoke-interface {v0, v2}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 43
    .line 44
    .line 45
    iget-object p2, v1, Lcom/android/server/enterprise/general/font/TypefaceParser;->mFont:Lcom/android/server/enterprise/general/font/Typeface;

    .line 46
    .line 47
    const-string/jumbo v0, "com.monotype.android.font.samsungone"

    .line 48
    .line 49
    .line 50
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_0

    .line 55
    .line 56
    const-string p1, "SamsungOneUI-Regular.xml"

    .line 57
    .line 58
    iput-object p1, p2, Lcom/android/server/enterprise/general/font/Typeface;->mTypefaceFilename:Ljava/lang/String;

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    iput-object p1, p2, Lcom/android/server/enterprise/general/font/Typeface;->mTypefaceFilename:Ljava/lang/String;

    .line 62
    .line 63
    :goto_0
    iput-object p3, p2, Lcom/android/server/enterprise/general/font/Typeface;->mFontPackageName:Ljava/lang/String;

    .line 64
    .line 65
    iget-object p0, p0, Lcom/android/server/enterprise/general/font/TypefaceFinder;->mTypefaces:Ljava/util/List;

    .line 66
    .line 67
    check-cast p0, Ljava/util/ArrayList;

    .line 68
    .line 69
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .line 71
    .line 72
    :catch_0
    return-void
.end method
