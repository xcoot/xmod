.class public final Lcom/samsung/android/server/corestate/CoreStateObserverController;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mCallback:Lcom/android/server/wm/CoreStateController;

.field public final mPreferenceObserver:Lcom/samsung/android/server/corestate/CoreStatePreferenceObserver;

.field public final mSettingObserver:Lcom/samsung/android/server/corestate/CoreStateSettingObserver;

.field public final mStartedUserIds:Landroid/util/ArraySet;

.field public final mStateForUser:Landroid/util/SparseArray;

.field public final mSystemFeatureObserver:Lcom/samsung/android/server/corestate/CoreStateSystemFeatureObserver;

.field public final mVolatileObserver:Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/CoreStateController;Landroid/os/Handler;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mStateForUser:Landroid/util/SparseArray;

    .line 10
    .line 11
    new-instance v0, Landroid/util/ArraySet;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mStartedUserIds:Landroid/util/ArraySet;

    .line 17
    .line 18
    iput-object p2, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mCallback:Lcom/android/server/wm/CoreStateController;

    .line 19
    .line 20
    new-instance p2, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;

    .line 21
    .line 22
    invoke-direct {p2, p1, p3, p0}, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/samsung/android/server/corestate/CoreStateObserverController;)V

    .line 23
    .line 24
    .line 25
    iput-object p2, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mSettingObserver:Lcom/samsung/android/server/corestate/CoreStateSettingObserver;

    .line 26
    .line 27
    new-instance p2, Lcom/samsung/android/server/corestate/CoreStateSystemFeatureObserver;

    .line 28
    .line 29
    invoke-direct {p2, p1}, Lcom/samsung/android/server/corestate/CoreStateSystemFeatureObserver;-><init>(Landroid/content/Context;)V

    .line 30
    .line 31
    .line 32
    iput-object p2, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mSystemFeatureObserver:Lcom/samsung/android/server/corestate/CoreStateSystemFeatureObserver;

    .line 33
    .line 34
    new-instance p2, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;

    .line 35
    .line 36
    invoke-direct {p2, p3, p0}, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;-><init>(Landroid/os/Handler;Lcom/samsung/android/server/corestate/CoreStateObserverController;)V

    .line 37
    .line 38
    .line 39
    iput-object p2, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mVolatileObserver:Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;

    .line 40
    .line 41
    new-instance p2, Lcom/samsung/android/server/corestate/CoreStatePreferenceObserver;

    .line 42
    .line 43
    invoke-direct {p2, p1}, Lcom/samsung/android/server/corestate/CoreStatePreferenceObserver;-><init>(Landroid/content/Context;)V

    .line 44
    .line 45
    .line 46
    iput-object p2, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mPreferenceObserver:Lcom/samsung/android/server/corestate/CoreStatePreferenceObserver;

    .line 47
    .line 48
    return-void
.end method


# virtual methods
.method public final copyCoreStateLocked(I)Landroid/os/Bundle;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mStateForUser:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/os/Bundle;

    .line 8
    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    new-instance p0, Landroid/os/Bundle;

    .line 12
    .line 13
    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p0}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    check-cast p0, Landroid/os/Bundle;

    .line 22
    .line 23
    :goto_0
    return-object p0
.end method

