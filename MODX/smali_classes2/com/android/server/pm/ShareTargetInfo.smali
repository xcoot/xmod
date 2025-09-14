.class public final Lcom/android/server/pm/ShareTargetInfo;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mCategories:[Ljava/lang/String;

.field public final mTargetClass:Ljava/lang/String;

.field public final mTargetData:[Lcom/android/server/pm/ShareTargetInfo$TargetData;


# direct methods
.method public constructor <init>([Lcom/android/server/pm/ShareTargetInfo$TargetData;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/ShareTargetInfo;->mTargetData:[Lcom/android/server/pm/ShareTargetInfo$TargetData;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/pm/ShareTargetInfo;->mTargetClass:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/pm/ShareTargetInfo;->mCategories:[Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method

.method public static loadFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Lcom/android/server/pm/ShareTargetInfo;
    .locals 13

    .line 1
    sget-boolean v0, Lcom/android/server/pm/ShortcutService;->DEBUG_REBOOT:Z

    .line 2
    .line 3
    const-string/jumbo v0, "targetClass"

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-interface {p0, v1, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v2, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    new-instance v3, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    :cond_0
    :goto_0
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    const/4 v5, 0x1

    .line 26
    if-eq v4, v5, :cond_4

    .line 27
    .line 28
    const/4 v5, 0x2

    .line 29
    if-ne v4, v5, :cond_3

    .line 30
    .line 31
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    const-string v5, "data"

    .line 39
    .line 40
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    if-nez v5, :cond_2

    .line 45
    .line 46
    const-string v5, "category"

    .line 47
    .line 48
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    if-nez v4, :cond_1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    const-string/jumbo v4, "name"

    .line 56
    .line 57
    .line 58
    invoke-interface {p0, v1, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_2
    sget-boolean v4, Lcom/android/server/pm/ShortcutService;->DEBUG_REBOOT:Z

    .line 67
    .line 68
    const-string/jumbo v4, "scheme"

    .line 69
    .line 70
    .line 71
    invoke-interface {p0, v1, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v6

    .line 75
    const-string v4, "host"

    .line 76
    .line 77
    invoke-interface {p0, v1, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v7

    .line 81
    const-string/jumbo v4, "port"

    .line 82
    .line 83
    .line 84
    invoke-interface {p0, v1, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v8

    .line 88
    const-string/jumbo v4, "path"

    .line 89
    .line 90
    .line 91
    invoke-interface {p0, v1, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v9

    .line 95
    const-string/jumbo v4, "pathPattern"

    .line 96
    .line 97
    .line 98
    invoke-interface {p0, v1, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v10

    .line 102
    const-string/jumbo v4, "pathPrefix"

    .line 103
    .line 104
    .line 105
    invoke-interface {p0, v1, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v11

    .line 109
    const-string/jumbo v4, "mimeType"

    .line 110
    .line 111
    .line 112
    invoke-interface {p0, v1, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v12

    .line 116
    new-instance v4, Lcom/android/server/pm/ShareTargetInfo$TargetData;

    .line 117
    .line 118
    move-object v5, v4

    .line 119
    invoke-direct/range {v5 .. v12}, Lcom/android/server/pm/ShareTargetInfo$TargetData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_3
    const/4 v5, 0x3

    .line 127
    if-ne v4, v5, :cond_0

    .line 128
    .line 129
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v4

    .line 133
    const-string/jumbo v5, "share-target"

    .line 134
    .line 135
    .line 136
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    move-result v4

    .line 140
    if-eqz v4, :cond_0

    .line 141
    .line 142
    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 143
    .line 144
    .line 145
    move-result p0

    .line 146
    if-nez p0, :cond_6

    .line 147
    .line 148
    if-eqz v0, :cond_6

    .line 149
    .line 150
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 151
    .line 152
    .line 153
    move-result p0

    .line 154
    if-eqz p0, :cond_5

    .line 155
    .line 156
    goto :goto_1

    .line 157
    :cond_5
    new-instance p0, Lcom/android/server/pm/ShareTargetInfo;

    .line 158
    .line 159
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 160
    .line 161
    .line 162
    move-result v1

    .line 163
    new-array v1, v1, [Lcom/android/server/pm/ShareTargetInfo$TargetData;

    .line 164
    .line 165
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    check-cast v1, [Lcom/android/server/pm/ShareTargetInfo$TargetData;

    .line 170
    .line 171
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 172
    .line 173
    .line 174
    move-result v2

    .line 175
    new-array v2, v2, [Ljava/lang/String;

    .line 176
    .line 177
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v2

    .line 181
    check-cast v2, [Ljava/lang/String;

    .line 182
    .line 183
    invoke-direct {p0, v1, v0, v2}, Lcom/android/server/pm/ShareTargetInfo;-><init>([Lcom/android/server/pm/ShareTargetInfo$TargetData;Ljava/lang/String;[Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    return-object p0

    .line 187
    :cond_6
    :goto_1
    return-object v1
.end method


# virtual methods
.method public final saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string/jumbo v1, "share-target"

    .line 3
    .line 4
    .line 5
    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6
    .line 7
    .line 8
    const-string/jumbo v2, "targetClass"

    .line 9
    .line 10
    .line 11
    iget-object v3, p0, Lcom/android/server/pm/ShareTargetInfo;->mTargetClass:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {p1, v2, v3}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 14
    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    move v3, v2

    .line 18
    :goto_0
    iget-object v4, p0, Lcom/android/server/pm/ShareTargetInfo;->mTargetData:[Lcom/android/server/pm/ShareTargetInfo$TargetData;

    .line 19
    .line 20
    array-length v5, v4

    .line 21
    if-ge v3, v5, :cond_0

    .line 22
    .line 23
    const-string v5, "data"

    .line 24
    .line 25
    invoke-interface {p1, v0, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 26
    .line 27
    .line 28
    aget-object v6, v4, v3

    .line 29
    .line 30
    iget-object v6, v6, Lcom/android/server/pm/ShareTargetInfo$TargetData;->mScheme:Ljava/lang/String;

    .line 31
    .line 32
    const-string/jumbo v7, "scheme"

    .line 33
    .line 34
    .line 35
    invoke-static {p1, v7, v6}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 36
    .line 37
    .line 38
    aget-object v6, v4, v3

    .line 39
    .line 40
    iget-object v6, v6, Lcom/android/server/pm/ShareTargetInfo$TargetData;->mHost:Ljava/lang/String;

    .line 41
    .line 42
    const-string v7, "host"

    .line 43
    .line 44
    invoke-static {p1, v7, v6}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 45
    .line 46
    .line 47
    aget-object v6, v4, v3

    .line 48
    .line 49
    iget-object v6, v6, Lcom/android/server/pm/ShareTargetInfo$TargetData;->mPort:Ljava/lang/String;

    .line 50
    .line 51
    const-string/jumbo v7, "port"

    .line 52
    .line 53
    .line 54
    invoke-static {p1, v7, v6}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 55
    .line 56
    .line 57
    aget-object v6, v4, v3

    .line 58
    .line 59
    iget-object v6, v6, Lcom/android/server/pm/ShareTargetInfo$TargetData;->mPath:Ljava/lang/String;

    .line 60
    .line 61
    const-string/jumbo v7, "path"

    .line 62
    .line 63
    .line 64
    invoke-static {p1, v7, v6}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 65
    .line 66
    .line 67
    aget-object v6, v4, v3

    .line 68
    .line 69
    iget-object v6, v6, Lcom/android/server/pm/ShareTargetInfo$TargetData;->mPathPattern:Ljava/lang/String;

    .line 70
    .line 71
    const-string/jumbo v7, "pathPattern"

    .line 72
    .line 73
    .line 74
    invoke-static {p1, v7, v6}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 75
    .line 76
    .line 77
    aget-object v6, v4, v3

    .line 78
    .line 79
    iget-object v6, v6, Lcom/android/server/pm/ShareTargetInfo$TargetData;->mPathPrefix:Ljava/lang/String;

    .line 80
    .line 81
    const-string/jumbo v7, "pathPrefix"

    .line 82
    .line 83
    .line 84
    invoke-static {p1, v7, v6}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 85
    .line 86
    .line 87
    aget-object v4, v4, v3

    .line 88
    .line 89
    iget-object v4, v4, Lcom/android/server/pm/ShareTargetInfo$TargetData;->mMimeType:Ljava/lang/String;

    .line 90
    .line 91
    const-string/jumbo v6, "mimeType"

    .line 92
    .line 93
    .line 94
    invoke-static {p1, v6, v4}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 95
    .line 96
    .line 97
    invoke-interface {p1, v0, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 98
    .line 99
    .line 100
    add-int/lit8 v3, v3, 0x1

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/android/server/pm/ShareTargetInfo;->mCategories:[Ljava/lang/String;

    .line 104
    .line 105
    array-length v4, v3

    .line 106
    if-ge v2, v4, :cond_1

    .line 107
    .line 108
    const-string v4, "category"

    .line 109
    .line 110
    invoke-interface {p1, v0, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 111
    .line 112
    .line 113
    const-string/jumbo v5, "name"

    .line 114
    .line 115
    .line 116
    aget-object v3, v3, v2

    .line 117
    .line 118
    invoke-static {p1, v5, v3}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 119
    .line 120
    .line 121
    invoke-interface {p1, v0, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 122
    .line 123
    .line 124
    add-int/lit8 v2, v2, 0x1

    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_1
    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 128
    .line 129
    .line 130
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    const-string/jumbo v0, "targetClass="

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/android/server/pm/ShareTargetInfo;->mTargetClass:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    move v2, v1

    .line 15
    :goto_0
    iget-object v3, p0, Lcom/android/server/pm/ShareTargetInfo;->mTargetData:[Lcom/android/server/pm/ShareTargetInfo$TargetData;

    .line 16
    .line 17
    array-length v4, v3

    .line 18
    if-ge v2, v4, :cond_0

    .line 19
    .line 20
    const-string v4, " data={"

    .line 21
    .line 22
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    aget-object v3, v3, v2

    .line 26
    .line 27
    invoke-virtual {v3, v0}, Lcom/android/server/pm/ShareTargetInfo$TargetData;->toStringInner(Ljava/lang/StringBuilder;)V

    .line 28
    .line 29
    .line 30
    const-string/jumbo v3, "}"

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    add-int/lit8 v2, v2, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/android/server/pm/ShareTargetInfo;->mCategories:[Ljava/lang/String;

    .line 40
    .line 41
    array-length v3, v2

    .line 42
    if-ge v1, v3, :cond_1

    .line 43
    .line 44
    const-string v3, " category="

    .line 45
    .line 46
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    aget-object v2, v2, v1

    .line 50
    .line 51
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    add-int/lit8 v1, v1, 0x1

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    return-object p0
.end method
