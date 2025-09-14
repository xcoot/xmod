.class public final Lcom/android/server/compat/CompatChange;
.super Lcom/android/internal/compat/CompatibilityChangeInfo;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mEvaluatedOverrides:Ljava/util/concurrent/ConcurrentHashMap;

.field public mListener:Lcom/android/server/compat/CompatChange$ChangeListener;

.field public final mRawOverrides:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method public constructor <init>(J)V
    .locals 10

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    .line 1
    invoke-direct/range {v0 .. v9}, Lcom/android/server/compat/CompatChange;-><init>(JLjava/lang/String;IIZZLjava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;IIZZLjava/lang/String;Z)V
    .locals 10

    move-object v9, p0

    .line 2
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object v0, p0

    move-object v2, p3

    move v3, p4

    move v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move-object/from16 v7, p8

    move/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/compat/CompatibilityChangeInfo;-><init>(Ljava/lang/Long;Ljava/lang/String;IIZZLjava/lang/String;Z)V

    const/4 v0, 0x0

    .line 3
    iput-object v0, v9, Lcom/android/server/compat/CompatChange;->mListener:Lcom/android/server/compat/CompatChange$ChangeListener;

    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, v9, Lcom/android/server/compat/CompatChange;->mEvaluatedOverrides:Ljava/util/concurrent/ConcurrentHashMap;

    .line 5
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, v9, Lcom/android/server/compat/CompatChange;->mRawOverrides:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method


