.class public abstract Lcom/android/server/vibrator/HapticFeedbackCustomization;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static loadVibrationsInternal(Landroid/content/res/Resources;Landroid/os/VibratorInfo;)Landroid/util/SparseArray;
    .locals 13

    .line 1
    invoke-static {}, Landroid/os/vibrator/Flags;->hapticFeedbackVibrationOemCustomizationEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "HapticFeedbackCustomization"

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    const-string p0, "Haptic feedback customization feature is not enabled."

    .line 11
    .line 12
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    return-object v2

    .line 16
    :cond_0
    const v0, 0x1040361

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    const-string p0, "Customization file not configured."

    .line 30
    .line 31
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    return-object v2

    .line 35
    :cond_1
    :try_start_0
    new-instance v0, Ljava/io/FileReader;

    .line 36
    .line 37
    invoke-direct {v0, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .line 39
    .line 40
    invoke-static {}, Landroid/util/Xml;->newFastPullParser()Lcom/android/modules/utils/TypedXmlPullParser;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    const-string v1, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    .line 45
    .line 46
    const/4 v2, 0x1

    .line 47
    invoke-interface {p0, v1, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->setFeature(Ljava/lang/String;Z)V

    .line 48
    .line 49
    .line 50
    invoke-interface {p0, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 51
    .line 52
    .line 53
    const-string v0, "haptic-feedback-constants"

    .line 54
    .line 55
    invoke-static {p0, v0}, Lcom/android/internal/vibrator/persistence/XmlReader;->readDocumentStartTag(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    const/4 v1, 0x0

    .line 59
    new-array v3, v1, [Ljava/lang/String;

    .line 60
    .line 61
    invoke-static {p0, v3}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkTagHasNoUnexpectedAttributes(Lcom/android/modules/utils/TypedXmlPullParser;[Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    new-instance v4, Landroid/util/SparseArray;

    .line 69
    .line 70
    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    .line 71
    .line 72
    .line 73
    :goto_0
    invoke-static {p0, v3}, Lcom/android/internal/vibrator/persistence/XmlReader;->readNextTagWithin(Lcom/android/modules/utils/TypedXmlPullParser;I)Z

    .line 74
    .line 75
    .line 76
    move-result v5

    .line 77
    if-eqz v5, :cond_6

    .line 78
    .line 79
    const-string v5, "constant"

    .line 80
    .line 81
    invoke-static {p0, v5}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkStartTag(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 85
    .line 86
    .line 87
    move-result v6

    .line 88
    const-string v7, "id"

    .line 89
    .line 90
    filled-new-array {v7}, [Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v8

    .line 94
    invoke-static {p0, v8}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkTagHasNoUnexpectedAttributes(Lcom/android/modules/utils/TypedXmlPullParser;[Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-static {p0, v7}, Lcom/android/internal/vibrator/persistence/XmlReader;->readAttributeIntNonNegative(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    move-result v7

    .line 101
    invoke-virtual {v4, v7}, Landroid/util/SparseArray;->contains(I)Z

    .line 102
    .line 103
    .line 104
    move-result v8

    .line 105
    if-nez v8, :cond_5

    .line 106
    .line 107
    invoke-static {p0, v6}, Lcom/android/internal/vibrator/persistence/XmlReader;->readNextTagWithin(Lcom/android/modules/utils/TypedXmlPullParser;I)Z

    .line 108
    .line 109
    .line 110
    move-result v8

    .line 111
    const-string v9, "Unsupported empty customization tag for effect "

    .line 112
    .line 113
    invoke-static {v7, v9}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v9

    .line 117
    new-array v10, v1, [Ljava/lang/Object;

    .line 118
    .line 119
    invoke-static {v8, v9, v10}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkParserCondition(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    invoke-static {p0, v2}, Landroid/os/vibrator/persistence/VibrationXmlParser;->parseElement(Lcom/android/modules/utils/TypedXmlPullParser;I)Landroid/os/vibrator/persistence/ParsedVibration;

    .line 123
    .line 124
    .line 125
    move-result-object v8

    .line 126
    if-eqz v8, :cond_4

    .line 127
    .line 128
    invoke-virtual {v8, p1}, Landroid/os/vibrator/persistence/ParsedVibration;->resolve(Landroid/os/VibratorInfo;)Landroid/os/VibrationEffect;

    .line 129
    .line 130
    .line 131
    move-result-object v8

    .line 132
    if-eqz v8, :cond_3

    .line 133
    .line 134
    invoke-virtual {v8}, Landroid/os/VibrationEffect;->getDuration()J

    .line 135
    .line 136
    .line 137
    move-result-wide v9

    .line 138
    const-wide v11, 0x7fffffffffffffffL

    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    cmp-long v9, v9, v11

    .line 144
    .line 145
    if-eqz v9, :cond_2

    .line 146
    .line 147
    invoke-virtual {v4, v7, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 148
    .line 149
    .line 150
    goto :goto_1

    .line 151
    :cond_2
    new-instance p0, Lcom/android/server/vibrator/HapticFeedbackCustomization$CustomizationParserException;

    .line 152
    .line 153
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    filled-new-array {p1, v8}, [Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    const-string v0, "Vibration for effect ID %d is repeating, which is not allowed as a haptic feedback: %s"

    .line 162
    .line 163
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    invoke-direct {p0, p1, v1}, Lcom/android/server/vibrator/HapticFeedbackCustomization$CustomizationParserException;-><init>(Ljava/lang/String;I)V

    .line 168
    .line 169
    .line 170
    throw p0

    .line 171
    :cond_3
    :goto_1
    invoke-static {p0, v5, v6}, Lcom/android/internal/vibrator/persistence/XmlReader;->readEndTag(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)V

    .line 172
    .line 173
    .line 174
    goto :goto_0

    .line 175
    :cond_4
    new-instance p0, Lcom/android/server/vibrator/HapticFeedbackCustomization$CustomizationParserException;

    .line 176
    .line 177
    const-string p1, "Unable to parse vibration element for effect "

    .line 178
    .line 179
    invoke-static {v7, p1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    invoke-direct {p0, p1, v1}, Lcom/android/server/vibrator/HapticFeedbackCustomization$CustomizationParserException;-><init>(Ljava/lang/String;I)V

    .line 184
    .line 185
    .line 186
    throw p0

    .line 187
    :cond_5
    new-instance p0, Lcom/android/server/vibrator/HapticFeedbackCustomization$CustomizationParserException;

    .line 188
    .line 189
    const-string p1, "Multiple customizations found for effect "

    .line 190
    .line 191
    invoke-static {v7, p1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    invoke-direct {p0, p1, v1}, Lcom/android/server/vibrator/HapticFeedbackCustomization$CustomizationParserException;-><init>(Ljava/lang/String;I)V

    .line 196
    .line 197
    .line 198
    throw p0

    .line 199
    :cond_6
    invoke-static {p0, v0, v3}, Lcom/android/internal/vibrator/persistence/XmlReader;->readEndTag(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)V

    .line 200
    .line 201
    .line 202
    invoke-static {p0}, Lcom/android/internal/vibrator/persistence/XmlReader;->readDocumentEndTag(Lcom/android/modules/utils/TypedXmlPullParser;)V

    .line 203
    .line 204
    .line 205
    return-object v4

    .line 206
    :catch_0
    const-string p0, "Specified customization file not found."

    .line 207
    .line 208
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    .line 210
    .line 211
    return-object v2
.end method
