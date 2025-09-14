.class public final Lcom/android/server/permission/access/appop/PackageAppOpPersistence;
.super Lcom/android/server/permission/access/appop/BaseAppOpPersistence;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# virtual methods
.method public final parseUserState(Lcom/android/modules/utils/BinaryXmlPullParser;Lcom/android/server/permission/access/MutableAccessState;I)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string/jumbo v0, "package-app-ops"

    .line 6
    .line 7
    .line 8
    invoke-static {p0, v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    if-eqz p0, :cond_d

    .line 13
    .line 14
    const/4 p0, 0x0

    .line 15
    invoke-virtual {p2, p3, p0}, Lcom/android/server/permission/access/MutableAccessState;->mutateUserState(II)Lcom/android/server/permission/access/MutableUserState;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    iget-object p3, p0, Lcom/android/server/permission/access/MutableUserState;->packageAppOpModesReference:Lcom/android/server/permission/access/immutable/MutableReference;

    .line 23
    .line 24
    invoke-virtual {p3}, Lcom/android/server/permission/access/immutable/MutableReference;->mutate()Lcom/android/server/permission/access/immutable/Immutable;

    .line 25
    .line 26
    .line 27
    move-result-object p3

    .line 28
    check-cast p3, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;

    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getEventType()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    const-string v1, "Unexpected event type "

    .line 35
    .line 36
    const/4 v2, 0x2

    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    if-ne v0, v2, :cond_0

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 43
    .line 44
    invoke-static {v0, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw p0

    .line 52
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->next()I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    const/4 v3, 0x3

    .line 57
    const/4 v4, 0x1

    .line 58
    if-eq v0, v4, :cond_2

    .line 59
    .line 60
    if-eq v0, v2, :cond_2

    .line 61
    .line 62
    if-eq v0, v3, :cond_2

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    invoke-virtual {p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getEventType()I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    const-string v5, " when parsing app-op state"

    .line 70
    .line 71
    const-string v6, "PackageAppOpPersistence"

    .line 72
    .line 73
    if-eq v0, v4, :cond_b

    .line 74
    .line 75
    if-eq v0, v2, :cond_4

    .line 76
    .line 77
    if-ne v0, v3, :cond_3

    .line 78
    .line 79
    goto/16 :goto_5

    .line 80
    .line 81
    :cond_3
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 82
    .line 83
    invoke-static {v0, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    throw p0

    .line 91
    :cond_4
    invoke-virtual {p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getDepth()I

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    invoke-virtual {p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getName()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v7

    .line 99
    const-string/jumbo v8, "package"

    .line 100
    .line 101
    .line 102
    invoke-static {v7, v8}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v7

    .line 106
    if-eqz v7, :cond_5

    .line 107
    .line 108
    const/4 v5, 0x0

    .line 109
    const-string/jumbo v6, "name"

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1, v5, v6}, Lcom/android/modules/utils/BinaryXmlPullParser;->getAttributeIndexOrThrow(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    .line 114
    .line 115
    move-result v5

    .line 116
    invoke-virtual {p1, v5}, Lcom/android/modules/utils/BinaryXmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v5

    .line 120
    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v5

    .line 124
    const-string v6, "intern(...)"

    .line 125
    .line 126
    invoke-static {v6, v5}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    new-instance v6, Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    .line 130
    .line 131
    invoke-direct {v6}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;-><init>()V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p3, v5, v6}, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;->put(Ljava/lang/Object;Lcom/android/server/permission/access/immutable/MutableIndexedMap;)V

    .line 135
    .line 136
    .line 137
    invoke-static {p1, v6}, Lcom/android/server/permission/access/appop/BaseAppOpPersistence;->parseAppOps(Lcom/android/modules/utils/BinaryXmlPullParser;Lcom/android/server/permission/access/immutable/MutableIndexedMap;)V

    .line 138
    .line 139
    .line 140
    goto :goto_1

    .line 141
    :cond_5
    invoke-virtual {p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getName()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v7

    .line 145
    const-string v8, "Ignoring unknown tag "

    .line 146
    .line 147
    invoke-static {v8, v7, v5, v6}, Lcom/android/server/PinnerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    :goto_1
    invoke-virtual {p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getDepth()I

    .line 151
    .line 152
    .line 153
    move-result v5

    .line 154
    if-ne v5, v0, :cond_a

    .line 155
    .line 156
    :cond_6
    invoke-virtual {p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getEventType()I

    .line 157
    .line 158
    .line 159
    move-result v5

    .line 160
    if-eq v5, v2, :cond_9

    .line 161
    .line 162
    if-ne v5, v3, :cond_8

    .line 163
    .line 164
    invoke-virtual {p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getDepth()I

    .line 165
    .line 166
    .line 167
    move-result v5

    .line 168
    if-le v5, v0, :cond_7

    .line 169
    .line 170
    :goto_2
    invoke-virtual {p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->next()I

    .line 171
    .line 172
    .line 173
    move-result v5

    .line 174
    if-eq v5, v4, :cond_6

    .line 175
    .line 176
    if-eq v5, v2, :cond_6

    .line 177
    .line 178
    if-eq v5, v3, :cond_6

    .line 179
    .line 180
    goto :goto_2

    .line 181
    :cond_7
    :goto_3
    invoke-virtual {p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->next()I

    .line 182
    .line 183
    .line 184
    move-result v0

    .line 185
    if-eq v0, v4, :cond_2

    .line 186
    .line 187
    if-eq v0, v2, :cond_2

    .line 188
    .line 189
    if-eq v0, v3, :cond_2

    .line 190
    .line 191
    goto :goto_3

    .line 192
    :cond_8
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 193
    .line 194
    invoke-static {v5, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    throw p0

    .line 202
    :cond_9
    :goto_4
    invoke-virtual {p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->next()I

    .line 203
    .line 204
    .line 205
    move-result v5

    .line 206
    if-eq v5, v4, :cond_6

    .line 207
    .line 208
    if-eq v5, v2, :cond_6

    .line 209
    .line 210
    if-eq v5, v3, :cond_6

    .line 211
    .line 212
    goto :goto_4

    .line 213
    :cond_a
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 214
    .line 215
    const-string p1, "Unexpected post-block depth "

    .line 216
    .line 217
    const-string p2, ", expected "

    .line 218
    .line 219
    invoke-static {v5, v0, p1, p2}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object p1

    .line 223
    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    throw p0

    .line 227
    :cond_b
    :goto_5
    iget-object p1, p3, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;->map:Landroid/util/ArrayMap;

    .line 228
    .line 229
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    .line 230
    .line 231
    .line 232
    move-result p1

    .line 233
    sub-int/2addr p1, v4

    .line 234
    :goto_6
    const/4 v0, -0x1

    .line 235
    if-ge v0, p1, :cond_d

    .line 236
    .line 237
    iget-object v0, p3, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;->map:Landroid/util/ArrayMap;

    .line 238
    .line 239
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    invoke-virtual {p3, p1}, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;->valueAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    .line 244
    .line 245
    .line 246
    move-result-object v1

    .line 247
    check-cast v1, Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 248
    .line 249
    check-cast v0, Ljava/lang/String;

    .line 250
    .line 251
    invoke-virtual {p2}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    .line 252
    .line 253
    .line 254
    move-result-object v1

    .line 255
    iget-object v1, v1, Lcom/android/server/permission/access/MutableExternalState;->packageStates:Ljava/util/Map;

    .line 256
    .line 257
    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 258
    .line 259
    .line 260
    move-result v1

    .line 261
    if-nez v1, :cond_c

    .line 262
    .line 263
    const-string v1, "Dropping unknown package "

    .line 264
    .line 265
    invoke-static {v1, v0, v5, v6}, Lcom/android/server/PinnerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    iget-object v0, p3, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;->map:Landroid/util/ArrayMap;

    .line 269
    .line 270
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    move-result-object v0

    .line 274
    check-cast v0, Lcom/android/server/permission/access/immutable/MutableReference;

    .line 275
    .line 276
    iget-object v0, v0, Lcom/android/server/permission/access/immutable/MutableReference;->immutable:Lcom/android/server/permission/access/immutable/Immutable;

    .line 277
    .line 278
    invoke-virtual {p0, v4}, Lcom/android/server/permission/access/MutableUserState;->requestWriteMode(I)V

    .line 279
    .line 280
    .line 281
    :cond_c
    add-int/lit8 p1, p1, -0x1

    .line 282
    .line 283
    goto :goto_6

    .line 284
    :cond_d
    return-void
.end method

.method public final serializeUserState(Lcom/android/modules/utils/BinaryXmlSerializer;Lcom/android/server/permission/access/AccessState;I)V
    .locals 6

    .line 1
    invoke-virtual {p2}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0, p3}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    check-cast p0, Lcom/android/server/permission/access/MutableUserState;

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/android/server/permission/access/MutableUserState;->getPackageAppOpModes()Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    const/4 p2, 0x0

    .line 19
    const-string/jumbo p3, "package-app-ops"

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, p2, p3}, Lcom/android/modules/utils/BinaryXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;->map:Landroid/util/ArrayMap;

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    const/4 v1, 0x0

    .line 32
    :goto_0
    if-ge v1, v0, :cond_0

    .line 33
    .line 34
    iget-object v2, p0, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;->map:Landroid/util/ArrayMap;

    .line 35
    .line 36
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {p0, v1}, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;->valueAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    check-cast v3, Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 45
    .line 46
    check-cast v2, Ljava/lang/String;

    .line 47
    .line 48
    const-string/jumbo v4, "package"

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, p2, v4}, Lcom/android/modules/utils/BinaryXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 52
    .line 53
    .line 54
    const-string/jumbo v5, "name"

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, p2, v5, v2}, Lcom/android/modules/utils/BinaryXmlSerializer;->attributeInterned(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 58
    .line 59
    .line 60
    invoke-static {p1, v3}, Lcom/android/server/permission/access/appop/BaseAppOpPersistence;->serializeAppOps(Lcom/android/modules/utils/BinaryXmlSerializer;Lcom/android/server/permission/access/immutable/IndexedMap;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, p2, v4}, Lcom/android/modules/utils/BinaryXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 64
    .line 65
    .line 66
    add-int/lit8 v1, v1, 0x1

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_0
    invoke-virtual {p1, p2, p3}, Lcom/android/modules/utils/BinaryXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 70
    .line 71
    .line 72
    return-void
.end method
