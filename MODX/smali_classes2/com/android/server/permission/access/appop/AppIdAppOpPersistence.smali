.class public final Lcom/android/server/permission/access/appop/AppIdAppOpPersistence;
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
    const-string v0, "app-id-app-ops"

    .line 6
    .line 7
    invoke-static {p0, v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-eqz p0, :cond_d

    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    invoke-virtual {p2, p3, p0}, Lcom/android/server/permission/access/MutableAccessState;->mutateUserState(II)Lcom/android/server/permission/access/MutableUserState;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    iget-object p3, p0, Lcom/android/server/permission/access/MutableUserState;->appIdAppOpModesReference:Lcom/android/server/permission/access/immutable/MutableReference;

    .line 22
    .line 23
    invoke-virtual {p3}, Lcom/android/server/permission/access/immutable/MutableReference;->mutate()Lcom/android/server/permission/access/immutable/Immutable;

    .line 24
    .line 25
    .line 26
    move-result-object p3

    .line 27
    check-cast p3, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getEventType()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    const-string v1, "Unexpected event type "

    .line 34
    .line 35
    const/4 v2, 0x2

    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    if-ne v0, v2, :cond_0

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 42
    .line 43
    invoke-static {v0, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw p0

    .line 51
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->next()I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    const/4 v3, 0x3

    .line 56
    const/4 v4, 0x1

    .line 57
    if-eq v0, v4, :cond_2

    .line 58
    .line 59
    if-eq v0, v2, :cond_2

    .line 60
    .line 61
    if-eq v0, v3, :cond_2

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    invoke-virtual {p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getEventType()I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    const-string v5, " when parsing app-op state"

    .line 69
    .line 70
    const-string v6, "AppIdAppOpPersistence"

    .line 71
    .line 72
    if-eq v0, v4, :cond_b

    .line 73
    .line 74
    if-eq v0, v2, :cond_4

    .line 75
    .line 76
    if-ne v0, v3, :cond_3

    .line 77
    .line 78
    goto/16 :goto_5

    .line 79
    .line 80
    :cond_3
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 81
    .line 82
    invoke-static {v0, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    throw p0

    .line 90
    :cond_4
    invoke-virtual {p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getDepth()I

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    invoke-virtual {p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getName()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v7

    .line 98
    const-string v8, "app-id"

    .line 99
    .line 100
    invoke-static {v7, v8}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v7

    .line 104
    if-eqz v7, :cond_5

    .line 105
    .line 106
    const/4 v5, 0x0

    .line 107
    const-string v6, "id"

    .line 108
    .line 109
    invoke-virtual {p1, v5, v6}, Lcom/android/modules/utils/BinaryXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    .line 111
    .line 112
    move-result v5

    .line 113
    new-instance v6, Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    .line 114
    .line 115
    invoke-direct {v6}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;-><init>()V

    .line 116
    .line 117
    .line 118
    invoke-static {p3, v5, v6}, Lcom/android/server/permission/access/immutable/IntReferenceMapExtensionsKt;->set(Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;ILcom/android/server/permission/access/immutable/Immutable;)V

    .line 119
    .line 120
    .line 121
    invoke-static {p1, v6}, Lcom/android/server/permission/access/appop/BaseAppOpPersistence;->parseAppOps(Lcom/android/modules/utils/BinaryXmlPullParser;Lcom/android/server/permission/access/immutable/MutableIndexedMap;)V

    .line 122
    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_5
    invoke-virtual {p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getName()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v7

    .line 129
    const-string v8, "Ignoring unknown tag "

    .line 130
    .line 131
    invoke-static {v8, v7, v5, v6}, Lcom/android/server/PinnerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    :goto_1
    invoke-virtual {p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getDepth()I

    .line 135
    .line 136
    .line 137
    move-result v5

    .line 138
    if-ne v5, v0, :cond_a

    .line 139
    .line 140
    :cond_6
    invoke-virtual {p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getEventType()I

    .line 141
    .line 142
    .line 143
    move-result v5

    .line 144
    if-eq v5, v2, :cond_9

    .line 145
    .line 146
    if-ne v5, v3, :cond_8

    .line 147
    .line 148
    invoke-virtual {p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getDepth()I

    .line 149
    .line 150
    .line 151
    move-result v5

    .line 152
    if-le v5, v0, :cond_7

    .line 153
    .line 154
    :goto_2
    invoke-virtual {p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->next()I

    .line 155
    .line 156
    .line 157
    move-result v5

    .line 158
    if-eq v5, v4, :cond_6

    .line 159
    .line 160
    if-eq v5, v2, :cond_6

    .line 161
    .line 162
    if-eq v5, v3, :cond_6

    .line 163
    .line 164
    goto :goto_2

    .line 165
    :cond_7
    :goto_3
    invoke-virtual {p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->next()I

    .line 166
    .line 167
    .line 168
    move-result v0

    .line 169
    if-eq v0, v4, :cond_2

    .line 170
    .line 171
    if-eq v0, v2, :cond_2

    .line 172
    .line 173
    if-eq v0, v3, :cond_2

    .line 174
    .line 175
    goto :goto_3

    .line 176
    :cond_8
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 177
    .line 178
    invoke-static {v5, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    throw p0

    .line 186
    :cond_9
    :goto_4
    invoke-virtual {p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->next()I

    .line 187
    .line 188
    .line 189
    move-result v5

    .line 190
    if-eq v5, v4, :cond_6

    .line 191
    .line 192
    if-eq v5, v2, :cond_6

    .line 193
    .line 194
    if-eq v5, v3, :cond_6

    .line 195
    .line 196
    goto :goto_4

    .line 197
    :cond_a
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 198
    .line 199
    const-string p1, "Unexpected post-block depth "

    .line 200
    .line 201
    const-string p2, ", expected "

    .line 202
    .line 203
    invoke-static {v5, v0, p1, p2}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object p1

    .line 207
    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    throw p0

    .line 211
    :cond_b
    :goto_5
    invoke-virtual {p0}, Lcom/android/server/permission/access/MutableUserState;->getAppIdAppOpModes()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    .line 212
    .line 213
    .line 214
    move-result-object p1

    .line 215
    iget-object v0, p1, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    .line 216
    .line 217
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 218
    .line 219
    .line 220
    move-result v0

    .line 221
    sub-int/2addr v0, v4

    .line 222
    :goto_6
    const/4 v1, -0x1

    .line 223
    if-ge v1, v0, :cond_d

    .line 224
    .line 225
    iget-object v1, p1, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    .line 226
    .line 227
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    .line 228
    .line 229
    .line 230
    move-result v1

    .line 231
    invoke-virtual {p1, v0}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->valueAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    .line 232
    .line 233
    .line 234
    move-result-object v2

    .line 235
    check-cast v2, Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 236
    .line 237
    invoke-virtual {p2}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    .line 238
    .line 239
    .line 240
    move-result-object v2

    .line 241
    invoke-virtual {v2}, Lcom/android/server/permission/access/MutableExternalState;->getAppIdPackageNames()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    .line 242
    .line 243
    .line 244
    move-result-object v2

    .line 245
    iget-object v2, v2, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    .line 246
    .line 247
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->contains(I)Z

    .line 248
    .line 249
    .line 250
    move-result v2

    .line 251
    if-nez v2, :cond_c

    .line 252
    .line 253
    const/16 v2, 0x2710

    .line 254
    .line 255
    if-lt v1, v2, :cond_c

    .line 256
    .line 257
    const-string v2, "Dropping unknown app ID "

    .line 258
    .line 259
    invoke-static {v1, v2, v5, v6}, Lcom/android/server/accessibility/BrailleDisplayConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {p3, v0}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->removeAt$1(I)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {p0, v4}, Lcom/android/server/permission/access/MutableUserState;->requestWriteMode(I)V

    .line 266
    .line 267
    .line 268
    :cond_c
    add-int/lit8 v0, v0, -0x1

    .line 269
    .line 270
    goto :goto_6

    .line 271
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
    invoke-virtual {p0}, Lcom/android/server/permission/access/MutableUserState;->getAppIdAppOpModes()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    const/4 p2, 0x0

    .line 19
    const-string p3, "app-id-app-ops"

    .line 20
    .line 21
    invoke-virtual {p1, p2, p3}, Lcom/android/modules/utils/BinaryXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    const/4 v1, 0x0

    .line 31
    :goto_0
    if-ge v1, v0, :cond_0

    .line 32
    .line 33
    iget-object v2, p0, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    .line 34
    .line 35
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    invoke-virtual {p0, v1}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->valueAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    check-cast v3, Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 44
    .line 45
    const-string v4, "app-id"

    .line 46
    .line 47
    invoke-virtual {p1, p2, v4}, Lcom/android/modules/utils/BinaryXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 48
    .line 49
    .line 50
    const-string v5, "id"

    .line 51
    .line 52
    invoke-virtual {p1, p2, v5, v2}, Lcom/android/modules/utils/BinaryXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 53
    .line 54
    .line 55
    invoke-static {p1, v3}, Lcom/android/server/permission/access/appop/BaseAppOpPersistence;->serializeAppOps(Lcom/android/modules/utils/BinaryXmlSerializer;Lcom/android/server/permission/access/immutable/IndexedMap;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, p2, v4}, Lcom/android/modules/utils/BinaryXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 59
    .line 60
    .line 61
    add-int/lit8 v1, v1, 0x1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_0
    invoke-virtual {p1, p2, p3}, Lcom/android/modules/utils/BinaryXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 65
    .line 66
    .line 67
    return-void
.end method
