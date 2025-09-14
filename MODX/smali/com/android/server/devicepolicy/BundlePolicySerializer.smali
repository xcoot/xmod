.class public final Lcom/android/server/devicepolicy/BundlePolicySerializer;
.super Lcom/android/server/devicepolicy/PolicySerializer;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static readBundle(Landroid/os/Bundle;Ljava/util/ArrayList;Lcom/android/modules/utils/TypedXmlPullParser;)V
    .locals 6

    .line 1
    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    if-ne v0, v1, :cond_a

    .line 8
    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 12
    const-string/jumbo v2, "entry"

    .line 15
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_a

    .line 21
    const/4 v0, 0x0

    .line 22
    const-string/jumbo v2, "key"

    .line 25
    invoke-interface {p2, v0, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    move-result-object v2

    .line 29
    const-string/jumbo v3, "type"

    .line 32
    invoke-interface {p2, v0, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 35
    move-result-object v3

    .line 36
    const-string/jumbo v4, "m"

    .line 39
    const/4 v5, -0x1

    .line 40
    invoke-interface {p2, v0, v4, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 43
    move-result v0

    .line 44
    if-eq v0, v5, :cond_2

    .line 46
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 49
    :cond_0
    :goto_0
    if-lez v0, :cond_1

    .line 51
    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 54
    move-result v3

    .line 55
    const/4 v4, 0x1

    .line 56
    if-eq v3, v4, :cond_1

    .line 58
    if-ne v3, v1, :cond_0

    .line 60
    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 63
    move-result-object v3

    .line 64
    const-string/jumbo v4, "value"

    .line 67
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    move-result v3

    .line 71
    if-eqz v3, :cond_0

    .line 73
    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->nextText()Ljava/lang/String;

    .line 76
    move-result-object v3

    .line 77
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    add-int/lit8 v0, v0, -0x1

    .line 82
    goto :goto_0

    .line 83
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 86
    move-result p2

    .line 87
    new-array p2, p2, [Ljava/lang/String;

    .line 89
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 92
    invoke-virtual {p0, v2, p2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 95
    goto/16 :goto_4

    .line 97
    :cond_2
    const-string v0, "B"

    .line 99
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 102
    move-result v0

    .line 103
    if-eqz v0, :cond_4

    .line 105
    new-instance v0, Landroid/os/Bundle;

    .line 107
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 110
    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 113
    move-result v1

    .line 114
    :goto_1
    invoke-static {p2, v1}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    .line 117
    move-result v3

    .line 118
    if-eqz v3, :cond_3

    .line 120
    invoke-static {v0, p1, p2}, Lcom/android/server/devicepolicy/BundlePolicySerializer;->readBundle(Landroid/os/Bundle;Ljava/util/ArrayList;Lcom/android/modules/utils/TypedXmlPullParser;)V

    .line 123
    goto :goto_1

    .line 124
    :cond_3
    invoke-virtual {p0, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 127
    goto :goto_4

    .line 128
    :cond_4
    const-string v0, "BA"

    .line 130
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 133
    move-result v0

    .line 134
    if-eqz v0, :cond_7

    .line 136
    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 139
    move-result v0

    .line 140
    new-instance v1, Ljava/util/ArrayList;

    .line 142
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 145
    :goto_2
    invoke-static {p2, v0}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    .line 148
    move-result v3

    .line 149
    if-eqz v3, :cond_6

    .line 151
    new-instance v3, Landroid/os/Bundle;

    .line 153
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 156
    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 159
    move-result v4

    .line 160
    :goto_3
    invoke-static {p2, v4}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    .line 163
    move-result v5

    .line 164
    if-eqz v5, :cond_5

    .line 166
    invoke-static {v3, p1, p2}, Lcom/android/server/devicepolicy/BundlePolicySerializer;->readBundle(Landroid/os/Bundle;Ljava/util/ArrayList;Lcom/android/modules/utils/TypedXmlPullParser;)V

    .line 169
    goto :goto_3

    .line 170
    :cond_5
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    goto :goto_2

    .line 174
    :cond_6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 177
    move-result p1

    .line 178
    new-array p1, p1, [Landroid/os/Bundle;

    .line 180
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 183
    move-result-object p1

    .line 184
    check-cast p1, [Landroid/os/Parcelable;

    .line 186
    invoke-virtual {p0, v2, p1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 189
    goto :goto_4

    .line 190
    :cond_7
    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->nextText()Ljava/lang/String;

    .line 193
    move-result-object p1

    .line 194
    const-string p2, "b"

    .line 196
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 199
    move-result p2

    .line 200
    if-eqz p2, :cond_8

    .line 202
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 205
    move-result p1

    .line 206
    invoke-virtual {p0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 209
    goto :goto_4

    .line 210
    :cond_8
    const-string/jumbo p2, "i"

    .line 213
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 216
    move-result p2

    .line 217
    if-eqz p2, :cond_9

    .line 219
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 222
    move-result p1

    .line 223
    invoke-virtual {p0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 226
    goto :goto_4

    .line 227
    :cond_9
    invoke-virtual {p0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    :cond_a
    :goto_4
    return-void
.end method

.method public static writeBundle(Landroid/os/Bundle;Lcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object v0

    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_a

    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Ljava/lang/String;

    .line 21
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 24
    move-result-object v2

    .line 25
    const/4 v3, 0x0

    .line 26
    const-string/jumbo v4, "entry"

    .line 29
    invoke-interface {p1, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 32
    const-string/jumbo v5, "key"

    .line 35
    invoke-interface {p1, v3, v5, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 38
    instance-of v1, v2, Ljava/lang/Boolean;

    .line 40
    const-string/jumbo v5, "type"

    .line 43
    if-eqz v1, :cond_0

    .line 45
    const-string v1, "b"

    .line 47
    invoke-interface {p1, v3, v5, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 50
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 53
    move-result-object v1

    .line 54
    invoke-interface {p1, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 57
    goto/16 :goto_5

    .line 59
    :cond_0
    instance-of v1, v2, Ljava/lang/Integer;

    .line 61
    if-eqz v1, :cond_1

    .line 63
    const-string/jumbo v1, "i"

    .line 66
    invoke-interface {p1, v3, v5, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 69
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 72
    move-result-object v1

    .line 73
    invoke-interface {p1, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 76
    goto/16 :goto_5

    .line 78
    :cond_1
    const-string v1, ""

    .line 80
    if-eqz v2, :cond_7

    .line 82
    instance-of v6, v2, Ljava/lang/String;

    .line 84
    if-eqz v6, :cond_2

    .line 86
    goto :goto_4

    .line 87
    :cond_2
    instance-of v6, v2, Landroid/os/Bundle;

    .line 89
    const-string v7, "B"

    .line 91
    if-eqz v6, :cond_3

    .line 93
    invoke-interface {p1, v3, v5, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 96
    check-cast v2, Landroid/os/Bundle;

    .line 98
    invoke-static {v2, p1}, Lcom/android/server/devicepolicy/BundlePolicySerializer;->writeBundle(Landroid/os/Bundle;Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 101
    goto :goto_5

    .line 102
    :cond_3
    instance-of v6, v2, [Landroid/os/Parcelable;

    .line 104
    const/4 v8, 0x0

    .line 105
    if-eqz v6, :cond_5

    .line 107
    const-string v1, "BA"

    .line 109
    invoke-interface {p1, v3, v5, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 112
    check-cast v2, [Landroid/os/Parcelable;

    .line 114
    array-length v1, v2

    .line 115
    :goto_1
    if-ge v8, v1, :cond_9

    .line 117
    aget-object v6, v2, v8

    .line 119
    instance-of v9, v6, Landroid/os/Bundle;

    .line 121
    if-eqz v9, :cond_4

    .line 123
    invoke-interface {p1, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 126
    invoke-interface {p1, v3, v5, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 129
    check-cast v6, Landroid/os/Bundle;

    .line 131
    invoke-static {v6, p1}, Lcom/android/server/devicepolicy/BundlePolicySerializer;->writeBundle(Landroid/os/Bundle;Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 134
    invoke-interface {p1, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 137
    add-int/lit8 v8, v8, 0x1

    .line 139
    goto :goto_1

    .line 140
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 142
    const-string/jumbo p1, "bundle-array can only hold Bundles"

    .line 145
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 148
    throw p0

    .line 149
    :cond_5
    const-string/jumbo v6, "sa"

    .line 152
    invoke-interface {p1, v3, v5, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 155
    check-cast v2, [Ljava/lang/String;

    .line 157
    const-string/jumbo v5, "m"

    .line 160
    array-length v6, v2

    .line 161
    invoke-interface {p1, v3, v5, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 164
    array-length v5, v2

    .line 165
    :goto_2
    if-ge v8, v5, :cond_9

    .line 167
    aget-object v6, v2, v8

    .line 169
    const-string/jumbo v7, "value"

    .line 172
    invoke-interface {p1, v3, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 175
    if-eqz v6, :cond_6

    .line 177
    goto :goto_3

    .line 178
    :cond_6
    move-object v6, v1

    .line 179
    :goto_3
    invoke-interface {p1, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 182
    invoke-interface {p1, v3, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 185
    add-int/lit8 v8, v8, 0x1

    .line 187
    goto :goto_2

    .line 188
    :cond_7
    :goto_4
    const-string/jumbo v6, "s"

    .line 191
    invoke-interface {p1, v3, v5, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 194
    if-eqz v2, :cond_8

    .line 196
    move-object v1, v2

    .line 197
    check-cast v1, Ljava/lang/String;

    .line 199
    :cond_8
    invoke-interface {p1, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 202
    :cond_9
    :goto_5
    invoke-interface {p1, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 205
    goto/16 :goto_0

    .line 207
    :cond_a
    return-void
.end method


# virtual methods
.method public final readFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/app/admin/PolicyValue;
    .locals 3

    .line 1
    new-instance p0, Landroid/os/Bundle;

    .line 3
    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    :try_start_0
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 14
    move-result v1

    .line 15
    :goto_0
    invoke-static {p1, v1}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_0

    .line 21
    invoke-static {p0, v0, p1}, Lcom/android/server/devicepolicy/BundlePolicySerializer;->readBundle(Landroid/os/Bundle;Ljava/util/ArrayList;Lcom/android/modules/utils/TypedXmlPullParser;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    goto :goto_0

    .line 25
    :catch_0
    move-exception p0

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    new-instance p1, Landroid/app/admin/BundlePolicyValue;

    .line 29
    invoke-direct {p1, p0}, Landroid/app/admin/BundlePolicyValue;-><init>(Landroid/os/Bundle;)V

    .line 32
    goto :goto_2

    .line 33
    :goto_1
    const-string p1, "BundlePolicySerializer"

    .line 35
    const-string v0, "Error parsing Bundle policy."

    .line 37
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 40
    const/4 p1, 0x0

    .line 41
    :goto_2
    return-object p1
.end method

.method public final saveToXml(Ljava/lang/Object;Lcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/os/Bundle;

    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-static {p1, p2}, Lcom/android/server/devicepolicy/BundlePolicySerializer;->writeBundle(Landroid/os/Bundle;Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 9
    return-void
.end method