# virtual methods
.method public final addPackageOverrideInternal(Ljava/lang/String;Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getLoggingOnly()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/compat/CompatChange;->mEvaluatedOverrides:Ljava/util/concurrent/ConcurrentHashMap;

    .line 8
    .line 9
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    monitor-enter p0

    .line 17
    :try_start_0
    iget-object p2, p0, Lcom/android/server/compat/CompatChange;->mListener:Lcom/android/server/compat/CompatChange$ChangeListener;

    .line 18
    .line 19
    if-eqz p2, :cond_0

    .line 20
    .line 21
    invoke-interface {p2, p1}, Lcom/android/server/compat/CompatChange$ChangeListener;->onCompatChange(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception p1

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    :goto_0
    monitor-exit p0

    .line 28
    return-void

    .line 29
    :goto_1
    monitor-exit p0

    .line 30
    throw p1

    .line 31
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 32
    .line 33
    new-instance p2, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string v0, "Can\'t add overrides for a logging only change "

    .line 36
    .line 37
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/android/server/compat/CompatChange;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw p1
.end method

.method public final isEnabled(Landroid/content/pm/ApplicationInfo;Lcom/android/internal/compat/AndroidBuildClassifier;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getDisabled()Z

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    xor-int/2addr p0, v0

    .line 9
    return p0

    .line 10
    :cond_0
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    iget-object v2, p0, Lcom/android/server/compat/CompatChange;->mEvaluatedOverrides:Ljava/util/concurrent/ConcurrentHashMap;

    .line 15
    .line 16
    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Ljava/lang/Boolean;

    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    return p0

    .line 29
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getDisabled()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    const/4 v2, 0x0

    .line 34
    if-eqz v1, :cond_2

    .line 35
    .line 36
    return v2

    .line 37
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getEnableSinceTargetSdk()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    const/4 v3, -0x1

    .line 42
    if-eq v1, v3, :cond_4

    .line 43
    .line 44
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 45
    .line 46
    invoke-virtual {p2}, Lcom/android/internal/compat/AndroidBuildClassifier;->platformTargetSdk()I

    .line 47
    .line 48
    .line 49
    move-result p2

    .line 50
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    invoke-virtual {p0}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getEnableSinceTargetSdk()I

    .line 55
    .line 56
    .line 57
    move-result p0

    .line 58
    if-lt p1, p0, :cond_3

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_3
    move v0, v2

    .line 62
    :cond_4
    :goto_0
    return v0
.end method

.method public final declared-synchronized loadOverrides(Lcom/android/server/compat/overrides/ChangeOverrides;)V
    .locals 8

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p1, Lcom/android/server/compat/overrides/ChangeOverrides;->deferred:Lcom/android/server/compat/overrides/ChangeOverrides$Raw;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    iget-object v2, v0, Lcom/android/server/compat/overrides/ChangeOverrides$Raw;->rawOverrideValue:Ljava/util/List;

    .line 8
    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    new-instance v2, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v2, v0, Lcom/android/server/compat/overrides/ChangeOverrides$Raw;->rawOverrideValue:Ljava/util/List;

    .line 17
    .line 18
    :cond_0
    iget-object v0, v0, Lcom/android/server/compat/overrides/ChangeOverrides$Raw;->rawOverrideValue:Ljava/util/List;

    .line 19
    .line 20
    check-cast v0, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_3

    .line 31
    .line 32
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    check-cast v2, Lcom/android/server/compat/overrides/OverrideValue;

    .line 37
    .line 38
    iget-object v3, v2, Lcom/android/server/compat/overrides/OverrideValue;->packageName:Ljava/lang/String;

    .line 39
    .line 40
    if-nez v3, :cond_1

    .line 41
    .line 42
    const-string v2, "CompatChange"

    .line 43
    .line 44
    const-string/jumbo v3, "loadOverrides: PackageName is null in deferred."

    .line 45
    .line 46
    .line 47
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catchall_0
    move-exception p1

    .line 52
    goto/16 :goto_9

    .line 53
    .line 54
    :cond_1
    iget-object v4, p0, Lcom/android/server/compat/CompatChange;->mRawOverrides:Ljava/util/concurrent/ConcurrentHashMap;

    .line 55
    .line 56
    new-instance v5, Landroid/app/compat/PackageOverride$Builder;

    .line 57
    .line 58
    invoke-direct {v5}, Landroid/app/compat/PackageOverride$Builder;-><init>()V

    .line 59
    .line 60
    .line 61
    iget-object v2, v2, Lcom/android/server/compat/overrides/OverrideValue;->enabled:Ljava/lang/Boolean;

    .line 62
    .line 63
    if-nez v2, :cond_2

    .line 64
    .line 65
    move v2, v1

    .line 66
    goto :goto_1

    .line 67
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    :goto_1
    invoke-virtual {v5, v2}, Landroid/app/compat/PackageOverride$Builder;->setEnabled(Z)Landroid/app/compat/PackageOverride$Builder;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-virtual {v2}, Landroid/app/compat/PackageOverride$Builder;->build()Landroid/app/compat/PackageOverride;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-virtual {v4, v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_3
    iget-object v0, p1, Lcom/android/server/compat/overrides/ChangeOverrides;->validated:Lcom/android/server/compat/overrides/ChangeOverrides$Raw;

    .line 84
    .line 85
    if-eqz v0, :cond_7

    .line 86
    .line 87
    invoke-virtual {v0}, Lcom/android/server/compat/overrides/ChangeOverrides$Raw;->getOverrideValue()Ljava/util/List;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    if-eqz v2, :cond_7

    .line 100
    .line 101
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    check-cast v2, Lcom/android/server/compat/overrides/OverrideValue;

    .line 106
    .line 107
    iget-object v3, v2, Lcom/android/server/compat/overrides/OverrideValue;->packageName:Ljava/lang/String;

    .line 108
    .line 109
    if-nez v3, :cond_4

    .line 110
    .line 111
    const-string v2, "CompatChange"

    .line 112
    .line 113
    const-string/jumbo v3, "loadOverrides: PackageName is null in validated."

    .line 114
    .line 115
    .line 116
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_4
    iget-object v4, p0, Lcom/android/server/compat/CompatChange;->mEvaluatedOverrides:Ljava/util/concurrent/ConcurrentHashMap;

    .line 121
    .line 122
    iget-object v5, v2, Lcom/android/server/compat/overrides/OverrideValue;->enabled:Ljava/lang/Boolean;

    .line 123
    .line 124
    if-nez v5, :cond_5

    .line 125
    .line 126
    move v5, v1

    .line 127
    goto :goto_3

    .line 128
    :cond_5
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 129
    .line 130
    .line 131
    move-result v5

    .line 132
    :goto_3
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 133
    .line 134
    .line 135
    move-result-object v5

    .line 136
    invoke-virtual {v4, v3, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    iget-object v3, p0, Lcom/android/server/compat/CompatChange;->mRawOverrides:Ljava/util/concurrent/ConcurrentHashMap;

    .line 140
    .line 141
    iget-object v4, v2, Lcom/android/server/compat/overrides/OverrideValue;->packageName:Ljava/lang/String;

    .line 142
    .line 143
    new-instance v5, Landroid/app/compat/PackageOverride$Builder;

    .line 144
    .line 145
    invoke-direct {v5}, Landroid/app/compat/PackageOverride$Builder;-><init>()V

    .line 146
    .line 147
    .line 148
    iget-object v2, v2, Lcom/android/server/compat/overrides/OverrideValue;->enabled:Ljava/lang/Boolean;

    .line 149
    .line 150
    if-nez v2, :cond_6

    .line 151
    .line 152
    move v2, v1

    .line 153
    goto :goto_4

    .line 154
    :cond_6
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 155
    .line 156
    .line 157
    move-result v2

    .line 158
    :goto_4
    invoke-virtual {v5, v2}, Landroid/app/compat/PackageOverride$Builder;->setEnabled(Z)Landroid/app/compat/PackageOverride$Builder;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    invoke-virtual {v2}, Landroid/app/compat/PackageOverride$Builder;->build()Landroid/app/compat/PackageOverride;

    .line 163
    .line 164
    .line 165
    move-result-object v2

    .line 166
    invoke-virtual {v3, v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    goto :goto_2

    .line 170
    :cond_7
    iget-object p1, p1, Lcom/android/server/compat/overrides/ChangeOverrides;->raw:Lcom/android/server/compat/overrides/ChangeOverrides$Raw;

    .line 171
    .line 172
    if-eqz p1, :cond_c

    .line 173
    .line 174
    invoke-virtual {p1}, Lcom/android/server/compat/overrides/ChangeOverrides$Raw;->getRawOverrideValue()Ljava/util/List;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 183
    .line 184
    .line 185
    move-result v0

    .line 186
    if-eqz v0, :cond_c

    .line 187
    .line 188
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    check-cast v0, Lcom/android/server/compat/overrides/RawOverrideValue;

    .line 193
    .line 194
    iget-object v2, v0, Lcom/android/server/compat/overrides/RawOverrideValue;->packageName:Ljava/lang/String;

    .line 195
    .line 196
    if-nez v2, :cond_8

    .line 197
    .line 198
    const-string v0, "CompatChange"

    .line 199
    .line 200
    const-string/jumbo v2, "loadOverrides: PackageName is null in raw."

    .line 201
    .line 202
    .line 203
    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    .line 205
    .line 206
    goto :goto_5

    .line 207
    :cond_8
    new-instance v2, Landroid/app/compat/PackageOverride$Builder;

    .line 208
    .line 209
    invoke-direct {v2}, Landroid/app/compat/PackageOverride$Builder;-><init>()V

    .line 210
    .line 211
    .line 212
    iget-object v3, v0, Lcom/android/server/compat/overrides/RawOverrideValue;->minVersionCode:Ljava/lang/Long;

    .line 213
    .line 214
    const-wide/16 v4, 0x0

    .line 215
    .line 216
    if-nez v3, :cond_9

    .line 217
    .line 218
    move-wide v6, v4

    .line 219
    goto :goto_6

    .line 220
    :cond_9
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 221
    .line 222
    .line 223
    move-result-wide v6

    .line 224
    :goto_6
    invoke-virtual {v2, v6, v7}, Landroid/app/compat/PackageOverride$Builder;->setMinVersionCode(J)Landroid/app/compat/PackageOverride$Builder;

    .line 225
    .line 226
    .line 227
    move-result-object v2

    .line 228
    iget-object v3, v0, Lcom/android/server/compat/overrides/RawOverrideValue;->maxVersionCode:Ljava/lang/Long;

    .line 229
    .line 230
    if-nez v3, :cond_a

    .line 231
    .line 232
    goto :goto_7

    .line 233
    :cond_a
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 234
    .line 235
    .line 236
    move-result-wide v4

    .line 237
    :goto_7
    invoke-virtual {v2, v4, v5}, Landroid/app/compat/PackageOverride$Builder;->setMaxVersionCode(J)Landroid/app/compat/PackageOverride$Builder;

    .line 238
    .line 239
    .line 240
    move-result-object v2

    .line 241
    iget-object v3, v0, Lcom/android/server/compat/overrides/RawOverrideValue;->enabled:Ljava/lang/Boolean;

    .line 242
    .line 243
    if-nez v3, :cond_b

    .line 244
    .line 245
    move v3, v1

    .line 246
    goto :goto_8

    .line 247
    :cond_b
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 248
    .line 249
    .line 250
    move-result v3

    .line 251
    :goto_8
    invoke-virtual {v2, v3}, Landroid/app/compat/PackageOverride$Builder;->setEnabled(Z)Landroid/app/compat/PackageOverride$Builder;

    .line 252
    .line 253
    .line 254
    move-result-object v2

    .line 255
    invoke-virtual {v2}, Landroid/app/compat/PackageOverride$Builder;->build()Landroid/app/compat/PackageOverride;

    .line 256
    .line 257
    .line 258
    move-result-object v2

    .line 259
    iget-object v3, p0, Lcom/android/server/compat/CompatChange;->mRawOverrides:Ljava/util/concurrent/ConcurrentHashMap;

    .line 260
    .line 261
    iget-object v0, v0, Lcom/android/server/compat/overrides/RawOverrideValue;->packageName:Ljava/lang/String;

    .line 262
    .line 263
    invoke-virtual {v3, v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 264
    .line 265
    .line 266
    goto :goto_5

    .line 267
    :cond_c
    monitor-exit p0

    .line 268
    return-void

    .line 269
    :goto_9
    monitor-exit p0

    .line 270
    throw p1
.end method

.method public final declared-synchronized recheckOverride(Ljava/lang/String;Lcom/android/internal/compat/OverrideAllowedState;Ljava/lang/Long;)Z
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    monitor-exit p0

    .line 6
    return v0

    .line 7
    :cond_0
    :try_start_0
    iget p2, p2, Lcom/android/internal/compat/OverrideAllowedState;->state:I

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    if-nez p2, :cond_1

    .line 11
    .line 12
    move p2, v1

    .line 13
    goto :goto_0

    .line 14
    :cond_1
    move p2, v0

    .line 15
    :goto_0
    if-eqz p3, :cond_8

    .line 16
    .line 17
    iget-object v2, p0, Lcom/android/server/compat/CompatChange;->mRawOverrides:Ljava/util/concurrent/ConcurrentHashMap;

    .line 18
    .line 19
    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_8

    .line 24
    .line 25
    if-nez p2, :cond_2

    .line 26
    .line 27
    goto :goto_4

    .line 28
    :cond_2
    iget-object p2, p0, Lcom/android/server/compat/CompatChange;->mRawOverrides:Ljava/util/concurrent/ConcurrentHashMap;

    .line 29
    .line 30
    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    check-cast p2, Landroid/app/compat/PackageOverride;

    .line 35
    .line 36
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    .line 37
    .line 38
    .line 39
    move-result-wide v2

    .line 40
    invoke-virtual {p2, v2, v3}, Landroid/app/compat/PackageOverride;->evaluate(J)I

    .line 41
    .line 42
    .line 43
    move-result p2

    .line 44
    if-eqz p2, :cond_5

    .line 45
    .line 46
    if-eq p2, v1, :cond_4

    .line 47
    .line 48
    const/4 p3, 0x2

    .line 49
    if-eq p2, p3, :cond_3

    .line 50
    .line 51
    goto :goto_3

    .line 52
    :cond_3
    invoke-virtual {p0, p1, v0}, Lcom/android/server/compat/CompatChange;->addPackageOverrideInternal(Ljava/lang/String;Z)V

    .line 53
    .line 54
    .line 55
    goto :goto_3

    .line 56
    :catchall_0
    move-exception p1

    .line 57
    goto :goto_8

    .line 58
    :cond_4
    invoke-virtual {p0, p1, v1}, Lcom/android/server/compat/CompatChange;->addPackageOverrideInternal(Ljava/lang/String;Z)V

    .line 59
    .line 60
    .line 61
    goto :goto_3

    .line 62
    :cond_5
    iget-object p2, p0, Lcom/android/server/compat/CompatChange;->mEvaluatedOverrides:Ljava/util/concurrent/ConcurrentHashMap;

    .line 63
    .line 64
    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    if-eqz p2, :cond_7

    .line 69
    .line 70
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    :try_start_1
    iget-object p2, p0, Lcom/android/server/compat/CompatChange;->mListener:Lcom/android/server/compat/CompatChange$ChangeListener;

    .line 72
    .line 73
    if-eqz p2, :cond_6

    .line 74
    .line 75
    invoke-interface {p2, p1}, Lcom/android/server/compat/CompatChange$ChangeListener;->onCompatChange(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 76
    .line 77
    .line 78
    goto :goto_1

    .line 79
    :catchall_1
    move-exception p1

    .line 80
    goto :goto_2

    .line 81
    :cond_6
    :goto_1
    :try_start_2
    monitor-exit p0

    .line 82
    goto :goto_3

    .line 83
    :goto_2
    monitor-exit p0

    .line 84
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 85
    :cond_7
    :goto_3
    monitor-exit p0

    .line 86
    return v1

    .line 87
    :cond_8
    :goto_4
    :try_start_3
    iget-object p2, p0, Lcom/android/server/compat/CompatChange;->mEvaluatedOverrides:Ljava/util/concurrent/ConcurrentHashMap;

    .line 88
    .line 89
    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    if-eqz p2, :cond_a

    .line 94
    .line 95
    monitor-enter p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 96
    :try_start_4
    iget-object p2, p0, Lcom/android/server/compat/CompatChange;->mListener:Lcom/android/server/compat/CompatChange$ChangeListener;

    .line 97
    .line 98
    if-eqz p2, :cond_9

    .line 99
    .line 100
    invoke-interface {p2, p1}, Lcom/android/server/compat/CompatChange$ChangeListener;->onCompatChange(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 101
    .line 102
    .line 103
    goto :goto_5

    .line 104
    :catchall_2
    move-exception p1

    .line 105
    goto :goto_6

    .line 106
    :cond_9
    :goto_5
    :try_start_5
    monitor-exit p0

    .line 107
    goto :goto_7

    .line 108
    :goto_6
    monitor-exit p0

    .line 109
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 110
    :cond_a
    :goto_7
    monitor-exit p0

    .line 111
    return v0

    .line 112
    :goto_8
    monitor-exit p0

    .line 113
    throw p1
.end method

.method public final declared-synchronized saveOverrides()Lcom/android/server/compat/overrides/ChangeOverrides;
    .locals 8

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/compat/CompatChange;->mRawOverrides:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    .line 4
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    .line 5
    .line 6
    .line 7
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    monitor-exit p0

    .line 11
    const/4 p0, 0x0

    .line 12
    return-object p0

    .line 13
    :cond_0
    :try_start_1
    new-instance v0, Lcom/android/server/compat/overrides/ChangeOverrides;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getId()J

    .line 19
    .line 20
    .line 21
    move-result-wide v1

    .line 22
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    iput-object v1, v0, Lcom/android/server/compat/overrides/ChangeOverrides;->changeId:Ljava/lang/Long;

    .line 27
    .line 28
    new-instance v1, Lcom/android/server/compat/overrides/ChangeOverrides$Raw;

    .line 29
    .line 30
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/android/server/compat/overrides/ChangeOverrides$Raw;->getRawOverrideValue()Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    iget-object v3, p0, Lcom/android/server/compat/CompatChange;->mRawOverrides:Ljava/util/concurrent/ConcurrentHashMap;

    .line 38
    .line 39
    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    if-eqz v4, :cond_1

    .line 52
    .line 53
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    check-cast v4, Ljava/util/Map$Entry;

    .line 58
    .line 59
    new-instance v5, Lcom/android/server/compat/overrides/RawOverrideValue;

    .line 60
    .line 61
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 62
    .line 63
    .line 64
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v6

    .line 68
    check-cast v6, Ljava/lang/String;

    .line 69
    .line 70
    iput-object v6, v5, Lcom/android/server/compat/overrides/RawOverrideValue;->packageName:Ljava/lang/String;

    .line 71
    .line 72
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v6

    .line 76
    check-cast v6, Landroid/app/compat/PackageOverride;

    .line 77
    .line 78
    invoke-virtual {v6}, Landroid/app/compat/PackageOverride;->getMinVersionCode()J

    .line 79
    .line 80
    .line 81
    move-result-wide v6

    .line 82
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 83
    .line 84
    .line 85
    move-result-object v6

    .line 86
    iput-object v6, v5, Lcom/android/server/compat/overrides/RawOverrideValue;->minVersionCode:Ljava/lang/Long;

    .line 87
    .line 88
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v6

    .line 92
    check-cast v6, Landroid/app/compat/PackageOverride;

    .line 93
    .line 94
    invoke-virtual {v6}, Landroid/app/compat/PackageOverride;->getMaxVersionCode()J

    .line 95
    .line 96
    .line 97
    move-result-wide v6

    .line 98
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 99
    .line 100
    .line 101
    move-result-object v6

    .line 102
    iput-object v6, v5, Lcom/android/server/compat/overrides/RawOverrideValue;->maxVersionCode:Ljava/lang/Long;

    .line 103
    .line 104
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    check-cast v4, Landroid/app/compat/PackageOverride;

    .line 109
    .line 110
    invoke-virtual {v4}, Landroid/app/compat/PackageOverride;->isEnabled()Z

    .line 111
    .line 112
    .line 113
    move-result v4

    .line 114
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 115
    .line 116
    .line 117
    move-result-object v4

    .line 118
    iput-object v4, v5, Lcom/android/server/compat/overrides/RawOverrideValue;->enabled:Ljava/lang/Boolean;

    .line 119
    .line 120
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    goto :goto_0

    .line 124
    :catchall_0
    move-exception v0

    .line 125
    goto :goto_2

    .line 126
    :cond_1
    iput-object v1, v0, Lcom/android/server/compat/overrides/ChangeOverrides;->raw:Lcom/android/server/compat/overrides/ChangeOverrides$Raw;

    .line 127
    .line 128
    new-instance v1, Lcom/android/server/compat/overrides/ChangeOverrides$Raw;

    .line 129
    .line 130
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v1}, Lcom/android/server/compat/overrides/ChangeOverrides$Raw;->getOverrideValue()Ljava/util/List;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    iget-object v3, p0, Lcom/android/server/compat/CompatChange;->mEvaluatedOverrides:Ljava/util/concurrent/ConcurrentHashMap;

    .line 138
    .line 139
    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    .line 140
    .line 141
    .line 142
    move-result-object v3

    .line 143
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 144
    .line 145
    .line 146
    move-result-object v3

    .line 147
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 148
    .line 149
    .line 150
    move-result v4

    .line 151
    if-eqz v4, :cond_2

    .line 152
    .line 153
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v4

    .line 157
    check-cast v4, Ljava/util/Map$Entry;

    .line 158
    .line 159
    new-instance v5, Lcom/android/server/compat/overrides/OverrideValue;

    .line 160
    .line 161
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 162
    .line 163
    .line 164
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v6

    .line 168
    check-cast v6, Ljava/lang/String;

    .line 169
    .line 170
    iput-object v6, v5, Lcom/android/server/compat/overrides/OverrideValue;->packageName:Ljava/lang/String;

    .line 171
    .line 172
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v4

    .line 176
    check-cast v4, Ljava/lang/Boolean;

    .line 177
    .line 178
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 179
    .line 180
    .line 181
    iput-object v4, v5, Lcom/android/server/compat/overrides/OverrideValue;->enabled:Ljava/lang/Boolean;

    .line 182
    .line 183
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    goto :goto_1

    .line 187
    :cond_2
    iput-object v1, v0, Lcom/android/server/compat/overrides/ChangeOverrides;->validated:Lcom/android/server/compat/overrides/ChangeOverrides$Raw;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 188
    .line 189
    monitor-exit p0

    .line 190
    return-object v0

    .line 191
    :goto_2
    monitor-exit p0

    .line 192
    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "ChangeId("

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getId()J

    .line 9
    .line 10
    .line 11
    move-result-wide v1

    .line 12
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getName()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    const-string v1, "; name="

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getEnableSinceTargetSdk()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    const/4 v2, -0x1

    .line 38
    if-eq v1, v2, :cond_1

    .line 39
    .line 40
    const-string v1, "; enableSinceTargetSdk="

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getEnableSinceTargetSdk()I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getDisabled()Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-eqz v1, :cond_2

    .line 57
    .line 58
    const-string v1, "; disabled"

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getLoggingOnly()Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-eqz v1, :cond_3

    .line 68
    .line 69
    const-string v1, "; loggingOnly"

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    :cond_3
    iget-object v1, p0, Lcom/android/server/compat/CompatChange;->mEvaluatedOverrides:Ljava/util/concurrent/ConcurrentHashMap;

    .line 75
    .line 76
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    if-nez v1, :cond_4

    .line 81
    .line 82
    const-string v1, "; packageOverrides="

    .line 83
    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    iget-object v1, p0, Lcom/android/server/compat/CompatChange;->mEvaluatedOverrides:Ljava/util/concurrent/ConcurrentHashMap;

    .line 88
    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    :cond_4
    iget-object v1, p0, Lcom/android/server/compat/CompatChange;->mRawOverrides:Ljava/util/concurrent/ConcurrentHashMap;

    .line 93
    .line 94
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    if-nez v1, :cond_5

    .line 99
    .line 100
    const-string v1, "; rawOverrides="

    .line 101
    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    iget-object v1, p0, Lcom/android/server/compat/CompatChange;->mRawOverrides:Ljava/util/concurrent/ConcurrentHashMap;

    .line 106
    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getOverridable()Z

    .line 111
    .line 112
    .line 113
    move-result p0

    .line 114
    if-eqz p0, :cond_6

    .line 115
    .line 116
    const-string p0, "; overridable"

    .line 117
    .line 118
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    :cond_6
    const-string p0, ")"

    .line 122
    .line 123
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    return-object p0
.end method
