.class public final Ljava/com/android/server/am/mars/database/MARsListManager;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAdjustRestrictionDefault:Ljava/util/ArrayList;

.field public final mCalmModeDefaultList:Ljava/util/Set;

.field public final mCalmModeFilterList:Ljava/util/Set;

.field public final mCtsGtsList:Ljava/util/Set;

.field public final mExcludePackageDefault:Ljava/util/ArrayList;

.field public final mFastOlafUfzList:Ljava/util/Set;

.field public final mFgsExemptionPackages:Ljava/util/Set;

.field public final mFilterList:Ljava/util/Set;

.field public final mFreezeExemption:Ljava/util/Set;

.field public final mFreezeExemptionChina:Ljava/util/Set;

.field public final mFreezeExemptionStartsWith:Ljava/util/Set;

.field public final mGoogleFreezerExemptionList:Ljava/util/Set;

.field public final mListFile:Ljava/io/File;

.field public final mLocationPackages:Ljava/util/Set;

.field public final mOLAFExemption:Ljava/util/Set;

.field public final mOLAFExemptionGlobal:Ljava/util/Set;

.field public final mOLAFExemptionStartsWith:Ljava/util/Set;

.field public final mOlafJobRestrictionExemptionList:Ljava/util/Set;

.field public final mOlafUfzList:Ljava/util/Set;

.field public final mPendingBlocklistForGPS:Ljava/util/ArrayList;

.field public final mPendingIntentIdleList:Ljava/util/ArrayList;

