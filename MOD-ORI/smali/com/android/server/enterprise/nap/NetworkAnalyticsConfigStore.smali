.class public final Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DBG:Z

.field public static mInstance:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;


# instance fields
.field public activationMap:Ljava/util/concurrent/ConcurrentHashMap;

.field public adminToProfileMap:Ljava/util/concurrent/ConcurrentHashMap;

.field public mStorageHelper:Lcom/android/server/enterprise/nap/NetworkAnalyticsStorageHelper;

.field public profileMap:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    .line 2
    .line 3
    sput-boolean v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->DBG:Z

    .line 4
    .line 5
    return-void
.end method

.method public static getInstance(Lcom/android/server/enterprise/nap/NetworkAnalyticsStorageHelper;)Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;
    .locals 2

    .line 1
    sget-object v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->mInstance:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    iput-object v1, v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->profileMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 12
    .line 13
    iput-object v1, v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->adminToProfileMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 14
    .line 15
    iput-object v1, v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->activationMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 16
    .line 17
    iput-object p0, v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->mStorageHelper:Lcom/android/server/enterprise/nap/NetworkAnalyticsStorageHelper;

    .line 18
    .line 19
    new-instance p0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 20
    .line 21
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object p0, v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->profileMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 25
    .line 26
    new-instance p0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 27
    .line 28
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object p0, v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->adminToProfileMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 32
    .line 33
    new-instance p0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 34
    .line 35
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object p0, v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->activationMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 39
    .line 40
    sput-object v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->mInstance:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    .line 41
    .line 42
    :cond_0
    sget-object p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->mInstance:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    .line 43
    .line 44
    return-object p0
.end method

