.class public final synthetic Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderProxy$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;

.field public final synthetic f$1:Landroid/service/timezone/TimeZoneProviderEvent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;Landroid/service/timezone/TimeZoneProviderEvent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderProxy$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderProxy$$ExternalSyntheticLambda0;->f$1:Landroid/service/timezone/TimeZoneProviderEvent;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderProxy$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderProxy$$ExternalSyntheticLambda0;->f$1:Landroid/service/timezone/TimeZoneProviderEvent;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;->mListener:Lcom/android/server/timezonedetector/location/BinderLocationTimeZoneProvider$1;

    .line 8
    .line 9
    iget-object v1, v1, Lcom/android/server/timezonedetector/location/BinderLocationTimeZoneProvider$1;->this$0:Lcom/android/server/timezonedetector/location/BinderLocationTimeZoneProvider;

    .line 10
    .line 11
    const-string v2, "Unknown providerType="

    .line 12
    .line 13
    const-string v3, "Unknown eventType="

    .line 14
    .line 15
    const-string v4, "handleTimeZoneProviderEvent: Failure event="

    .line 16
    .line 17
    const-string v5, "Unknown eventType="

    .line 18
    .line 19
    const-string v6, "handleTimeZoneProviderEvent: Failure event="

    .line 20
    .line 21
    const-string v7, "handleTimeZoneProviderEvent: event="

    .line 22
    .line 23
    const-string v8, "handleTimeZoneProviderEvent: Event="

    .line 24
    .line 25
    const-string v9, "handleTimeZoneProviderEvent: mProviderName="

    .line 26
    .line 27
    iget-object v10, v1, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mThreadingDomain:Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;

    .line 28
    .line 29
    invoke-virtual {v10}, Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;->assertCurrentThread()V

    .line 30
    .line 31
    .line 32
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    iget-object v10, v1, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mTimeZoneProviderEventPreProcessor:Lcom/android/server/timezonedetector/location/TimeZoneProviderEventPreProcessor;

    .line 36
    .line 37
    invoke-interface {v10, v0}, Lcom/android/server/timezonedetector/location/TimeZoneProviderEventPreProcessor;->preProcess(Landroid/service/timezone/TimeZoneProviderEvent;)Landroid/service/timezone/TimeZoneProviderEvent;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iget-object v10, v1, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mSharedLock:Ljava/lang/Object;

    .line 42
    .line 43
    monitor-enter v10

    .line 44
    :try_start_0
    new-instance v11, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v11, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget-object v9, v1, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mProviderName:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v9, ", timeZoneProviderEvent="

    .line 55
    .line 56
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v9

    .line 66
    invoke-static {v9}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->debugLog(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    iget-object v9, v1, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mCurrentState:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    .line 70
    .line 71
    invoke-virtual {v9}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->get()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v9

    .line 75
    check-cast v9, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;

    .line 76
    .line 77
    invoke-virtual {v0}, Landroid/service/timezone/TimeZoneProviderEvent;->getType()I

    .line 78
    .line 79
    .line 80
    move-result v11

    .line 81
    iget v12, v9, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->stateEnum:I

    .line 82
    .line 83
    const/4 v14, 0x2

    .line 84
    const/4 v13, 0x1

    .line 85
    const/4 v15, 0x0

    .line 86
    packed-switch v12, :pswitch_data_0

    .line 87
    .line 88
    .line 89
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 90
    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    throw v0

    .line 107
    :catchall_0
    move-exception v0

    .line 108
    goto/16 :goto_3

    .line 109
    .line 110
    :pswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    const-string v0, " received for provider="

    .line 119
    .line 120
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    const-string v0, " when in terminated state"

    .line 127
    .line 128
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-static {v0, v15}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->warnLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 136
    .line 137
    .line 138
    monitor-exit v10

    .line 139
    goto/16 :goto_2

    .line 140
    .line 141
    :pswitch_1
    if-eq v11, v13, :cond_2

    .line 142
    .line 143
    if-eq v11, v14, :cond_1

    .line 144
    .line 145
    const/4 v2, 0x3

    .line 146
    if-ne v11, v2, :cond_0

    .line 147
    .line 148
    goto :goto_0

    .line 149
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 150
    .line 151
    new-instance v2, Ljava/lang/StringBuilder;

    .line 152
    .line 153
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    throw v1

    .line 167
    :cond_1
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 168
    .line 169
    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    const-string v0, " received for stopped provider="

    .line 176
    .line 177
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    const-string v0, ", ignoring"

    .line 184
    .line 185
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    invoke-static {v0, v15}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->warnLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 193
    .line 194
    .line 195
    monitor-exit v10

    .line 196
    goto/16 :goto_2

    .line 197
    .line 198
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    .line 199
    .line 200
    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    const-string v0, " received for stopped provider="

    .line 207
    .line 208
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    iget-object v0, v1, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mProviderName:Ljava/lang/String;

    .line 212
    .line 213
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    const-string v0, ", entering permanently failed state"

    .line 217
    .line 218
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    invoke-static {v0, v15}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->warnLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 226
    .line 227
    .line 228
    const/4 v2, 0x5

    .line 229
    invoke-virtual {v9, v2, v15, v15, v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->newState(ILandroid/service/timezone/TimeZoneProviderEvent;Lcom/android/server/timezonedetector/ConfigurationInternal;Ljava/lang/String;)Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    invoke-virtual {v1, v0, v13}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->setCurrentState(Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;Z)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {v1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->cancelInitializationTimeoutIfSet()V

    .line 237
    .line 238
    .line 239
    monitor-exit v10

    .line 240
    goto :goto_2

    .line 241
    :pswitch_2
    if-eq v11, v13, :cond_6

    .line 242
    .line 243
    const/4 v2, 0x3

    .line 244
    if-eq v11, v14, :cond_4

    .line 245
    .line 246
    if-ne v11, v2, :cond_3

    .line 247
    .line 248
    goto :goto_1

    .line 249
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 250
    .line 251
    new-instance v2, Ljava/lang/StringBuilder;

    .line 252
    .line 253
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    throw v1

    .line 267
    :cond_4
    :goto_1
    if-ne v11, v2, :cond_5

    .line 268
    .line 269
    move v14, v2

    .line 270
    :cond_5
    iget-object v2, v9, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->currentUserConfiguration:Lcom/android/server/timezonedetector/ConfigurationInternal;

    .line 271
    .line 272
    const-string v3, "handleTimeZoneProviderEvent"

    .line 273
    .line 274
    invoke-virtual {v9, v14, v0, v2, v3}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->newState(ILandroid/service/timezone/TimeZoneProviderEvent;Lcom/android/server/timezonedetector/ConfigurationInternal;Ljava/lang/String;)Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    invoke-virtual {v1, v0, v13}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->setCurrentState(Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;Z)V

    .line 279
    .line 280
    .line 281
    invoke-virtual {v1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->cancelInitializationTimeoutIfSet()V

    .line 282
    .line 283
    .line 284
    monitor-exit v10

    .line 285
    goto :goto_2

    .line 286
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    .line 287
    .line 288
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    const-string v0, " received for provider="

    .line 295
    .line 296
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    .line 298
    .line 299
    iget-object v0, v1, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mProviderName:Ljava/lang/String;

    .line 300
    .line 301
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    .line 303
    .line 304
    const-string v0, " in state="

    .line 305
    .line 306
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    iget v0, v9, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->stateEnum:I

    .line 310
    .line 311
    invoke-static {v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->prettyPrintStateEnum(I)Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v0

    .line 315
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    .line 317
    .line 318
    const-string v0, ", entering permanently failed state"

    .line 319
    .line 320
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    .line 322
    .line 323
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object v0

    .line 327
    invoke-static {v0, v15}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->warnLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 328
    .line 329
    .line 330
    const/4 v2, 0x5

    .line 331
    invoke-virtual {v9, v2, v15, v15, v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->newState(ILandroid/service/timezone/TimeZoneProviderEvent;Lcom/android/server/timezonedetector/ConfigurationInternal;Ljava/lang/String;)Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;

    .line 332
    .line 333
    .line 334
    move-result-object v0

    .line 335
    invoke-virtual {v1, v0, v13}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->setCurrentState(Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;Z)V

    .line 336
    .line 337
    .line 338
    invoke-virtual {v1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->cancelInitializationTimeoutIfSet()V

    .line 339
    .line 340
    .line 341
    monitor-exit v10

    .line 342
    :goto_2
    return-void

    .line 343
    :goto_3
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 344
    throw v0

    .line 345
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
