.class public final Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

.field public mXmlVersion:F

.field public xmlFileErrorCode:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/KeyCustomizationInfoManager;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;->FAIL:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->xmlFileErrorCode:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;

    .line 7
    .line 8
    const/high16 v0, -0x40800000    # -1.0f

    .line 9
    .line 10
    iput v0, p0, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->mXmlVersion:F

    .line 11
    .line 12
    iput-object p1, p0, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    .line 13
    .line 14
    return-void
.end method

.method public static getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    return p2

    .line 13
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0
.end method

.method public static parseHotKeysAttributes(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/SparseArray;)V
    .locals 11

    .line 1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x0

    .line 11
    move v4, v2

    .line 12
    move v7, v4

    .line 13
    move-object v5, v3

    .line 14
    move-object v6, v5

    .line 15
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v8

    .line 19
    const/4 v9, 0x2

    .line 20
    const/4 v10, 0x1

    .line 21
    if-eq v1, v9, :cond_3

    .line 22
    .line 23
    const/4 v9, 0x3

    .line 24
    if-eq v1, v9, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    if-eqz v4, :cond_2

    .line 28
    .line 29
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 30
    .line 31
    .line 32
    move-result v9

    .line 33
    if-nez v9, :cond_2

    .line 34
    .line 35
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 36
    .line 37
    .line 38
    move-result v9

    .line 39
    if-nez v9, :cond_2

    .line 40
    .line 41
    new-instance v9, Landroid/content/ComponentName;

    .line 42
    .line 43
    invoke-direct {v9, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v4, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    :cond_2
    if-eqz v0, :cond_4

    .line 50
    .line 51
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v8

    .line 55
    if-eqz v8, :cond_4

    .line 56
    .line 57
    move v7, v10

    .line 58
    goto :goto_0

    .line 59
    :cond_3
    const-string v9, "key"

    .line 60
    .line 61
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v8

    .line 65
    if-eqz v8, :cond_4

    .line 66
    .line 67
    const-string v4, "keyCode"

    .line 68
    .line 69
    invoke-static {p0, v4, v2}, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    .line 70
    .line 71
    .line 72
    move-result v4

    .line 73
    const-string/jumbo v5, "package_name"

    .line 74
    .line 75
    .line 76
    invoke-interface {p0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    const-string v6, "class_name"

    .line 81
    .line 82
    invoke-interface {p0, v3, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v6

    .line 86
    :cond_4
    :goto_0
    if-nez v7, :cond_5

    .line 87
    .line 88
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    :cond_5
    if-eq v1, v10, :cond_6

    .line 93
    .line 94
    if-eqz v7, :cond_0

    .line 95
    .line 96
    :cond_6
    return-void
.end method


# virtual methods
.method public final addHotKeyInfo(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 7

    .line 1
    check-cast p1, Lcom/android/internal/util/FastXmlSerializer;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const-string v1, "hot_key"

    .line 5
    .line 6
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/FastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mHotKeyMap:Landroid/util/SparseArray;

    .line 12
    .line 13
    sget-object v2, Lcom/android/server/policy/KeyCustomizationConstants;->VOLD_DECRYPT:Ljava/lang/String;

    .line 14
    .line 15
    if-nez p0, :cond_0

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_0
    const/4 v2, 0x0

    .line 19
    :goto_0
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-ge v2, v3, :cond_2

    .line 24
    .line 25
    const-string v3, "key"

    .line 26
    .line 27
    invoke-virtual {p1, v0, v3}, Lcom/android/internal/util/FastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    invoke-virtual {p0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    check-cast v5, Landroid/content/ComponentName;

    .line 39
    .line 40
    const-string v6, "keyCode"

    .line 41
    .line 42
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    invoke-virtual {p1, v0, v6, v4}, Lcom/android/internal/util/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 47
    .line 48
    .line 49
    if-eqz v5, :cond_1

    .line 50
    .line 51
    const-string/jumbo v4, "package_name"

    .line 52
    .line 53
    .line 54
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v6

    .line 58
    invoke-virtual {p1, v0, v4, v6}, Lcom/android/internal/util/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 59
    .line 60
    .line 61
    const-string v4, "class_name"

    .line 62
    .line 63
    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    invoke-virtual {p1, v0, v4, v5}, Lcom/android/internal/util/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 68
    .line 69
    .line 70
    :cond_1
    invoke-virtual {p1, v0, v3}, Lcom/android/internal/util/FastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 71
    .line 72
    .line 73
    add-int/lit8 v2, v2, 0x1

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_2
    :goto_1
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/FastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public final addKeyInfo(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 19

    .line 1
    sget-object v1, Lcom/android/server/policy/KeyCustomizationConstants;->SUPPORT_PRESS_TYPE_ALL:[I

    .line 2
    .line 3
    array-length v2, v1

    .line 4
    const/4 v4, 0x0

    .line 5
    :goto_0
    if-ge v4, v2, :cond_f

    .line 6
    .line 7
    aget v5, v1, v4

    .line 8
    .line 9
    move-object/from16 v6, p0

    .line 10
    .line 11
    iget-object v7, v6, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    .line 12
    .line 13
    invoke-virtual {v7, v5}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getInfoMapLocked(I)Landroid/util/SparseArray;

    .line 14
    .line 15
    .line 16
    move-result-object v7

    .line 17
    and-int/lit8 v8, v5, 0x3

    .line 18
    .line 19
    const/4 v9, 0x0

    .line 20
    if-eqz v8, :cond_0

    .line 21
    .line 22
    const-string/jumbo v5, "press"

    .line 23
    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_0
    and-int/lit8 v8, v5, 0x4

    .line 27
    .line 28
    if-eqz v8, :cond_1

    .line 29
    .line 30
    const-string v5, "long"

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    and-int/lit8 v8, v5, 0x8

    .line 34
    .line 35
    if-eqz v8, :cond_2

    .line 36
    .line 37
    const-string v5, "double"

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_2
    and-int/lit8 v8, v5, 0x10

    .line 41
    .line 42
    if-eqz v8, :cond_3

    .line 43
    .line 44
    const-string/jumbo v5, "triple"

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_3
    and-int/lit8 v8, v5, 0x20

    .line 49
    .line 50
    if-eqz v8, :cond_4

    .line 51
    .line 52
    const-string/jumbo v5, "quadruple"

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_4
    and-int/lit8 v5, v5, 0x40

    .line 57
    .line 58
    if-eqz v5, :cond_5

    .line 59
    .line 60
    const-string/jumbo v5, "quintuple"

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_5
    move-object v5, v9

    .line 65
    :goto_1
    sget-object v8, Lcom/android/server/policy/KeyCustomizationConstants;->VOLD_DECRYPT:Ljava/lang/String;

    .line 66
    .line 67
    move-object/from16 v8, p1

    .line 68
    .line 69
    check-cast v8, Lcom/android/internal/util/FastXmlSerializer;

    .line 70
    .line 71
    invoke-virtual {v8, v9, v5}, Lcom/android/internal/util/FastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 72
    .line 73
    .line 74
    const/4 v10, 0x0

    .line 75
    :goto_2
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    .line 76
    .line 77
    .line 78
    move-result v11

    .line 79
    if-ge v10, v11, :cond_e

    .line 80
    .line 81
    invoke-virtual {v7, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v11

    .line 85
    check-cast v11, Landroid/util/SparseArray;

    .line 86
    .line 87
    const/4 v12, 0x0

    .line 88
    :goto_3
    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    .line 89
    .line 90
    .line 91
    move-result v13

    .line 92
    if-ge v12, v13, :cond_d

    .line 93
    .line 94
    const-string v13, "key"

    .line 95
    .line 96
    invoke-virtual {v8, v9, v13}, Lcom/android/internal/util/FastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v11, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v14

    .line 103
    check-cast v14, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    .line 104
    .line 105
    if-nez v14, :cond_6

    .line 106
    .line 107
    move-object v15, v1

    .line 108
    const/4 v14, 0x1

    .line 109
    goto/16 :goto_5

    .line 110
    .line 111
    :cond_6
    iget v15, v14, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->keyCode:I

    .line 112
    .line 113
    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v15

    .line 117
    const-string v3, "keyCode"

    .line 118
    .line 119
    invoke-virtual {v8, v9, v3, v15}, Lcom/android/internal/util/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 120
    .line 121
    .line 122
    iget v3, v14, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->action:I

    .line 123
    .line 124
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    const-string v15, "launchAction"

    .line 129
    .line 130
    invoke-virtual {v8, v9, v15, v3}, Lcom/android/internal/util/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 131
    .line 132
    .line 133
    iget v3, v14, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->dispatching:I

    .line 134
    .line 135
    const/4 v15, -0x1

    .line 136
    if-ne v3, v15, :cond_7

    .line 137
    .line 138
    const-string v15, "dispatching"

    .line 139
    .line 140
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v3

    .line 144
    invoke-virtual {v8, v9, v15, v3}, Lcom/android/internal/util/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 145
    .line 146
    .line 147
    :cond_7
    iget v3, v14, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->id:I

    .line 148
    .line 149
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v3

    .line 153
    const-string v15, "id"

    .line 154
    .line 155
    invoke-virtual {v8, v9, v15, v3}, Lcom/android/internal/util/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 156
    .line 157
    .line 158
    iget v3, v14, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->userId:I

    .line 159
    .line 160
    const/4 v15, -0x2

    .line 161
    if-eq v3, v15, :cond_8

    .line 162
    .line 163
    const-string/jumbo v15, "userId"

    .line 164
    .line 165
    .line 166
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v3

    .line 170
    invoke-virtual {v8, v9, v15, v3}, Lcom/android/internal/util/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 171
    .line 172
    .line 173
    :cond_8
    move-object v15, v1

    .line 174
    iget-wide v0, v14, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->longPressTimeout:J

    .line 175
    .line 176
    const-wide/16 v16, 0x0

    .line 177
    .line 178
    cmp-long v18, v0, v16

    .line 179
    .line 180
    if-eqz v18, :cond_9

    .line 181
    .line 182
    const-string v3, "longPressTimeoutMs"

    .line 183
    .line 184
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    invoke-virtual {v8, v9, v3, v0}, Lcom/android/internal/util/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 189
    .line 190
    .line 191
    :cond_9
    iget-wide v0, v14, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->multiPressTimeout:J

    .line 192
    .line 193
    cmp-long v3, v0, v16

    .line 194
    .line 195
    if-eqz v3, :cond_a

    .line 196
    .line 197
    const-string/jumbo v3, "multiPressTimeoutMs"

    .line 198
    .line 199
    .line 200
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    invoke-virtual {v8, v9, v3, v0}, Lcom/android/internal/util/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 205
    .line 206
    .line 207
    :cond_a
    iget v0, v14, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->id:I

    .line 208
    .line 209
    const/16 v1, 0x7d3

    .line 210
    .line 211
    if-ne v0, v1, :cond_b

    .line 212
    .line 213
    iget-object v0, v14, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->ownerPackage:Ljava/lang/String;

    .line 214
    .line 215
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 216
    .line 217
    .line 218
    move-result v0

    .line 219
    if-nez v0, :cond_b

    .line 220
    .line 221
    const-string/jumbo v0, "ownerPackage"

    .line 222
    .line 223
    .line 224
    iget-object v1, v14, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->ownerPackage:Ljava/lang/String;

    .line 225
    .line 226
    invoke-virtual {v8, v9, v0, v1}, Lcom/android/internal/util/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 227
    .line 228
    .line 229
    :cond_b
    const-string v0, "intent"

    .line 230
    .line 231
    invoke-virtual {v8, v9, v0}, Lcom/android/internal/util/FastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 232
    .line 233
    .line 234
    iget-object v1, v14, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->intent:Landroid/content/Intent;

    .line 235
    .line 236
    const-string v3, "action"

    .line 237
    .line 238
    if-eqz v1, :cond_c

    .line 239
    .line 240
    const/4 v14, 0x1

    .line 241
    invoke-virtual {v1, v14}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v1

    .line 245
    invoke-virtual {v8, v9, v3, v1}, Lcom/android/internal/util/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 246
    .line 247
    .line 248
    goto :goto_4

    .line 249
    :cond_c
    const/4 v14, 0x1

    .line 250
    const-string/jumbo v1, "null"

    .line 251
    .line 252
    .line 253
    invoke-virtual {v8, v9, v3, v1}, Lcom/android/internal/util/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 254
    .line 255
    .line 256
    :goto_4
    invoke-virtual {v8, v9, v0}, Lcom/android/internal/util/FastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 257
    .line 258
    .line 259
    invoke-virtual {v8, v9, v13}, Lcom/android/internal/util/FastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 260
    .line 261
    .line 262
    :goto_5
    add-int/2addr v12, v14

    .line 263
    move-object v1, v15

    .line 264
    goto/16 :goto_3

    .line 265
    .line 266
    :cond_d
    move-object v15, v1

    .line 267
    const/4 v14, 0x1

    .line 268
    add-int/2addr v10, v14

    .line 269
    goto/16 :goto_2

    .line 270
    .line 271
    :cond_e
    move-object v15, v1

    .line 272
    const/4 v14, 0x1

    .line 273
    invoke-virtual {v8, v9, v5}, Lcom/android/internal/util/FastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 274
    .line 275
    .line 276
    add-int/2addr v4, v14

    .line 277
    move-object v1, v15

    .line 278
    goto/16 :goto_0

    .line 279
    .line 280
    :cond_f
    return-void
.end method

.method public final loadSettingsLocked(I)V
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "loadSettingsLocked, userId="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "KeyCustomizationInfoXmlUtils"

    .line 16
    .line 17
    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    new-instance v0, Ljava/io/File;

    .line 21
    .line 22
    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const-string v2, "key_customize_info.xml"

    .line 27
    .line 28
    invoke-direct {v0, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const/4 p1, 0x0

    .line 32
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    .line 33
    .line 34
    new-instance v3, Ljava/io/InputStreamReader;

    .line 35
    .line 36
    new-instance v4, Ljava/io/FileInputStream;

    .line 37
    .line 38
    invoke-direct {v4, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 39
    .line 40
    .line 41
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 42
    .line 43
    invoke-direct {v3, v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 44
    .line 45
    .line 46
    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 47
    .line 48
    .line 49
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-interface {v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 54
    .line 55
    .line 56
    :cond_0
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    const/4 v5, 0x2

    .line 61
    if-ne v4, v5, :cond_8

    .line 62
    .line 63
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    const-string v6, "keycustomize_info_version"

    .line 68
    .line 69
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v6

    .line 73
    if-eqz v6, :cond_1

    .line 74
    .line 75
    const-string/jumbo v5, "version"

    .line 76
    .line 77
    .line 78
    invoke-interface {v3, p1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 83
    .line 84
    .line 85
    move-result v6

    .line 86
    if-nez v6, :cond_8

    .line 87
    .line 88
    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 89
    .line 90
    .line 91
    move-result v5

    .line 92
    iput v5, p0, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->mXmlVersion:F

    .line 93
    .line 94
    goto/16 :goto_0

    .line 95
    .line 96
    :catchall_0
    move-exception p0

    .line 97
    move-object p1, v2

    .line 98
    goto/16 :goto_5

    .line 99
    .line 100
    :catch_0
    move-exception p1

    .line 101
    goto/16 :goto_2

    .line 102
    .line 103
    :catch_1
    move-object p1, v2

    .line 104
    goto/16 :goto_3

    .line 105
    .line 106
    :cond_1
    const-string/jumbo v6, "press"

    .line 107
    .line 108
    .line 109
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v6

    .line 113
    if-eqz v6, :cond_2

    .line 114
    .line 115
    const/4 v5, 0x3

    .line 116
    invoke-virtual {p0, v3, v5}, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->parseKeyCustomizationInfoByPress(Lorg/xmlpull/v1/XmlPullParser;I)V

    .line 117
    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_2
    const-string v6, "long"

    .line 121
    .line 122
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result v6

    .line 126
    if-eqz v6, :cond_3

    .line 127
    .line 128
    const/4 v5, 0x4

    .line 129
    invoke-virtual {p0, v3, v5}, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->parseKeyCustomizationInfoByPress(Lorg/xmlpull/v1/XmlPullParser;I)V

    .line 130
    .line 131
    .line 132
    goto :goto_0

    .line 133
    :cond_3
    const-string v6, "double"

    .line 134
    .line 135
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    move-result v6

    .line 139
    if-eqz v6, :cond_4

    .line 140
    .line 141
    const/16 v5, 0x8

    .line 142
    .line 143
    invoke-virtual {p0, v3, v5}, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->parseKeyCustomizationInfoByPress(Lorg/xmlpull/v1/XmlPullParser;I)V

    .line 144
    .line 145
    .line 146
    goto :goto_0

    .line 147
    :cond_4
    const-string/jumbo v6, "triple"

    .line 148
    .line 149
    .line 150
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    move-result v6

    .line 154
    if-eqz v6, :cond_5

    .line 155
    .line 156
    const/16 v5, 0x10

    .line 157
    .line 158
    invoke-virtual {p0, v3, v5}, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->parseKeyCustomizationInfoByPress(Lorg/xmlpull/v1/XmlPullParser;I)V

    .line 159
    .line 160
    .line 161
    goto :goto_0

    .line 162
    :cond_5
    const-string/jumbo v6, "quadruple"

    .line 163
    .line 164
    .line 165
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    move-result v6

    .line 169
    if-eqz v6, :cond_6

    .line 170
    .line 171
    const/16 v5, 0x20

    .line 172
    .line 173
    invoke-virtual {p0, v3, v5}, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->parseKeyCustomizationInfoByPress(Lorg/xmlpull/v1/XmlPullParser;I)V

    .line 174
    .line 175
    .line 176
    goto :goto_0

    .line 177
    :cond_6
    const-string/jumbo v6, "quintuple"

    .line 178
    .line 179
    .line 180
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    move-result v6

    .line 184
    if-eqz v6, :cond_7

    .line 185
    .line 186
    const/16 v5, 0x40

    .line 187
    .line 188
    invoke-virtual {p0, v3, v5}, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->parseKeyCustomizationInfoByPress(Lorg/xmlpull/v1/XmlPullParser;I)V

    .line 189
    .line 190
    .line 191
    goto :goto_0

    .line 192
    :cond_7
    const-string v6, "hot_key"

    .line 193
    .line 194
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    move-result v5

    .line 198
    if-eqz v5, :cond_8

    .line 199
    .line 200
    iget-object v5, p0, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    .line 201
    .line 202
    iget-object v5, v5, Lcom/android/server/policy/KeyCustomizationInfoManager;->mHotKeyMap:Landroid/util/SparseArray;

    .line 203
    .line 204
    invoke-virtual {v5}, Landroid/util/SparseArray;->clear()V

    .line 205
    .line 206
    .line 207
    invoke-static {v3, v5}, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->parseHotKeysAttributes(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/SparseArray;)V

    .line 208
    .line 209
    .line 210
    :cond_8
    :goto_0
    const/4 v5, 0x1

    .line 211
    if-ne v4, v5, :cond_0

    .line 212
    .line 213
    sget-object p1, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;->SUCCESS:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;

    .line 214
    .line 215
    iput-object p1, p0, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->xmlFileErrorCode:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 216
    .line 217
    :goto_1
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 218
    .line 219
    .line 220
    goto :goto_4

    .line 221
    :catchall_1
    move-exception p0

    .line 222
    goto :goto_5

    .line 223
    :catch_2
    move-exception v2

    .line 224
    move-object v7, v2

    .line 225
    move-object v2, p1

    .line 226
    move-object p1, v7

    .line 227
    :goto_2
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    .line 228
    .line 229
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 230
    .line 231
    .line 232
    const-string v4, "Unable to parse "

    .line 233
    .line 234
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    const-string v0, ". Error "

    .line 241
    .line 242
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    invoke-static {v1, v0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 250
    .line 251
    .line 252
    sget-object p1, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;->UNKNOWN_ERROR:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;

    .line 253
    .line 254
    iput-object p1, p0, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->xmlFileErrorCode:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 255
    .line 256
    goto :goto_1

    .line 257
    :catch_3
    :goto_3
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    .line 258
    .line 259
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 260
    .line 261
    .line 262
    const-string v3, "File not found "

    .line 263
    .line 264
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v0

    .line 274
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    .line 276
    .line 277
    sget-object v0, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;->FILE_NOT_FOUND:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;

    .line 278
    .line 279
    iput-object v0, p0, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->xmlFileErrorCode:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 280
    .line 281
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 282
    .line 283
    .line 284
    :goto_4
    return-void

    .line 285
    :goto_5
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 286
    .line 287
    .line 288
    throw p0
.end method

.method public final parseKeyCustomizationInfoByPress(Lorg/xmlpull/v1/XmlPullParser;I)V
    .locals 12

    .line 1
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    .line 2
    .line 3
    invoke-virtual {p0, p2}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getInfoMapLocked(I)Landroid/util/SparseArray;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 8
    .line 9
    .line 10
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const/4 v3, 0x0

    .line 19
    const/4 v4, 0x0

    .line 20
    move-object v5, v3

    .line 21
    move v6, v4

    .line 22
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v7

    .line 26
    const/4 v8, 0x2

    .line 27
    const-string v9, "key"

    .line 28
    .line 29
    const/4 v10, 0x1

    .line 30
    if-eq v2, v8, :cond_4

    .line 31
    .line 32
    const/4 v8, 0x3

    .line 33
    if-eq v2, v8, :cond_1

    .line 34
    .line 35
    goto/16 :goto_3

    .line 36
    .line 37
    :cond_1
    if-eqz v5, :cond_3

    .line 38
    .line 39
    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v8

    .line 43
    if-eqz v8, :cond_3

    .line 44
    .line 45
    iget v8, v5, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->keyCode:I

    .line 46
    .line 47
    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v8

    .line 51
    if-nez v8, :cond_2

    .line 52
    .line 53
    iget v8, v5, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->keyCode:I

    .line 54
    .line 55
    new-instance v9, Landroid/util/SparseArray;

    .line 56
    .line 57
    invoke-direct {v9}, Landroid/util/SparseArray;-><init>()V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v8, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    :cond_2
    iget v8, v5, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->keyCode:I

    .line 64
    .line 65
    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v8

    .line 69
    check-cast v8, Landroid/util/SparseArray;

    .line 70
    .line 71
    iget v9, v5, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->id:I

    .line 72
    .line 73
    invoke-virtual {v8, v9, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    :cond_3
    if-eqz v1, :cond_c

    .line 77
    .line 78
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v7

    .line 82
    if-eqz v7, :cond_c

    .line 83
    .line 84
    move v6, v10

    .line 85
    goto/16 :goto_3

    .line 86
    .line 87
    :cond_4
    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v8

    .line 91
    const/16 v9, 0x7d3

    .line 92
    .line 93
    if-eqz v8, :cond_7

    .line 94
    .line 95
    new-instance v5, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    .line 96
    .line 97
    invoke-direct {v5}, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;-><init>()V

    .line 98
    .line 99
    .line 100
    const-string v7, "keyCode"

    .line 101
    .line 102
    invoke-static {p1, v7, v4}, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    .line 103
    .line 104
    .line 105
    move-result v7

    .line 106
    iput v7, v5, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->keyCode:I

    .line 107
    .line 108
    const-string v7, "launchAction"

    .line 109
    .line 110
    const/4 v8, -0x1

    .line 111
    invoke-static {p1, v7, v8}, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    .line 112
    .line 113
    .line 114
    move-result v7

    .line 115
    iput v7, v5, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->action:I

    .line 116
    .line 117
    const-string v7, "dispatching"

    .line 118
    .line 119
    invoke-static {p1, v7, v4}, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    .line 120
    .line 121
    .line 122
    move-result v7

    .line 123
    iput v7, v5, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->dispatching:I

    .line 124
    .line 125
    const-string v7, "id"

    .line 126
    .line 127
    invoke-static {p1, v7, v8}, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    .line 128
    .line 129
    .line 130
    move-result v7

    .line 131
    iput v7, v5, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->id:I

    .line 132
    .line 133
    const-string/jumbo v7, "userId"

    .line 134
    .line 135
    .line 136
    const/4 v8, -0x2

    .line 137
    invoke-static {p1, v7, v8}, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    .line 138
    .line 139
    .line 140
    move-result v7

    .line 141
    iput v7, v5, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->userId:I

    .line 142
    .line 143
    const-string v7, "longPressTimeoutMs"

    .line 144
    .line 145
    invoke-static {p1, v7, v4}, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    .line 146
    .line 147
    .line 148
    move-result v7

    .line 149
    int-to-long v7, v7

    .line 150
    iput-wide v7, v5, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->longPressTimeout:J

    .line 151
    .line 152
    const-string/jumbo v7, "multiPressTimeoutMs"

    .line 153
    .line 154
    .line 155
    invoke-static {p1, v7, v4}, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    .line 156
    .line 157
    .line 158
    move-result v7

    .line 159
    int-to-long v7, v7

    .line 160
    iput-wide v7, v5, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->multiPressTimeout:J

    .line 161
    .line 162
    iget v7, v5, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->id:I

    .line 163
    .line 164
    const/16 v8, 0x44e

    .line 165
    .line 166
    if-ne v7, v8, :cond_5

    .line 167
    .line 168
    const/16 v7, 0x3b7

    .line 169
    .line 170
    iput v7, v5, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->id:I

    .line 171
    .line 172
    :cond_5
    iget v7, v5, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->id:I

    .line 173
    .line 174
    if-ne v7, v9, :cond_6

    .line 175
    .line 176
    const-string/jumbo v7, "ownerPackage"

    .line 177
    .line 178
    .line 179
    invoke-interface {p1, v3, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v7

    .line 183
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 184
    .line 185
    .line 186
    move-result v8

    .line 187
    if-nez v8, :cond_6

    .line 188
    .line 189
    iput-object v7, v5, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->ownerPackage:Ljava/lang/String;

    .line 190
    .line 191
    invoke-virtual {p0, v7}, Lcom/android/server/policy/KeyCustomizationInfoManager;->addOwnerPackageList(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    :cond_6
    iput p2, v5, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->press:I

    .line 195
    .line 196
    goto/16 :goto_3

    .line 197
    .line 198
    :cond_7
    const-string v8, "intent"

    .line 199
    .line 200
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 201
    .line 202
    .line 203
    move-result v7

    .line 204
    if-eqz v7, :cond_c

    .line 205
    .line 206
    if-eqz v5, :cond_c

    .line 207
    .line 208
    const-string v7, "action"

    .line 209
    .line 210
    invoke-interface {p1, v3, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v7

    .line 214
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 215
    .line 216
    .line 217
    move-result v8

    .line 218
    const-string v11, "KeyCustomizationInfoXmlUtils"

    .line 219
    .line 220
    if-nez v8, :cond_9

    .line 221
    .line 222
    const-string/jumbo v8, "null"

    .line 223
    .line 224
    .line 225
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 226
    .line 227
    .line 228
    move-result v8

    .line 229
    if-eqz v8, :cond_8

    .line 230
    .line 231
    goto :goto_0

    .line 232
    :cond_8
    :try_start_0
    sget-object v8, Lcom/android/server/policy/KeyCustomizationConstants;->VOLD_DECRYPT:Ljava/lang/String;

    .line 233
    .line 234
    invoke-static {v7, v10}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    .line 235
    .line 236
    .line 237
    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    goto :goto_1

    .line 239
    :catch_0
    move-exception v7

    .line 240
    const-string/jumbo v8, "restoreFromXml failed "

    .line 241
    .line 242
    .line 243
    invoke-static {v11, v8, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 244
    .line 245
    .line 246
    new-instance v7, Landroid/content/Intent;

    .line 247
    .line 248
    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 249
    .line 250
    .line 251
    goto :goto_1

    .line 252
    :cond_9
    :goto_0
    const-string/jumbo v7, "restoreFromXml intent info is empty or null"

    .line 253
    .line 254
    .line 255
    invoke-static {v11, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    .line 257
    .line 258
    move-object v7, v3

    .line 259
    :goto_1
    iput-object v7, v5, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->intent:Landroid/content/Intent;

    .line 260
    .line 261
    if-eqz v7, :cond_c

    .line 262
    .line 263
    iget v8, v5, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->id:I

    .line 264
    .line 265
    if-ne v8, v9, :cond_c

    .line 266
    .line 267
    iget-object v8, v5, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->ownerPackage:Ljava/lang/String;

    .line 268
    .line 269
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 270
    .line 271
    .line 272
    move-result v8

    .line 273
    if-eqz v8, :cond_c

    .line 274
    .line 275
    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 276
    .line 277
    .line 278
    move-result-object v8

    .line 279
    if-eqz v8, :cond_a

    .line 280
    .line 281
    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 282
    .line 283
    .line 284
    move-result-object v8

    .line 285
    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v8

    .line 289
    goto :goto_2

    .line 290
    :cond_a
    move-object v8, v3

    .line 291
    :goto_2
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 292
    .line 293
    .line 294
    move-result v9

    .line 295
    if-eqz v9, :cond_b

    .line 296
    .line 297
    invoke-virtual {v7}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v8

    .line 301
    :cond_b
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 302
    .line 303
    .line 304
    move-result v7

    .line 305
    if-nez v7, :cond_c

    .line 306
    .line 307
    iput-object v8, v5, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->ownerPackage:Ljava/lang/String;

    .line 308
    .line 309
    invoke-virtual {p0, v8}, Lcom/android/server/policy/KeyCustomizationInfoManager;->addOwnerPackageList(Ljava/lang/String;)V

    .line 310
    .line 311
    .line 312
    :cond_c
    :goto_3
    if-nez v6, :cond_d

    .line 313
    .line 314
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 315
    .line 316
    .line 317
    move-result v2

    .line 318
    :cond_d
    if-eq v2, v10, :cond_e

    .line 319
    .line 320
    if-eqz v6, :cond_0

    .line 321
    .line 322
    :cond_e
    return-void
.end method

.method public final saveSettingsLocked(I)V
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "saveSettingsLocked, Callers="

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const/4 v1, 0x5

    .line 10
    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v1, "KeyCustomizationInfoXmlUtils"

    .line 22
    .line 23
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    new-instance v0, Ljava/io/StringWriter;

    .line 27
    .line 28
    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 29
    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    :try_start_0
    new-instance v3, Lcom/android/internal/util/FastXmlSerializer;

    .line 33
    .line 34
    invoke-direct {v3}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3, v0}, Lcom/android/internal/util/FastXmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 38
    .line 39
    .line 40
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 41
    .line 42
    invoke-virtual {v3, v2, v4}, Lcom/android/internal/util/FastXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 43
    .line 44
    .line 45
    const-string v4, "keycustomize_info_version"

    .line 46
    .line 47
    invoke-virtual {v3, v2, v4}, Lcom/android/internal/util/FastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 48
    .line 49
    .line 50
    const v5, 0x40833333    # 4.1f

    .line 51
    .line 52
    .line 53
    invoke-static {v5}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    const-string/jumbo v6, "version"

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3, v2, v6, v5}, Lcom/android/internal/util/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3, v2, v4}, Lcom/android/internal/util/FastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, v3}, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->addKeyInfo(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, v3}, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->addHotKeyInfo(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v3}, Lcom/android/internal/util/FastXmlSerializer;->endDocument()V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v3}, Lcom/android/internal/util/FastXmlSerializer;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :catch_0
    move-exception p0

    .line 80
    const-string v3, "failed saveSettings "

    .line 81
    .line 82
    invoke-static {p0, v3, v1}, Lcom/android/server/WallpaperUpdateReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    :goto_0
    const-string p0, "Unable to close."

    .line 86
    .line 87
    const-string v3, "Unable to open "

    .line 88
    .line 89
    new-instance v4, Landroid/util/AtomicFile;

    .line 90
    .line 91
    new-instance v5, Ljava/io/File;

    .line 92
    .line 93
    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    const-string v6, "key_customize_info.xml"

    .line 98
    .line 99
    invoke-direct {v5, p1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-direct {v4, v5}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 103
    .line 104
    .line 105
    :try_start_1
    invoke-virtual {v4}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 114
    .line 115
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    invoke-virtual {v2, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 120
    .line 121
    .line 122
    const/16 p1, 0xa

    .line 123
    .line 124
    invoke-virtual {v2, p1}, Ljava/io/FileOutputStream;->write(I)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v4, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    .line 129
    .line 130
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 131
    .line 132
    .line 133
    goto :goto_2

    .line 134
    :catch_1
    move-exception p1

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    .line 136
    .line 137
    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    :goto_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p0

    .line 147
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    .line 149
    .line 150
    goto :goto_2

    .line 151
    :catchall_0
    move-exception p1

    .line 152
    goto :goto_3

    .line 153
    :catch_2
    move-exception p1

    .line 154
    :try_start_3
    invoke-virtual {v4, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 155
    .line 156
    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    .line 158
    .line 159
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    const-string v3, " for persisting. "

    .line 166
    .line 167
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    invoke-static {v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 178
    .line 179
    .line 180
    if-eqz v2, :cond_0

    .line 181
    .line 182
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 183
    .line 184
    .line 185
    goto :goto_2

    .line 186
    :catch_3
    move-exception p1

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    .line 188
    .line 189
    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    goto :goto_1

    .line 193
    :cond_0
    :goto_2
    return-void

    .line 194
    :goto_3
    if-eqz v2, :cond_1

    .line 195
    .line 196
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 197
    .line 198
    .line 199
    goto :goto_4

    .line 200
    :catch_4
    move-exception v0

    .line 201
    new-instance v2, Ljava/lang/StringBuilder;

    .line 202
    .line 203
    invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object p0

    .line 213
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    .line 215
    .line 216
    :cond_1
    :goto_4
    throw p1
.end method
