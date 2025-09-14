.class public abstract Lcom/android/server/pm/ShortcutParser;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field static final METADATA_KEY:Ljava/lang/String; = "android.app.shortcuts"


# direct methods
.method public static parseShareTargetAttributes(Lcom/android/server/pm/ShortcutService;Landroid/util/AttributeSet;)Lcom/android/server/pm/ShareTargetInfo;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    sget-object v0, Lcom/android/internal/R$styleable;->Intent:[I

    .line 8
    .line 9
    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const/4 p1, 0x4

    .line 14
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v1, 0x0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    const-string p1, "ShortcutService"

    .line 26
    .line 27
    const-string v0, "android:targetClass must be provided."

    .line 28
    .line 29
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 33
    .line 34
    .line 35
    return-object v1

    .line 36
    :catchall_0
    move-exception p1

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    :try_start_1
    new-instance v0, Lcom/android/server/pm/ShareTargetInfo;

    .line 39
    .line 40
    invoke-direct {v0, v1, p1, v1}, Lcom/android/server/pm/ShareTargetInfo;-><init>([Lcom/android/server/pm/ShareTargetInfo$TargetData;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 44
    .line 45
    .line 46
    return-object v0

    .line 47
    :goto_0
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 48
    .line 49
    .line 50
    throw p1
.end method

.method public static parseShareTargetData(Lcom/android/server/pm/ShortcutService;Landroid/util/AttributeSet;)Lcom/android/server/pm/ShareTargetInfo$TargetData;
    .locals 10

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestData:[I

    .line 8
    .line 9
    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const/4 p1, 0x0

    .line 14
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getType(I)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v1, 0x3

    .line 19
    if-eq v0, v1, :cond_0

    .line 20
    .line 21
    const-string p1, "ShortcutService"

    .line 22
    .line 23
    const-string v0, "android:mimeType must be string literal."

    .line 24
    .line 25
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 29
    .line 30
    .line 31
    const/4 p0, 0x0

    .line 32
    return-object p0

    .line 33
    :catchall_0
    move-exception p1

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 v0, 0x1

    .line 36
    :try_start_1
    invoke-virtual {p0, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    const/4 v0, 0x2

    .line 41
    invoke-virtual {p0, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    invoke-virtual {p0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    const/4 v0, 0x4

    .line 50
    invoke-virtual {p0, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v6

    .line 54
    const/4 v0, 0x6

    .line 55
    invoke-virtual {p0, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v7

    .line 59
    const/4 v0, 0x5

    .line 60
    invoke-virtual {p0, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v8

    .line 64
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v9

    .line 68
    new-instance p1, Lcom/android/server/pm/ShareTargetInfo$TargetData;

    .line 69
    .line 70
    move-object v2, p1

    .line 71
    invoke-direct/range {v2 .. v9}, Lcom/android/server/pm/ShareTargetInfo$TargetData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 75
    .line 76
    .line 77
    return-object p1

    .line 78
    :goto_0
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 79
    .line 80
    .line 81
    throw p1
.end method

.method public static parseShortcutAttributes(Lcom/android/server/pm/ShortcutService;Landroid/util/AttributeSet;Ljava/lang/String;Landroid/content/ComponentName;II)Landroid/content/pm/ShortcutInfo;
    .locals 35

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v4, p3

    .line 4
    .line 5
    const-string v1, "android:shortcutShortLabel must be provided. activity="

    .line 6
    .line 7
    const-string v2, "android:shortcutId must be provided. activity="

    .line 8
    .line 9
    const-string v3, "android:shortcutId must be string literal. activity="

    .line 10
    .line 11
    iget-object v5, v0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 14
    .line 15
    .line 16
    move-result-object v5

    .line 17
    sget-object v6, Lcom/android/internal/R$styleable;->Shortcut:[I

    .line 18
    .line 19
    move-object/from16 v7, p1

    .line 20
    .line 21
    invoke-virtual {v5, v7, v6}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 22
    .line 23
    .line 24
    move-result-object v13

    .line 25
    const/4 v5, 0x2

    .line 26
    :try_start_0
    invoke-virtual {v13, v5}, Landroid/content/res/TypedArray;->getType(I)I

    .line 27
    .line 28
    .line 29
    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    const/4 v7, 0x3

    .line 31
    const-string v8, "ShortcutService"

    .line 32
    .line 33
    const/4 v9, 0x0

    .line 34
    if-eq v6, v7, :cond_0

    .line 35
    .line 36
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    .line 50
    .line 51
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    .line 52
    .line 53
    .line 54
    return-object v9

    .line 55
    :catchall_0
    move-exception v0

    .line 56
    move-object/from16 v34, v13

    .line 57
    .line 58
    goto/16 :goto_2

    .line 59
    .line 60
    :cond_0
    :try_start_2
    invoke-virtual {v13, v5}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    const/4 v5, 0x1

    .line 65
    invoke-virtual {v13, v5, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 66
    .line 67
    .line 68
    move-result v6

    .line 69
    const/4 v10, 0x0

    .line 70
    invoke-virtual {v13, v10, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 71
    .line 72
    .line 73
    move-result v22

    .line 74
    invoke-virtual {v13, v7, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 75
    .line 76
    .line 77
    move-result v7

    .line 78
    const/4 v11, 0x4

    .line 79
    invoke-virtual {v13, v11, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 80
    .line 81
    .line 82
    move-result v17

    .line 83
    const/4 v12, 0x5

    .line 84
    invoke-virtual {v13, v12, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 85
    .line 86
    .line 87
    move-result v19

    .line 88
    const/4 v12, 0x6

    .line 89
    invoke-virtual {v13, v12, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 90
    .line 91
    .line 92
    move-result v12

    .line 93
    if-eqz v12, :cond_1

    .line 94
    .line 95
    iget-object v14, v0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    .line 96
    .line 97
    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 98
    .line 99
    .line 100
    move-result-object v14

    .line 101
    invoke-virtual {v14, v12}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v12

    .line 105
    move-object/from16 v29, v12

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_1
    move-object/from16 v29, v9

    .line 109
    .line 110
    :goto_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 111
    .line 112
    .line 113
    move-result v12

    .line 114
    if-eqz v12, :cond_2

    .line 115
    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 129
    .line 130
    .line 131
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    .line 132
    .line 133
    .line 134
    return-object v9

    .line 135
    :cond_2
    if-nez v7, :cond_3

    .line 136
    .line 137
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 138
    .line 139
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 150
    .line 151
    .line 152
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    .line 153
    .line 154
    .line 155
    return-object v9

    .line 156
    :cond_3
    if-eqz v6, :cond_4

    .line 157
    .line 158
    const/16 v1, 0x20

    .line 159
    .line 160
    goto :goto_1

    .line 161
    :cond_4
    const/16 v1, 0x40

    .line 162
    .line 163
    :goto_1
    or-int/lit16 v1, v1, 0x100

    .line 164
    .line 165
    if-eqz v22, :cond_5

    .line 166
    .line 167
    move v10, v11

    .line 168
    :cond_5
    or-int v21, v1, v10

    .line 169
    .line 170
    xor-int/lit8 v26, v6, 0x1

    .line 171
    .line 172
    :try_start_4
    new-instance v31, Landroid/content/pm/ShortcutInfo;

    .line 173
    .line 174
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    .line 175
    .line 176
    .line 177
    move-result-wide v32
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 178
    const/16 v23, 0x0

    .line 179
    .line 180
    const/16 v24, 0x0

    .line 181
    .line 182
    const/16 v25, 0x0

    .line 183
    .line 184
    const/16 v27, 0x0

    .line 185
    .line 186
    const/16 v28, 0x0

    .line 187
    .line 188
    const/16 v30, 0x0

    .line 189
    .line 190
    const/4 v5, 0x0

    .line 191
    const/4 v6, 0x0

    .line 192
    const/4 v8, 0x0

    .line 193
    const/4 v9, 0x0

    .line 194
    const/4 v11, 0x0

    .line 195
    const/4 v12, 0x0

    .line 196
    const/4 v14, 0x0

    .line 197
    const/4 v15, 0x0

    .line 198
    const/16 v16, 0x0

    .line 199
    .line 200
    const/16 v18, 0x0

    .line 201
    .line 202
    move-object/from16 v0, v31

    .line 203
    .line 204
    move/from16 v1, p4

    .line 205
    .line 206
    move-object v2, v3

    .line 207
    move-object/from16 v3, p2

    .line 208
    .line 209
    move-object/from16 v4, p3

    .line 210
    .line 211
    move/from16 v10, v17

    .line 212
    .line 213
    move-object/from16 v34, v13

    .line 214
    .line 215
    move/from16 v13, v19

    .line 216
    .line 217
    move/from16 v17, p5

    .line 218
    .line 219
    move-wide/from16 v19, v32

    .line 220
    .line 221
    :try_start_5
    invoke-direct/range {v0 .. v30}, Landroid/content/pm/ShortcutInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;ILjava/lang/String;Ljava/lang/CharSequence;ILjava/lang/String;Ljava/lang/CharSequence;ILjava/lang/String;Ljava/util/Set;[Landroid/content/Intent;ILandroid/os/PersistableBundle;JIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Landroid/app/Person;Landroid/content/LocusId;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 222
    .line 223
    .line 224
    invoke-virtual/range {v34 .. v34}, Landroid/content/res/TypedArray;->recycle()V

    .line 225
    .line 226
    .line 227
    return-object v31

    .line 228
    :catchall_1
    move-exception v0

    .line 229
    :goto_2
    invoke-virtual/range {v34 .. v34}, Landroid/content/res/TypedArray;->recycle()V

    .line 230
    .line 231
    .line 232
    throw v0
.end method

.method public static parseShortcuts(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;ILjava/util/List;)Ljava/util/List;
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/internal/util/StatLogger;->getTime()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    const/16 v2, 0xc

    .line 8
    .line 9
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    .line 10
    .line 11
    const-string v4, "android.intent.action.MAIN"

    .line 12
    .line 13
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v4, "android.intent.category.LAUNCHER"

    .line 17
    .line 18
    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 19
    .line 20
    .line 21
    const/4 v4, 0x0

    .line 22
    invoke-virtual {p0, v3, p1, v4, p2}, Lcom/android/server/pm/ShortcutService;->queryActivities(Landroid/content/Intent;Ljava/lang/String;Landroid/content/ComponentName;I)Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 27
    .line 28
    .line 29
    if-eqz v3, :cond_5

    .line 30
    .line 31
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_0

    .line 36
    .line 37
    goto :goto_4

    .line 38
    :cond_0
    invoke-interface {p3}, Ljava/util/List;->clear()V

    .line 39
    .line 40
    .line 41
    :try_start_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    const/4 v1, 0x0

    .line 46
    move-object v9, v4

    .line 47
    :goto_0
    if-ge v1, v0, :cond_4

    .line 48
    .line 49
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 54
    .line 55
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 56
    .line 57
    if-nez v2, :cond_1

    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_1
    invoke-virtual {v2}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-virtual {p0, v2, p2}, Lcom/android/server/pm/ShortcutService;->injectGetActivityInfoWithMetadataWithUninstalled(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    if-eqz v2, :cond_2

    .line 69
    .line 70
    iget-object v5, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 71
    .line 72
    invoke-static {v5}, Lcom/android/server/pm/ShortcutService;->isInstalled(Landroid/content/pm/ApplicationInfo;)Z

    .line 73
    .line 74
    .line 75
    move-result v5

    .line 76
    if-eqz v5, :cond_2

    .line 77
    .line 78
    move-object v6, v2

    .line 79
    goto :goto_1

    .line 80
    :cond_2
    move-object v6, v4

    .line 81
    :goto_1
    if-eqz v6, :cond_3

    .line 82
    .line 83
    move-object v5, p0

    .line 84
    move-object v7, p1

    .line 85
    move v8, p2

    .line 86
    move-object v10, p3

    .line 87
    invoke-static/range {v5 .. v10}, Lcom/android/server/pm/ShortcutParser;->parseShortcutsOneFile(Lcom/android/server/pm/ShortcutService;Landroid/content/pm/ActivityInfo;Ljava/lang/String;ILjava/util/List;Ljava/util/List;)Ljava/util/List;

    .line 88
    .line 89
    .line 90
    move-result-object v9
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 91
    goto :goto_2

    .line 92
    :catch_0
    move-exception p2

    .line 93
    goto :goto_3

    .line 94
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_4
    return-object v9

    .line 98
    :goto_3
    new-instance p3, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    const-string v0, "Exception caught while parsing shortcut XML for package="

    .line 101
    .line 102
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 113
    .line 114
    .line 115
    :cond_5
    :goto_4
    return-object v4

    .line 116
    :catchall_0
    move-exception p1

    .line 117
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 118
    .line 119
    .line 120
    throw p1
.end method

.method public static parseShortcutsOneFile(Lcom/android/server/pm/ShortcutService;Landroid/content/pm/ActivityInfo;Ljava/lang/String;ILjava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 1
    :try_start_0
    const-string v1, "android.app.shortcuts"

    .line 2
    iget-object v2, v0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    .line 3
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v7, v2, v1}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-nez v9, :cond_1

    if-eqz v9, :cond_0

    .line 4
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_0
    return-object p4

    .line 5
    :cond_1
    :try_start_1
    new-instance v10, Landroid/content/ComponentName;

    iget-object v1, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v11, p2

    invoke-direct {v10, v11, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-static {v9}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v12

    .line 7
    iget v13, v0, Lcom/android/server/pm/ShortcutService;->mMaxShortcuts:I

    .line 8
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 9
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v5, p4

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v16, 0x0

    .line 10
    :goto_0
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v8

    const/4 v6, 0x1

    if-eq v8, v6, :cond_2

    const/4 v6, 0x3

    if-ne v8, v6, :cond_3

    .line 11
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v17

    if-lez v17, :cond_2

    goto :goto_1

    :cond_2
    move-object v11, v5

    goto/16 :goto_16

    :catchall_0
    move-exception v0

    move-object v8, v9

    goto/16 :goto_18

    .line 12
    :cond_3
    :goto_1
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v6

    .line 13
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    const-string/jumbo v11, "shortcut"

    const/4 v0, 0x2

    move-object/from16 v18, v10

    const-string v10, "ShortcutService"

    move-object/from16 v19, v12

    const/4 v12, 0x3

    if-ne v8, v12, :cond_a

    if-ne v6, v0, :cond_a

    :try_start_2
    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    if-nez v4, :cond_4

    move/from16 v20, v3

    goto/16 :goto_3

    .line 15
    :cond_4
    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 16
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_6

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Shortcut "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " has no intent. Skipping it."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x0

    goto :goto_2

    .line 18
    :cond_5
    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    .line 19
    new-instance v0, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    if-lt v3, v13, :cond_7

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "More than "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " shortcuts found for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ". Skipping the rest."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 22
    invoke-static {v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 23
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    return-object v5

    :cond_7
    const/4 v12, 0x0

    .line 24
    :try_start_3
    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    const v6, 0x1000c000

    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 25
    :try_start_4
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/content/Intent;

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/Intent;

    invoke-virtual {v4, v0}, Landroid/content/pm/ShortcutInfo;->setIntents([Landroid/content/Intent;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 26
    :try_start_5
    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    if-eqz v2, :cond_8

    .line 27
    invoke-virtual {v4, v2}, Landroid/content/pm/ShortcutInfo;->setCategories(Ljava/util/Set;)V

    const/4 v2, 0x0

    :cond_8
    if-nez v5, :cond_9

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v0

    .line 29
    :cond_9
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v16, v16, 0x1

    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v11, p2

    move-object/from16 v10, v18

    move-object/from16 v12, v19

    const/4 v4, 0x0

    goto/16 :goto_0

    .line 30
    :catch_0
    const-string v0, "Shortcut\'s extras contain un-persistable values. Skipping it."

    invoke-static {v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 31
    :cond_a
    const-string/jumbo v12, "share-target"

    move/from16 v20, v3

    const/4 v3, 0x3

    if-ne v8, v3, :cond_e

    if-ne v6, v0, :cond_e

    .line 32
    :try_start_6
    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    if-nez v1, :cond_b

    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v11, p2

    move-object/from16 v10, v18

    move-object/from16 v12, v19

    move/from16 v3, v20

    goto/16 :goto_0

    :cond_b
    if-eqz v2, :cond_c

    .line 33
    invoke-virtual {v2}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_c

    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_d

    :cond_c
    move-object/from16 v0, p5

    move-object/from16 v21, v4

    goto :goto_4

    .line 34
    :cond_d
    new-instance v3, Lcom/android/server/pm/ShareTargetInfo;

    .line 35
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/android/server/pm/ShareTargetInfo$TargetData;

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/pm/ShareTargetInfo$TargetData;

    iget-object v1, v1, Lcom/android/server/pm/ShareTargetInfo;->mTargetClass:Ljava/lang/String;

    move-object/from16 v21, v4

    .line 36
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-direct {v3, v0, v1, v2}, Lcom/android/server/pm/ShareTargetInfo;-><init>([Lcom/android/server/pm/ShareTargetInfo$TargetData;Ljava/lang/String;[Ljava/lang/String;)V

    move-object/from16 v0, p5

    .line 37
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x2

    const/16 v22, 0x0

    const/16 v23, 0x0

    goto :goto_5

    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v11, p2

    move-object/from16 v10, v18

    move-object/from16 v12, v19

    move/from16 v3, v20

    move-object/from16 v4, v21

    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_e
    move-object/from16 v0, p5

    move-object/from16 v21, v4

    move-object/from16 v22, v1

    move-object/from16 v23, v2

    const/4 v1, 0x2

    :goto_5
    if-eq v8, v1, :cond_f

    :goto_6
    move-object/from16 v1, p0

    move-object v11, v5

    move-object/from16 v4, v18

    move-object/from16 v2, v19

    const/4 v8, 0x0

    goto/16 :goto_15

    :cond_f
    const/4 v8, 0x1

    if-ne v6, v8, :cond_10

    .line 39
    const-string/jumbo v1, "shortcuts"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_6

    :cond_10
    const/4 v1, 0x2

    if-ne v6, v1, :cond_15

    .line 40
    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    move-object/from16 v3, p2

    move-object/from16 v4, v18

    move-object v11, v5

    move/from16 v5, p3

    move v7, v8

    const/4 v8, 0x0

    move/from16 v6, v16

    .line 41
    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/ShortcutParser;->parseShortcutAttributes(Lcom/android/server/pm/ShortcutService;Landroid/util/AttributeSet;Ljava/lang/String;Landroid/content/ComponentName;II)Landroid/content/pm/ShortcutInfo;

    move-result-object v4

    if-nez v4, :cond_11

    :goto_7
    move-object/from16 v1, p0

    move-object/from16 v4, v18

    move-object/from16 v2, v19

    goto/16 :goto_15

    :cond_11
    if-eqz v11, :cond_13

    .line 42
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v7

    :goto_8
    if-ltz v1, :cond_13

    .line 43
    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 44
    const-string v1, "Duplicate shortcut ID detected. Skipping it."

    invoke-static {v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_12
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    :cond_13
    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object v5, v11

    move-object/from16 v10, v18

    move-object/from16 v12, v19

    move/from16 v3, v20

    move-object/from16 v1, v22

    :goto_9
    const/4 v2, 0x0

    :goto_a
    move-object/from16 v11, p2

    goto/16 :goto_0

    :cond_14
    move-object v11, v5

    const/4 v8, 0x0

    const/4 v1, 0x2

    goto :goto_b

    :cond_15
    move-object v11, v5

    const/4 v8, 0x0

    :goto_b
    if-ne v6, v1, :cond_17

    .line 45
    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    .line 46
    invoke-static {v1, v2}, Lcom/android/server/pm/ShortcutParser;->parseShareTargetAttributes(Lcom/android/server/pm/ShortcutService;Landroid/util/AttributeSet;)Lcom/android/server/pm/ShareTargetInfo;

    move-result-object v3

    if-nez v3, :cond_16

    move-object/from16 v4, v18

    goto/16 :goto_15

    .line 47
    :cond_16
    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v7, p1

    move-object v0, v1

    move-object v12, v2

    move-object v1, v3

    move-object v5, v11

    move-object/from16 v10, v18

    move/from16 v3, v20

    move-object/from16 v4, v21

    goto :goto_9

    :cond_17
    move-object/from16 v1, p0

    move-object/from16 v2, v19

    const/4 v3, 0x3

    if-ne v6, v3, :cond_1b

    .line 48
    const-string v3, "intent"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    if-eqz v21, :cond_18

    .line 49
    invoke-virtual/range {v21 .. v21}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_19

    :cond_18
    move-object/from16 v4, v18

    goto :goto_c

    .line 50
    :cond_19
    iget-object v3, v1, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, v9, v2}, Landroid/content/Intent;->parseIntent(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/content/Intent;

    move-result-object v3

    .line 51
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 52
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Shortcut intent action must be provided. activity="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, v18

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v7, p1

    move-object v0, v1

    move-object v12, v2

    move-object v10, v4

    move-object v5, v11

    move/from16 v3, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    const/4 v4, 0x0

    goto/16 :goto_a

    :cond_1a
    move-object/from16 v4, v18

    .line 53
    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_15

    .line 54
    :goto_c
    const-string v3, "Ignoring excessive intent tag."

    invoke-static {v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_15

    :cond_1b
    move-object/from16 v4, v18

    .line 55
    const-string v3, "Empty category found. activity="

    const/4 v5, 0x3

    if-ne v6, v5, :cond_21

    :try_start_7
    const-string v5, "categories"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20

    if-eqz v21, :cond_2b

    .line 56
    invoke-virtual/range {v21 .. v21}, Landroid/content/pm/ShortcutInfo;->getCategories()Ljava/util/Set;

    move-result-object v5

    if-eqz v5, :cond_1c

    goto/16 :goto_15

    .line 57
    :cond_1c
    iget-object v5, v1, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget-object v6, Lcom/android/internal/R$styleable;->ShortcutCategories:[I

    invoke-virtual {v5, v2, v6}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 58
    :try_start_8
    invoke-virtual {v5, v8}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_1d

    .line 59
    invoke-virtual {v5, v8}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 60
    :try_start_9
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_d

    :catchall_1
    move-exception v0

    goto :goto_10

    .line 61
    :cond_1d
    :try_start_a
    const-string v6, "android:name for shortcut category must be string literal."

    invoke-static {v10, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 62
    :try_start_b
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    const/4 v6, 0x0

    .line 63
    :goto_d
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 64
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15

    :cond_1e
    if-nez v23, :cond_1f

    .line 65
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    goto :goto_e

    :cond_1f
    move-object/from16 v3, v23

    .line 66
    :goto_e
    invoke-virtual {v3, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :goto_f
    move-object/from16 v7, p1

    move-object v0, v1

    move-object v12, v2

    move-object v2, v3

    move-object v10, v4

    move-object v5, v11

    move/from16 v3, v20

    move-object/from16 v4, v21

    move-object/from16 v1, v22

    goto/16 :goto_a

    .line 67
    :goto_10
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 68
    throw v0

    :cond_20
    const/4 v5, 0x3

    :cond_21
    if-ne v6, v5, :cond_27

    .line 69
    const-string v5, "category"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_26

    if-nez v22, :cond_22

    goto/16 :goto_15

    .line 70
    :cond_22
    iget-object v5, v1, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget-object v6, Lcom/android/internal/R$styleable;->IntentCategory:[I

    invoke-virtual {v5, v2, v6}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 71
    :try_start_c
    invoke-virtual {v5, v8}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v6

    const/4 v7, 0x3

    if-eq v6, v7, :cond_23

    .line 72
    const-string v6, "android:name must be string literal."

    invoke-static {v10, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 73
    :try_start_d
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    const/4 v6, 0x0

    goto :goto_11

    :catchall_2
    move-exception v0

    goto :goto_13

    .line 74
    :cond_23
    :try_start_e
    invoke-virtual {v5, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 75
    :try_start_f
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 76
    :goto_11
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 77
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    :cond_24
    if-nez v23, :cond_25

    .line 78
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    goto :goto_12

    :cond_25
    move-object/from16 v3, v23

    .line 79
    :goto_12
    invoke-virtual {v3, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 80
    :goto_13
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 81
    throw v0

    :cond_26
    const/4 v3, 0x3

    goto :goto_14

    :cond_27
    move v3, v5

    :goto_14
    if-ne v6, v3, :cond_2a

    .line 82
    const-string v3, "data"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    if-nez v22, :cond_28

    goto :goto_15

    .line 83
    :cond_28
    invoke-static {v1, v2}, Lcom/android/server/pm/ShortcutParser;->parseShareTargetData(Lcom/android/server/pm/ShortcutService;Landroid/util/AttributeSet;)Lcom/android/server/pm/ShareTargetInfo$TargetData;

    move-result-object v3

    if-nez v3, :cond_29

    .line 84
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid data tag found. activity="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    .line 85
    :cond_29
    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_15

    .line 86
    :cond_2a
    const-string v3, "Invalid tag \'%s\' found at depth %d"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v7, v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    :cond_2b
    :goto_15
    move-object/from16 v7, p1

    move-object v0, v1

    move-object v12, v2

    move-object v10, v4

    move-object v5, v11

    move/from16 v3, v20

    move-object/from16 v4, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    goto/16 :goto_a

    .line 87
    :goto_16
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    return-object v11

    :goto_17
    const/4 v8, 0x0

    goto :goto_18

    :catchall_3
    move-exception v0

    goto :goto_17

    :goto_18
    if-eqz v8, :cond_2c

    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->close()V

    .line 88
    :cond_2c
    throw v0
.end method
