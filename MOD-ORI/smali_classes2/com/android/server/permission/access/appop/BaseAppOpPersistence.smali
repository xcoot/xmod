.class public abstract Lcom/android/server/permission/access/appop/BaseAppOpPersistence;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static parseAppOps(Lcom/android/modules/utils/BinaryXmlPullParser;Lcom/android/server/permission/access/immutable/MutableIndexedMap;)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/android/modules/utils/BinaryXmlPullParser;->getEventType()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "Unexpected event type "

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    if-ne v0, v2, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 14
    .line 15
    invoke-static {v0, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    throw p0

    .line 23
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/modules/utils/BinaryXmlPullParser;->next()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const/4 v3, 0x1

    .line 28
    const/4 v4, 0x3

    .line 29
    if-eq v0, v3, :cond_2

    .line 30
    .line 31
    if-eq v0, v2, :cond_2

    .line 32
    .line 33
    if-eq v0, v4, :cond_2

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    invoke-virtual {p0}, Lcom/android/modules/utils/BinaryXmlPullParser;->getEventType()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eq v0, v3, :cond_b

    .line 41
    .line 42
    if-eq v0, v2, :cond_4

    .line 43
    .line 44
    if-ne v0, v4, :cond_3

    .line 45
    .line 46
    goto/16 :goto_5

    .line 47
    .line 48
    :cond_3
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 49
    .line 50
    invoke-static {v0, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw p0

    .line 58
    :cond_4
    invoke-virtual {p0}, Lcom/android/modules/utils/BinaryXmlPullParser;->getDepth()I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    invoke-virtual {p0}, Lcom/android/modules/utils/BinaryXmlPullParser;->getName()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    const-string v6, "app-op"

    .line 67
    .line 68
    invoke-static {v5, v6}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    if-eqz v5, :cond_5

    .line 73
    .line 74
    const/4 v5, 0x0

    .line 75
    const-string/jumbo v6, "name"

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, v5, v6}, Lcom/android/modules/utils/BinaryXmlPullParser;->getAttributeIndexOrThrow(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    move-result v6

    .line 82
    invoke-virtual {p0, v6}, Lcom/android/modules/utils/BinaryXmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v6

    .line 86
    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v6

    .line 90
    const-string v7, "intern(...)"

    .line 91
    .line 92
    invoke-static {v7, v6}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    const-string/jumbo v7, "mode"

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0, v5, v7}, Lcom/android/modules/utils/BinaryXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    .line 100
    .line 101
    move-result v5

    .line 102
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 103
    .line 104
    .line 105
    move-result-object v5

    .line 106
    invoke-virtual {p1, v6, v5}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_5
    invoke-virtual {p0}, Lcom/android/modules/utils/BinaryXmlPullParser;->getName()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v5

    .line 114
    const-string v6, "Ignoring unknown tag "

    .line 115
    .line 116
    const-string v7, " when parsing app-op state"

    .line 117
    .line 118
    const-string v8, "BaseAppOpPersistence"

    .line 119
    .line 120
    invoke-static {v6, v5, v7, v8}, Lcom/android/server/PinnerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    :goto_1
    invoke-virtual {p0}, Lcom/android/modules/utils/BinaryXmlPullParser;->getDepth()I

    .line 124
    .line 125
    .line 126
    move-result v5

    .line 127
    if-ne v5, v0, :cond_a

    .line 128
    .line 129
    :cond_6
    invoke-virtual {p0}, Lcom/android/modules/utils/BinaryXmlPullParser;->getEventType()I

    .line 130
    .line 131
    .line 132
    move-result v5

    .line 133
    if-eq v5, v2, :cond_9

    .line 134
    .line 135
    if-ne v5, v4, :cond_8

    .line 136
    .line 137
    invoke-virtual {p0}, Lcom/android/modules/utils/BinaryXmlPullParser;->getDepth()I

    .line 138
    .line 139
    .line 140
    move-result v5

    .line 141
    if-le v5, v0, :cond_7

    .line 142
    .line 143
    :goto_2
    invoke-virtual {p0}, Lcom/android/modules/utils/BinaryXmlPullParser;->next()I

    .line 144
    .line 145
    .line 146
    move-result v5

    .line 147
    if-eq v5, v3, :cond_6

    .line 148
    .line 149
    if-eq v5, v2, :cond_6

    .line 150
    .line 151
    if-eq v5, v4, :cond_6

    .line 152
    .line 153
    goto :goto_2

    .line 154
    :cond_7
    :goto_3
    invoke-virtual {p0}, Lcom/android/modules/utils/BinaryXmlPullParser;->next()I

    .line 155
    .line 156
    .line 157
    move-result v0

    .line 158
    if-eq v0, v3, :cond_2

    .line 159
    .line 160
    if-eq v0, v2, :cond_2

    .line 161
    .line 162
    if-eq v0, v4, :cond_2

    .line 163
    .line 164
    goto :goto_3

    .line 165
    :cond_8
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 166
    .line 167
    invoke-static {v5, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    throw p0

    .line 175
    :cond_9
    :goto_4
    invoke-virtual {p0}, Lcom/android/modules/utils/BinaryXmlPullParser;->next()I

    .line 176
    .line 177
    .line 178
    move-result v5

    .line 179
    if-eq v5, v3, :cond_6

    .line 180
    .line 181
    if-eq v5, v2, :cond_6

    .line 182
    .line 183
    if-eq v5, v4, :cond_6

    .line 184
    .line 185
    goto :goto_4

    .line 186
    :cond_a
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 187
    .line 188
    const-string p1, "Unexpected post-block depth "

    .line 189
    .line 190
    const-string v1, ", expected "

    .line 191
    .line 192
    invoke-static {v5, v0, p1, v1}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    throw p0

    .line 200
    :cond_b
    :goto_5
    return-void
.end method

.method public static serializeAppOps(Lcom/android/modules/utils/BinaryXmlSerializer;Lcom/android/server/permission/access/immutable/IndexedMap;)V
    .locals 7

    .line 1
    iget-object v0, p1, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-ge v1, v0, :cond_0

    .line 9
    .line 10
    iget-object v2, p1, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 11
    .line 12
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    iget-object v3, p1, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 17
    .line 18
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    check-cast v3, Ljava/lang/Number;

    .line 23
    .line 24
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    check-cast v2, Ljava/lang/String;

    .line 29
    .line 30
    const/4 v4, 0x0

    .line 31
    const-string v5, "app-op"

    .line 32
    .line 33
    invoke-virtual {p0, v4, v5}, Lcom/android/modules/utils/BinaryXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 34
    .line 35
    .line 36
    const-string/jumbo v6, "name"

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v4, v6, v2}, Lcom/android/modules/utils/BinaryXmlSerializer;->attributeInterned(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 40
    .line 41
    .line 42
    const-string/jumbo v2, "mode"

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v4, v2, v3}, Lcom/android/modules/utils/BinaryXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, v4, v5}, Lcom/android/modules/utils/BinaryXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 49
    .line 50
    .line 51
    add-int/lit8 v1, v1, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    return-void
.end method


# virtual methods
.method public abstract parseUserState(Lcom/android/modules/utils/BinaryXmlPullParser;Lcom/android/server/permission/access/MutableAccessState;I)V
.end method

.method public abstract serializeUserState(Lcom/android/modules/utils/BinaryXmlSerializer;Lcom/android/server/permission/access/AccessState;I)V
.end method