.method public final populateCoreState(I)I
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mStateForUser:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/os/Bundle;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Landroid/os/Bundle;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mStateForUser:Landroid/util/SparseArray;

    .line 17
    .line 18
    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mSystemFeatureObserver:Lcom/samsung/android/server/corestate/CoreStateSystemFeatureObserver;

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    iget-object v1, v1, Lcom/samsung/android/server/corestate/CoreStateSystemFeatureObserver;->mSystemFeaturesRepository:Ljava/util/Map;

    .line 26
    .line 27
    check-cast v1, Ljava/util/HashMap;

    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-eqz v2, :cond_0

    .line 42
    .line 43
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    check-cast v2, Ljava/util/Map$Entry;

    .line 48
    .line 49
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    check-cast v3, Ljava/lang/String;

    .line 54
    .line 55
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    check-cast v2, Ljava/lang/Boolean;

    .line 60
    .line 61
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_0
    const/4 v1, 0x2

    .line 70
    const/4 v2, 0x0

    .line 71
    iget-object v3, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mSettingObserver:Lcom/samsung/android/server/corestate/CoreStateSettingObserver;

    .line 72
    .line 73
    if-eqz v3, :cond_3

    .line 74
    .line 75
    iget-object v4, v3, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mSecureSettingToTypeMap:Ljava/util/Map;

    .line 76
    .line 77
    invoke-virtual {v3, v0, v4, p1}, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->populate(Landroid/os/Bundle;Ljava/util/Map;I)Z

    .line 78
    .line 79
    .line 80
    move-result v4

    .line 81
    iget-object v5, v3, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mSystemSettingToTypeMap:Ljava/util/Map;

    .line 82
    .line 83
    invoke-virtual {v3, v0, v5, p1}, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->populate(Landroid/os/Bundle;Ljava/util/Map;I)Z

    .line 84
    .line 85
    .line 86
    move-result v5

    .line 87
    or-int/2addr v4, v5

    .line 88
    iget-object v5, v3, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mGlobalSettingToTypeMap:Ljava/util/Map;

    .line 89
    .line 90
    invoke-virtual {v3, v0, v5, p1}, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->populate(Landroid/os/Bundle;Ljava/util/Map;I)Z

    .line 91
    .line 92
    .line 93
    move-result v5

    .line 94
    or-int/2addr v4, v5

    .line 95
    iget-object v5, v3, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mSecureSettingToTypeMapForUser:Ljava/util/Map;

    .line 96
    .line 97
    invoke-virtual {v3, v0, v5, p1}, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->populate(Landroid/os/Bundle;Ljava/util/Map;I)Z

    .line 98
    .line 99
    .line 100
    move-result v5

    .line 101
    if-eqz v5, :cond_1

    .line 102
    .line 103
    move v5, v1

    .line 104
    goto :goto_1

    .line 105
    :cond_1
    move v5, v2

    .line 106
    :goto_1
    or-int/2addr v4, v5

    .line 107
    iget-object v5, v3, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mSystemSettingToTypeMapForUser:Ljava/util/Map;

    .line 108
    .line 109
    invoke-virtual {v3, v0, v5, p1}, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->populate(Landroid/os/Bundle;Ljava/util/Map;I)Z

    .line 110
    .line 111
    .line 112
    move-result v3

    .line 113
    if-eqz v3, :cond_2

    .line 114
    .line 115
    move v3, v1

    .line 116
    goto :goto_2

    .line 117
    :cond_2
    move v3, v2

    .line 118
    :goto_2
    or-int/2addr v3, v4

    .line 119
    goto :goto_3

    .line 120
    :cond_3
    move v3, v2

    .line 121
    :goto_3
    const/4 v4, 0x1

    .line 122
    iget-object v5, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mVolatileObserver:Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;

    .line 123
    .line 124
    if-eqz v5, :cond_15

    .line 125
    .line 126
    iget-object v6, v5, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->mVolatileStatesToTypeMapForUser:Ljava/util/Map;

    .line 127
    .line 128
    check-cast v6, Ljava/util/HashMap;

    .line 129
    .line 130
    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 131
    .line 132
    .line 133
    move-result-object v6

    .line 134
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 135
    .line 136
    .line 137
    move-result-object v6

    .line 138
    move v7, v2

    .line 139
    :cond_4
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 140
    .line 141
    .line 142
    move-result v8

    .line 143
    if-eqz v8, :cond_13

    .line 144
    .line 145
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v8

    .line 149
    check-cast v8, Ljava/util/Map$Entry;

    .line 150
    .line 151
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v9

    .line 155
    check-cast v9, Ljava/lang/String;

    .line 156
    .line 157
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v8

    .line 161
    check-cast v8, Ljava/lang/Class;

    .line 162
    .line 163
    const-class v10, Ljava/lang/String;

    .line 164
    .line 165
    if-ne v8, v10, :cond_7

    .line 166
    .line 167
    iget-object v8, v5, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->mStringDefaultKeyMap:Ljava/util/Map;

    .line 168
    .line 169
    check-cast v8, Ljava/util/HashMap;

    .line 170
    .line 171
    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v8

    .line 175
    check-cast v8, Ljava/lang/String;

    .line 176
    .line 177
    const-string v10, ""

    .line 178
    .line 179
    if-eqz v8, :cond_5

    .line 180
    .line 181
    goto :goto_5

    .line 182
    :cond_5
    move-object v8, v10

    .line 183
    :goto_5
    iget-object v11, v5, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->mVolatileStatesRepository:Ljava/util/Map;

    .line 184
    .line 185
    check-cast v11, Ljava/util/HashMap;

    .line 186
    .line 187
    invoke-virtual {v11, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v11

    .line 191
    check-cast v11, Landroid/util/SparseArray;

    .line 192
    .line 193
    if-eqz v11, :cond_6

    .line 194
    .line 195
    invoke-virtual {v11, p1, v10}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v10

    .line 199
    check-cast v10, Ljava/lang/String;

    .line 200
    .line 201
    :cond_6
    if-eqz v10, :cond_4

    .line 202
    .line 203
    invoke-virtual {v0, v9, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v8

    .line 207
    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    move-result v8

    .line 211
    if-nez v8, :cond_4

    .line 212
    .line 213
    invoke-virtual {v0, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    :goto_6
    move v7, v4

    .line 217
    goto :goto_4

    .line 218
    :cond_7
    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 219
    .line 220
    if-ne v8, v10, :cond_a

    .line 221
    .line 222
    iget-object v8, v5, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->mIntegerDefaultKeyMap:Ljava/util/Map;

    .line 223
    .line 224
    check-cast v8, Ljava/util/HashMap;

    .line 225
    .line 226
    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object v8

    .line 230
    check-cast v8, Ljava/lang/Integer;

    .line 231
    .line 232
    if-eqz v8, :cond_8

    .line 233
    .line 234
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 235
    .line 236
    .line 237
    move-result v8

    .line 238
    goto :goto_7

    .line 239
    :cond_8
    move v8, v2

    .line 240
    :goto_7
    iget-object v10, v5, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->mVolatileStatesRepository:Ljava/util/Map;

    .line 241
    .line 242
    check-cast v10, Ljava/util/HashMap;

    .line 243
    .line 244
    invoke-virtual {v10, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    move-result-object v10

    .line 248
    check-cast v10, Landroid/util/SparseArray;

    .line 249
    .line 250
    if-eqz v10, :cond_9

    .line 251
    .line 252
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 253
    .line 254
    .line 255
    move-result-object v8

    .line 256
    invoke-virtual {v10, p1, v8}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object v8

    .line 260
    check-cast v8, Ljava/lang/Integer;

    .line 261
    .line 262
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 263
    .line 264
    .line 265
    move-result v8

    .line 266
    :cond_9
    invoke-virtual {v0, v9, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 267
    .line 268
    .line 269
    move-result v10

    .line 270
    if-eq v8, v10, :cond_4

    .line 271
    .line 272
    invoke-virtual {v0, v9, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 273
    .line 274
    .line 275
    goto :goto_6

    .line 276
    :cond_a
    sget-object v10, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 277
    .line 278
    if-ne v8, v10, :cond_d

    .line 279
    .line 280
    iget-object v8, v5, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->mFloatDefaultKeyMap:Ljava/util/Map;

    .line 281
    .line 282
    check-cast v8, Ljava/util/HashMap;

    .line 283
    .line 284
    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    .line 286
    .line 287
    move-result-object v8

    .line 288
    check-cast v8, Ljava/lang/Float;

    .line 289
    .line 290
    const/4 v10, 0x0

    .line 291
    if-eqz v8, :cond_b

    .line 292
    .line 293
    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    .line 294
    .line 295
    .line 296
    move-result v8

    .line 297
    goto :goto_8

    .line 298
    :cond_b
    move v8, v10

    .line 299
    :goto_8
    iget-object v11, v5, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->mVolatileStatesRepository:Ljava/util/Map;

    .line 300
    .line 301
    check-cast v11, Ljava/util/HashMap;

    .line 302
    .line 303
    invoke-virtual {v11, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    move-result-object v11

    .line 307
    check-cast v11, Landroid/util/SparseArray;

    .line 308
    .line 309
    if-eqz v11, :cond_c

    .line 310
    .line 311
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 312
    .line 313
    .line 314
    move-result-object v10

    .line 315
    invoke-virtual {v11, p1, v10}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 316
    .line 317
    .line 318
    move-result-object v10

    .line 319
    check-cast v10, Ljava/lang/Float;

    .line 320
    .line 321
    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    .line 322
    .line 323
    .line 324
    move-result v10

    .line 325
    goto :goto_9

    .line 326
    :cond_c
    move v10, v8

    .line 327
    :goto_9
    invoke-virtual {v0, v9, v8}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    .line 328
    .line 329
    .line 330
    move-result v8

    .line 331
    cmpl-float v8, v10, v8

    .line 332
    .line 333
    if-eqz v8, :cond_4

    .line 334
    .line 335
    invoke-virtual {v0, v9, v10}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 336
    .line 337
    .line 338
    goto :goto_6

    .line 339
    :cond_d
    sget-object v10, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 340
    .line 341
    if-ne v8, v10, :cond_10

    .line 342
    .line 343
    iget-object v8, v5, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->mLongDefaultKeyMap:Ljava/util/Map;

    .line 344
    .line 345
    check-cast v8, Ljava/util/HashMap;

    .line 346
    .line 347
    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    .line 349
    .line 350
    move-result-object v8

    .line 351
    check-cast v8, Ljava/lang/Long;

    .line 352
    .line 353
    const-wide/16 v10, 0x0

    .line 354
    .line 355
    if-eqz v8, :cond_e

    .line 356
    .line 357
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    .line 358
    .line 359
    .line 360
    move-result-wide v12

    .line 361
    goto :goto_a

    .line 362
    :cond_e
    move-wide v12, v10

    .line 363
    :goto_a
    iget-object v8, v5, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->mVolatileStatesRepository:Ljava/util/Map;

    .line 364
    .line 365
    check-cast v8, Ljava/util/HashMap;

    .line 366
    .line 367
    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    .line 369
    .line 370
    move-result-object v8

    .line 371
    check-cast v8, Landroid/util/SparseArray;

    .line 372
    .line 373
    if-eqz v8, :cond_f

    .line 374
    .line 375
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 376
    .line 377
    .line 378
    move-result-object v10

    .line 379
    invoke-virtual {v8, p1, v10}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 380
    .line 381
    .line 382
    move-result-object v8

    .line 383
    check-cast v8, Ljava/lang/Long;

    .line 384
    .line 385
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    .line 386
    .line 387
    .line 388
    move-result-wide v10

    .line 389
    goto :goto_b

    .line 390
    :cond_f
    move-wide v10, v12

    .line 391
    :goto_b
    invoke-virtual {v0, v9, v12, v13}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    .line 392
    .line 393
    .line 394
    move-result-wide v12

    .line 395
    cmp-long v8, v10, v12

    .line 396
    .line 397
    if-eqz v8, :cond_4

    .line 398
    .line 399
    invoke-virtual {v0, v9, v10, v11}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 400
    .line 401
    .line 402
    goto/16 :goto_6

    .line 403
    .line 404
    :cond_10
    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 405
    .line 406
    if-ne v8, v10, :cond_4

    .line 407
    .line 408
    iget-object v8, v5, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->mBooleanDefaultKeyMap:Ljava/util/Map;

    .line 409
    .line 410
    check-cast v8, Ljava/util/HashMap;

    .line 411
    .line 412
    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    .line 414
    .line 415
    move-result-object v8

    .line 416
    check-cast v8, Ljava/lang/Boolean;

    .line 417
    .line 418
    if-eqz v8, :cond_11

    .line 419
    .line 420
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    .line 421
    .line 422
    .line 423
    move-result v8

    .line 424
    goto :goto_c

    .line 425
    :cond_11
    move v8, v2

    .line 426
    :goto_c
    iget-object v10, v5, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->mVolatileStatesRepository:Ljava/util/Map;

    .line 427
    .line 428
    check-cast v10, Ljava/util/HashMap;

    .line 429
    .line 430
    invoke-virtual {v10, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    .line 432
    .line 433
    move-result-object v10

    .line 434
    check-cast v10, Landroid/util/SparseArray;

    .line 435
    .line 436
    if-eqz v10, :cond_12

    .line 437
    .line 438
    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 439
    .line 440
    invoke-virtual {v10, p1, v11}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 441
    .line 442
    .line 443
    move-result-object v10

    .line 444
    check-cast v10, Ljava/lang/Boolean;

    .line 445
    .line 446
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    .line 447
    .line 448
    .line 449
    move-result v10

    .line 450
    goto :goto_d

    .line 451
    :cond_12
    move v10, v2

    .line 452
    :goto_d
    invoke-virtual {v0, v9, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 453
    .line 454
    .line 455
    move-result v8

    .line 456
    if-eq v10, v8, :cond_4

    .line 457
    .line 458
    invoke-virtual {v0, v9, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 459
    .line 460
    .line 461
    goto/16 :goto_6

    .line 462
    .line 463
    :cond_13
    if-eqz v7, :cond_14

    .line 464
    .line 465
    goto :goto_e

    .line 466
    :cond_14
    move v1, v2

    .line 467
    :goto_e
    or-int/2addr v3, v1

    .line 468
    :cond_15
    iget-object p0, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mPreferenceObserver:Lcom/samsung/android/server/corestate/CoreStatePreferenceObserver;

    .line 469
    .line 470
    if-eqz p0, :cond_1b

    .line 471
    .line 472
    iget-object p1, p0, Lcom/samsung/android/server/corestate/CoreStatePreferenceObserver;->mSharedPrefKeyTypeMap:Ljava/util/Map;

    .line 473
    .line 474
    check-cast p1, Ljava/util/HashMap;

    .line 475
    .line 476
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 477
    .line 478
    .line 479
    move-result-object v1

    .line 480
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 481
    .line 482
    .line 483
    move-result-object v1

    .line 484
    move v5, v2

    .line 485
    :cond_16
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 486
    .line 487
    .line 488
    move-result v6

    .line 489
    if-eqz v6, :cond_1a

    .line 490
    .line 491
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 492
    .line 493
    .line 494
    move-result-object v6

    .line 495
    check-cast v6, Ljava/util/Map$Entry;

    .line 496
    .line 497
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 498
    .line 499
    .line 500
    move-result-object v7

    .line 501
    check-cast v7, Ljava/lang/String;

    .line 502
    .line 503
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 504
    .line 505
    .line 506
    move-result-object v6

    .line 507
    check-cast v6, Ljava/lang/Class;

    .line 508
    .line 509
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 510
    .line 511
    if-ne v6, v8, :cond_16

    .line 512
    .line 513
    iget-object v6, p0, Lcom/samsung/android/server/corestate/CoreStatePreferenceObserver;->mSharedPrefKeyTypeMap:Ljava/util/Map;

    .line 514
    .line 515
    if-ne p1, v6, :cond_19

    .line 516
    .line 517
    iget-object v6, p0, Lcom/samsung/android/server/corestate/CoreStatePreferenceObserver;->mPref:Landroid/content/SharedPreferences;

    .line 518
    .line 519
    if-nez v6, :cond_17

    .line 520
    .line 521
    iget-object v6, p0, Lcom/samsung/android/server/corestate/CoreStatePreferenceObserver;->mContext:Landroid/content/Context;

    .line 522
    .line 523
    const-string/jumbo v8, "multiwindow.property"

    .line 524
    .line 525
    .line 526
    invoke-virtual {v6, v8, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 527
    .line 528
    .line 529
    move-result-object v6

    .line 530
    iput-object v6, p0, Lcom/samsung/android/server/corestate/CoreStatePreferenceObserver;->mPref:Landroid/content/SharedPreferences;

    .line 531
    .line 532
    :cond_17
    iget-object v6, p0, Lcom/samsung/android/server/corestate/CoreStatePreferenceObserver;->mPref:Landroid/content/SharedPreferences;

    .line 533
    .line 534
    if-eqz v6, :cond_18

    .line 535
    .line 536
    invoke-interface {v6, v7, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 537
    .line 538
    .line 539
    move-result v6

    .line 540
    goto :goto_10

    .line 541
    :cond_18
    const-string v6, "CoreStatePreferenceObserver"

    .line 542
    .line 543
    const-string/jumbo v8, "populate: failed to get getSharedPreference"

    .line 544
    .line 545
    .line 546
    invoke-static {v6, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    .line 548
    .line 549
    :cond_19
    move v6, v2

    .line 550
    :goto_10
    iget-object v8, p0, Lcom/samsung/android/server/corestate/CoreStatePreferenceObserver;->mIntegerDefaultKeyMap:Ljava/util/Map;

    .line 551
    .line 552
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 553
    .line 554
    .line 555
    move-result-object v9

    .line 556
    check-cast v8, Ljava/util/HashMap;

    .line 557
    .line 558
    invoke-virtual {v8, v7, v9}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    .line 560
    .line 561
    move-result-object v8

    .line 562
    check-cast v8, Ljava/lang/Integer;

    .line 563
    .line 564
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 565
    .line 566
    .line 567
    move-result v8

    .line 568
    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 569
    .line 570
    .line 571
    move-result v8

    .line 572
    if-eq v6, v8, :cond_16

    .line 573
    .line 574
    invoke-virtual {v0, v7, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 575
    .line 576
    .line 577
    move v5, v4

    .line 578
    goto :goto_f

    .line 579
    :cond_1a
    or-int/2addr v3, v5

    .line 580
    :cond_1b
    return v3
.end method

.method public final sendCoreState(ZILcom/android/server/wm/MultiWindowEnableController$$ExternalSyntheticLambda0;)V
    .locals 4

    .line 1
    invoke-virtual {p0, p2}, Lcom/samsung/android/server/corestate/CoreStateObserverController;->populateCoreState(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mCallback:Lcom/android/server/wm/CoreStateController;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, p2}, Lcom/samsung/android/server/corestate/CoreStateObserverController;->copyCoreStateLocked(I)Landroid/os/Bundle;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const/4 p1, 0x0

    .line 14
    invoke-virtual {v1, p0, p2, p1, p3}, Lcom/android/server/wm/CoreStateController;->onCoreStateChanged(Landroid/os/Bundle;IZLcom/android/server/wm/MultiWindowEnableController$$ExternalSyntheticLambda0;)V

    .line 15
    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_0
    and-int/lit8 p1, v0, 0x1

    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    if-eqz p1, :cond_2

    .line 22
    .line 23
    iget-object p1, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mStartedUserIds:Landroid/util/ArraySet;

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_3

    .line 34
    .line 35
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Ljava/lang/Integer;

    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eq v0, p2, :cond_1

    .line 46
    .line 47
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/corestate/CoreStateObserverController;->populateCoreState(I)I

    .line 48
    .line 49
    .line 50
    :cond_1
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/corestate/CoreStateObserverController;->copyCoreStateLocked(I)Landroid/os/Bundle;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    invoke-virtual {v1, v3, v0, v2, p3}, Lcom/android/server/wm/CoreStateController;->onCoreStateChanged(Landroid/os/Bundle;IZLcom/android/server/wm/MultiWindowEnableController$$ExternalSyntheticLambda0;)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_2
    and-int/lit8 p1, v0, 0x2

    .line 59
    .line 60
    if-eqz p1, :cond_3

    .line 61
    .line 62
    invoke-virtual {p0, p2}, Lcom/samsung/android/server/corestate/CoreStateObserverController;->copyCoreStateLocked(I)Landroid/os/Bundle;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    invoke-virtual {v1, p0, p2, v2, p3}, Lcom/android/server/wm/CoreStateController;->onCoreStateChanged(Landroid/os/Bundle;IZLcom/android/server/wm/MultiWindowEnableController$$ExternalSyntheticLambda0;)V

    .line 67
    .line 68
    .line 69
    :cond_3
    :goto_1
    return-void
.end method

.method public final setVolatileState(Ljava/lang/String;Ljava/lang/Object;IZZLcom/android/server/wm/MultiWindowEnableController$$ExternalSyntheticLambda0;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mVolatileObserver:Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;

    .line 2
    .line 3
    if-eqz p0, :cond_4

    .line 4
    .line 5
    iget-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->mVolatileStatesRepository:Ljava/util/Map;

    .line 6
    .line 7
    check-cast v0, Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/util/SparseArray;

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    instance-of v0, p2, Ljava/lang/String;

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->mVolatileStatesRepository:Ljava/util/Map;

    .line 22
    .line 23
    new-instance v1, Landroid/util/SparseArray;

    .line 24
    .line 25
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 26
    .line 27
    .line 28
    check-cast v0, Ljava/util/HashMap;

    .line 29
    .line 30
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->mVolatileStatesRepository:Ljava/util/Map;

    .line 35
    .line 36
    new-instance v1, Landroid/util/SparseArray;

    .line 37
    .line 38
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 39
    .line 40
    .line 41
    check-cast v0, Ljava/util/HashMap;

    .line 42
    .line 43
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    :cond_1
    :goto_0
    instance-of v0, p2, Ljava/lang/String;

    .line 47
    .line 48
    if-eqz v0, :cond_2

    .line 49
    .line 50
    iget-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->mVolatileStatesRepository:Ljava/util/Map;

    .line 51
    .line 52
    check-cast v0, Ljava/util/HashMap;

    .line 53
    .line 54
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    check-cast p1, Landroid/util/SparseArray;

    .line 59
    .line 60
    check-cast p2, Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {p1, p3, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->mVolatileStatesRepository:Ljava/util/Map;

    .line 67
    .line 68
    check-cast v0, Ljava/util/HashMap;

    .line 69
    .line 70
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    check-cast p1, Landroid/util/SparseArray;

    .line 75
    .line 76
    check-cast p2, Ljava/lang/Integer;

    .line 77
    .line 78
    invoke-virtual {p1, p3, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    :goto_1
    if-eqz p4, :cond_4

    .line 82
    .line 83
    if-eqz p5, :cond_3

    .line 84
    .line 85
    const/4 p1, 0x0

    .line 86
    iget-object p0, p0, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->mController:Lcom/samsung/android/server/corestate/CoreStateObserverController;

    .line 87
    .line 88
    invoke-virtual {p0, p1, p3, p6}, Lcom/samsung/android/server/corestate/CoreStateObserverController;->sendCoreState(ZILcom/android/server/wm/MultiWindowEnableController$$ExternalSyntheticLambda0;)V

    .line 89
    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_3
    new-instance p1, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver$$ExternalSyntheticLambda0;

    .line 93
    .line 94
    invoke-direct {p1, p0, p3, p6}, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;ILcom/android/server/wm/MultiWindowEnableController$$ExternalSyntheticLambda0;)V

    .line 95
    .line 96
    .line 97
    iget-object p0, p0, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->mHandler:Landroid/os/Handler;

    .line 98
    .line 99
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 100
    .line 101
    .line 102
    :cond_4
    :goto_2
    return-void
.end method
