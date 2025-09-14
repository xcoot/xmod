.class final Lcom/android/server/om/OverlayManagerSettings$Serializer;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field static final CURRENT_VERSION:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static persist(Ljava/util/ArrayList;Ljava/io/OutputStream;)V
    .locals 9

    .line 1
    invoke-static {p1}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-interface {p1, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "http://xmlpull.org/v1/doc/features.html#indent-output"

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    invoke-interface {p1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 15
    .line 16
    .line 17
    const-string/jumbo v0, "overlays"

    .line 18
    .line 19
    .line 20
    invoke-interface {p1, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 21
    .line 22
    .line 23
    const-string/jumbo v3, "version"

    .line 24
    .line 25
    .line 26
    const/4 v4, 0x4

    .line 27
    invoke-interface {p1, v1, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    const/4 v4, 0x0

    .line 35
    :goto_0
    if-ge v4, v3, :cond_0

    .line 36
    .line 37
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    check-cast v5, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    .line 42
    .line 43
    const-string v6, "item"

    .line 44
    .line 45
    invoke-interface {p1, v1, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 46
    .line 47
    .line 48
    iget-object v7, v5, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mOverlay:Landroid/content/om/OverlayIdentifier;

    .line 49
    .line 50
    invoke-virtual {v7}, Landroid/content/om/OverlayIdentifier;->getPackageName()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v7

    .line 54
    const-string/jumbo v8, "packageName"

    .line 55
    .line 56
    .line 57
    invoke-static {p1, v8, v7}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 58
    .line 59
    .line 60
    iget-object v7, v5, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mOverlay:Landroid/content/om/OverlayIdentifier;

    .line 61
    .line 62
    invoke-virtual {v7}, Landroid/content/om/OverlayIdentifier;->getOverlayName()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v7

    .line 66
    const-string/jumbo v8, "overlayName"

    .line 67
    .line 68
    .line 69
    invoke-static {p1, v8, v7}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 70
    .line 71
    .line 72
    const-string/jumbo v7, "userId"

    .line 73
    .line 74
    .line 75
    iget v8, v5, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mUserId:I

    .line 76
    .line 77
    invoke-interface {p1, v1, v7, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 78
    .line 79
    .line 80
    const-string/jumbo v7, "targetPackageName"

    .line 81
    .line 82
    .line 83
    iget-object v8, v5, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mTargetPackageName:Ljava/lang/String;

    .line 84
    .line 85
    invoke-static {p1, v7, v8}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 86
    .line 87
    .line 88
    const-string/jumbo v7, "targetOverlayableName"

    .line 89
    .line 90
    .line 91
    iget-object v8, v5, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mTargetOverlayableName:Ljava/lang/String;

    .line 92
    .line 93
    invoke-static {p1, v7, v8}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 94
    .line 95
    .line 96
    iget-object v7, v5, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mBaseCodePath:Ljava/lang/String;

    .line 97
    .line 98
    const-string v8, "baseCodePath"

    .line 99
    .line 100
    invoke-static {p1, v8, v7}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 101
    .line 102
    .line 103
    iget v7, v5, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mState:I

    .line 104
    .line 105
    const-string/jumbo v8, "state"

    .line 106
    .line 107
    .line 108
    invoke-interface {p1, v1, v8, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 109
    .line 110
    .line 111
    iget-boolean v7, v5, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mIsEnabled:Z

    .line 112
    .line 113
    const-string v8, "isEnabled"

    .line 114
    .line 115
    invoke-static {p1, v8, v7}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 116
    .line 117
    .line 118
    iget-boolean v7, v5, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mIsMutable:Z

    .line 119
    .line 120
    xor-int/2addr v7, v2

    .line 121
    const-string v8, "isStatic"

    .line 122
    .line 123
    invoke-static {p1, v8, v7}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 124
    .line 125
    .line 126
    iget v7, v5, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mPriority:I

    .line 127
    .line 128
    const-string/jumbo v8, "priority"

    .line 129
    .line 130
    .line 131
    invoke-interface {p1, v1, v8, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 132
    .line 133
    .line 134
    iget-object v7, v5, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mCategory:Ljava/lang/String;

    .line 135
    .line 136
    const-string v8, "category"

    .line 137
    .line 138
    invoke-static {p1, v8, v7}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 139
    .line 140
    .line 141
    const-string v7, "fabricated"

    .line 142
    .line 143
    iget-boolean v5, v5, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mIsFabricated:Z

    .line 144
    .line 145
    invoke-static {p1, v7, v5}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 146
    .line 147
    .line 148
    invoke-interface {p1, v1, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 149
    .line 150
    .line 151
    add-int/lit8 v4, v4, 0x1

    .line 152
    .line 153
    goto :goto_0

    .line 154
    :cond_0
    invoke-interface {p1, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 155
    .line 156
    .line 157
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    .line 158
    .line 159
    .line 160
    return-void
.end method

.method public static restore(Ljava/util/ArrayList;Ljava/io/InputStream;)V
    .locals 17

    .line 1
    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->clear()V

    .line 2
    .line 3
    .line 4
    invoke-static/range {p1 .. p1}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const-string/jumbo v1, "overlays"

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    const-string/jumbo v2, "version"

    .line 16
    .line 17
    .line 18
    invoke-interface {v0, v1, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    const/4 v3, 0x4

    .line 23
    const/4 v4, 0x1

    .line 24
    if-eq v2, v3, :cond_2

    .line 25
    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    if-eq v2, v4, :cond_1

    .line 29
    .line 30
    const/4 v3, 0x2

    .line 31
    if-eq v2, v3, :cond_1

    .line 32
    .line 33
    const/4 v3, 0x3

    .line 34
    if-ne v2, v3, :cond_0

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 38
    .line 39
    const-string/jumbo v1, "unrecognized version "

    .line 40
    .line 41
    .line 42
    invoke-static {v2, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw v0

    .line 50
    :cond_1
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 51
    .line 52
    const-string/jumbo v1, "old version "

    .line 53
    .line 54
    .line 55
    const-string v3, "; ignoring"

    .line 56
    .line 57
    invoke-static {v2, v1, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw v0

    .line 65
    :cond_2
    :goto_0
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    :goto_1
    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    if-eqz v3, :cond_4

    .line 74
    .line 75
    const-string v3, "item"

    .line 76
    .line 77
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    if-eqz v3, :cond_3

    .line 86
    .line 87
    new-instance v6, Landroid/content/om/OverlayIdentifier;

    .line 88
    .line 89
    const-string/jumbo v3, "packageName"

    .line 90
    .line 91
    .line 92
    invoke-static {v0, v3}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    const-string/jumbo v5, "overlayName"

    .line 97
    .line 98
    .line 99
    invoke-static {v0, v5}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v5

    .line 103
    invoke-direct {v6, v3, v5}, Landroid/content/om/OverlayIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    const-string/jumbo v3, "userId"

    .line 107
    .line 108
    .line 109
    invoke-interface {v0, v1, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    .line 111
    .line 112
    move-result v7

    .line 113
    const-string/jumbo v3, "targetPackageName"

    .line 114
    .line 115
    .line 116
    invoke-static {v0, v3}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v8

    .line 120
    const-string/jumbo v3, "targetOverlayableName"

    .line 121
    .line 122
    .line 123
    invoke-static {v0, v3}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v9

    .line 127
    const-string v3, "baseCodePath"

    .line 128
    .line 129
    invoke-static {v0, v3}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v10

    .line 133
    const-string/jumbo v3, "state"

    .line 134
    .line 135
    .line 136
    invoke-interface {v0, v1, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    .line 138
    .line 139
    move-result v11

    .line 140
    const-string v3, "isEnabled"

    .line 141
    .line 142
    const/4 v5, 0x0

    .line 143
    invoke-interface {v0, v1, v3, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 144
    .line 145
    .line 146
    move-result v12

    .line 147
    const-string v3, "isStatic"

    .line 148
    .line 149
    invoke-interface {v0, v1, v3, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 150
    .line 151
    .line 152
    move-result v3

    .line 153
    const-string/jumbo v13, "priority"

    .line 154
    .line 155
    .line 156
    invoke-interface {v0, v1, v13}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    .line 158
    .line 159
    move-result v14

    .line 160
    const-string v13, "category"

    .line 161
    .line 162
    invoke-static {v0, v13}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v15

    .line 166
    const-string v13, "fabricated"

    .line 167
    .line 168
    invoke-interface {v0, v1, v13, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 169
    .line 170
    .line 171
    move-result v16

    .line 172
    new-instance v13, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    .line 173
    .line 174
    xor-int/2addr v3, v4

    .line 175
    move-object v5, v13

    .line 176
    move-object v1, v13

    .line 177
    move v13, v3

    .line 178
    invoke-direct/range {v5 .. v16}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;-><init>(Landroid/content/om/OverlayIdentifier;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZILjava/lang/String;Z)V

    .line 179
    .line 180
    .line 181
    move-object/from16 v3, p0

    .line 182
    .line 183
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    const/4 v1, 0x0

    .line 187
    goto :goto_1

    .line 188
    :cond_3
    move-object/from16 v3, p0

    .line 189
    .line 190
    goto :goto_1

    .line 191
    :cond_4
    return-void
.end method