.method public static getProfileObjectFromJson(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    .line 3
    .line 4
    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string p1, "NETWORK_ANALYTICS_PARAMETERS"

    .line 8
    .line 9
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const-string/jumbo v1, "profile_attribute"

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    invoke-virtual {p1, p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    :catch_0
    :cond_0
    return-object v0
.end method


# virtual methods
.method public final activateProfile(IIILjava/lang/String;)I
    .locals 11

    .line 1
    sget-boolean v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->DBG:Z

    .line 2
    .line 3
    const-string v1, "NetworkAnalytics:ConfigStore"

    .line 4
    .line 5
    const-string v2, "activateProfile: returnStatus = "

    .line 6
    .line 7
    const-string/jumbo v3, "removeProfileFromDatabase: Profile name not found "

    .line 8
    .line 9
    .line 10
    const/4 v4, -0x1

    .line 11
    :try_start_0
    iget-object v5, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->profileMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 12
    .line 13
    invoke-virtual {v5, p4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v5

    .line 17
    check-cast v5, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    .line 18
    .line 19
    if-nez v5, :cond_0

    .line 20
    .line 21
    new-instance p0, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    const/4 p0, -0x4

    .line 37
    return p0

    .line 38
    :catch_0
    move-exception p0

    .line 39
    goto/16 :goto_6

    .line 40
    .line 41
    :cond_0
    invoke-static {p2, p4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getTransformedVendorName(ILjava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    new-instance v6, Landroid/content/ContentValues;

    .line 46
    .line 47
    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 48
    .line 49
    .line 50
    const-string v7, "activeState"

    .line 51
    .line 52
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    .line 54
    .line 55
    move-result-object v8

    .line 56
    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .line 58
    .line 59
    const-string/jumbo v7, "flowType"

    .line 60
    .line 61
    .line 62
    const/16 v8, -0x3e7

    .line 63
    .line 64
    const/4 v9, 0x1

    .line 65
    if-ne v9, p3, :cond_1

    .line 66
    .line 67
    :try_start_1
    iget v10, v5, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->flowTypeForProfile:I

    .line 68
    .line 69
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 70
    .line 71
    .line 72
    move-result-object v10

    .line 73
    invoke-virtual {v6, v7, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_1
    if-nez p3, :cond_2

    .line 78
    .line 79
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 80
    .line 81
    .line 82
    move-result-object v10

    .line 83
    invoke-virtual {v6, v7, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 84
    .line 85
    .line 86
    :cond_2
    :goto_0
    const-string/jumbo v7, "intervalValue"

    .line 87
    .line 88
    .line 89
    if-ne v9, p3, :cond_3

    .line 90
    .line 91
    :try_start_2
    iget v10, v5, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->intervalValueForProfile:I

    .line 92
    .line 93
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 94
    .line 95
    .line 96
    move-result-object v10

    .line 97
    invoke-virtual {v6, v7, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 98
    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_3
    if-nez p3, :cond_4

    .line 102
    .line 103
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 104
    .line 105
    .line 106
    move-result-object v10

    .line 107
    invoke-virtual {v6, v7, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 108
    .line 109
    .line 110
    :cond_4
    :goto_1
    new-instance v7, Landroid/content/ContentValues;

    .line 111
    .line 112
    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 113
    .line 114
    .line 115
    const-string/jumbo v10, "profileName"

    .line 116
    .line 117
    .line 118
    invoke-virtual {v7, v10, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    const-string/jumbo v10, "op_userid"

    .line 122
    .line 123
    .line 124
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 125
    .line 126
    .line 127
    move-result-object p2

    .line 128
    invoke-virtual {v7, v10, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 129
    .line 130
    .line 131
    const-string p2, "adminUid"

    .line 132
    .line 133
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 134
    .line 135
    .line 136
    move-result-object v10

    .line 137
    invoke-virtual {v7, p2, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 138
    .line 139
    .line 140
    iget-object p2, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->mStorageHelper:Lcom/android/server/enterprise/nap/NetworkAnalyticsStorageHelper;

    .line 141
    .line 142
    const-string v10, "NAPProfileTable"

    .line 143
    .line 144
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 145
    .line 146
    .line 147
    sget-object p2, Lcom/android/server/enterprise/nap/NetworkAnalyticsStorageHelper;->mEDM:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 148
    .line 149
    invoke-virtual {p2, v10, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->update(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)I

    .line 150
    .line 151
    .line 152
    move-result v4

    .line 153
    if-eqz v0, :cond_5

    .line 154
    .line 155
    new-instance p2, Ljava/lang/StringBuilder;

    .line 156
    .line 157
    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object p2

    .line 167
    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    .line 169
    .line 170
    :cond_5
    if-lez v4, :cond_f

    .line 171
    .line 172
    iget-object p2, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->activationMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 173
    .line 174
    invoke-virtual {p2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    move-result p2

    .line 178
    const/4 v2, 0x0

    .line 179
    if-eqz p2, :cond_a

    .line 180
    .line 181
    iget-object p0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->activationMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 182
    .line 183
    invoke-virtual {p0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object p0

    .line 187
    check-cast p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;

    .line 188
    .line 189
    iput p3, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;->activationState:I

    .line 190
    .line 191
    if-ne v9, p3, :cond_6

    .line 192
    .line 193
    iget p1, v5, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->flowTypeForProfile:I

    .line 194
    .line 195
    iput p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;->activationFlowType:I

    .line 196
    .line 197
    goto :goto_2

    .line 198
    :cond_6
    if-nez p3, :cond_7

    .line 199
    .line 200
    iput v8, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;->activationFlowType:I

    .line 201
    .line 202
    :cond_7
    :goto_2
    if-ne v9, p3, :cond_8

    .line 203
    .line 204
    iget p1, v5, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->intervalValueForProfile:I

    .line 205
    .line 206
    iput p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;->activationIntervalValue:I

    .line 207
    .line 208
    goto :goto_3

    .line 209
    :cond_8
    if-nez p3, :cond_9

    .line 210
    .line 211
    iput v8, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;->activationIntervalValue:I

    .line 212
    .line 213
    :cond_9
    :goto_3
    move v4, v2

    .line 214
    goto :goto_7

    .line 215
    :cond_a
    new-instance p2, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;

    .line 216
    .line 217
    iget-object v6, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->profileMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 218
    .line 219
    invoke-virtual {v6, p4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object p4

    .line 223
    check-cast p4, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    .line 224
    .line 225
    invoke-direct {p2, p4, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;-><init>(Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;I)V

    .line 226
    .line 227
    .line 228
    iput p3, p2, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;->activationState:I

    .line 229
    .line 230
    if-ne v9, p3, :cond_b

    .line 231
    .line 232
    iget p1, v5, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->flowTypeForProfile:I

    .line 233
    .line 234
    iput p1, p2, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;->activationFlowType:I

    .line 235
    .line 236
    goto :goto_4

    .line 237
    :cond_b
    if-nez p3, :cond_c

    .line 238
    .line 239
    iput v8, p2, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;->activationFlowType:I

    .line 240
    .line 241
    :cond_c
    :goto_4
    if-ne v9, p3, :cond_d

    .line 242
    .line 243
    iget p1, v5, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->intervalValueForProfile:I

    .line 244
    .line 245
    iput p1, p2, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;->activationIntervalValue:I

    .line 246
    .line 247
    goto :goto_5

    .line 248
    :cond_d
    if-nez p3, :cond_e

    .line 249
    .line 250
    iput v8, p2, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;->activationIntervalValue:I

    .line 251
    .line 252
    :cond_e
    :goto_5
    iget-object p0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->activationMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 253
    .line 254
    invoke-virtual {p0, v3, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 255
    .line 256
    .line 257
    goto :goto_3

    .line 258
    :goto_6
    const-string p1, "activateProfile: Exception "

    .line 259
    .line 260
    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 261
    .line 262
    .line 263
    :cond_f
    :goto_7
    if-eqz v0, :cond_10

    .line 264
    .line 265
    const-string p0, "activateProfile: final returnStatus = "

    .line 266
    .line 267
    invoke-static {v4, p0, v1}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    :cond_10
    return v4
.end method

.method public final addProfileToDatabase(ILorg/json/JSONObject;Ljava/lang/String;I)I
    .locals 11

    .line 1
    const-string v0, "NetworkAnalytics:ConfigStore"

    .line 2
    .line 3
    if-gtz p1, :cond_0

    .line 4
    .line 5
    const-string p0, "addProfileToDatabase: Invalid admin userId"

    .line 6
    .line 7
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    const/4 p0, -0x4

    .line 11
    return p0

    .line 12
    :cond_0
    const-string/jumbo v1, "profile_name"

    .line 13
    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const-string/jumbo v3, "package_name"

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2, v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    const-string/jumbo v4, "package_signature"

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2, v4, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    const-string/jumbo v5, "flags"

    .line 35
    .line 36
    .line 37
    const/4 v6, -0x1

    .line 38
    invoke-virtual {p2, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 39
    .line 40
    .line 41
    move-result p2

    .line 42
    const-string/jumbo v7, "profileName"

    .line 43
    .line 44
    .line 45
    invoke-static {v7, v1}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    .line 46
    .line 47
    .line 48
    move-result-object v7

    .line 49
    const/16 v8, -0x3e7

    .line 50
    .line 51
    const-string/jumbo v9, "client_userid"

    .line 52
    .line 53
    .line 54
    const-string/jumbo v10, "op_userid"

    .line 55
    .line 56
    .line 57
    invoke-static {v8, v7, v9, p4, v10}, Lcom/android/server/am/Pageboost$PageboostFileDBHelper$$ExternalSyntheticOutline0;->m(ILandroid/content/ContentValues;Ljava/lang/String;ILjava/lang/String;)V

    .line 58
    .line 59
    .line 60
    const-string v9, "adminUid"

    .line 61
    .line 62
    const-string/jumbo v10, "pkgName"

    .line 63
    .line 64
    .line 65
    invoke-static {p1, v7, v9, v10, v3}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$$ExternalSyntheticOutline0;->m(ILandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    const-string/jumbo v9, "pkgSign"

    .line 69
    .line 70
    .line 71
    invoke-virtual {v7, v9, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 75
    .line 76
    .line 77
    move-result-object v9

    .line 78
    invoke-virtual {v7, v5, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 79
    .line 80
    .line 81
    const-string/jumbo v5, "jsondata"

    .line 82
    .line 83
    .line 84
    invoke-virtual {v7, v5, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    const/4 v5, 0x0

    .line 88
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 89
    .line 90
    .line 91
    move-result-object v9

    .line 92
    const-string v10, "activeState"

    .line 93
    .line 94
    invoke-virtual {v7, v10, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 95
    .line 96
    .line 97
    const-string/jumbo v9, "flowType"

    .line 98
    .line 99
    .line 100
    const-string/jumbo v10, "intervalValue"

    .line 101
    .line 102
    .line 103
    invoke-static {v8, v7, v9, v8, v10}, Lcom/android/server/am/Pageboost$PageboostFileDBHelper$$ExternalSyntheticOutline0;->m(ILandroid/content/ContentValues;Ljava/lang/String;ILjava/lang/String;)V

    .line 104
    .line 105
    .line 106
    iget-object v9, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->mStorageHelper:Lcom/android/server/enterprise/nap/NetworkAnalyticsStorageHelper;

    .line 107
    .line 108
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 109
    .line 110
    .line 111
    sget-object v9, Lcom/android/server/enterprise/nap/NetworkAnalyticsStorageHelper;->mEDM:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 112
    .line 113
    const-string v10, "NAPProfileTable"

    .line 114
    .line 115
    invoke-virtual {v9, v10, v2, v2, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z

    .line 116
    .line 117
    .line 118
    move-result v2

    .line 119
    sget-boolean v7, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->DBG:Z

    .line 120
    .line 121
    if-eqz v7, :cond_1

    .line 122
    .line 123
    const-string v9, "addProfileToDatabase: Added to database:"

    .line 124
    .line 125
    invoke-static {v9, v0, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 126
    .line 127
    .line 128
    :cond_1
    if-eqz v2, :cond_5

    .line 129
    .line 130
    new-instance v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;

    .line 131
    .line 132
    invoke-direct {v2, p0, v1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;-><init>(Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    iput p4, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;->opUserId:I

    .line 136
    .line 137
    iput-object p3, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;->jsonString:Ljava/lang/String;

    .line 138
    .line 139
    iput-object v3, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;->packageName:Ljava/lang/String;

    .line 140
    .line 141
    iput-object v4, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;->packageSignature:Ljava/lang/String;

    .line 142
    .line 143
    iput p1, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;->adminUid:I

    .line 144
    .line 145
    iput p2, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;->flags:I

    .line 146
    .line 147
    iput v8, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;->userId:I

    .line 148
    .line 149
    iput v8, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;->flowTypeForProfile:I

    .line 150
    .line 151
    iput v8, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;->intervalValueForProfile:I

    .line 152
    .line 153
    new-instance p2, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    .line 154
    .line 155
    invoke-direct {p2, v2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;-><init>(Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;)V

    .line 156
    .line 157
    .line 158
    iget-object p3, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->profileMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 159
    .line 160
    invoke-virtual {p3, v1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    iget-object p3, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->adminToProfileMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 164
    .line 165
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 166
    .line 167
    .line 168
    move-result-object p4

    .line 169
    invoke-virtual {p3, p4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object p3

    .line 173
    if-nez p3, :cond_3

    .line 174
    .line 175
    if-eqz v7, :cond_2

    .line 176
    .line 177
    const-string p3, "addProfileToDatabase: adminToProfileMap.get(adminUid) = null"

    .line 178
    .line 179
    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    .line 181
    .line 182
    :cond_2
    new-instance p3, Ljava/util/ArrayList;

    .line 183
    .line 184
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 185
    .line 186
    .line 187
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    iget-object p0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->adminToProfileMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 191
    .line 192
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    invoke-virtual {p0, p1, p3}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    goto :goto_0

    .line 200
    :cond_3
    if-eqz v7, :cond_4

    .line 201
    .line 202
    const-string p3, "addProfileToDatabase: adminToProfileMap.get(adminUid) is present"

    .line 203
    .line 204
    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    .line 206
    .line 207
    :cond_4
    iget-object p0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->adminToProfileMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 208
    .line 209
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 210
    .line 211
    .line 212
    move-result-object p1

    .line 213
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object p0

    .line 217
    check-cast p0, Ljava/util/List;

    .line 218
    .line 219
    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    :goto_0
    move v6, v5

    .line 223
    :cond_5
    if-eqz v7, :cond_6

    .line 224
    .line 225
    const-string p0, "addProfileToDatabase: returnValue = "

    .line 226
    .line 227
    invoke-static {v6, p0, v0}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    :cond_6
    return v6
.end method

.method public final doesAdminOwnProfile(ILjava/lang/String;)I
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->profileMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-virtual {p0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    .line 8
    .line 9
    const-string v0, "NetworkAnalytics:ConfigStore"

    .line 10
    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    const-string/jumbo p0, "doesAdminOwnProfile: Profile name not found "

    .line 14
    .line 15
    .line 16
    invoke-static {p0, p2, v0}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const/4 p0, -0x3

    .line 20
    return p0

    .line 21
    :cond_0
    iget p0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->adminUid:I

    .line 22
    .line 23
    if-eq p0, p1, :cond_1

    .line 24
    .line 25
    const-string/jumbo p0, "doesAdminOwnProfile: Profile "

    .line 26
    .line 27
    .line 28
    const-string v1, " does not belong to adminUid "

    .line 29
    .line 30
    invoke-static {p1, p0, p2, v1, v0}, Lcom/android/server/NetworkScoreService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const/4 p0, -0x7

    .line 34
    return p0

    .line 35
    :cond_1
    const/4 p0, 0x0

    .line 36
    return p0
.end method

.method public final getActiveStateForName(Ljava/lang/String;)Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "NetworkAnalytics:ConfigStore"

    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    const-string/jumbo p0, "getActiveStateForName: Null profile Name."

    .line 7
    .line 8
    .line 9
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->activationMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    check-cast p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;

    .line 20
    .line 21
    if-nez p0, :cond_1

    .line 22
    .line 23
    const-string/jumbo p0, "getActiveStateForName: Invalid profile Name."

    .line 24
    .line 25
    .line 26
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    return-object v0

    .line 30
    :cond_1
    return-object p0
.end method

.method public final getAllActiveKeysForPackage(Ljava/lang/String;)Ljava/util/List;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->activationMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/Set;->size()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-lez v1, :cond_2

    .line 14
    .line 15
    new-instance v1, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_3

    .line 29
    .line 30
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Ljava/lang/String;

    .line 35
    .line 36
    iget-object v3, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->activationMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 37
    .line 38
    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    check-cast v3, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;

    .line 43
    .line 44
    if-eqz v3, :cond_0

    .line 45
    .line 46
    iget-object v4, v3, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;->profile:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    .line 47
    .line 48
    iget-object v4, v4, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->packageName:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    if-eqz v4, :cond_0

    .line 55
    .line 56
    iget v3, v3, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;->activationState:I

    .line 57
    .line 58
    const/4 v4, 0x1

    .line 59
    if-ne v4, v3, :cond_0

    .line 60
    .line 61
    sget-boolean v3, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->DBG:Z

    .line 62
    .line 63
    if-eqz v3, :cond_1

    .line 64
    .line 65
    const-string/jumbo v3, "getAllActiveKeysForPackage: Adding active key for profile"

    .line 66
    .line 67
    .line 68
    const-string v4, "NetworkAnalytics:ConfigStore"

    .line 69
    .line 70
    invoke-static {v3, v2, v4}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    :cond_1
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_2
    const/4 v1, 0x0

    .line 78
    :cond_3
    return-object v1
.end method

.method public final getAllActiveKeysForProfile(Ljava/lang/String;)Ljava/util/List;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->activationMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/Set;->size()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-lez v1, :cond_2

    .line 14
    .line 15
    new-instance v1, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_3

    .line 29
    .line 30
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Ljava/lang/String;

    .line 35
    .line 36
    const-string v3, "__"

    .line 37
    .line 38
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    const/4 v4, 0x0

    .line 43
    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-eqz v3, :cond_0

    .line 52
    .line 53
    iget-object v3, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->activationMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 54
    .line 55
    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    check-cast v3, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;

    .line 60
    .line 61
    if-eqz v3, :cond_0

    .line 62
    .line 63
    iget v3, v3, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;->activationState:I

    .line 64
    .line 65
    const/4 v4, 0x1

    .line 66
    if-ne v4, v3, :cond_0

    .line 67
    .line 68
    sget-boolean v3, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->DBG:Z

    .line 69
    .line 70
    if-eqz v3, :cond_1

    .line 71
    .line 72
    const-string/jumbo v3, "getAllActiveKeysForProfile: Adding active key for profile"

    .line 73
    .line 74
    .line 75
    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    const-string v4, "NetworkAnalytics:ConfigStore"

    .line 80
    .line 81
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    :cond_1
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_2
    const/4 v1, 0x0

    .line 89
    :cond_3
    return-object v1
.end method

.method public final getAllProfilesForPackage(Ljava/lang/String;)Ljava/util/List;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->profileMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_3

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/Set;->size()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-gtz v1, :cond_0

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_2

    .line 30
    .line 31
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Ljava/lang/String;

    .line 36
    .line 37
    iget-object v3, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->profileMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 38
    .line 39
    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    check-cast v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    .line 44
    .line 45
    if-eqz v2, :cond_1

    .line 46
    .line 47
    iget-object v3, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->packageName:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-eqz v3, :cond_1

    .line 54
    .line 55
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    return-object v1

    .line 60
    :cond_3
    :goto_1
    const/4 p0, 0x0

    .line 61
    return-object p0
.end method

.method public final getAllProfilesForUser(I)Ljava/util/List;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->profileMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_3

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/Set;->size()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-gtz v1, :cond_0

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_2

    .line 30
    .line 31
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Ljava/lang/String;

    .line 36
    .line 37
    iget-object v3, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->profileMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 38
    .line 39
    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    check-cast v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    .line 44
    .line 45
    if-eqz v2, :cond_1

    .line 46
    .line 47
    iget v3, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->opUserId:I

    .line 48
    .line 49
    if-ne v3, p1, :cond_1

    .line 50
    .line 51
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    return-object v1

    .line 56
    :cond_3
    :goto_1
    const/4 p0, 0x0

    .line 57
    return-object p0
.end method

.method public final getClientProfileNames(I)Ljava/util/List;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->adminToProfileMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->adminToProfileMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 14
    .line 15
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Ljava/util/List;

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-lez v0, :cond_0

    .line 30
    .line 31
    new-instance v0, Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .line 35
    .line 36
    iget-object p0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->adminToProfileMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 37
    .line 38
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    check-cast p0, Ljava/util/List;

    .line 47
    .line 48
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    if-eqz p1, :cond_1

    .line 57
    .line 58
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    check-cast p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    .line 63
    .line 64
    iget-object p1, p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->profileName:Ljava/lang/String;

    .line 65
    .line 66
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_0
    const/4 v0, 0x0

    .line 71
    :cond_1
    return-object v0
.end method

.method public final getClientProfiles(II)Ljava/util/List;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->adminToProfileMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->adminToProfileMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object p0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->adminToProfileMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    .line 4
    iget v1, p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->opUserId:I

    if-ne v1, p2, :cond_0

    .line 5
    iget-object p1, p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->jsonString:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    return-object v0
.end method

.method public final getClientProfiles(ILjava/lang/String;)Ljava/util/List;
    .locals 6

    .line 6
    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->profileMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->profileMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 9
    iget-object v3, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->profileMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    if-eqz v2, :cond_1

    .line 10
    iget-object v3, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->packageName:Ljava/lang/String;

    .line 11
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->opUserId:I

    if-eqz p1, :cond_2

    if-ne p1, v3, :cond_1

    .line 12
    :cond_2
    iget-object v4, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->activationMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v5, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->profileName:Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getTransformedVendorName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;

    if-nez v4, :cond_3

    const/4 v4, 0x0

    goto :goto_2

    .line 13
    :cond_3
    iget v4, v4, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;->activationState:I

    .line 14
    :goto_2
    new-instance v5, Lcom/samsung/android/knox/net/nap/Profile;

    iget-object v2, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->jsonString:Ljava/lang/String;

    invoke-direct {v5, v4, v2, v3}, Lcom/samsung/android/knox/net/nap/Profile;-><init>(ILjava/lang/String;I)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    return-object v0
.end method

.method public final getProfileforName(Ljava/lang/String;)Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "NetworkAnalytics:ConfigStore"

    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    const-string/jumbo p0, "getPackageForProfile: Null profile Name."

    .line 7
    .line 8
    .line 9
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->profileMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    check-cast p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    .line 20
    .line 21
    if-nez p0, :cond_1

    .line 22
    .line 23
    const-string/jumbo p0, "getPackageForProfile: Invalid profile Name."

    .line 24
    .line 25
    .line 26
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    return-object v0

    .line 30
    :cond_1
    return-object p0
.end method

.method public final initializeTables()V
    .locals 24

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string/jumbo v2, "intervalValue"

    .line 4
    .line 5
    .line 6
    const-string/jumbo v3, "flowType"

    .line 7
    .line 8
    .line 9
    const-string v4, "adminUid"

    .line 10
    .line 11
    const-string/jumbo v5, "op_userid"

    .line 12
    .line 13
    .line 14
    const-string/jumbo v6, "profileName"

    .line 15
    .line 16
    .line 17
    sget-boolean v7, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->DBG:Z

    .line 18
    .line 19
    const-string v8, "NAPProfileTable"

    .line 20
    .line 21
    iget-object v9, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->mStorageHelper:Lcom/android/server/enterprise/nap/NetworkAnalyticsStorageHelper;

    .line 22
    .line 23
    const-string v10, "NetworkAnalytics:ConfigStore"

    .line 24
    .line 25
    const/4 v11, 0x0

    .line 26
    :try_start_0
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    sget-object v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsStorageHelper;->mEDM:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 30
    .line 31
    invoke-virtual {v0, v8, v11, v11, v11}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 36
    .line 37
    .line 38
    move-result v12

    .line 39
    if-lez v12, :cond_3

    .line 40
    .line 41
    if-eqz v7, :cond_0

    .line 42
    .line 43
    const-string/jumbo v12, "initializeProfileTable: Initializing tables. Cursor present."

    .line 44
    .line 45
    .line 46
    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    goto :goto_2

    .line 50
    :catch_0
    move-exception v0

    .line 51
    move-object/from16 v22, v2

    .line 52
    .line 53
    move-object/from16 v23, v3

    .line 54
    .line 55
    move-object/from16 v20, v4

    .line 56
    .line 57
    move-object/from16 v19, v5

    .line 58
    .line 59
    :goto_0
    move-object/from16 v18, v6

    .line 60
    .line 61
    :goto_1
    move-object/from16 v21, v8

    .line 62
    .line 63
    goto/16 :goto_6

    .line 64
    .line 65
    :cond_0
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 70
    .line 71
    .line 72
    move-result v12

    .line 73
    if-eqz v12, :cond_3

    .line 74
    .line 75
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v12

    .line 79
    check-cast v12, Landroid/content/ContentValues;

    .line 80
    .line 81
    invoke-virtual {v12, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v13

    .line 85
    const-string/jumbo v14, "pkgName"

    .line 86
    .line 87
    .line 88
    invoke-virtual {v12, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v14

    .line 92
    const-string/jumbo v15, "pkgSign"

    .line 93
    .line 94
    .line 95
    invoke-virtual {v12, v15}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v15

    .line 99
    const-string/jumbo v11, "jsondata"

    .line 100
    .line 101
    .line 102
    invoke-virtual {v12, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v11

    .line 106
    move-object/from16 v17, v0

    .line 107
    .line 108
    const-string/jumbo v0, "client_userid"

    .line 109
    .line 110
    .line 111
    invoke-virtual {v12, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    invoke-virtual {v12, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 120
    .line 121
    .line 122
    move-result-object v18
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    move-object/from16 v19, v5

    .line 124
    .line 125
    :try_start_1
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    .line 126
    .line 127
    .line 128
    move-result v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    .line 129
    move-object/from16 v18, v6

    .line 130
    .line 131
    :try_start_2
    invoke-virtual {v12, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 132
    .line 133
    .line 134
    move-result-object v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    .line 135
    move-object/from16 v20, v4

    .line 136
    .line 137
    :try_start_3
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 138
    .line 139
    .line 140
    move-result v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 141
    move-object/from16 v21, v8

    .line 142
    .line 143
    :try_start_4
    const-string/jumbo v8, "flags"

    .line 144
    .line 145
    .line 146
    invoke-virtual {v12, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 147
    .line 148
    .line 149
    move-result-object v8

    .line 150
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 151
    .line 152
    .line 153
    move-result v8

    .line 154
    invoke-virtual {v12, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 155
    .line 156
    .line 157
    move-result-object v22
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 158
    move-object/from16 v23, v3

    .line 159
    .line 160
    :try_start_5
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    .line 161
    .line 162
    .line 163
    move-result v3

    .line 164
    invoke-virtual {v12, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 165
    .line 166
    .line 167
    move-result-object v12

    .line 168
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    .line 169
    .line 170
    .line 171
    move-result v12
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 172
    move-object/from16 v22, v2

    .line 173
    .line 174
    :try_start_6
    new-instance v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;

    .line 175
    .line 176
    invoke-direct {v2, v1, v13}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;-><init>(Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    iput v5, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;->opUserId:I

    .line 180
    .line 181
    iput-object v11, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;->jsonString:Ljava/lang/String;

    .line 182
    .line 183
    iput-object v14, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;->packageName:Ljava/lang/String;

    .line 184
    .line 185
    iput-object v15, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;->packageSignature:Ljava/lang/String;

    .line 186
    .line 187
    iput v4, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;->adminUid:I

    .line 188
    .line 189
    iput v8, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;->flags:I

    .line 190
    .line 191
    iput v0, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;->userId:I

    .line 192
    .line 193
    iput v3, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;->flowTypeForProfile:I

    .line 194
    .line 195
    iput v12, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;->intervalValueForProfile:I

    .line 196
    .line 197
    new-instance v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    .line 198
    .line 199
    invoke-direct {v0, v2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;-><init>(Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;)V

    .line 200
    .line 201
    .line 202
    if-eqz v7, :cond_1

    .line 203
    .line 204
    new-instance v2, Ljava/lang/StringBuilder;

    .line 205
    .line 206
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 207
    .line 208
    .line 209
    const-string/jumbo v3, "initializeProfileTable: Config Profile = "

    .line 210
    .line 211
    .line 212
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v2

    .line 222
    invoke-static {v10, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    .line 224
    .line 225
    goto :goto_4

    .line 226
    :catch_1
    move-exception v0

    .line 227
    goto/16 :goto_6

    .line 228
    .line 229
    :cond_1
    :goto_4
    iget-object v2, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->profileMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 230
    .line 231
    invoke-virtual {v2, v13, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    iget-object v2, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->adminToProfileMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 235
    .line 236
    invoke-virtual {v2, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    move-result-object v2

    .line 240
    if-nez v2, :cond_2

    .line 241
    .line 242
    new-instance v2, Ljava/util/ArrayList;

    .line 243
    .line 244
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 245
    .line 246
    .line 247
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    .line 249
    .line 250
    iget-object v0, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->adminToProfileMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 251
    .line 252
    invoke-virtual {v0, v6, v2}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    goto :goto_5

    .line 256
    :cond_2
    iget-object v2, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->adminToProfileMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 257
    .line 258
    invoke-virtual {v2, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    move-result-object v2

    .line 262
    check-cast v2, Ljava/util/List;

    .line 263
    .line 264
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    .line 266
    .line 267
    :goto_5
    move-object/from16 v0, v17

    .line 268
    .line 269
    move-object/from16 v6, v18

    .line 270
    .line 271
    move-object/from16 v5, v19

    .line 272
    .line 273
    move-object/from16 v4, v20

    .line 274
    .line 275
    move-object/from16 v8, v21

    .line 276
    .line 277
    move-object/from16 v2, v22

    .line 278
    .line 279
    move-object/from16 v3, v23

    .line 280
    .line 281
    const/4 v11, 0x0

    .line 282
    goto/16 :goto_3

    .line 283
    .line 284
    :catch_2
    move-exception v0

    .line 285
    move-object/from16 v22, v2

    .line 286
    .line 287
    goto :goto_6

    .line 288
    :catch_3
    move-exception v0

    .line 289
    move-object/from16 v22, v2

    .line 290
    .line 291
    move-object/from16 v23, v3

    .line 292
    .line 293
    goto :goto_6

    .line 294
    :catch_4
    move-exception v0

    .line 295
    move-object/from16 v22, v2

    .line 296
    .line 297
    move-object/from16 v23, v3

    .line 298
    .line 299
    goto/16 :goto_1

    .line 300
    .line 301
    :catch_5
    move-exception v0

    .line 302
    move-object/from16 v22, v2

    .line 303
    .line 304
    move-object/from16 v23, v3

    .line 305
    .line 306
    move-object/from16 v20, v4

    .line 307
    .line 308
    goto/16 :goto_1

    .line 309
    .line 310
    :catch_6
    move-exception v0

    .line 311
    move-object/from16 v22, v2

    .line 312
    .line 313
    move-object/from16 v23, v3

    .line 314
    .line 315
    move-object/from16 v20, v4

    .line 316
    .line 317
    goto/16 :goto_0

    .line 318
    .line 319
    :cond_3
    move-object/from16 v22, v2

    .line 320
    .line 321
    move-object/from16 v23, v3

    .line 322
    .line 323
    move-object/from16 v20, v4

    .line 324
    .line 325
    move-object/from16 v19, v5

    .line 326
    .line 327
    move-object/from16 v18, v6

    .line 328
    .line 329
    move-object/from16 v21, v8

    .line 330
    .line 331
    if-eqz v7, :cond_4

    .line 332
    .line 333
    const-string/jumbo v0, "initializeProfileTable: Exiting."

    .line 334
    .line 335
    .line 336
    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 337
    .line 338
    .line 339
    goto :goto_7

    .line 340
    :goto_6
    new-instance v2, Ljava/lang/StringBuilder;

    .line 341
    .line 342
    const-string v3, "Error while initialize profile table"

    .line 343
    .line 344
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 345
    .line 346
    .line 347
    invoke-static {v0, v2, v10}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 348
    .line 349
    .line 350
    :cond_4
    :goto_7
    :try_start_7
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 351
    .line 352
    .line 353
    sget-object v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsStorageHelper;->mEDM:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 354
    .line 355
    move-object/from16 v2, v21

    .line 356
    .line 357
    const/4 v3, 0x0

    .line 358
    invoke-virtual {v0, v2, v3, v3, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    .line 359
    .line 360
    .line 361
    move-result-object v0

    .line 362
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 363
    .line 364
    .line 365
    move-result v2

    .line 366
    if-lez v2, :cond_7

    .line 367
    .line 368
    if-eqz v7, :cond_5

    .line 369
    .line 370
    const-string/jumbo v2, "initializeActivationTable: Initializing tables. Cursor present."

    .line 371
    .line 372
    .line 373
    invoke-static {v10, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    .line 375
    .line 376
    goto :goto_8

    .line 377
    :catch_7
    move-exception v0

    .line 378
    goto/16 :goto_b

    .line 379
    .line 380
    :cond_5
    :goto_8
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 381
    .line 382
    .line 383
    move-result-object v0

    .line 384
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 385
    .line 386
    .line 387
    move-result v2

    .line 388
    if-eqz v2, :cond_7

    .line 389
    .line 390
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 391
    .line 392
    .line 393
    move-result-object v2

    .line 394
    check-cast v2, Landroid/content/ContentValues;

    .line 395
    .line 396
    move-object/from16 v3, v18

    .line 397
    .line 398
    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 399
    .line 400
    .line 401
    move-result-object v4

    .line 402
    move-object/from16 v5, v19

    .line 403
    .line 404
    invoke-virtual {v2, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 405
    .line 406
    .line 407
    move-result-object v6

    .line 408
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 409
    .line 410
    .line 411
    move-result v6

    .line 412
    move-object/from16 v8, v20

    .line 413
    .line 414
    invoke-virtual {v2, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 415
    .line 416
    .line 417
    move-result-object v9

    .line 418
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 419
    .line 420
    .line 421
    move-result v9

    .line 422
    const-string v11, "activeState"

    .line 423
    .line 424
    invoke-virtual {v2, v11}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 425
    .line 426
    .line 427
    move-result-object v11

    .line 428
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 429
    .line 430
    .line 431
    move-result v11

    .line 432
    move-object/from16 v12, v23

    .line 433
    .line 434
    invoke-virtual {v2, v12}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 435
    .line 436
    .line 437
    move-result-object v13

    .line 438
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    .line 439
    .line 440
    .line 441
    move-result v13

    .line 442
    move-object/from16 v14, v22

    .line 443
    .line 444
    invoke-virtual {v2, v14}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 445
    .line 446
    .line 447
    move-result-object v2

    .line 448
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 449
    .line 450
    .line 451
    move-result v2

    .line 452
    if-eqz v7, :cond_6

    .line 453
    .line 454
    new-instance v15, Ljava/lang/StringBuilder;

    .line 455
    .line 456
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 457
    .line 458
    .line 459
    move-object/from16 v16, v0

    .line 460
    .line 461
    const-string/jumbo v0, "initializeActivationTable: Config Profile = "

    .line 462
    .line 463
    .line 464
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    .line 466
    .line 467
    iget-object v0, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->profileMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 468
    .line 469
    invoke-virtual {v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    .line 471
    .line 472
    move-result-object v0

    .line 473
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 474
    .line 475
    .line 476
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 477
    .line 478
    .line 479
    move-result-object v0

    .line 480
    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    .line 482
    .line 483
    goto :goto_a

    .line 484
    :cond_6
    move-object/from16 v16, v0

    .line 485
    .line 486
    :goto_a
    new-instance v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;

    .line 487
    .line 488
    iget-object v15, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->profileMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 489
    .line 490
    invoke-virtual {v15, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    .line 492
    .line 493
    move-result-object v15

    .line 494
    check-cast v15, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    .line 495
    .line 496
    invoke-direct {v0, v15, v9}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;-><init>(Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;I)V

    .line 497
    .line 498
    .line 499
    iput v11, v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;->activationState:I

    .line 500
    .line 501
    iput v13, v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;->activationFlowType:I

    .line 502
    .line 503
    iput v2, v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;->activationIntervalValue:I

    .line 504
    .line 505
    iget-object v2, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->activationMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 506
    .line 507
    invoke-static {v6, v4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getTransformedVendorName(ILjava/lang/String;)Ljava/lang/String;

    .line 508
    .line 509
    .line 510
    move-result-object v4

    .line 511
    invoke-virtual {v2, v4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    .line 513
    .line 514
    move-object/from16 v18, v3

    .line 515
    .line 516
    move-object/from16 v19, v5

    .line 517
    .line 518
    move-object/from16 v20, v8

    .line 519
    .line 520
    move-object/from16 v23, v12

    .line 521
    .line 522
    move-object/from16 v22, v14

    .line 523
    .line 524
    move-object/from16 v0, v16

    .line 525
    .line 526
    goto/16 :goto_9

    .line 527
    .line 528
    :cond_7
    if-eqz v7, :cond_8

    .line 529
    .line 530
    const-string/jumbo v0, "initializeActivationTable: Exiting."

    .line 531
    .line 532
    .line 533
    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 534
    .line 535
    .line 536
    goto :goto_c

    .line 537
    :goto_b
    new-instance v1, Ljava/lang/StringBuilder;

    .line 538
    .line 539
    const-string v2, "Error while initialize activation table"

    .line 540
    .line 541
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 542
    .line 543
    .line 544
    invoke-static {v0, v1, v10}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 545
    .line 546
    .line 547
    :cond_8
    :goto_c
    return-void
.end method

.method public final isActivatedPackage(Ljava/lang/String;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->activationMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/Set;->size()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-lez v1, :cond_1

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Ljava/lang/String;

    .line 30
    .line 31
    iget-object v2, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->activationMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 32
    .line 33
    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;

    .line 38
    .line 39
    if-eqz v1, :cond_0

    .line 40
    .line 41
    iget-object v2, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;->profile:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    .line 42
    .line 43
    if-eqz v2, :cond_0

    .line 44
    .line 45
    iget-object v2, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->packageName:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-eqz v2, :cond_0

    .line 52
    .line 53
    iget v1, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;->activationState:I

    .line 54
    .line 55
    const/4 v2, 0x1

    .line 56
    if-ne v2, v1, :cond_0

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    const/4 v2, 0x0

    .line 60
    :goto_0
    return v2
.end method

.method public final isProfileActivatedForUser(ILjava/lang/String;)I
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getTransformedVendorName(ILjava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object p2, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->activationMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 6
    .line 7
    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->activationMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    check-cast p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;

    .line 20
    .line 21
    if-eqz p0, :cond_0

    .line 22
    .line 23
    iget p0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;->activationState:I

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 p0, 0x0

    .line 27
    :goto_0
    return p0
.end method

.method public final removeProfileFromDatabase(ILjava/lang/String;)I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->profileMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "NetworkAnalytics:ConfigStore"

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const-string/jumbo p0, "removeProfileFromDatabase: Profile name not found "

    .line 12
    .line 13
    .line 14
    invoke-static {p0, p2, v1}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/4 p0, -0x4

    .line 18
    return p0

    .line 19
    :cond_0
    const-string/jumbo v0, "profileName"

    .line 20
    .line 21
    .line 22
    filled-new-array {v0}, [Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    filled-new-array {p2}, [Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    iget-object v3, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->mStorageHelper:Lcom/android/server/enterprise/nap/NetworkAnalyticsStorageHelper;

    .line 31
    .line 32
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    sget-object v3, Lcom/android/server/enterprise/nap/NetworkAnalyticsStorageHelper;->mEDM:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 36
    .line 37
    const-string v4, "NAPProfileTable"

    .line 38
    .line 39
    invoke-virtual {v3, v4, v0, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    sget-boolean v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->DBG:Z

    .line 44
    .line 45
    if-eqz v2, :cond_1

    .line 46
    .line 47
    const-string/jumbo v2, "removeProfileFromDatabase: deleteDataByFields? "

    .line 48
    .line 49
    .line 50
    invoke-static {v2, v1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 51
    .line 52
    .line 53
    :cond_1
    if-eqz v0, :cond_2

    .line 54
    .line 55
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->updateTablesForProfileRemoval(ILjava/lang/String;)V

    .line 56
    .line 57
    .line 58
    const/4 p0, 0x0

    .line 59
    goto :goto_0

    .line 60
    :cond_2
    const/4 p0, -0x1

    .line 61
    :goto_0
    return p0
.end method

.method public final updateBindUserIdForProfile(IILjava/lang/String;)I
    .locals 8

    .line 1
    const-string/jumbo v0, "updateBindUserIdForProfile: Profile userId updated to "

    .line 2
    .line 3
    .line 4
    const-string/jumbo v1, "updateBindUserIdForProfile failed with returnValue:"

    .line 5
    .line 6
    .line 7
    const-string v2, "NetworkAnalytics:ConfigStore"

    .line 8
    .line 9
    sget-boolean v3, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->DBG:Z

    .line 10
    .line 11
    if-eqz v3, :cond_0

    .line 12
    .line 13
    const-string/jumbo v4, "updateBindUserIdForProfile updating binduserid for profile:"

    .line 14
    .line 15
    .line 16
    const-string v5, " to:"

    .line 17
    .line 18
    invoke-static {p2, v4, p3, v5, v2}, Lcom/android/server/NetworkScoreService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    const/4 v4, -0x1

    .line 22
    :try_start_0
    new-instance v5, Landroid/content/ContentValues;

    .line 23
    .line 24
    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string/jumbo v6, "client_userid"

    .line 28
    .line 29
    .line 30
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object v7

    .line 34
    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 35
    .line 36
    .line 37
    new-instance v6, Landroid/content/ContentValues;

    .line 38
    .line 39
    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 40
    .line 41
    .line 42
    const-string/jumbo v7, "profileName"

    .line 43
    .line 44
    .line 45
    invoke-virtual {v6, v7, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const-string/jumbo v7, "op_userid"

    .line 49
    .line 50
    .line 51
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {v6, v7, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 56
    .line 57
    .line 58
    iget-object p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->mStorageHelper:Lcom/android/server/enterprise/nap/NetworkAnalyticsStorageHelper;

    .line 59
    .line 60
    const-string v7, "NAPProfileTable"

    .line 61
    .line 62
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    sget-object p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsStorageHelper;->mEDM:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 66
    .line 67
    invoke-virtual {p1, v7, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->update(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)I

    .line 68
    .line 69
    .line 70
    move-result v4

    .line 71
    if-gez v4, :cond_1

    .line 72
    .line 73
    new-instance p0, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    return v4

    .line 89
    :catch_0
    move-exception p0

    .line 90
    goto :goto_0

    .line 91
    :cond_1
    iget-object p0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->profileMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 92
    .line 93
    invoke-virtual {p0, p3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    check-cast p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    .line 98
    .line 99
    if-eqz p0, :cond_2

    .line 100
    .line 101
    new-instance p1, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    .line 115
    .line 116
    iput p2, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->userId:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    .line 118
    goto :goto_1

    .line 119
    :goto_0
    const-string/jumbo p1, "updateBindUserIdForProfile: Exception "

    .line 120
    .line 121
    .line 122
    invoke-static {v2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 123
    .line 124
    .line 125
    :cond_2
    :goto_1
    if-eqz v3, :cond_3

    .line 126
    .line 127
    const-string/jumbo p0, "updateBindUserIdForProfile returnValue:"

    .line 128
    .line 129
    .line 130
    invoke-static {v4, p0, v2}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    :cond_3
    return v4
.end method

.method public final updateTablesForProfileRemoval(ILjava/lang/String;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->adminToProfileMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/util/List;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    move v2, v1

    .line 15
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    const-string v4, "NetworkAnalytics:ConfigStore"

    .line 20
    .line 21
    sget-boolean v5, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->DBG:Z

    .line 22
    .line 23
    if-ge v2, v3, :cond_2

    .line 24
    .line 25
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    check-cast v3, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    .line 30
    .line 31
    iget-object v6, v3, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->profileName:Ljava/lang/String;

    .line 32
    .line 33
    if-eqz v6, :cond_1

    .line 34
    .line 35
    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    if-eqz v6, :cond_1

    .line 40
    .line 41
    if-eqz v5, :cond_0

    .line 42
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    const-string/jumbo v6, "updateTablesForProfileRemoval: profile found "

    .line 46
    .line 47
    .line 48
    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget-object v3, v3, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->profileName:Ljava/lang/String;

    .line 52
    .line 53
    invoke-static {v0, v3, v4}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->adminToProfileMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 57
    .line 58
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    check-cast p1, Ljava/util/List;

    .line 67
    .line 68
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->profileMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 76
    .line 77
    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    iget-object p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->activationMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 81
    .line 82
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    :cond_3
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    if-eqz v0, :cond_5

    .line 95
    .line 96
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    check-cast v0, Ljava/lang/String;

    .line 101
    .line 102
    const-string v2, "__"

    .line 103
    .line 104
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v2

    .line 116
    if-eqz v2, :cond_3

    .line 117
    .line 118
    if-eqz v5, :cond_4

    .line 119
    .line 120
    const-string/jumbo v2, "updateTablesForProfileRemoval: removing from activation map "

    .line 121
    .line 122
    .line 123
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    .line 129
    .line 130
    :cond_4
    iget-object v2, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->activationMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 131
    .line 132
    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    goto :goto_2

    .line 136
    :cond_5
    return-void
.end method

.method public final validateJsonContent(Lorg/json/JSONObject;)I
    .locals 5

    .line 1
    const-string v0, "NetworkAnalytics:ConfigStore"

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    const-string/jumbo p0, "validateJsonContent: Invalid parameters"

    .line 6
    .line 7
    .line 8
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    const/4 p0, -0x4

    .line 12
    return p0

    .line 13
    :cond_0
    if-eqz p1, :cond_4

    .line 14
    .line 15
    const-string/jumbo v1, "profile_name"

    .line 16
    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const/4 v3, -0x5

    .line 24
    if-nez v1, :cond_1

    .line 25
    .line 26
    const-string/jumbo p0, "validateJsonContent: Invalid profile name."

    .line 27
    .line 28
    .line 29
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    return v3

    .line 33
    :cond_1
    iget-object p0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->profileMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 34
    .line 35
    invoke-virtual {p0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    if-eqz p0, :cond_2

    .line 40
    .line 41
    const-string/jumbo p0, "validateJsonContent: Profile name already exists "

    .line 42
    .line 43
    .line 44
    invoke-static {p0, v1, v0}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const/4 p0, -0x6

    .line 48
    return p0

    .line 49
    :cond_2
    const-string/jumbo p0, "package_name"

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    const-string/jumbo v1, "package_signature"

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    const-string/jumbo v2, "flags"

    .line 64
    .line 65
    .line 66
    const/4 v4, -0x1

    .line 67
    invoke-virtual {p1, v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    if-eqz p0, :cond_3

    .line 72
    .line 73
    if-eqz v1, :cond_3

    .line 74
    .line 75
    if-gez p1, :cond_4

    .line 76
    .line 77
    :cond_3
    const-string/jumbo p0, "validateJsonContent: Invalid flags or packageName or signature."

    .line 78
    .line 79
    .line 80
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_4
    const/4 v3, 0x0

    .line 85
    :goto_0
    return v3
.end method

.method public final validatePkgSignForSingleProfile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->profileMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    sget-boolean v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->DBG:Z

    .line 16
    .line 17
    const-string v3, "NetworkAnalytics:ConfigStore"

    .line 18
    .line 19
    if-eqz v1, :cond_2

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    if-eqz v4, :cond_0

    .line 32
    .line 33
    iget-object v4, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->profileMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 34
    .line 35
    invoke-virtual {v4, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    .line 40
    .line 41
    if-eqz v1, :cond_0

    .line 42
    .line 43
    iget-object v4, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->packageName:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    if-eqz v4, :cond_0

    .line 50
    .line 51
    iget-object v1, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->packageSignature:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    if-nez v4, :cond_0

    .line 58
    .line 59
    if-eqz v2, :cond_1

    .line 60
    .line 61
    const-string/jumbo p0, "validatePkgSignForAllProfiles: Signatures Dont match!!! "

    .line 62
    .line 63
    .line 64
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    const-string/jumbo p0, "validatePkgSignForAllProfiles: Signatures in profile"

    .line 68
    .line 69
    .line 70
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    const-string/jumbo p0, "validatePkgSignForAllProfiles: Signatures in parameter "

    .line 77
    .line 78
    .line 79
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    invoke-static {v3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    :cond_1
    const/4 p0, 0x0

    .line 86
    return p0

    .line 87
    :cond_2
    if-eqz v2, :cond_3

    .line 88
    .line 89
    const-string/jumbo p0, "validatePkgSignForAllProfiles: Valid package signature for "

    .line 90
    .line 91
    .line 92
    invoke-static {p0, p1, v3}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    :cond_3
    const/4 p0, 0x1

    .line 96
    return p0
.end method
