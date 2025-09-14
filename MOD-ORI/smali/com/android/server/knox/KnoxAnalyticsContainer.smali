.class public final Lcom/android/server/knox/KnoxAnalyticsContainer;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final analyticsHandler:Lcom/android/server/knox/KnoxAnalyticsContainer$AnalyticsHandler;

.field public final basicContainerAnalytics:Lcom/android/server/knox/BasicContainerAnalytics;

.field public final context:Landroid/content/Context;

.field public final dpmAnalytics:Lcom/android/server/knox/DevicePolicyManagerAnalytics;

.field public final ifKnoxAnalyticsContainer:Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;

.field public final locationRestrictionMap:Ljava/util/HashMap;

.field public mPostActivePackage:Ljava/lang/String;

.field public mPostActiveTime:J

.field public mPostActiveUserId:I

.field public final separatedAppsAnalytics:Lcom/android/server/knox/SeparatedAppsAnalytics;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string/jumbo v0, "ro.build.type"

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const-string/jumbo v1, "eng"

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    sput-boolean v0, Lcom/android/server/knox/KnoxAnalyticsContainer;->DEBUG:Z

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/knox/KnoxAnalyticsContainer;->locationRestrictionMap:Ljava/util/HashMap;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/android/server/knox/KnoxAnalyticsContainer;->mPostActiveUserId:I

    .line 13
    .line 14
    const-string v0, ""

    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/knox/KnoxAnalyticsContainer;->mPostActivePackage:Ljava/lang/String;

    .line 17
    .line 18
    const-wide/16 v0, 0x0

    .line 19
    .line 20
    iput-wide v0, p0, Lcom/android/server/knox/KnoxAnalyticsContainer;->mPostActiveTime:J

    .line 21
    .line 22
    iput-object p2, p0, Lcom/android/server/knox/KnoxAnalyticsContainer;->ifKnoxAnalyticsContainer:Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;

    .line 23
    .line 24
    iput-object p1, p0, Lcom/android/server/knox/KnoxAnalyticsContainer;->context:Landroid/content/Context;

    .line 25
    .line 26
    new-instance v0, Landroid/os/HandlerThread;

    .line 27
    .line 28
    const-string v1, "KnoxAnalyticsContainer"

    .line 29
    .line 30
    const/16 v2, 0xa

    .line 31
    .line 32
    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 36
    .line 37
    .line 38
    new-instance v1, Lcom/android/server/knox/KnoxAnalyticsContainer$AnalyticsHandler;

    .line 39
    .line 40
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-direct {v1, p0, v0}, Lcom/android/server/knox/KnoxAnalyticsContainer$AnalyticsHandler;-><init>(Lcom/android/server/knox/KnoxAnalyticsContainer;Landroid/os/Looper;)V

    .line 45
    .line 46
    .line 47
    iput-object v1, p0, Lcom/android/server/knox/KnoxAnalyticsContainer;->analyticsHandler:Lcom/android/server/knox/KnoxAnalyticsContainer$AnalyticsHandler;

    .line 48
    .line 49
    new-instance v0, Lcom/android/server/knox/SeparatedAppsAnalytics;

    .line 50
    .line 51
    invoke-direct {v0, p2}, Lcom/android/server/knox/SeparatedAppsAnalytics;-><init>(Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;)V

    .line 52
    .line 53
    .line 54
    iput-object v0, p0, Lcom/android/server/knox/KnoxAnalyticsContainer;->separatedAppsAnalytics:Lcom/android/server/knox/SeparatedAppsAnalytics;

    .line 55
    .line 56
    new-instance v0, Lcom/android/server/knox/BasicContainerAnalytics;

    .line 57
    .line 58
    invoke-direct {v0, p1, p2}, Lcom/android/server/knox/BasicContainerAnalytics;-><init>(Landroid/content/Context;Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;)V

    .line 59
    .line 60
    .line 61
    iput-object v0, p0, Lcom/android/server/knox/KnoxAnalyticsContainer;->basicContainerAnalytics:Lcom/android/server/knox/BasicContainerAnalytics;

    .line 62
    .line 63
    new-instance v0, Lcom/android/server/knox/DevicePolicyManagerAnalytics;

    .line 64
    .line 65
    invoke-direct {v0, p1, p2}, Lcom/android/server/knox/DevicePolicyManagerAnalytics;-><init>(Landroid/content/Context;Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;)V

    .line 66
    .line 67
    .line 68
    iput-object v0, p0, Lcom/android/server/knox/KnoxAnalyticsContainer;->dpmAnalytics:Lcom/android/server/knox/DevicePolicyManagerAnalytics;

    .line 69
    .line 70
    return-void
