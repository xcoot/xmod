.class public final synthetic Lcom/android/server/biometrics/SemBioAnalyticsManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/biometrics/SemBioAnalyticsManager;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/SemBioAnalyticsManager;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/SemBioAnalyticsManager;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/SemBioAnalyticsManager;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p0, Landroid/content/Context;

    .line 11
    .line 12
    iput-object p0, v0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mContext:Landroid/content/Context;

    .line 13
    .line 14
    new-instance v1, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;

    .line 15
    .line 16
    invoke-direct {v1, p0}, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;-><init>(Landroid/content/Context;)V

    .line 17
    .line 18
    .line 19
    iput-object v1, v0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mDqaMgr:Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;

    .line 20
    .line 21
    iget-object p0, v0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mPendingRequestBeforeBootComplete:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->fpHandleData(Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    iget-object p0, v0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mPendingRequestBeforeBootComplete:Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 46
    .line 47
    .line 48
    const/4 p0, 0x0

    .line 49
    iput-object p0, v0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mPendingRequestBeforeBootComplete:Ljava/util/ArrayList;

    .line 50
    .line 51
    return-void

    .line 52
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/SemBioAnalyticsManager;

    .line 53
    .line 54
    iget-object p0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;

    .line 57
    .line 58
    iget-object v1, v0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mContext:Landroid/content/Context;

    .line 59
    .line 60
    if-nez v1, :cond_1

    .line 61
    .line 62
    iget-object v0, v0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mPendingRequestBeforeBootComplete:Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_1
    invoke-virtual {v0, p0}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->fpHandleData(Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;)V

    .line 69
    .line 70
    .line 71
    :goto_1
    return-void

    .line 72
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/SemBioAnalyticsManager;

    .line 73
    .line 74
    iget-object p0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;

    .line 77
    .line 78
    iget-object v1, v0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mContext:Landroid/content/Context;

    .line 79
    .line 80
    if-nez v1, :cond_2

    .line 81
    .line 82
    iget-object v0, v0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mPendingRequestBeforeBootComplete:Ljava/util/ArrayList;

    .line 83
    .line 84
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    goto/16 :goto_4

    .line 88
    .line 89
    :cond_2
    if-nez p0, :cond_3

    .line 90
    .line 91
    goto/16 :goto_4

    .line 92
    .line 93
    :cond_3
    sget-boolean v1, Lcom/android/server/biometrics/SemBioAnalyticsManager;->DEBUG:Z

    .line 94
    .line 95
    const-string v2, "BiometricService.AM"

    .line 96
    .line 97
    if-eqz v1, :cond_4

    .line 98
    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    const-string v3, "SA: "

    .line 102
    .line 103
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0}, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    .line 119
    .line 120
    :cond_4
    iget-object v1, v0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mDqaMgr:Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;

    .line 121
    .line 122
    if-eqz v1, :cond_8

    .line 123
    .line 124
    iget v3, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;->mType:I

    .line 125
    .line 126
    and-int/lit8 v3, v3, 0x2

    .line 127
    .line 128
    if-eqz v3, :cond_8

    .line 129
    .line 130
    iget-object v3, v1, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->mFaceBigDataNameMap:Ljava/util/Map;

    .line 131
    .line 132
    iget-object v4, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;->mFeature:Ljava/lang/String;

    .line 133
    .line 134
    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    move-result v3

    .line 138
    if-eqz v3, :cond_7

    .line 139
    .line 140
    iget-object v3, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;->mFeature:Ljava/lang/String;

    .line 141
    .line 142
    invoke-static {v3}, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->isUsingPackageNameAsExtra(Ljava/lang/String;)Z

    .line 143
    .line 144
    .line 145
    move-result v3

    .line 146
    if-eqz v3, :cond_5

    .line 147
    .line 148
    iget-object v3, v1, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->mFaceBigDataNameMap:Ljava/util/Map;

    .line 149
    .line 150
    iget-object v4, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;->mFeature:Ljava/lang/String;

    .line 151
    .line 152
    check-cast v3, Ljava/util/LinkedHashMap;

    .line 153
    .line 154
    invoke-virtual {v3, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v3

    .line 158
    check-cast v3, Ljava/lang/String;

    .line 159
    .line 160
    iget-object v4, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;->mExtra:Ljava/lang/String;

    .line 161
    .line 162
    invoke-virtual {v1, v3, v4}, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->updateAppCountNum(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v3

    .line 166
    iget-object v1, v1, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->mFaceBigDataNameMap:Ljava/util/Map;

    .line 167
    .line 168
    iget-object v4, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;->mFeature:Ljava/lang/String;

    .line 169
    .line 170
    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    goto :goto_3

    .line 174
    :cond_5
    iget-object v3, v1, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->mFaceBigDataNameMap:Ljava/util/Map;

    .line 175
    .line 176
    iget-object v4, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;->mFeature:Ljava/lang/String;

    .line 177
    .line 178
    check-cast v3, Ljava/util/LinkedHashMap;

    .line 179
    .line 180
    invoke-virtual {v3, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v3

    .line 184
    check-cast v3, Ljava/lang/String;

    .line 185
    .line 186
    const-string v4, ""

    .line 187
    .line 188
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    move-result v4

    .line 192
    if-eqz v4, :cond_6

    .line 193
    .line 194
    const/4 v3, 0x0

    .line 195
    goto :goto_2

    .line 196
    :cond_6
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 197
    .line 198
    .line 199
    move-result v3

    .line 200
    :goto_2
    iget-object v1, v1, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->mFaceBigDataNameMap:Ljava/util/Map;

    .line 201
    .line 202
    iget-object v4, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;->mFeature:Ljava/lang/String;

    .line 203
    .line 204
    add-int/lit8 v3, v3, 0x1

    .line 205
    .line 206
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v3

    .line 210
    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    goto :goto_3

    .line 214
    :cond_7
    iget-object v3, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;->mFeature:Ljava/lang/String;

    .line 215
    .line 216
    iget-object v4, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;->mExtra:Ljava/lang/String;

    .line 217
    .line 218
    invoke-virtual {v1, v3, v4}, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->sendFaceBigData(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    :cond_8
    :goto_3
    sget-boolean v1, Lcom/android/server/biometrics/SemBiometricFeature;->FEATURE_LOGGING_MODE:Z

    .line 222
    .line 223
    if-eqz v1, :cond_c

    .line 224
    .line 225
    iget v1, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;->mType:I

    .line 226
    .line 227
    and-int/lit8 v1, v1, 0x1

    .line 228
    .line 229
    if-eqz v1, :cond_c

    .line 230
    .line 231
    new-instance v1, Landroid/content/Intent;

    .line 232
    .line 233
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 234
    .line 235
    .line 236
    const-string/jumbo v3, "tracking_id"

    .line 237
    .line 238
    .line 239
    const-string v4, "4G3-399-5448102"

    .line 240
    .line 241
    invoke-static {v3, v4}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    .line 242
    .line 243
    .line 244
    move-result-object v3

    .line 245
    const-string/jumbo v4, "feature"

    .line 246
    .line 247
    .line 248
    iget-object v5, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;->mFeature:Ljava/lang/String;

    .line 249
    .line 250
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    iget-object v4, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;->mExtra:Ljava/lang/String;

    .line 254
    .line 255
    if-eqz v4, :cond_9

    .line 256
    .line 257
    const-string/jumbo v5, "extra"

    .line 258
    .line 259
    .line 260
    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    :cond_9
    new-instance v4, Ljava/util/HashMap;

    .line 264
    .line 265
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 266
    .line 267
    .line 268
    iget-object p0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;->mExtra2:Ljava/lang/String;

    .line 269
    .line 270
    if-eqz p0, :cond_a

    .line 271
    .line 272
    const-string/jumbo v5, "extra2"

    .line 273
    .line 274
    .line 275
    invoke-virtual {v4, v5, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    .line 277
    .line 278
    :cond_a
    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    .line 279
    .line 280
    .line 281
    move-result p0

    .line 282
    if-nez p0, :cond_b

    .line 283
    .line 284
    const-string/jumbo p0, "dimension"

    .line 285
    .line 286
    .line 287
    invoke-virtual {v3, p0, v4}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 288
    .line 289
    .line 290
    :cond_b
    const-string/jumbo p0, "pkg_name"

    .line 291
    .line 292
    .line 293
    const-string/jumbo v4, "com.android.server.biometrics.sensors.face"

    .line 294
    .line 295
    .line 296
    invoke-virtual {v3, p0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    const-string/jumbo p0, "type"

    .line 300
    .line 301
    .line 302
    const-string/jumbo v4, "ev"

    .line 303
    .line 304
    .line 305
    invoke-virtual {v3, p0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    .line 307
    .line 308
    const-string/jumbo p0, "is_summary"

    .line 309
    .line 310
    .line 311
    const-string/jumbo v4, "true"

    .line 312
    .line 313
    .line 314
    invoke-virtual {v3, p0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    .line 316
    .line 317
    const-string/jumbo p0, "com.sec.android.diagmonagent.intent.USE_APP_FEATURE_SURVEY"

    .line 318
    .line 319
    .line 320
    invoke-virtual {v1, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 321
    .line 322
    .line 323
    invoke-virtual {v1, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 324
    .line 325
    .line 326
    const-string/jumbo p0, "com.sec.android.diagmonagent"

    .line 327
    .line 328
    .line 329
    invoke-virtual {v1, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 330
    .line 331
    .line 332
    :try_start_0
    iget-object p0, v0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mContext:Landroid/content/Context;

    .line 333
    .line 334
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    .line 336
    .line 337
    goto :goto_4

    .line 338
    :catch_0
    move-exception p0

    .line 339
    new-instance v0, Ljava/lang/StringBuilder;

    .line 340
    .line 341
    const-string v1, "SemAnalyticsManager.insertLog: "

    .line 342
    .line 343
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 344
    .line 345
    .line 346
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object p0

    .line 350
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    .line 352
    .line 353
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object p0

    .line 357
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    .line 359
    .line 360
    :cond_c
    :goto_4
    return-void

    .line 361
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
