.class public final Lcom/android/server/wm/DisplayWindowSettingsProvider$WritableSettings;
.super Lcom/android/server/wm/DisplayWindowSettingsProvider$FileData;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mSettingsStorage:Lcom/android/server/wm/DisplayWindowSettingsProvider$WritableSettingsStorage;

.field public final mVirtualDisplayIdentifiers:Landroid/util/ArraySet;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DisplayWindowSettingsProvider$WritableSettingsStorage;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayWindowSettingsProvider$FileData;-><init>(Lcom/android/server/wm/DisplayWindowSettingsProvider$ReadableSettingsStorage;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/ArraySet;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/wm/DisplayWindowSettingsProvider$WritableSettings;->mVirtualDisplayIdentifiers:Landroid/util/ArraySet;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/wm/DisplayWindowSettingsProvider$WritableSettings;->mSettingsStorage:Lcom/android/server/wm/DisplayWindowSettingsProvider$WritableSettingsStorage;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final getOrCreateSettingsEntry(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayWindowSettingsProvider$FileData;->getIdentifier(Landroid/view/DisplayInfo;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/server/wm/DisplayWindowSettingsProvider$FileData;->mSettings:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Landroid/util/ArrayMap;

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    return-object v1

    .line 18
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayWindowSettingsProvider$FileData;->mSettings:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v1, Landroid/util/ArrayMap;

    .line 21
    .line 22
    iget-object v2, p1, Landroid/view/DisplayInfo;->name:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;

    .line 29
    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    iget-object v2, p0, Lcom/android/server/wm/DisplayWindowSettingsProvider$FileData;->mSettings:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v2, Landroid/util/ArrayMap;

    .line 35
    .line 36
    iget-object p1, p1, Landroid/view/DisplayInfo;->name:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lcom/android/server/wm/DisplayWindowSettingsProvider$FileData;->mSettings:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast p1, Landroid/util/ArrayMap;

    .line 44
    .line 45
    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayWindowSettingsProvider$WritableSettings;->writeSettings()V

    .line 49
    .line 50
    .line 51
    return-object v1

    .line 52
    :cond_1
    new-instance v1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;

    .line 53
    .line 54
    invoke-direct {v1}, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;-><init>()V

    .line 55
    .line 56
    .line 57
    iget-object v2, p0, Lcom/android/server/wm/DisplayWindowSettingsProvider$FileData;->mSettings:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast v2, Landroid/util/ArrayMap;

    .line 60
    .line 61
    invoke-virtual {v2, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    iget p1, p1, Landroid/view/DisplayInfo;->type:I

    .line 65
    .line 66
    const/4 v2, 0x5

    .line 67
    if-ne p1, v2, :cond_2

    .line 68
    .line 69
    iget-object p0, p0, Lcom/android/server/wm/DisplayWindowSettingsProvider$WritableSettings;->mVirtualDisplayIdentifiers:Landroid/util/ArraySet;

    .line 70
    .line 71
    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    :cond_2
    return-object v1
.end method

.method public final writeSettings()V
    .locals 11

    .line 1
    new-instance v0, Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Lcom/android/server/wm/DisplayWindowSettingsProvider$FileData;->mIdentifierType:I

    .line 7
    .line 8
    iget-object v2, p0, Lcom/android/server/wm/DisplayWindowSettingsProvider$FileData;->mSettings:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v2, Landroid/util/ArrayMap;

    .line 11
    .line 12
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    const/4 v3, 0x0

    .line 17
    move v4, v3

    .line 18
    :goto_0
    if-ge v4, v2, :cond_1

    .line 19
    .line 20
    iget-object v5, p0, Lcom/android/server/wm/DisplayWindowSettingsProvider$FileData;->mSettings:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v5, Landroid/util/ArrayMap;

    .line 23
    .line 24
    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    check-cast v5, Ljava/lang/String;

    .line 29
    .line 30
    iget-object v6, p0, Lcom/android/server/wm/DisplayWindowSettingsProvider$WritableSettings;->mVirtualDisplayIdentifiers:Landroid/util/ArraySet;

    .line 31
    .line 32
    invoke-virtual {v6, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v6

    .line 36
    if-eqz v6, :cond_0

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_0
    iget-object v6, p0, Lcom/android/server/wm/DisplayWindowSettingsProvider$FileData;->mSettings:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v6, Landroid/util/ArrayMap;

    .line 42
    .line 43
    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    check-cast v6, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;

    .line 48
    .line 49
    invoke-virtual {v0, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    iget-object p0, p0, Lcom/android/server/wm/DisplayWindowSettingsProvider$WritableSettings;->mSettingsStorage:Lcom/android/server/wm/DisplayWindowSettingsProvider$WritableSettingsStorage;

    .line 56
    .line 57
    const-string v2, "WindowManager"

    .line 58
    .line 59
    const-string v4, "display"

    .line 60
    .line 61
    const-string v5, "config"

    .line 62
    .line 63
    const-string v6, "display-settings"

    .line 64
    .line 65
    :try_start_0
    move-object v7, p0

    .line 66
    check-cast v7, Lcom/android/server/wm/DisplayWindowSettingsProvider$AtomicFileStorage;

    .line 67
    .line 68
    iget-object v7, v7, Lcom/android/server/wm/DisplayWindowSettingsProvider$AtomicFileStorage;->mAtomicFile:Landroid/util/AtomicFile;

    .line 69
    .line 70
    invoke-virtual {v7}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    .line 71
    .line 72
    .line 73
    move-result-object v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 74
    :try_start_1
    invoke-static {v7}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    .line 75
    .line 76
    .line 77
    move-result-object v8

    .line 78
    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 79
    .line 80
    const/4 v10, 0x0

    .line 81
    invoke-interface {v8, v10, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 82
    .line 83
    .line 84
    invoke-interface {v8, v10, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 85
    .line 86
    .line 87
    invoke-interface {v8, v10, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 88
    .line 89
    .line 90
    const-string v9, "identifier"

    .line 91
    .line 92
    invoke-interface {v8, v10, v9, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 93
    .line 94
    .line 95
    invoke-interface {v8, v10, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    if-eqz v1, :cond_11

    .line 111
    .line 112
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    check-cast v1, Ljava/util/Map$Entry;

    .line 117
    .line 118
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v5

    .line 122
    check-cast v5, Ljava/lang/String;

    .line 123
    .line 124
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    check-cast v1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;

    .line 129
    .line 130
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->isEmpty()Z

    .line 131
    .line 132
    .line 133
    move-result v9

    .line 134
    if-eqz v9, :cond_2

    .line 135
    .line 136
    goto :goto_2

    .line 137
    :cond_2
    invoke-interface {v8, v10, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 138
    .line 139
    .line 140
    const-string/jumbo v9, "name"

    .line 141
    .line 142
    .line 143
    invoke-interface {v8, v10, v9, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 144
    .line 145
    .line 146
    iget v5, v1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mWindowingMode:I

    .line 147
    .line 148
    if-eqz v5, :cond_3

    .line 149
    .line 150
    const-string/jumbo v9, "windowingMode"

    .line 151
    .line 152
    .line 153
    invoke-interface {v8, v10, v9, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 154
    .line 155
    .line 156
    goto :goto_3

    .line 157
    :catchall_0
    move-exception v0

    .line 158
    goto/16 :goto_5

    .line 159
    .line 160
    :catch_0
    move-exception v0

    .line 161
    goto/16 :goto_4

    .line 162
    .line 163
    :cond_3
    :goto_3
    iget-object v5, v1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mUserRotationMode:Ljava/lang/Integer;

    .line 164
    .line 165
    if-eqz v5, :cond_4

    .line 166
    .line 167
    const-string/jumbo v9, "userRotationMode"

    .line 168
    .line 169
    .line 170
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 171
    .line 172
    .line 173
    move-result v5

    .line 174
    invoke-interface {v8, v10, v9, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 175
    .line 176
    .line 177
    :cond_4
    iget-object v5, v1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mUserRotation:Ljava/lang/Integer;

    .line 178
    .line 179
    if-eqz v5, :cond_5

    .line 180
    .line 181
    const-string/jumbo v9, "userRotation"

    .line 182
    .line 183
    .line 184
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 185
    .line 186
    .line 187
    move-result v5

    .line 188
    invoke-interface {v8, v10, v9, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 189
    .line 190
    .line 191
    :cond_5
    iget v5, v1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedWidth:I

    .line 192
    .line 193
    if-eqz v5, :cond_6

    .line 194
    .line 195
    iget v9, v1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedHeight:I

    .line 196
    .line 197
    if-eqz v9, :cond_6

    .line 198
    .line 199
    const-string v9, "forcedWidth"

    .line 200
    .line 201
    invoke-interface {v8, v10, v9, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 202
    .line 203
    .line 204
    const-string v5, "forcedHeight"

    .line 205
    .line 206
    iget v9, v1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedHeight:I

    .line 207
    .line 208
    invoke-interface {v8, v10, v5, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 209
    .line 210
    .line 211
    :cond_6
    iget v5, v1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedDensity:I

    .line 212
    .line 213
    if-eqz v5, :cond_7

    .line 214
    .line 215
    const-string v9, "forcedDensity"

    .line 216
    .line 217
    invoke-interface {v8, v10, v9, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 218
    .line 219
    .line 220
    :cond_7
    iget-object v5, v1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedScalingMode:Ljava/lang/Integer;

    .line 221
    .line 222
    if-eqz v5, :cond_8

    .line 223
    .line 224
    const-string v9, "forcedScalingMode"

    .line 225
    .line 226
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 227
    .line 228
    .line 229
    move-result v5

    .line 230
    invoke-interface {v8, v10, v9, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 231
    .line 232
    .line 233
    :cond_8
    iget v5, v1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mRemoveContentMode:I

    .line 234
    .line 235
    if-eqz v5, :cond_9

    .line 236
    .line 237
    const-string/jumbo v9, "removeContentMode"

    .line 238
    .line 239
    .line 240
    invoke-interface {v8, v10, v9, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 241
    .line 242
    .line 243
    :cond_9
    iget-object v5, v1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mShouldShowWithInsecureKeyguard:Ljava/lang/Boolean;

    .line 244
    .line 245
    if-eqz v5, :cond_a

    .line 246
    .line 247
    const-string/jumbo v9, "shouldShowWithInsecureKeyguard"

    .line 248
    .line 249
    .line 250
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 251
    .line 252
    .line 253
    move-result v5

    .line 254
    invoke-interface {v8, v10, v9, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 255
    .line 256
    .line 257
    :cond_a
    iget-object v5, v1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mShouldShowSystemDecors:Ljava/lang/Boolean;

    .line 258
    .line 259
    if-eqz v5, :cond_b

    .line 260
    .line 261
    const-string/jumbo v9, "shouldShowSystemDecors"

    .line 262
    .line 263
    .line 264
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 265
    .line 266
    .line 267
    move-result v5

    .line 268
    invoke-interface {v8, v10, v9, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 269
    .line 270
    .line 271
    :cond_b
    iget-object v5, v1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mImePolicy:Ljava/lang/Integer;

    .line 272
    .line 273
    if-eqz v5, :cond_c

    .line 274
    .line 275
    const-string v9, "imePolicy"

    .line 276
    .line 277
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 278
    .line 279
    .line 280
    move-result v5

    .line 281
    invoke-interface {v8, v10, v9, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 282
    .line 283
    .line 284
    :cond_c
    iget-object v5, v1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mFixedToUserRotation:Ljava/lang/Integer;

    .line 285
    .line 286
    if-eqz v5, :cond_d

    .line 287
    .line 288
    const-string v9, "fixedToUserRotation"

    .line 289
    .line 290
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 291
    .line 292
    .line 293
    move-result v5

    .line 294
    invoke-interface {v8, v10, v9, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 295
    .line 296
    .line 297
    :cond_d
    iget-object v5, v1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mIgnoreOrientationRequest:Ljava/lang/Boolean;

    .line 298
    .line 299
    if-eqz v5, :cond_e

    .line 300
    .line 301
    const-string v9, "ignoreOrientationRequest"

    .line 302
    .line 303
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 304
    .line 305
    .line 306
    move-result v5

    .line 307
    invoke-interface {v8, v10, v9, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 308
    .line 309
    .line 310
    :cond_e
    iget-object v5, v1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mIgnoreDisplayCutout:Ljava/lang/Boolean;

    .line 311
    .line 312
    if-eqz v5, :cond_f

    .line 313
    .line 314
    const-string v9, "ignoreDisplayCutout"

    .line 315
    .line 316
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 317
    .line 318
    .line 319
    move-result v5

    .line 320
    invoke-interface {v8, v10, v9, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 321
    .line 322
    .line 323
    :cond_f
    iget-object v1, v1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mDontMoveToTop:Ljava/lang/Boolean;

    .line 324
    .line 325
    if-eqz v1, :cond_10

    .line 326
    .line 327
    const-string v5, "dontMoveToTop"

    .line 328
    .line 329
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 330
    .line 331
    .line 332
    move-result v1

    .line 333
    invoke-interface {v8, v10, v5, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 334
    .line 335
    .line 336
    :cond_10
    invoke-interface {v8, v10, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 337
    .line 338
    .line 339
    goto/16 :goto_2

    .line 340
    .line 341
    :cond_11
    invoke-interface {v8, v10, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 342
    .line 343
    .line 344
    invoke-interface {v8}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 345
    .line 346
    .line 347
    check-cast p0, Lcom/android/server/wm/DisplayWindowSettingsProvider$AtomicFileStorage;

    .line 348
    .line 349
    const/4 v0, 0x1

    .line 350
    invoke-virtual {p0, v7, v0}, Lcom/android/server/wm/DisplayWindowSettingsProvider$AtomicFileStorage;->finishWrite(Ljava/io/OutputStream;Z)V

    .line 351
    .line 352
    .line 353
    goto :goto_6

    .line 354
    :goto_4
    :try_start_2
    const-string v1, "Failed to write display window settings."

    .line 355
    .line 356
    invoke-static {v2, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 357
    .line 358
    .line 359
    check-cast p0, Lcom/android/server/wm/DisplayWindowSettingsProvider$AtomicFileStorage;

    .line 360
    .line 361
    invoke-virtual {p0, v7, v3}, Lcom/android/server/wm/DisplayWindowSettingsProvider$AtomicFileStorage;->finishWrite(Ljava/io/OutputStream;Z)V

    .line 362
    .line 363
    .line 364
    goto :goto_6

    .line 365
    :goto_5
    check-cast p0, Lcom/android/server/wm/DisplayWindowSettingsProvider$AtomicFileStorage;

    .line 366
    .line 367
    invoke-virtual {p0, v7, v3}, Lcom/android/server/wm/DisplayWindowSettingsProvider$AtomicFileStorage;->finishWrite(Ljava/io/OutputStream;Z)V

    .line 368
    .line 369
    .line 370
    throw v0

    .line 371
    :catch_1
    move-exception p0

    .line 372
    new-instance v0, Ljava/lang/StringBuilder;

    .line 373
    .line 374
    const-string v1, "Failed to write display settings: "

    .line 375
    .line 376
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 377
    .line 378
    .line 379
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 380
    .line 381
    .line 382
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    move-result-object p0

    .line 386
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    .line 388
    .line 389
    :goto_6
    return-void
.end method