.field public final mPendingIntentList:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/util/HashSet;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v1, v0, Ljava/com/android/server/am/mars/database/MARsListManager;->mFgsExemptionPackages:Ljava/util/Set;

    .line 12
    .line 13
    new-instance v2, Ljava/util/HashSet;

    .line 14
    .line 15
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v2, v0, Ljava/com/android/server/am/mars/database/MARsListManager;->mFreezeExemption:Ljava/util/Set;

    .line 19
    .line 20
    new-instance v3, Ljava/util/HashSet;

    .line 21
    .line 22
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v3, v0, Ljava/com/android/server/am/mars/database/MARsListManager;->mFreezeExemptionChina:Ljava/util/Set;

    .line 26
    .line 27
    new-instance v4, Ljava/util/HashSet;

    .line 28
    .line 29
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object v4, v0, Ljava/com/android/server/am/mars/database/MARsListManager;->mFreezeExemptionStartsWith:Ljava/util/Set;

    .line 33
    .line 34
    new-instance v5, Ljava/util/HashSet;

    .line 35
    .line 36
    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object v5, v0, Ljava/com/android/server/am/mars/database/MARsListManager;->mOLAFExemptionGlobal:Ljava/util/Set;

    .line 40
    .line 41
    new-instance v6, Ljava/util/HashSet;

    .line 42
    .line 43
    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 44
    .line 45
    .line 46
    iput-object v6, v0, Ljava/com/android/server/am/mars/database/MARsListManager;->mOLAFExemption:Ljava/util/Set;

    .line 47
    .line 48
    new-instance v7, Ljava/util/HashSet;

    .line 49
    .line 50
    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 51
    .line 52
    .line 53
    iput-object v7, v0, Ljava/com/android/server/am/mars/database/MARsListManager;->mOLAFExemptionStartsWith:Ljava/util/Set;

    .line 54
    .line 55
    new-instance v8, Ljava/util/HashSet;

    .line 56
    .line 57
    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 58
    .line 59
    .line 60
    iput-object v8, v0, Ljava/com/android/server/am/mars/database/MARsListManager;->mFilterList:Ljava/util/Set;

    .line 61
    .line 62
    new-instance v9, Ljava/util/HashSet;

    .line 63
    .line 64
    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 65
    .line 66
    .line 67
    iput-object v9, v0, Ljava/com/android/server/am/mars/database/MARsListManager;->mOlafUfzList:Ljava/util/Set;

    .line 68
    .line 69
    new-instance v10, Ljava/util/HashSet;

    .line 70
    .line 71
    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 72
    .line 73
    .line 74
    iput-object v10, v0, Ljava/com/android/server/am/mars/database/MARsListManager;->mFastOlafUfzList:Ljava/util/Set;

    .line 75
    .line 76
    new-instance v11, Ljava/util/HashSet;

    .line 77
    .line 78
    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    .line 79
    .line 80
    .line 81
    iput-object v11, v0, Ljava/com/android/server/am/mars/database/MARsListManager;->mCalmModeFilterList:Ljava/util/Set;

    .line 82
    .line 83
    new-instance v12, Ljava/util/HashSet;

    .line 84
    .line 85
    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    .line 86
    .line 87
    .line 88
    iput-object v12, v0, Ljava/com/android/server/am/mars/database/MARsListManager;->mCalmModeDefaultList:Ljava/util/Set;

    .line 89
    .line 90
    new-instance v13, Ljava/util/HashSet;

    .line 91
    .line 92
    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    .line 93
    .line 94
    .line 95
    iput-object v13, v0, Ljava/com/android/server/am/mars/database/MARsListManager;->mLocationPackages:Ljava/util/Set;

    .line 96
    .line 97
    new-instance v14, Ljava/util/HashSet;

    .line 98
    .line 99
    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    .line 100
    .line 101
    .line 102
    iput-object v14, v0, Ljava/com/android/server/am/mars/database/MARsListManager;->mCtsGtsList:Ljava/util/Set;

    .line 103
    .line 104
    new-instance v15, Ljava/util/ArrayList;

    .line 105
    .line 106
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 107
    .line 108
    .line 109
    iput-object v15, v0, Ljava/com/android/server/am/mars/database/MARsListManager;->mPendingIntentList:Ljava/util/ArrayList;

    .line 110
    .line 111
    new-instance v15, Ljava/util/ArrayList;

    .line 112
    .line 113
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 114
    .line 115
    .line 116
    iput-object v15, v0, Ljava/com/android/server/am/mars/database/MARsListManager;->mPendingIntentIdleList:Ljava/util/ArrayList;

    .line 117
    .line 118
    new-instance v15, Ljava/util/ArrayList;

    .line 119
    .line 120
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 121
    .line 122
    .line 123
    iput-object v15, v0, Ljava/com/android/server/am/mars/database/MARsListManager;->mPendingBlocklistForGPS:Ljava/util/ArrayList;

    .line 124
    .line 125
    new-instance v15, Ljava/util/ArrayList;

    .line 126
    .line 127
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 128
    .line 129
    .line 130
    iput-object v15, v0, Ljava/com/android/server/am/mars/database/MARsListManager;->mExcludePackageDefault:Ljava/util/ArrayList;

    .line 131
    .line 132
    move-object/from16 v16, v14

    .line 133
    .line 134
    new-instance v14, Ljava/util/ArrayList;

    .line 135
    .line 136
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 137
    .line 138
    .line 139
    iput-object v14, v0, Ljava/com/android/server/am/mars/database/MARsListManager;->mAdjustRestrictionDefault:Ljava/util/ArrayList;

    .line 140
    .line 141
    move-object/from16 v17, v14

    .line 142
    .line 143
    new-instance v14, Ljava/util/HashSet;

    .line 144
    .line 145
    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    .line 146
    .line 147
    .line 148
    iput-object v14, v0, Ljava/com/android/server/am/mars/database/MARsListManager;->mGoogleFreezerExemptionList:Ljava/util/Set;

    .line 149
    .line 150
    new-instance v14, Ljava/util/HashSet;

    .line 151
    .line 152
    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    .line 153
    .line 154
    .line 155
    iput-object v14, v0, Ljava/com/android/server/am/mars/database/MARsListManager;->mOlafJobRestrictionExemptionList:Ljava/util/Set;

    .line 156
    .line 157
    new-instance v14, Ljava/io/File;

    .line 158
    .line 159
    move-object/from16 v18, v15

    .line 160
    .line 161
    const-string v15, "/system/etc/mars/mars_list.xml"

    .line 162
    .line 163
    invoke-direct {v14, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    iput-object v14, v0, Ljava/com/android/server/am/mars/database/MARsListManager;->mListFile:Ljava/io/File;

    .line 167
    .line 168
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    .line 169
    .line 170
    .line 171
    move-result v15

    .line 172
    move-object/from16 v19, v13

    .line 173
    .line 174
    const-string v13, "MARsListManager"

    .line 175
    .line 176
    if-nez v15, :cond_0

    .line 177
    .line 178
    const-string v0, "No xml file exists."

    .line 179
    .line 180
    invoke-static {v13, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    .line 182
    .line 183
    goto/16 :goto_2

    .line 184
    .line 185
    :cond_0
    sget-boolean v15, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    .line 186
    .line 187
    if-eqz v15, :cond_1

    .line 188
    .line 189
    new-instance v15, Ljava/lang/StringBuilder;

    .line 190
    .line 191
    const-string v0, "Reading config from "

    .line 192
    .line 193
    invoke-direct {v15, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v14}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    invoke-static {v13, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    .line 209
    .line 210
    :cond_1
    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v6}, Ljava/util/HashSet;->clear()V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v5}, Ljava/util/HashSet;->clear()V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v7}, Ljava/util/HashSet;->clear()V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v8}, Ljava/util/HashSet;->clear()V

    .line 232
    .line 233
    .line 234
    invoke-virtual {v9}, Ljava/util/HashSet;->clear()V

    .line 235
    .line 236
    .line 237
    invoke-virtual {v10}, Ljava/util/HashSet;->clear()V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v11}, Ljava/util/HashSet;->clear()V

    .line 241
    .line 242
    .line 243
    invoke-virtual {v12}, Ljava/util/HashSet;->clear()V

    .line 244
    .line 245
    .line 246
    invoke-virtual/range {v19 .. v19}, Ljava/util/HashSet;->clear()V

    .line 247
    .line 248
    .line 249
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->clear()V

    .line 250
    .line 251
    .line 252
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->clear()V

    .line 253
    .line 254
    .line 255
    invoke-virtual/range {v16 .. v16}, Ljava/util/HashSet;->clear()V

    .line 256
    .line 257
    .line 258
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    .line 259
    .line 260
    invoke-direct {v1, v14}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    .line 262
    .line 263
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 268
    .line 269
    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v2

    .line 273
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    move-object/from16 v2, p0

    .line 277
    .line 278
    invoke-virtual {v2, v0}, Ljava/com/android/server/am/mars/database/MARsListManager;->readConfigFileLocked(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 279
    .line 280
    .line 281
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 282
    .line 283
    .line 284
    goto :goto_2

    .line 285
    :catch_0
    move-exception v0

    .line 286
    goto :goto_1

    .line 287
    :catchall_0
    move-exception v0

    .line 288
    move-object v2, v0

    .line 289
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 290
    .line 291
    .line 292
    goto :goto_0

    .line 293
    :catchall_1
    move-exception v0

    .line 294
    move-object v1, v0

    .line 295
    :try_start_4
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 296
    .line 297
    .line 298
    :goto_0
    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 299
    :goto_1
    const-string/jumbo v1, "parsing config file error"

    .line 300
    .line 301
    .line 302
    invoke-static {v0, v1, v13}, Lcom/android/server/WallpaperUpdateReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    .line 304
    .line 305
    :goto_2
    return-void
.end method

.method public static parseAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    if-eqz p1, :cond_1

    .line 7
    .line 8
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    sget-boolean p3, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    .line 12
    .line 13
    if-eqz p3, :cond_0

    .line 14
    .line 15
    const-string p3, "<"

    .line 16
    .line 17
    const-string v0, "> "

    .line 18
    .line 19
    const-string v1, "MARsListManager"

    .line 20
    .line 21
    invoke-static {p3, p2, v0, p1, v1}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 25
    .line 26
    .line 27
    :cond_1
    return-void
.end method


# virtual methods
.method public final readConfigFileLocked(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/4 v2, 0x4

    .line 6
    const/4 v3, 0x3

    .line 7
    const/4 v4, 0x1

    .line 8
    const/4 v5, 0x2

    .line 9
    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 10
    .line 11
    .line 12
    move-result v6

    .line 13
    if-eq v6, v5, :cond_0

    .line 14
    .line 15
    if-eq v6, v4, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v6

    .line 22
    const-string/jumbo v7, "mars-list"

    .line 23
    .line 24
    .line 25
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v6

    .line 29
    if-eqz v6, :cond_31

    .line 30
    .line 31
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 32
    .line 33
    .line 34
    move-result v6

    .line 35
    :cond_1
    :goto_1
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 36
    .line 37
    .line 38
    move-result v7

    .line 39
    if-eq v7, v4, :cond_30

    .line 40
    .line 41
    if-ne v7, v3, :cond_2

    .line 42
    .line 43
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 44
    .line 45
    .line 46
    move-result v8

    .line 47
    if-ge v8, v6, :cond_30

    .line 48
    .line 49
    :cond_2
    if-eq v7, v3, :cond_1

    .line 50
    .line 51
    if-ne v7, v2, :cond_3

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_3
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v7

    .line 58
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    const-string v8, "action"

    .line 62
    .line 63
    const-string v9, "isAllowed"

    .line 64
    .line 65
    const-string v10, "callee"

    .line 66
    .line 67
    const-string/jumbo v11, "matchType"

    .line 68
    .line 69
    .line 70
    const-string/jumbo v12, "prefix"

    .line 71
    .line 72
    .line 73
    const-string v13, "> "

    .line 74
    .line 75
    const-string v14, "<"

    .line 76
    .line 77
    const-string v15, "filter"

    .line 78
    .line 79
    const-string v2, "MARsListManager"

    .line 80
    .line 81
    const/4 v3, 0x0

    .line 82
    const-string/jumbo v4, "package"

    .line 83
    .line 84
    .line 85
    const/16 v16, -0x1

    .line 86
    .line 87
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    .line 88
    .line 89
    .line 90
    move-result v17

    .line 91
    sparse-switch v17, :sswitch_data_0

    .line 92
    .line 93
    .line 94
    goto/16 :goto_2

    .line 95
    .line 96
    :sswitch_0
    const-string v5, "fast-olaf-ufz-list"

    .line 97
    .line 98
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v5

    .line 102
    if-nez v5, :cond_4

    .line 103
    .line 104
    goto/16 :goto_2

    .line 105
    .line 106
    :cond_4
    const/16 v16, 0x26

    .line 107
    .line 108
    goto/16 :goto_2

    .line 109
    .line 110
    :sswitch_1
    const-string v5, "block-associated-activity"

    .line 111
    .line 112
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v5

    .line 116
    if-nez v5, :cond_5

    .line 117
    .line 118
    goto/16 :goto_2

    .line 119
    .line 120
    :cond_5
    const/16 v16, 0x25

    .line 121
    .line 122
    goto/16 :goto_2

    .line 123
    .line 124
    :sswitch_2
    const-string v5, "allow-china-app"

    .line 125
    .line 126
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result v5

    .line 130
    if-nez v5, :cond_6

    .line 131
    .line 132
    goto/16 :goto_2

    .line 133
    .line 134
    :cond_6
    const/16 v16, 0x24

    .line 135
    .line 136
    goto/16 :goto_2

    .line 137
    .line 138
    :sswitch_3
    const-string v5, "block-instrument-app"

    .line 139
    .line 140
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result v5

    .line 144
    if-nez v5, :cond_7

    .line 145
    .line 146
    goto/16 :goto_2

    .line 147
    .line 148
    :cond_7
    const/16 v16, 0x23

    .line 149
    .line 150
    goto/16 :goto_2

    .line 151
    .line 152
    :sswitch_4
    const-string v5, "allow-in-fgs"

    .line 153
    .line 154
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    move-result v5

    .line 158
    if-nez v5, :cond_8

    .line 159
    .line 160
    goto/16 :goto_2

    .line 161
    .line 162
    :cond_8
    const/16 v16, 0x22

    .line 163
    .line 164
    goto/16 :goto_2

    .line 165
    .line 166
    :sswitch_5
    const-string/jumbo v5, "olaf-exemption-global"

    .line 167
    .line 168
    .line 169
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    move-result v5

    .line 173
    if-nez v5, :cond_9

    .line 174
    .line 175
    goto/16 :goto_2

    .line 176
    .line 177
    :cond_9
    const/16 v16, 0x21

    .line 178
    .line 179
    goto/16 :goto_2

    .line 180
    .line 181
    :sswitch_6
    const-string v5, "allow-setwindow-alarm-app"

    .line 182
    .line 183
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    move-result v5

    .line 187
    if-nez v5, :cond_a

    .line 188
    .line 189
    goto/16 :goto_2

    .line 190
    .line 191
    :cond_a
    const/16 v16, 0x20

    .line 192
    .line 193
    goto/16 :goto_2

    .line 194
    .line 195
    :sswitch_7
    const-string/jumbo v5, "olaf-job-exemption-list"

    .line 196
    .line 197
    .line 198
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    move-result v5

    .line 202
    if-nez v5, :cond_b

    .line 203
    .line 204
    goto/16 :goto_2

    .line 205
    .line 206
    :cond_b
    const/16 v16, 0x1f

    .line 207
    .line 208
    goto/16 :goto_2

    .line 209
    .line 210
    :sswitch_8
    const-string v5, "freeze-exemption-china"

    .line 211
    .line 212
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 213
    .line 214
    .line 215
    move-result v5

    .line 216
    if-nez v5, :cond_c

    .line 217
    .line 218
    goto/16 :goto_2

    .line 219
    .line 220
    :cond_c
    const/16 v16, 0x1e

    .line 221
    .line 222
    goto/16 :goto_2

    .line 223
    .line 224
    :sswitch_9
    const-string v5, "allow-alarm-app"

    .line 225
    .line 226
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 227
    .line 228
    .line 229
    move-result v5

    .line 230
    if-nez v5, :cond_d

    .line 231
    .line 232
    goto/16 :goto_2

    .line 233
    .line 234
    :cond_d
    const/16 v16, 0x1d

    .line 235
    .line 236
    goto/16 :goto_2

    .line 237
    .line 238
    :sswitch_a
    const-string v5, "freeze-exemption"

    .line 239
    .line 240
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 241
    .line 242
    .line 243
    move-result v5

    .line 244
    if-nez v5, :cond_e

    .line 245
    .line 246
    goto/16 :goto_2

    .line 247
    .line 248
    :cond_e
    const/16 v16, 0x1c

    .line 249
    .line 250
    goto/16 :goto_2

    .line 251
    .line 252
    :sswitch_b
    const-string v5, "location-app-list"

    .line 253
    .line 254
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 255
    .line 256
    .line 257
    move-result v5

    .line 258
    if-nez v5, :cond_f

    .line 259
    .line 260
    goto/16 :goto_2

    .line 261
    .line 262
    :cond_f
    const/16 v16, 0x1b

    .line 263
    .line 264
    goto/16 :goto_2

    .line 265
    .line 266
    :sswitch_c
    const-string v5, "block-china-app"

    .line 267
    .line 268
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 269
    .line 270
    .line 271
    move-result v5

    .line 272
    if-nez v5, :cond_10

    .line 273
    .line 274
    goto/16 :goto_2

    .line 275
    .line 276
    :cond_10
    const/16 v16, 0x1a

    .line 277
    .line 278
    goto/16 :goto_2

    .line 279
    .line 280
    :sswitch_d
    const-string v5, "allow-alarm-wakeup-app"

    .line 281
    .line 282
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 283
    .line 284
    .line 285
    move-result v5

    .line 286
    if-nez v5, :cond_11

    .line 287
    .line 288
    goto/16 :goto_2

    .line 289
    .line 290
    :cond_11
    const/16 v16, 0x19

    .line 291
    .line 292
    goto/16 :goto_2

    .line 293
    .line 294
    :sswitch_e
    const-string v5, "freezer-exemption-list"

    .line 295
    .line 296
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 297
    .line 298
    .line 299
    move-result v5

    .line 300
    if-nez v5, :cond_12

    .line 301
    .line 302
    goto/16 :goto_2

    .line 303
    .line 304
    :cond_12
    const/16 v16, 0x18

    .line 305
    .line 306
    goto/16 :goto_2

    .line 307
    .line 308
    :sswitch_f
    const-string v5, "freeze-exemption-startswith"

    .line 309
    .line 310
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 311
    .line 312
    .line 313
    move-result v5

    .line 314
    if-nez v5, :cond_13

    .line 315
    .line 316
    goto/16 :goto_2

    .line 317
    .line 318
    :cond_13
    const/16 v16, 0x17

    .line 319
    .line 320
    goto/16 :goto_2

    .line 321
    .line 322
    :sswitch_10
    const-string v5, "allow-bgaudio-app"

    .line 323
    .line 324
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 325
    .line 326
    .line 327
    move-result v5

    .line 328
    if-nez v5, :cond_14

    .line 329
    .line 330
    goto/16 :goto_2

    .line 331
    .line 332
    :cond_14
    const/16 v16, 0x16

    .line 333
    .line 334
    goto/16 :goto_2

    .line 335
    .line 336
    :sswitch_11
    const-string v5, "force-block-chinese-app"

    .line 337
    .line 338
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 339
    .line 340
    .line 341
    move-result v5

    .line 342
    if-nez v5, :cond_15

    .line 343
    .line 344
    goto/16 :goto_2

    .line 345
    .line 346
    :cond_15
    const/16 v16, 0x15

    .line 347
    .line 348
    goto/16 :goto_2

    .line 349
    .line 350
    :sswitch_12
    const-string v5, "block-alarm-app"

    .line 351
    .line 352
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 353
    .line 354
    .line 355
    move-result v5

    .line 356
    if-nez v5, :cond_16

    .line 357
    .line 358
    goto/16 :goto_2

    .line 359
    .line 360
    :cond_16
    const/16 v16, 0x14

    .line 361
    .line 362
    goto/16 :goto_2

    .line 363
    .line 364
    :sswitch_13
    const-string v5, "except-mars-policy"

    .line 365
    .line 366
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 367
    .line 368
    .line 369
    move-result v5

    .line 370
    if-nez v5, :cond_17

    .line 371
    .line 372
    goto/16 :goto_2

    .line 373
    .line 374
    :cond_17
    const/16 v16, 0x13

    .line 375
    .line 376
    goto/16 :goto_2

    .line 377
    .line 378
    :sswitch_14
    const-string v5, "block-faketop-app"

    .line 379
    .line 380
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 381
    .line 382
    .line 383
    move-result v5

    .line 384
    if-nez v5, :cond_18

    .line 385
    .line 386
    goto/16 :goto_2

    .line 387
    .line 388
    :cond_18
    const/16 v16, 0x12

    .line 389
    .line 390
    goto/16 :goto_2

    .line 391
    .line 392
    :sswitch_15
    const-string v5, "cts-gts-app-list"

    .line 393
    .line 394
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 395
    .line 396
    .line 397
    move-result v5

    .line 398
    if-nez v5, :cond_19

    .line 399
    .line 400
    goto/16 :goto_2

    .line 401
    .line 402
    :cond_19
    const/16 v16, 0x11

    .line 403
    .line 404
    goto/16 :goto_2

    .line 405
    .line 406
    :sswitch_16
    const-string v5, "allow-foreground-app"

    .line 407
    .line 408
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 409
    .line 410
    .line 411
    move-result v5

    .line 412
    if-nez v5, :cond_1a

    .line 413
    .line 414
    goto/16 :goto_2

    .line 415
    .line 416
    :cond_1a
    const/16 v16, 0x10

    .line 417
    .line 418
    goto/16 :goto_2

    .line 419
    .line 420
    :sswitch_17
    const-string v5, "block-deepsleep-app"

    .line 421
    .line 422
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 423
    .line 424
    .line 425
    move-result v5

    .line 426
    if-nez v5, :cond_1b

    .line 427
    .line 428
    goto/16 :goto_2

    .line 429
    .line 430
    :cond_1b
    const/16 v16, 0xf

    .line 431
    .line 432
    goto/16 :goto_2

    .line 433
    .line 434
    :sswitch_18
    const-string v5, "allow-async-binder-callee"

    .line 435
    .line 436
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 437
    .line 438
    .line 439
    move-result v5

    .line 440
    if-nez v5, :cond_1c

    .line 441
    .line 442
    goto/16 :goto_2

    .line 443
    .line 444
    :cond_1c
    const/16 v16, 0xe

    .line 445
    .line 446
    goto/16 :goto_2

    .line 447
    .line 448
    :sswitch_19
    const-string/jumbo v5, "pending-gps-app"

    .line 449
    .line 450
    .line 451
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 452
    .line 453
    .line 454
    move-result v5

    .line 455
    if-nez v5, :cond_1d

    .line 456
    .line 457
    goto/16 :goto_2

    .line 458
    .line 459
    :cond_1d
    const/16 v16, 0xd

    .line 460
    .line 461
    goto/16 :goto_2

    .line 462
    .line 463
    :sswitch_1a
    const-string v5, "block-foregroundservice-app"

    .line 464
    .line 465
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 466
    .line 467
    .line 468
    move-result v5

    .line 469
    if-nez v5, :cond_1e

    .line 470
    .line 471
    goto/16 :goto_2

    .line 472
    .line 473
    :cond_1e
    const/16 v16, 0xc

    .line 474
    .line 475
    goto/16 :goto_2

    .line 476
    .line 477
    :sswitch_1b
    const-string/jumbo v5, "olaf-ufz-list"

    .line 478
    .line 479
    .line 480
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 481
    .line 482
    .line 483
    move-result v5

    .line 484
    if-nez v5, :cond_1f

    .line 485
    .line 486
    goto/16 :goto_2

    .line 487
    .line 488
    :cond_1f
    const/16 v16, 0xb

    .line 489
    .line 490
    goto/16 :goto_2

    .line 491
    .line 492
    :sswitch_1c
    const-string v5, "allow-asyncbinder-fgs-app"

    .line 493
    .line 494
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 495
    .line 496
    .line 497
    move-result v5

    .line 498
    if-nez v5, :cond_20

    .line 499
    .line 500
    goto/16 :goto_2

    .line 501
    .line 502
    :cond_20
    const/16 v16, 0xa

    .line 503
    .line 504
    goto/16 :goto_2

    .line 505
    .line 506
    :sswitch_1d
    const-string/jumbo v5, "olaf-exemption-startswith"

    .line 507
    .line 508
    .line 509
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 510
    .line 511
    .line 512
    move-result v5

    .line 513
    if-nez v5, :cond_21

    .line 514
    .line 515
    goto/16 :goto_2

    .line 516
    .line 517
    :cond_21
    const/16 v16, 0x9

    .line 518
    .line 519
    goto/16 :goto_2

    .line 520
    .line 521
    :sswitch_1e
    const-string v5, "filter-list"

    .line 522
    .line 523
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 524
    .line 525
    .line 526
    move-result v5

    .line 527
    if-nez v5, :cond_22

    .line 528
    .line 529
    goto/16 :goto_2

    .line 530
    .line 531
    :cond_22
    const/16 v16, 0x8

    .line 532
    .line 533
    goto/16 :goto_2

    .line 534
    .line 535
    :sswitch_1f
    const-string v5, "block-top-activity"

    .line 536
    .line 537
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 538
    .line 539
    .line 540
    move-result v5

    .line 541
    if-nez v5, :cond_23

    .line 542
    .line 543
    goto :goto_2

    .line 544
    :cond_23
    const/16 v16, 0x7

    .line 545
    .line 546
    goto :goto_2

    .line 547
    :sswitch_20
    const-string v5, "calm-mode-default-list"

    .line 548
    .line 549
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 550
    .line 551
    .line 552
    move-result v5

    .line 553
    if-nez v5, :cond_24

    .line 554
    .line 555
    goto :goto_2

    .line 556
    :cond_24
    const/16 v16, 0x6

    .line 557
    .line 558
    goto :goto_2

    .line 559
    :sswitch_21
    const-string v5, "calm-mode-filter-list"

    .line 560
    .line 561
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 562
    .line 563
    .line 564
    move-result v5

    .line 565
    if-nez v5, :cond_25

    .line 566
    .line 567
    goto :goto_2

    .line 568
    :cond_25
    const/16 v16, 0x5

    .line 569
    .line 570
    goto :goto_2

    .line 571
    :sswitch_22
    const-string/jumbo v5, "pending-broadcast"

    .line 572
    .line 573
    .line 574
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 575
    .line 576
    .line 577
    move-result v5

    .line 578
    if-nez v5, :cond_26

    .line 579
    .line 580
    goto :goto_2

    .line 581
    :cond_26
    const/16 v16, 0x4

    .line 582
    .line 583
    goto :goto_2

    .line 584
    :sswitch_23
    const-string v5, "allow-async-binder"

    .line 585
    .line 586
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 587
    .line 588
    .line 589
    move-result v5

    .line 590
    if-nez v5, :cond_27

    .line 591
    .line 592
    goto :goto_2

    .line 593
    :cond_27
    const/16 v16, 0x3

    .line 594
    .line 595
    goto :goto_2

    .line 596
    :sswitch_24
    const-string v5, "allow-essential-intent"

    .line 597
    .line 598
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 599
    .line 600
    .line 601
    move-result v5

    .line 602
    if-nez v5, :cond_28

    .line 603
    .line 604
    goto :goto_2

    .line 605
    :cond_28
    const/16 v16, 0x2

    .line 606
    .line 607
    goto :goto_2

    .line 608
    :sswitch_25
    const-string v5, "block-alarm-wakeup-app"

    .line 609
    .line 610
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 611
    .line 612
    .line 613
    move-result v5

    .line 614
    if-nez v5, :cond_29

    .line 615
    .line 616
    goto :goto_2

    .line 617
    :cond_29
    const/16 v16, 0x1

    .line 618
    .line 619
    goto :goto_2

    .line 620
    :sswitch_26
    const-string/jumbo v5, "olaf-exemption"

    .line 621
    .line 622
    .line 623
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 624
    .line 625
    .line 626
    move-result v5

    .line 627
    if-nez v5, :cond_2a

    .line 628
    .line 629
    goto :goto_2

    .line 630
    :cond_2a
    const/16 v16, 0x0

    .line 631
    .line 632
    :goto_2
    packed-switch v16, :pswitch_data_0

    .line 633
    .line 634
    .line 635
    const-string v3, "Unknown element under <config>: "

    .line 636
    .line 637
    invoke-virtual {v3, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 638
    .line 639
    .line 640
    move-result-object v3

    .line 641
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    .line 643
    .line 644
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 645
    .line 646
    .line 647
    goto/16 :goto_4

    .line 648
    .line 649
    :pswitch_0
    iget-object v2, v0, Ljava/com/android/server/am/mars/database/MARsListManager;->mFastOlafUfzList:Ljava/util/Set;

    .line 650
    .line 651
    invoke-static {v1, v15, v7, v2}, Ljava/com/android/server/am/mars/database/MARsListManager;->parseAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 652
    .line 653
    .line 654
    goto/16 :goto_4

    .line 655
    .line 656
    :pswitch_1
    iget-object v2, v0, Ljava/com/android/server/am/mars/database/MARsListManager;->mFgsExemptionPackages:Ljava/util/Set;

    .line 657
    .line 658
    invoke-static {v1, v4, v7, v2}, Ljava/com/android/server/am/mars/database/MARsListManager;->parseAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 659
    .line 660
    .line 661
    goto/16 :goto_4

    .line 662
    .line 663
    :pswitch_2
    iget-object v2, v0, Ljava/com/android/server/am/mars/database/MARsListManager;->mOLAFExemptionGlobal:Ljava/util/Set;

    .line 664
    .line 665
    invoke-static {v1, v4, v7, v2}, Ljava/com/android/server/am/mars/database/MARsListManager;->parseAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 666
    .line 667
    .line 668
    goto/16 :goto_4

    .line 669
    .line 670
    :pswitch_3
    iget-object v2, v0, Ljava/com/android/server/am/mars/database/MARsListManager;->mOlafJobRestrictionExemptionList:Ljava/util/Set;

    .line 671
    .line 672
    invoke-static {v1, v4, v7, v2}, Ljava/com/android/server/am/mars/database/MARsListManager;->parseAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 673
    .line 674
    .line 675
    goto/16 :goto_4

    .line 676
    .line 677
    :pswitch_4
    iget-object v2, v0, Ljava/com/android/server/am/mars/database/MARsListManager;->mFreezeExemptionChina:Ljava/util/Set;

    .line 678
    .line 679
    invoke-static {v1, v4, v7, v2}, Ljava/com/android/server/am/mars/database/MARsListManager;->parseAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 680
    .line 681
    .line 682
    goto/16 :goto_4

    .line 683
    .line 684
    :pswitch_5
    iget-object v2, v0, Ljava/com/android/server/am/mars/database/MARsListManager;->mFreezeExemption:Ljava/util/Set;

    .line 685
    .line 686
    invoke-static {v1, v4, v7, v2}, Ljava/com/android/server/am/mars/database/MARsListManager;->parseAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 687
    .line 688
    .line 689
    goto/16 :goto_4

    .line 690
    .line 691
    :pswitch_6
    iget-object v2, v0, Ljava/com/android/server/am/mars/database/MARsListManager;->mLocationPackages:Ljava/util/Set;

    .line 692
    .line 693
    invoke-static {v1, v4, v7, v2}, Ljava/com/android/server/am/mars/database/MARsListManager;->parseAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 694
    .line 695
    .line 696
    goto/16 :goto_4

    .line 697
    .line 698
    :pswitch_7
    iget-object v2, v0, Ljava/com/android/server/am/mars/database/MARsListManager;->mGoogleFreezerExemptionList:Ljava/util/Set;

    .line 699
    .line 700
    const-string/jumbo v3, "process"

    .line 701
    .line 702
    .line 703
    invoke-static {v1, v3, v7, v2}, Ljava/com/android/server/am/mars/database/MARsListManager;->parseAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 704
    .line 705
    .line 706
    goto/16 :goto_4

    .line 707
    .line 708
    :pswitch_8
    iget-object v2, v0, Ljava/com/android/server/am/mars/database/MARsListManager;->mFreezeExemptionStartsWith:Ljava/util/Set;

    .line 709
    .line 710
    invoke-static {v1, v12, v7, v2}, Ljava/com/android/server/am/mars/database/MARsListManager;->parseAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 711
    .line 712
    .line 713
    goto/16 :goto_4

    .line 714
    .line 715
    :pswitch_9
    const-string/jumbo v5, "policynum"

    .line 716
    .line 717
    .line 718
    invoke-interface {v1, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 719
    .line 720
    .line 721
    move-result-object v5

    .line 722
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 723
    .line 724
    .line 725
    move-result v5

    .line 726
    const-string v8, "condition"

    .line 727
    .line 728
    invoke-interface {v1, v3, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 729
    .line 730
    .line 731
    move-result-object v8

    .line 732
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 733
    .line 734
    .line 735
    move-result v8

    .line 736
    invoke-interface {v1, v3, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 737
    .line 738
    .line 739
    move-result-object v9

    .line 740
    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 741
    .line 742
    .line 743
    move-result-object v3

    .line 744
    if-eqz v3, :cond_2b

    .line 745
    .line 746
    new-instance v4, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetExcludePackage;

    .line 747
    .line 748
    sget-object v10, Lcom/android/server/am/mars/database/MARsVersionManager;->mMARsSettingsInfoDefault:[[Ljava/lang/String;

    .line 749
    .line 750
    sget-object v10, Lcom/android/server/am/mars/database/MARsVersionManager$MARsVersionManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsVersionManager;

    .line 751
    .line 752
    invoke-static {v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 753
    .line 754
    .line 755
    invoke-direct {v4, v5, v8, v9, v3}, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetExcludePackage;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 756
    .line 757
    .line 758
    iget-object v3, v0, Ljava/com/android/server/am/mars/database/MARsListManager;->mExcludePackageDefault:Ljava/util/ArrayList;

    .line 759
    .line 760
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 761
    .line 762
    .line 763
    sget-boolean v3, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    .line 764
    .line 765
    if-eqz v3, :cond_2b

    .line 766
    .line 767
    new-instance v3, Ljava/lang/StringBuilder;

    .line 768
    .line 769
    invoke-direct {v3, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 770
    .line 771
    .line 772
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 773
    .line 774
    .line 775
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 776
    .line 777
    .line 778
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 779
    .line 780
    .line 781
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 782
    .line 783
    .line 784
    move-result-object v3

    .line 785
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    .line 787
    .line 788
    :cond_2b
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 789
    .line 790
    .line 791
    goto/16 :goto_4

    .line 792
    .line 793
    :pswitch_a
    iget-object v2, v0, Ljava/com/android/server/am/mars/database/MARsListManager;->mCtsGtsList:Ljava/util/Set;

    .line 794
    .line 795
    invoke-static {v1, v4, v7, v2}, Ljava/com/android/server/am/mars/database/MARsListManager;->parseAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 796
    .line 797
    .line 798
    goto/16 :goto_4

    .line 799
    .line 800
    :pswitch_b
    invoke-interface {v1, v3, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 801
    .line 802
    .line 803
    move-result-object v3

    .line 804
    iget-object v4, v0, Ljava/com/android/server/am/mars/database/MARsListManager;->mPendingBlocklistForGPS:Ljava/util/ArrayList;

    .line 805
    .line 806
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 807
    .line 808
    .line 809
    sget-boolean v4, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    .line 810
    .line 811
    if-eqz v4, :cond_2c

    .line 812
    .line 813
    invoke-static {v14, v7, v13, v3, v2}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 814
    .line 815
    .line 816
    :cond_2c
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 817
    .line 818
    .line 819
    goto/16 :goto_4

    .line 820
    .line 821
    :pswitch_c
    iget-object v2, v0, Ljava/com/android/server/am/mars/database/MARsListManager;->mOlafUfzList:Ljava/util/Set;

    .line 822
    .line 823
    invoke-static {v1, v15, v7, v2}, Ljava/com/android/server/am/mars/database/MARsListManager;->parseAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 824
    .line 825
    .line 826
    goto/16 :goto_4

    .line 827
    .line 828
    :pswitch_d
    iget-object v2, v0, Ljava/com/android/server/am/mars/database/MARsListManager;->mOLAFExemptionStartsWith:Ljava/util/Set;

    .line 829
    .line 830
    invoke-static {v1, v12, v7, v2}, Ljava/com/android/server/am/mars/database/MARsListManager;->parseAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 831
    .line 832
    .line 833
    goto/16 :goto_4

    .line 834
    .line 835
    :pswitch_e
    iget-object v2, v0, Ljava/com/android/server/am/mars/database/MARsListManager;->mFilterList:Ljava/util/Set;

    .line 836
    .line 837
    invoke-static {v1, v15, v7, v2}, Ljava/com/android/server/am/mars/database/MARsListManager;->parseAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 838
    .line 839
    .line 840
    goto/16 :goto_4

    .line 841
    .line 842
    :pswitch_f
    iget-object v2, v0, Ljava/com/android/server/am/mars/database/MARsListManager;->mCalmModeDefaultList:Ljava/util/Set;

    .line 843
    .line 844
    invoke-static {v1, v4, v7, v2}, Ljava/com/android/server/am/mars/database/MARsListManager;->parseAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 845
    .line 846
    .line 847
    goto/16 :goto_4

    .line 848
    .line 849
    :pswitch_10
    iget-object v2, v0, Ljava/com/android/server/am/mars/database/MARsListManager;->mCalmModeFilterList:Ljava/util/Set;

    .line 850
    .line 851
    invoke-static {v1, v15, v7, v2}, Ljava/com/android/server/am/mars/database/MARsListManager;->parseAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 852
    .line 853
    .line 854
    goto/16 :goto_4

    .line 855
    .line 856
    :pswitch_11
    invoke-interface {v1, v3, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 857
    .line 858
    .line 859
    move-result-object v4

    .line 860
    invoke-interface {v1, v3, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 861
    .line 862
    .line 863
    move-result-object v3

    .line 864
    const-string v5, "idle"

    .line 865
    .line 866
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 867
    .line 868
    .line 869
    move-result v4

    .line 870
    if-eqz v4, :cond_2d

    .line 871
    .line 872
    iget-object v4, v0, Ljava/com/android/server/am/mars/database/MARsListManager;->mPendingIntentIdleList:Ljava/util/ArrayList;

    .line 873
    .line 874
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 875
    .line 876
    .line 877
    goto :goto_3

    .line 878
    :cond_2d
    iget-object v4, v0, Ljava/com/android/server/am/mars/database/MARsListManager;->mPendingIntentList:Ljava/util/ArrayList;

    .line 879
    .line 880
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 881
    .line 882
    .line 883
    :goto_3
    sget-boolean v4, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    .line 884
    .line 885
    if-eqz v4, :cond_2e

    .line 886
    .line 887
    invoke-static {v14, v7, v13, v3, v2}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 888
    .line 889
    .line 890
    :cond_2e
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 891
    .line 892
    .line 893
    goto :goto_4

    .line 894
    :pswitch_12
    new-instance v4, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;

    .line 895
    .line 896
    sget-object v5, Lcom/android/server/am/mars/database/MARsVersionManager;->mMARsSettingsInfoDefault:[[Ljava/lang/String;

    .line 897
    .line 898
    sget-object v5, Lcom/android/server/am/mars/database/MARsVersionManager$MARsVersionManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsVersionManager;

    .line 899
    .line 900
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 901
    .line 902
    .line 903
    const-string/jumbo v5, "restrictionType"

    .line 904
    .line 905
    .line 906
    invoke-interface {v1, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 907
    .line 908
    .line 909
    move-result-object v5

    .line 910
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 911
    .line 912
    .line 913
    move-result v24

    .line 914
    invoke-interface {v1, v3, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 915
    .line 916
    .line 917
    move-result-object v19

    .line 918
    invoke-interface {v1, v3, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 919
    .line 920
    .line 921
    move-result-object v20

    .line 922
    const-string v5, "caller"

    .line 923
    .line 924
    invoke-interface {v1, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 925
    .line 926
    .line 927
    move-result-object v21

    .line 928
    invoke-interface {v1, v3, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 929
    .line 930
    .line 931
    move-result-object v22

    .line 932
    invoke-interface {v1, v3, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 933
    .line 934
    .line 935
    move-result-object v23

    .line 936
    move-object/from16 v18, v4

    .line 937
    .line 938
    invoke-direct/range {v18 .. v24}, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 939
    .line 940
    .line 941
    iget-object v3, v0, Ljava/com/android/server/am/mars/database/MARsListManager;->mAdjustRestrictionDefault:Ljava/util/ArrayList;

    .line 942
    .line 943
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 944
    .line 945
    .line 946
    sget-boolean v3, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    .line 947
    .line 948
    if-eqz v3, :cond_2f

    .line 949
    .line 950
    new-instance v3, Ljava/lang/StringBuilder;

    .line 951
    .line 952
    invoke-direct {v3, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 953
    .line 954
    .line 955
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 956
    .line 957
    .line 958
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 959
    .line 960
    .line 961
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 962
    .line 963
    .line 964
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 965
    .line 966
    .line 967
    move-result-object v3

    .line 968
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    .line 970
    .line 971
    :cond_2f
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 972
    .line 973
    .line 974
    goto :goto_4

    .line 975
    :pswitch_13
    iget-object v2, v0, Ljava/com/android/server/am/mars/database/MARsListManager;->mOLAFExemption:Ljava/util/Set;

    .line 976
    .line 977
    invoke-static {v1, v4, v7, v2}, Ljava/com/android/server/am/mars/database/MARsListManager;->parseAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 978
    .line 979
    .line 980
    :goto_4
    const/4 v2, 0x4

    .line 981
    const/4 v3, 0x3

    .line 982
    const/4 v4, 0x1

    .line 983
    const/4 v5, 0x2

    .line 984
    goto/16 :goto_1

    .line 985
    .line 986
    :cond_30
    return-void

    .line 987
    :cond_31
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    .line 988
    .line 989
    new-instance v3, Ljava/lang/StringBuilder;

    .line 990
    .line 991
    const-string v4, "Unexpected start tag in "

    .line 992
    .line 993
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 994
    .line 995
    .line 996
    iget-object v0, v0, Ljava/com/android/server/am/mars/database/MARsListManager;->mListFile:Ljava/io/File;

    .line 997
    .line 998
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 999
    .line 1000
    .line 1001
    const-string v0, ": found "

    .line 1002
    .line 1003
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1004
    .line 1005
    .line 1006
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 1007
    .line 1008
    .line 1009
    move-result-object v0

    .line 1010
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1011
    .line 1012
    .line 1013
    const-string v0, ", expected \'mars-list\'"

    .line 1014
    .line 1015
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1016
    .line 1017
    .line 1018
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1019
    .line 1020
    .line 1021
    move-result-object v0

    .line 1022
    invoke-direct {v2, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 1023
    .line 1024
    .line 1025
    throw v2

    .line 1026
    nop

    .line 1027
    :sswitch_data_0
    .sparse-switch
        -0x73740582 -> :sswitch_26
        -0x6e66af31 -> :sswitch_25
        -0x589d4801 -> :sswitch_24
        -0x535525e1 -> :sswitch_23
        -0x45b67bf5 -> :sswitch_22
        -0x40aee9a9 -> :sswitch_21
        -0x3c92575a -> :sswitch_20
        -0x3c8bae39 -> :sswitch_1f
        -0x37cf8e2d -> :sswitch_1e
        -0x2cf280ba -> :sswitch_1d
        -0x276b4285 -> :sswitch_1c
        -0x25caed73 -> :sswitch_1b
        -0x1f78735a -> :sswitch_1a
        -0x142affb8 -> :sswitch_19
        -0x107dd914 -> :sswitch_18
        -0xdac9e81 -> :sswitch_17
        -0xc881265 -> :sswitch_16
        -0x989f4a4 -> :sswitch_15
        -0x828688c -> :sswitch_14
        0x283d876 -> :sswitch_13
        0x1559f365 -> :sswitch_12
        0x1797b99f -> :sswitch_11
        0x1f02b081 -> :sswitch_10
        0x26858291 -> :sswitch_f
        0x2c9f6374 -> :sswitch_e
        0x2f014193 -> :sswitch_d
        0x3e137b6b -> :sswitch_c
        0x3f9f43e2 -> :sswitch_b
        0x43951813 -> :sswitch_a
        0x47019721 -> :sswitch_9
        0x54e7871d -> :sswitch_8
        0x57de091d -> :sswitch_7
        0x58c9f6e6 -> :sswitch_6
        0x5a1c49d2 -> :sswitch_5
        0x62e8262e -> :sswitch_4
        0x64e1a47b -> :sswitch_3
        0x6fbb1f27 -> :sswitch_2
        0x759992b6 -> :sswitch_1
        0x7ca18adc -> :sswitch_0
    .end sparse-switch

    .line 1028
    .line 1029
    .line 1030
    .line 1031
    .line 1032
    .line 1033
    .line 1034
    .line 1035
    .line 1036
    .line 1037
    .line 1038
    .line 1039
    .line 1040
    .line 1041
    .line 1042
    .line 1043
    .line 1044
    .line 1045
    .line 1046
    .line 1047
    .line 1048
    .line 1049
    .line 1050
    .line 1051
    .line 1052
    .line 1053
    .line 1054
    .line 1055
    .line 1056
    .line 1057
    .line 1058
    .line 1059
    .line 1060
    .line 1061
    .line 1062
    .line 1063
    .line 1064
    .line 1065
    .line 1066
    .line 1067
    .line 1068
    .line 1069
    .line 1070
    .line 1071
    .line 1072
    .line 1073
    .line 1074
    .line 1075
    .line 1076
    .line 1077
    .line 1078
    .line 1079
    .line 1080
    .line 1081
    .line 1082
    .line 1083
    .line 1084
    .line 1085
    .line 1086
    .line 1087
    .line 1088
    .line 1089
    .line 1090
    .line 1091
    .line 1092
    .line 1093
    .line 1094
    .line 1095
    .line 1096
    .line 1097
    .line 1098
    .line 1099
    .line 1100
    .line 1101
    .line 1102
    .line 1103
    .line 1104
    .line 1105
    .line 1106
    .line 1107
    .line 1108
    .line 1109
    .line 1110
    .line 1111
    .line 1112
    .line 1113
    .line 1114
    .line 1115
    .line 1116
    .line 1117
    .line 1118
    .line 1119
    .line 1120
    .line 1121
    .line 1122
    .line 1123
    .line 1124
    .line 1125
    .line 1126
    .line 1127
    .line 1128
    .line 1129
    .line 1130
    .line 1131
    .line 1132
    .line 1133
    .line 1134
    .line 1135
    .line 1136
    .line 1137
    .line 1138
    .line 1139
    .line 1140
    .line 1141
    .line 1142
    .line 1143
    .line 1144
    .line 1145
    .line 1146
    .line 1147
    .line 1148
    .line 1149
    .line 1150
    .line 1151
    .line 1152
    .line 1153
    .line 1154
    .line 1155
    .line 1156
    .line 1157
    .line 1158
    .line 1159
    .line 1160
    .line 1161
    .line 1162
    .line 1163
    .line 1164
    .line 1165
    .line 1166
    .line 1167
    .line 1168
    .line 1169
    .line 1170
    .line 1171
    .line 1172
    .line 1173
    .line 1174
    .line 1175
    .line 1176
    .line 1177
    .line 1178
    .line 1179
    .line 1180
    .line 1181
    .line 1182
    .line 1183
    .line 1184
    .line 1185
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_12
        :pswitch_e
        :pswitch_d
        :pswitch_12
        :pswitch_c
        :pswitch_12
        :pswitch_b
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_a
        :pswitch_12
        :pswitch_9
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_8
        :pswitch_7
        :pswitch_12
        :pswitch_12
        :pswitch_6
        :pswitch_5
        :pswitch_12
        :pswitch_4
        :pswitch_3
        :pswitch_12
        :pswitch_2
        :pswitch_1
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_0
    .end packed-switch
.end method