.end method

.method public static createNewJSONObjectForGivenPackage(JLjava/lang/String;)Lorg/json/JSONObject;
    .locals 2

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    const-string/jumbo v1, "usageTime"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 10
    .line 11
    .line 12
    const-string/jumbo p0, "package_name"

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 16
    .line 17
    .line 18
    const-string p0, "appLaunchCount"

    .line 19
    .line 20
    const/4 p1, 0x1

    .line 21
    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    .line 24
    return-object v0

    .line 25
    :catch_0
    move-exception p0

    .line 26
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    .line 27
    .line 28
    .line 29
    return-object v0
.end method


# virtual methods
.method public final checkTimeAndSendAnalytics(ILjava/lang/String;J)V
    .locals 21

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p2

    .line 4
    .line 5
    move-wide/from16 v2, p3

    .line 6
    .line 7
    const-string v4, "KnoxAnalyticsContainer"

    .line 8
    .line 9
    const-string v5, ""

    .line 10
    .line 11
    const-string/jumbo v6, "eventJSONArray"

    .line 12
    .line 13
    .line 14
    const-string/jumbo v7, "package_name"

    .line 15
    .line 16
    .line 17
    const-string/jumbo v8, "usageTime"

    .line 18
    .line 19
    .line 20
    const-string v9, "appLaunchCount"

    .line 21
    .line 22
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 23
    .line 24
    .line 25
    move-result v10

    .line 26
    sget-boolean v11, Lcom/android/server/knox/KnoxAnalyticsContainer;->DEBUG:Z

    .line 27
    .line 28
    if-eqz v10, :cond_1

    .line 29
    .line 30
    if-eqz v11, :cond_0

    .line 31
    .line 32
    const-string v0, "PersonaManagerService:KnoxAnalytics"

    .line 33
    .line 34
    const-string/jumbo v1, "package name is empty"

    .line 35
    .line 36
    .line 37
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    :cond_0
    return-void

    .line 41
    :cond_1
    iget-object v10, v1, Lcom/android/server/knox/KnoxAnalyticsContainer;->context:Landroid/content/Context;

    .line 42
    .line 43
    invoke-static {v10}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 44
    .line 45
    .line 46
    move-result-object v10

    .line 47
    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 48
    .line 49
    .line 50
    move-result-object v12

    .line 51
    :try_start_0
    invoke-interface {v10, v6, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v15

    .line 55
    if-eqz v11, :cond_2

    .line 56
    .line 57
    const-string/jumbo v14, "saveJSONObjectForGivenPackage"

    .line 58
    .line 59
    .line 60
    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :catch_0
    move-exception v0

    .line 65
    move-object/from16 v18, v5

    .line 66
    .line 67
    goto/16 :goto_3

    .line 68
    .line 69
    :cond_2
    :goto_0
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 70
    .line 71
    .line 72
    move-result v14

    .line 73
    if-nez v14, :cond_5

    .line 74
    .line 75
    new-instance v14, Lorg/json/JSONArray;

    .line 76
    .line 77
    invoke-direct {v14, v15}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    const/4 v15, 0x0

    .line 81
    :goto_1
    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    .line 82
    .line 83
    .line 84
    move-result v13

    .line 85
    if-ge v15, v13, :cond_4

    .line 86
    .line 87
    invoke-virtual {v14, v15}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v13

    .line 91
    check-cast v13, Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    .line 93
    move-object/from16 v18, v5

    .line 94
    .line 95
    :try_start_1
    invoke-virtual {v13, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v5

    .line 99
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v5

    .line 103
    if-eqz v5, :cond_3

    .line 104
    .line 105
    invoke-virtual {v13, v8}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 106
    .line 107
    .line 108
    move-result-wide v19

    .line 109
    add-long v2, v19, v2

    .line 110
    .line 111
    invoke-virtual {v13, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 112
    .line 113
    .line 114
    move-result v5

    .line 115
    const/4 v15, 0x1

    .line 116
    add-int/2addr v5, v15

    .line 117
    invoke-virtual {v13, v8, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v13, v9, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v13, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 124
    .line 125
    .line 126
    goto :goto_2

    .line 127
    :catch_1
    move-exception v0

    .line 128
    goto :goto_3

    .line 129
    :cond_3
    add-int/lit8 v15, v15, 0x1

    .line 130
    .line 131
    move-object/from16 v5, v18

    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_4
    move-object/from16 v18, v5

    .line 135
    .line 136
    invoke-static {v2, v3, v0}, Lcom/android/server/knox/KnoxAnalyticsContainer;->createNewJSONObjectForGivenPackage(JLjava/lang/String;)Lorg/json/JSONObject;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    invoke-virtual {v14, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 141
    .line 142
    .line 143
    goto :goto_2

    .line 144
    :cond_5
    move-object/from16 v18, v5

    .line 145
    .line 146
    new-instance v14, Lorg/json/JSONArray;

    .line 147
    .line 148
    invoke-direct {v14}, Lorg/json/JSONArray;-><init>()V

    .line 149
    .line 150
    .line 151
    invoke-static {v2, v3, v0}, Lcom/android/server/knox/KnoxAnalyticsContainer;->createNewJSONObjectForGivenPackage(JLjava/lang/String;)Lorg/json/JSONObject;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    invoke-virtual {v14, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 156
    .line 157
    .line 158
    :goto_2
    invoke-interface {v12, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    invoke-virtual {v14}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v2

    .line 166
    invoke-interface {v0, v6, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 171
    .line 172
    .line 173
    if-eqz v11, :cond_6

    .line 174
    .line 175
    invoke-virtual {v14}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 180
    .line 181
    .line 182
    goto :goto_4

    .line 183
    :goto_3
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 184
    .line 185
    .line 186
    :cond_6
    :goto_4
    iget-object v0, v1, Lcom/android/server/knox/KnoxAnalyticsContainer;->context:Landroid/content/Context;

    .line 187
    .line 188
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 193
    .line 194
    .line 195
    move-result-wide v2

    .line 196
    const-string/jumbo v5, "last_event_sent_date"

    .line 197
    .line 198
    .line 199
    const-wide/16 v13, 0x0

    .line 200
    .line 201
    invoke-interface {v0, v5, v13, v14}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 202
    .line 203
    .line 204
    move-result-wide v13

    .line 205
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 210
    .line 211
    .line 212
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 213
    .line 214
    .line 215
    move-result-object v2

    .line 216
    invoke-virtual {v2, v13, v14}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 217
    .line 218
    .line 219
    const/4 v3, 0x1

    .line 220
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    .line 221
    .line 222
    .line 223
    move-result v13

    .line 224
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    .line 225
    .line 226
    .line 227
    move-result v3

    .line 228
    if-ne v13, v3, :cond_7

    .line 229
    .line 230
    const/4 v3, 0x2

    .line 231
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    .line 232
    .line 233
    .line 234
    move-result v13

    .line 235
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    .line 236
    .line 237
    .line 238
    move-result v3

    .line 239
    if-ne v13, v3, :cond_7

    .line 240
    .line 241
    const/4 v3, 0x5

    .line 242
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    .line 243
    .line 244
    .line 245
    move-result v2

    .line 246
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    .line 247
    .line 248
    .line 249
    move-result v0

    .line 250
    if-ne v2, v0, :cond_7

    .line 251
    .line 252
    goto :goto_8

    .line 253
    :cond_7
    move-object/from16 v2, v18

    .line 254
    .line 255
    invoke-interface {v10, v6, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v0

    .line 259
    const-string/jumbo v2, "sendWorkUsageLogs "

    .line 260
    .line 261
    .line 262
    invoke-static {v2, v0, v4}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    :try_start_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 266
    .line 267
    .line 268
    move-result v3

    .line 269
    if-nez v3, :cond_a

    .line 270
    .line 271
    new-instance v3, Lorg/json/JSONArray;

    .line 272
    .line 273
    invoke-direct {v3, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    const/4 v14, 0x0

    .line 277
    :goto_5
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    .line 278
    .line 279
    .line 280
    move-result v0

    .line 281
    if-ge v14, v0, :cond_8

    .line 282
    .line 283
    invoke-virtual {v3, v14}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    .line 284
    .line 285
    .line 286
    move-result-object v0

    .line 287
    check-cast v0, Lorg/json/JSONObject;

    .line 288
    .line 289
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 290
    .line 291
    .line 292
    move-result-wide v18

    .line 293
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v20

    .line 297
    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 298
    .line 299
    .line 300
    move-result v17

    .line 301
    iget-object v15, v1, Lcom/android/server/knox/KnoxAnalyticsContainer;->basicContainerAnalytics:Lcom/android/server/knox/BasicContainerAnalytics;

    .line 302
    .line 303
    move/from16 v16, p1

    .line 304
    .line 305
    invoke-virtual/range {v15 .. v20}, Lcom/android/server/knox/BasicContainerAnalytics;->logWorkAppUsgae(IIJLjava/lang/String;)V

    .line 306
    .line 307
    .line 308
    add-int/lit8 v14, v14, 0x1

    .line 309
    .line 310
    goto :goto_5

    .line 311
    :catch_2
    move-exception v0

    .line 312
    goto :goto_6

    .line 313
    :cond_8
    if-eqz v11, :cond_9

    .line 314
    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    .line 316
    .line 317
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 318
    .line 319
    .line 320
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    .line 322
    .line 323
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 324
    .line 325
    .line 326
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object v0

    .line 330
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    .line 332
    .line 333
    :cond_9
    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 334
    .line 335
    .line 336
    move-result-object v0

    .line 337
    invoke-interface {v0, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 338
    .line 339
    .line 340
    move-result-object v0

    .line 341
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 342
    .line 343
    .line 344
    goto :goto_7

    .line 345
    :goto_6
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 346
    .line 347
    .line 348
    :cond_a
    :goto_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 349
    .line 350
    .line 351
    move-result-wide v0

    .line 352
    invoke-interface {v12, v5, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 353
    .line 354
    .line 355
    invoke-interface {v12}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 356
    .line 357
    .line 358
    :goto_8
    return-void
.end method

.method public final knoxAnalyticsContainer(I)V
    .locals 11

    .line 1
    iget-object p0, p0, Lcom/android/server/knox/KnoxAnalyticsContainer;->ifKnoxAnalyticsContainer:Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;->isLoggingAllowedForUser(I)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isDarDualEncryptionEnabled(I)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    if-eqz p0, :cond_6

    .line 15
    .line 16
    const-string p0, "PersonaManagerService:DualDARAnalytics"

    .line 17
    .line 18
    const-string v0, "DualDAR Logging"

    .line 19
    .line 20
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    new-instance v0, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    .line 24
    .line 25
    const-string v1, "KNOX_DUALDAR"

    .line 26
    .line 27
    const/4 v2, 0x1

    .line 28
    const-string v3, "TYPE_OF_DUALDAR"

    .line 29
    .line 30
    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const-string v3, "DualDARPolicy"

    .line 34
    .line 35
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-static {v3}, Lcom/samsung/android/knox/ddar/IDualDARPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ddar/IDualDARPolicy;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 44
    .line 45
    .line 46
    move-result-wide v4

    .line 47
    sget-object v6, Lcom/android/server/knox/ContainerDependencyWrapper;->sInstance:Lcom/android/server/knox/ContainerDependencyWrapper;

    .line 48
    .line 49
    invoke-static {}, Lcom/android/server/knox/dar/ddar/DDCache;->getInstance()Lcom/android/server/knox/dar/ddar/DDCache;

    .line 50
    .line 51
    .line 52
    move-result-object v6

    .line 53
    const/4 v7, 0x0

    .line 54
    const-string v8, "IS_DUAL_DAR_INTENT_PROVISIONING"

    .line 55
    .line 56
    invoke-virtual {v6, v7, v8}, Lcom/android/server/knox/dar/ddar/DDCache;->get(ILjava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v6

    .line 60
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 61
    .line 62
    .line 63
    move-result v8

    .line 64
    const-string v9, "TRUE"

    .line 65
    .line 66
    if-nez v8, :cond_1

    .line 67
    .line 68
    invoke-virtual {v6, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 69
    .line 70
    .line 71
    move-result v6

    .line 72
    if-eqz v6, :cond_1

    .line 73
    .line 74
    move v6, v2

    .line 75
    goto :goto_0

    .line 76
    :cond_1
    move v6, v7

    .line 77
    :goto_0
    invoke-static {}, Lcom/android/server/knox/dar/ddar/DDCache;->getInstance()Lcom/android/server/knox/dar/ddar/DDCache;

    .line 78
    .line 79
    .line 80
    move-result-object v8

    .line 81
    const-string v10, "IS_DUAL_DAR_TRIAL_PERIOD"

    .line 82
    .line 83
    invoke-virtual {v8, v7, v10}, Lcom/android/server/knox/dar/ddar/DDCache;->get(ILjava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v8

    .line 87
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 88
    .line 89
    .line 90
    move-result v10

    .line 91
    if-nez v10, :cond_2

    .line 92
    .line 93
    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 94
    .line 95
    .line 96
    move-result v8

    .line 97
    if-eqz v8, :cond_2

    .line 98
    .line 99
    move v8, v2

    .line 100
    goto :goto_1

    .line 101
    :cond_2
    move v8, v7

    .line 102
    :goto_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 103
    .line 104
    .line 105
    invoke-static {p1}, Lcom/android/server/pm/PersonaServiceHelper;->getDualDARType(I)I

    .line 106
    .line 107
    .line 108
    move-result v4

    .line 109
    new-instance v5, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    const-string v9, "Dual Dar Container Type Created: "

    .line 112
    .line 113
    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v5

    .line 123
    invoke-static {p0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    .line 125
    .line 126
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isDualDARNativeCrypto(I)Z

    .line 127
    .line 128
    .line 129
    move-result v5

    .line 130
    if-eqz v5, :cond_3

    .line 131
    .line 132
    const-string p1, "Samsung Built-In"

    .line 133
    .line 134
    move v3, v2

    .line 135
    goto :goto_3

    .line 136
    :cond_3
    const-string v5, " "

    .line 137
    .line 138
    if-eqz v3, :cond_4

    .line 139
    .line 140
    :try_start_0
    invoke-interface {v3, p1}, Lcom/samsung/android/knox/ddar/IDualDARPolicy;->getClientInfo(I)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    goto :goto_2

    .line 145
    :catch_0
    const-string/jumbo p1, "getClientInfo failed"

    .line 146
    .line 147
    .line 148
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    .line 150
    .line 151
    :cond_4
    move-object p1, v5

    .line 152
    :goto_2
    move v3, v7

    .line 153
    :goto_3
    const-string/jumbo v5, "dTp"

    .line 154
    .line 155
    .line 156
    invoke-virtual {v0, v5, v4}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;I)V

    .line 157
    .line 158
    .line 159
    const-string/jumbo v4, "sLyr"

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0, v4, v3}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;I)V

    .line 163
    .line 164
    .line 165
    const-string/jumbo v3, "sLyrName"

    .line 166
    .line 167
    .line 168
    invoke-virtual {v0, v3, p1}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    const-string/jumbo p1, "dAppTp"

    .line 172
    .line 173
    .line 174
    if-nez v6, :cond_5

    .line 175
    .line 176
    if-eqz v8, :cond_5

    .line 177
    .line 178
    invoke-virtual {v0, p1, v7}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;I)V

    .line 179
    .line 180
    .line 181
    goto :goto_4

    .line 182
    :cond_5
    invoke-virtual {v0, p1, v2}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;I)V

    .line 183
    .line 184
    .line 185
    :goto_4
    new-instance p1, Ljava/lang/StringBuilder;

    .line 186
    .line 187
    const-string v3, "Payload / "

    .line 188
    .line 189
    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v0}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->toString()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v4

    .line 196
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    .line 205
    .line 206
    invoke-static {v0}, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->log(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V

    .line 207
    .line 208
    .line 209
    new-instance p1, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    .line 210
    .line 211
    const-string v0, "DAR_AUTH_TYPE"

    .line 212
    .line 213
    invoke-direct {p1, v1, v2, v0}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 214
    .line 215
    .line 216
    const-string/jumbo v0, "lckTp"

    .line 217
    .line 218
    .line 219
    invoke-virtual {p1, v0, v7}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;I)V

    .line 220
    .line 221
    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    .line 223
    .line 224
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {p1}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->toString()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v1

    .line 231
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    .line 240
    .line 241
    invoke-static {p1}, Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;->sendAnalyticsLog(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V

    .line 242
    .line 243
    .line 244
    :cond_6
    return-void
.end method

.method public final logEvent(Landroid/os/Bundle;)V
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/server/knox/KnoxAnalyticsContainer;->ifKnoxAnalyticsContainer:Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;->personaManagerService:Lcom/android/server/pm/PersonaManagerService;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/server/pm/PersonaManagerService;->getAppSeparationId()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-lez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance v0, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    .line 13
    .line 14
    const-string v1, "KNOX_CONTAINER"

    .line 15
    .line 16
    const/4 v2, 0x7

    .line 17
    const-string v3, "STATUS_SNAPSHOT"

    .line 18
    .line 19
    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_5

    .line 35
    .line 36
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    check-cast v2, Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    instance-of v4, v3, Ljava/lang/Integer;

    .line 47
    .line 48
    if-eqz v4, :cond_2

    .line 49
    .line 50
    check-cast v3, Ljava/lang/Integer;

    .line 51
    .line 52
    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    instance-of v4, v3, Ljava/lang/String;

    .line 57
    .line 58
    if-eqz v4, :cond_3

    .line 59
    .line 60
    check-cast v3, Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_3
    instance-of v4, v3, Ljava/lang/Long;

    .line 67
    .line 68
    if-eqz v4, :cond_4

    .line 69
    .line 70
    check-cast v3, Ljava/lang/Long;

    .line 71
    .line 72
    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_4
    instance-of v4, v3, [Ljava/lang/String;

    .line 77
    .line 78
    if-eqz v4, :cond_1

    .line 79
    .line 80
    check-cast v3, [Ljava/lang/String;

    .line 81
    .line 82
    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    .line 88
    .line 89
    invoke-static {v0}, Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;->sendAnalyticsLog(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V

    .line 90
    .line 91
    .line 92
    sget-boolean p0, Lcom/android/server/knox/KnoxAnalyticsContainer;->DEBUG:Z

    .line 93
    .line 94
    if-eqz p0, :cond_6

    .line 95
    .line 96
    new-instance p0, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    const-string p1, "STATUS_SNAPSHOT / "

    .line 99
    .line 100
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    const-string p1, "PersonaManagerService:KnoxAnalytics"

    .line 115
    .line 116
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    .line 118
    .line 119
    :cond_6
    return-void
.end method

.method public final logEventActivationForAppSep(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/knox/KnoxAnalyticsContainer;->separatedAppsAnalytics:Lcom/android/server/knox/SeparatedAppsAnalytics;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-string v0, "PACKAGE_INFO"

    .line 7
    .line 8
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Ljava/lang/String;

    .line 23
    .line 24
    new-instance v2, Landroid/os/Bundle;

    .line 25
    .line 26
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 27
    .line 28
    .line 29
    const-string/jumbo v3, "e"

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const-string/jumbo v3, "pN"

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const-string v1, "add"

    .line 42
    .line 43
    const/4 v3, 0x1

    .line 44
    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 45
    .line 46
    .line 47
    const-string/jumbo v1, "noIP"

    .line 48
    .line 49
    .line 50
    const/4 v3, 0x0

    .line 51
    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 52
    .line 53
    .line 54
    const-string/jumbo v1, "noWP"

    .line 55
    .line 56
    .line 57
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, v2, v0}, Lcom/android/server/knox/SeparatedAppsAnalytics;->logEvent(Landroid/os/Bundle;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :catch_0
    move-exception p0

    .line 69
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 70
    .line 71
    .line 72
    :cond_0
    return-void
.end method

.method public final onSeparatedAppsCreated()V
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/android/server/knox/KnoxAnalyticsContainer;->separatedAppsAnalytics:Lcom/android/server/knox/SeparatedAppsAnalytics;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/knox/SeparatedAppsAnalytics;->ifKnoxAnalyticsContainer:Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getAppSeparationConfig()Landroid/os/Bundle;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const-string v1, "APP_SEPARATION_OUTSIDE"

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    invoke-static {}, Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;->getDeviceOwnerPackage()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const-string/jumbo v3, "e"

    .line 27
    .line 28
    .line 29
    const-string v4, "APP_SEPARATION_CREATED"

    .line 30
    .line 31
    const-string/jumbo v5, "wP"

    .line 32
    .line 33
    .line 34
    invoke-static {v0, v3, v4, v5}, Lcom/android/server/am/FreecessController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    const-string/jumbo v3, "pN"

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-static {v2, v1}, Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;->getPackageInfo(ILjava/lang/String;)Landroid/content/pm/PackageInfo;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 49
    .line 50
    const-string/jumbo v2, "pV"

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, v0, v4}, Lcom/android/server/knox/SeparatedAppsAnalytics;->logEvent(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    :goto_0
    return-void
.end method

.method public final onSeparatedAppsPolicyUpdated()V
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/android/server/knox/KnoxAnalyticsContainer;->separatedAppsAnalytics:Lcom/android/server/knox/SeparatedAppsAnalytics;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/knox/SeparatedAppsAnalytics;->ifKnoxAnalyticsContainer:Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getAppSeparationConfig()Landroid/os/Bundle;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    const-string v1, "APP_SEPARATION_OUTSIDE"

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    const-string v2, "APP_SEPARATION_APP_LIST"

    .line 23
    .line 24
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string v2, ""

    .line 29
    .line 30
    if-eqz v0, :cond_3

    .line 31
    .line 32
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    move-object v3, v2

    .line 37
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-eqz v4, :cond_2

    .line 42
    .line 43
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    check-cast v4, Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v5

    .line 53
    if-eqz v5, :cond_1

    .line 54
    .line 55
    move-object v3, v4

    .line 56
    goto :goto_0

    .line 57
    :cond_1
    const-string v5, ","

    .line 58
    .line 59
    invoke-static {v4, v5, v3}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    goto :goto_0

    .line 64
    :cond_2
    move-object v2, v3

    .line 65
    :cond_3
    const-string/jumbo v0, "e"

    .line 66
    .line 67
    .line 68
    const-string v3, "APP_SEPARATION_POLICYUPDATE"

    .line 69
    .line 70
    const-string/jumbo v4, "wP"

    .line 71
    .line 72
    .line 73
    invoke-static {v1, v0, v3, v4}, Lcom/android/server/am/FreecessController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    const-string/jumbo v1, "wLp"

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0, v0, v3}, Lcom/android/server/knox/SeparatedAppsAnalytics;->logEvent(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    :goto_1
    return-void
.end method
