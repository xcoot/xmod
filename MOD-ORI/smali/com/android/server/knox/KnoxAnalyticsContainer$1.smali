.class public final Lcom/android/server/knox/KnoxAnalyticsContainer$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/knox/KnoxAnalyticsContainer;

.field public final synthetic val$component:Landroid/content/ComponentName;

.field public final synthetic val$isVisible:Z

.field public final synthetic val$userId:I


# direct methods
.method public constructor <init>(Lcom/android/server/knox/KnoxAnalyticsContainer;ILandroid/content/ComponentName;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/knox/KnoxAnalyticsContainer$1;->this$0:Lcom/android/server/knox/KnoxAnalyticsContainer;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/knox/KnoxAnalyticsContainer$1;->val$userId:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/knox/KnoxAnalyticsContainer$1;->val$component:Landroid/content/ComponentName;

    .line 9
    .line 10
    iput-boolean p4, p0, Lcom/android/server/knox/KnoxAnalyticsContainer$1;->val$isVisible:Z

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/knox/KnoxAnalyticsContainer$1;->this$0:Lcom/android/server/knox/KnoxAnalyticsContainer;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/knox/KnoxAnalyticsContainer$1;->val$userId:I

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/knox/KnoxAnalyticsContainer$1;->val$component:Landroid/content/ComponentName;

    .line 6
    .line 7
    iget-boolean p0, p0, Lcom/android/server/knox/KnoxAnalyticsContainer$1;->val$isVisible:Z

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    const-string v3, "PersonaManagerService:KnoxAnalytics"

    .line 13
    .line 14
    if-eqz p0, :cond_7

    .line 15
    .line 16
    if-eqz v2, :cond_7

    .line 17
    .line 18
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    if-eqz p0, :cond_7

    .line 23
    .line 24
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    iget v2, v0, Lcom/android/server/knox/KnoxAnalyticsContainer;->mPostActiveUserId:I

    .line 29
    .line 30
    iget-object v4, v0, Lcom/android/server/knox/KnoxAnalyticsContainer;->ifKnoxAnalyticsContainer:Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;

    .line 31
    .line 32
    if-ne v2, v1, :cond_0

    .line 33
    .line 34
    iget-object v2, v0, Lcom/android/server/knox/KnoxAnalyticsContainer;->mPostActivePackage:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_0

    .line 41
    .line 42
    iget v2, v0, Lcom/android/server/knox/KnoxAnalyticsContainer;->mPostActiveUserId:I

    .line 43
    .line 44
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-eqz v2, :cond_2

    .line 52
    .line 53
    :cond_0
    iget v2, v0, Lcom/android/server/knox/KnoxAnalyticsContainer;->mPostActiveUserId:I

    .line 54
    .line 55
    invoke-virtual {v4, v2}, Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;->isLoggingAllowedForUser(I)Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-eqz v2, :cond_1

    .line 60
    .line 61
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 62
    .line 63
    .line 64
    move-result-wide v5

    .line 65
    iget-wide v7, v0, Lcom/android/server/knox/KnoxAnalyticsContainer;->mPostActiveTime:J

    .line 66
    .line 67
    sub-long/2addr v5, v7

    .line 68
    iget v2, v0, Lcom/android/server/knox/KnoxAnalyticsContainer;->mPostActiveUserId:I

    .line 69
    .line 70
    iget-object v7, v0, Lcom/android/server/knox/KnoxAnalyticsContainer;->mPostActivePackage:Ljava/lang/String;

    .line 71
    .line 72
    invoke-virtual {v0, v2, v7, v5, v6}, Lcom/android/server/knox/KnoxAnalyticsContainer;->checkTimeAndSendAnalytics(ILjava/lang/String;J)V

    .line 73
    .line 74
    .line 75
    :cond_1
    iput v1, v0, Lcom/android/server/knox/KnoxAnalyticsContainer;->mPostActiveUserId:I

    .line 76
    .line 77
    iput-object p0, v0, Lcom/android/server/knox/KnoxAnalyticsContainer;->mPostActivePackage:Ljava/lang/String;

    .line 78
    .line 79
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 80
    .line 81
    .line 82
    move-result-wide v5

    .line 83
    iput-wide v5, v0, Lcom/android/server/knox/KnoxAnalyticsContainer;->mPostActiveTime:J

    .line 84
    .line 85
    :cond_2
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    .line 87
    .line 88
    invoke-static {v1}, Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;->isAppSeparationUserId(I)Z

    .line 89
    .line 90
    .line 91
    move-result p0

    .line 92
    invoke-virtual {v4, v1}, Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;->isLoggingAllowedForUser(I)Z

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    if-eqz v2, :cond_7

    .line 97
    .line 98
    const-string/jumbo v2, "isActvtStmpNeeded "

    .line 99
    .line 100
    .line 101
    const-string/jumbo v4, "isActvtStmpNeeded for AS "

    .line 102
    .line 103
    .line 104
    :try_start_0
    new-instance v5, Ljava/text/SimpleDateFormat;

    .line 105
    .line 106
    const-string/jumbo v6, "yyyy.MM.dd"

    .line 107
    .line 108
    .line 109
    invoke-direct {v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    iget-object v6, v0, Lcom/android/server/knox/KnoxAnalyticsContainer;->context:Landroid/content/Context;

    .line 113
    .line 114
    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 115
    .line 116
    .line 117
    move-result-object v6

    .line 118
    invoke-static {v1}, Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;->isAppSeparationUserId(I)Z

    .line 119
    .line 120
    .line 121
    move-result v7
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 122
    const-string v8, ""

    .line 123
    .line 124
    if-eqz v7, :cond_4

    .line 125
    .line 126
    :try_start_1
    const-string/jumbo v2, "log_ka_actvt_stmp_as"

    .line 127
    .line 128
    .line 129
    invoke-interface {v6, v2, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v7

    .line 133
    new-instance v9, Ljava/util/Date;

    .line 134
    .line 135
    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v5, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v5

    .line 142
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    move-result v8

    .line 146
    if-nez v8, :cond_3

    .line 147
    .line 148
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result v7

    .line 152
    if-nez v7, :cond_7

    .line 153
    .line 154
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    .line 155
    .line 156
    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v4

    .line 166
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    .line 168
    .line 169
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 170
    .line 171
    .line 172
    move-result-object v4

    .line 173
    invoke-interface {v4, v2, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 174
    .line 175
    .line 176
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 177
    .line 178
    .line 179
    goto :goto_0

    .line 180
    :cond_4
    const-string/jumbo v4, "log_ka_actvt_stmp"

    .line 181
    .line 182
    .line 183
    invoke-interface {v6, v4, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v7

    .line 187
    new-instance v9, Ljava/util/Date;

    .line 188
    .line 189
    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v5, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v5

    .line 196
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    move-result v8

    .line 200
    if-nez v8, :cond_5

    .line 201
    .line 202
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    move-result v7

    .line 206
    if-nez v7, :cond_7

    .line 207
    .line 208
    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    .line 209
    .line 210
    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v2

    .line 220
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    .line 222
    .line 223
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 224
    .line 225
    .line 226
    move-result-object v2

    .line 227
    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 228
    .line 229
    .line 230
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 231
    .line 232
    .line 233
    :goto_0
    if-eqz p0, :cond_6

    .line 234
    .line 235
    :try_start_2
    iget-object p0, v0, Lcom/android/server/knox/KnoxAnalyticsContainer;->separatedAppsAnalytics:Lcom/android/server/knox/SeparatedAppsAnalytics;

    .line 236
    .line 237
    iget v2, v0, Lcom/android/server/knox/KnoxAnalyticsContainer;->mPostActiveUserId:I

    .line 238
    .line 239
    iget-object v4, v0, Lcom/android/server/knox/KnoxAnalyticsContainer;->mPostActivePackage:Ljava/lang/String;

    .line 240
    .line 241
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 242
    .line 243
    .line 244
    new-instance v5, Landroid/os/Bundle;

    .line 245
    .line 246
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 247
    .line 248
    .line 249
    const-string/jumbo v6, "e"

    .line 250
    .line 251
    .line 252
    const-string v7, "ACTIVITY_STAMP"

    .line 253
    .line 254
    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    const-string/jumbo v6, "pN"

    .line 258
    .line 259
    .line 260
    invoke-virtual {v5, v6, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    iget-object v6, p0, Lcom/android/server/knox/SeparatedAppsAnalytics;->ifKnoxAnalyticsContainer:Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;

    .line 264
    .line 265
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 266
    .line 267
    .line 268
    invoke-static {v2, v4}, Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;->getPackageInfo(ILjava/lang/String;)Landroid/content/pm/PackageInfo;

    .line 269
    .line 270
    .line 271
    move-result-object v2

    .line 272
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 273
    .line 274
    const-string/jumbo v4, "pV"

    .line 275
    .line 276
    .line 277
    invoke-virtual {v5, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {p0, v5, v7}, Lcom/android/server/knox/SeparatedAppsAnalytics;->logEvent(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    goto :goto_2

    .line 284
    :catch_0
    move-exception p0

    .line 285
    goto :goto_1

    .line 286
    :cond_6
    iget-object p0, v0, Lcom/android/server/knox/KnoxAnalyticsContainer;->basicContainerAnalytics:Lcom/android/server/knox/BasicContainerAnalytics;

    .line 287
    .line 288
    iget v2, v0, Lcom/android/server/knox/KnoxAnalyticsContainer;->mPostActiveUserId:I

    .line 289
    .line 290
    iget-object v4, v0, Lcom/android/server/knox/KnoxAnalyticsContainer;->mPostActivePackage:Ljava/lang/String;

    .line 291
    .line 292
    invoke-virtual {p0, v1, v2, v4}, Lcom/android/server/knox/BasicContainerAnalytics;->logActivityChange(IILjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 293
    .line 294
    .line 295
    goto :goto_2

    .line 296
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 297
    .line 298
    const-string v4, "activity_stamp KA failed"

    .line 299
    .line 300
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 301
    .line 302
    .line 303
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object p0

    .line 310
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    .line 312
    .line 313
    goto :goto_2

    .line 314
    :catch_1
    const-string p0, "IllegalStateExcpetion. User may be in locked."

    .line 315
    .line 316
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    .line 318
    .line 319
    :cond_7
    :goto_2
    iget-object p0, v0, Lcom/android/server/knox/KnoxAnalyticsContainer;->analyticsHandler:Lcom/android/server/knox/KnoxAnalyticsContainer$AnalyticsHandler;

    .line 320
    .line 321
    const/4 v0, 0x1

    .line 322
    const/4 v2, 0x0

    .line 323
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 324
    .line 325
    .line 326
    move-result-object v0

    .line 327
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 328
    .line 329
    .line 330
    return-void
.end method
