.class public abstract Lcom/android/server/graphics/fonts/PersistentSystemFontConfig;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static loadFromXml(Ljava/io/InputStream;Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;)V
    .locals 8

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-static {p0}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    :cond_0
    :goto_0
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-eq v2, v1, :cond_8

    .line 12
    .line 13
    if-eq v2, v0, :cond_1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    const-string v4, "PersistentSystemFontConfig"

    .line 25
    .line 26
    if-ne v2, v1, :cond_2

    .line 27
    .line 28
    const-string/jumbo v2, "fontConfig"

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-nez v2, :cond_0

    .line 36
    .line 37
    const-string p0, "Invalid root tag: "

    .line 38
    .line 39
    invoke-static {p0, v3, v4}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_2
    if-ne v2, v0, :cond_0

    .line 44
    .line 45
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    const/4 v2, 0x0

    .line 49
    const-string/jumbo v5, "value"

    .line 50
    .line 51
    .line 52
    const/4 v6, -0x1

    .line 53
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 54
    .line 55
    .line 56
    move-result v7

    .line 57
    sparse-switch v7, :sswitch_data_0

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :sswitch_0
    const-string/jumbo v7, "updatedFontDir"

    .line 62
    .line 63
    .line 64
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v7

    .line 68
    if-nez v7, :cond_3

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_3
    move v6, v0

    .line 72
    goto :goto_1

    .line 73
    :sswitch_1
    const-string/jumbo v7, "family"

    .line 74
    .line 75
    .line 76
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v7

    .line 80
    if-nez v7, :cond_4

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_4
    move v6, v1

    .line 84
    goto :goto_1

    .line 85
    :sswitch_2
    const-string/jumbo v7, "lastModifiedDate"

    .line 86
    .line 87
    .line 88
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v7

    .line 92
    if-nez v7, :cond_5

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_5
    const/4 v6, 0x0

    .line 96
    :goto_1
    packed-switch v6, :pswitch_data_0

    .line 97
    .line 98
    .line 99
    const-string v2, "Skipping unknown tag: "

    .line 100
    .line 101
    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    invoke-static {v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :pswitch_0
    iget-object v3, p1, Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;->updatedFontDirs:Ljava/util/Set;

    .line 110
    .line 111
    invoke-interface {p0, v2, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    if-nez v2, :cond_6

    .line 116
    .line 117
    const-string v2, ""

    .line 118
    .line 119
    :cond_6
    check-cast v3, Landroid/util/ArraySet;

    .line 120
    .line 121
    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    goto :goto_0

    .line 125
    :pswitch_1
    iget-object v2, p1, Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;->fontFamilies:Ljava/util/List;

    .line 126
    .line 127
    invoke-static {p0}, Landroid/graphics/fonts/FontUpdateRequest$Family;->readFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/graphics/fonts/FontUpdateRequest$Family;

    .line 128
    .line 129
    .line 130
    move-result-object v3

    .line 131
    check-cast v2, Ljava/util/ArrayList;

    .line 132
    .line 133
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    goto/16 :goto_0

    .line 137
    .line 138
    :pswitch_2
    invoke-interface {p0, v2, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 143
    .line 144
    .line 145
    move-result v3

    .line 146
    const-wide/16 v4, 0x0

    .line 147
    .line 148
    if-eqz v3, :cond_7

    .line 149
    .line 150
    goto :goto_2

    .line 151
    :cond_7
    :try_start_0
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 152
    .line 153
    .line 154
    move-result-wide v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    :catch_0
    :goto_2
    iput-wide v4, p1, Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;->lastModifiedMillis:J

    .line 156
    .line 157
    goto/16 :goto_0

    .line 158
    .line 159
    :cond_8
    return-void

    .line 160
    nop

    .line 161
    :sswitch_data_0
    .sparse-switch
        -0x5bd77033 -> :sswitch_2
        -0x4c67a49c -> :sswitch_1
        -0x165177d -> :sswitch_0
    .end sparse-switch

    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static writeToXml(Ljava/io/OutputStream;Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;)V
    .locals 6

    .line 1
    invoke-static {p0}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-interface {p0, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 9
    .line 10
    .line 11
    const-string/jumbo v0, "fontConfig"

    .line 12
    .line 13
    .line 14
    invoke-interface {p0, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 15
    .line 16
    .line 17
    const-string/jumbo v2, "lastModifiedDate"

    .line 18
    .line 19
    .line 20
    invoke-interface {p0, v1, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 21
    .line 22
    .line 23
    iget-wide v3, p1, Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;->lastModifiedMillis:J

    .line 24
    .line 25
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    const-string/jumbo v4, "value"

    .line 30
    .line 31
    .line 32
    invoke-interface {p0, v1, v4, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 33
    .line 34
    .line 35
    invoke-interface {p0, v1, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 36
    .line 37
    .line 38
    iget-object v2, p1, Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;->updatedFontDirs:Ljava/util/Set;

    .line 39
    .line 40
    check-cast v2, Landroid/util/ArraySet;

    .line 41
    .line 42
    invoke-virtual {v2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-eqz v3, :cond_0

    .line 51
    .line 52
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    check-cast v3, Ljava/lang/String;

    .line 57
    .line 58
    const-string/jumbo v5, "updatedFontDir"

    .line 59
    .line 60
    .line 61
    invoke-interface {p0, v1, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 62
    .line 63
    .line 64
    invoke-interface {p0, v1, v4, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 65
    .line 66
    .line 67
    invoke-interface {p0, v1, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_0
    iget-object p1, p1, Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;->fontFamilies:Ljava/util/List;

    .line 72
    .line 73
    const/4 v2, 0x0

    .line 74
    :goto_1
    move-object v3, p1

    .line 75
    check-cast v3, Ljava/util/ArrayList;

    .line 76
    .line 77
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 78
    .line 79
    .line 80
    move-result v4

    .line 81
    if-ge v2, v4, :cond_1

    .line 82
    .line 83
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    check-cast v3, Landroid/graphics/fonts/FontUpdateRequest$Family;

    .line 88
    .line 89
    const-string/jumbo v4, "family"

    .line 90
    .line 91
    .line 92
    invoke-interface {p0, v1, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 93
    .line 94
    .line 95
    invoke-static {p0, v3}, Landroid/graphics/fonts/FontUpdateRequest$Family;->writeFamilyToXml(Lcom/android/modules/utils/TypedXmlSerializer;Landroid/graphics/fonts/FontUpdateRequest$Family;)V

    .line 96
    .line 97
    .line 98
    invoke-interface {p0, v1, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 99
    .line 100
    .line 101
    add-int/lit8 v2, v2, 0x1

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_1
    invoke-interface {p0, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 105
    .line 106
    .line 107
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    .line 108
    .line 109
    .line 110
    return-void
.end method
