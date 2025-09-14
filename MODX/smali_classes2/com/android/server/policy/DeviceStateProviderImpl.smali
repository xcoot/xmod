.class public final Lcom/android/server/policy/DeviceStateProviderImpl;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/util/Dumpable;
.implements Lcom/android/server/input/InputManagerInternal$LidSwitchCallback;
.implements Landroid/hardware/SensorEventListener;
.implements Landroid/os/PowerManager$OnThermalStatusChangedListener;


# static fields
.field static final DEFAULT_DEVICE_STATE:Landroid/hardware/devicestate/DeviceState;

.field public static final FALSE_BOOLEAN_SUPPLIER:Lcom/android/server/policy/DeviceStateProviderImpl$$ExternalSyntheticLambda0;

.field public static final TRUE_BOOLEAN_SUPPLIER:Lcom/android/server/policy/DeviceStateProviderImpl$$ExternalSyntheticLambda0;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mIsLidOpen:Ljava/lang/Boolean;

.field public mLastReportedState:I

.field public final mLatestSensorEvent:Ljava/util/Map;

.field public mListener:Lcom/android/server/devicestate/DeviceStateManagerService$DeviceStateProviderListener;

.field public final mLock:Ljava/lang/Object;

.field public final mOrderedStates:[Landroid/hardware/devicestate/DeviceState;

.field public mPowerSaveModeEnabled:Z

.field public final mStateConditions:Landroid/util/SparseArray;

.field public mThermalStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/android/server/policy/DeviceStateProviderImpl$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/server/policy/DeviceStateProviderImpl$$ExternalSyntheticLambda0;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/android/server/policy/DeviceStateProviderImpl;->TRUE_BOOLEAN_SUPPLIER:Lcom/android/server/policy/DeviceStateProviderImpl$$ExternalSyntheticLambda0;

    .line 8
    .line 9
    new-instance v0, Lcom/android/server/policy/DeviceStateProviderImpl$$ExternalSyntheticLambda0;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-direct {v0, v1}, Lcom/android/server/policy/DeviceStateProviderImpl$$ExternalSyntheticLambda0;-><init>(I)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lcom/android/server/policy/DeviceStateProviderImpl;->FALSE_BOOLEAN_SUPPLIER:Lcom/android/server/policy/DeviceStateProviderImpl$$ExternalSyntheticLambda0;

    .line 16
    .line 17
    new-instance v0, Landroid/hardware/devicestate/DeviceState;

    .line 18
    .line 19
    new-instance v1, Landroid/hardware/devicestate/DeviceState$Configuration$Builder;

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    const-string v3, "DEFAULT"

    .line 23
    .line 24
    invoke-direct {v1, v2, v3}, Landroid/hardware/devicestate/DeviceState$Configuration$Builder;-><init>(ILjava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Landroid/hardware/devicestate/DeviceState$Configuration$Builder;->build()Landroid/hardware/devicestate/DeviceState$Configuration;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-direct {v0, v1}, Landroid/hardware/devicestate/DeviceState;-><init>(Landroid/hardware/devicestate/DeviceState$Configuration;)V

    .line 32
    .line 33
    .line 34
    sput-object v0, Lcom/android/server/policy/DeviceStateProviderImpl;->DEFAULT_DEVICE_STATE:Landroid/hardware/devicestate/DeviceState;

    .line 35
    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance v2, Ljava/lang/Object;

    .line 9
    .line 10
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v2, v0, Lcom/android/server/policy/DeviceStateProviderImpl;->mLock:Ljava/lang/Object;

    .line 14
    .line 15
    new-instance v2, Landroid/util/SparseArray;

    .line 16
    .line 17
    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v2, v0, Lcom/android/server/policy/DeviceStateProviderImpl;->mStateConditions:Landroid/util/SparseArray;

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    iput-object v2, v0, Lcom/android/server/policy/DeviceStateProviderImpl;->mListener:Lcom/android/server/devicestate/DeviceStateManagerService$DeviceStateProviderListener;

    .line 24
    .line 25
    const/4 v3, -0x1

    .line 26
    iput v3, v0, Lcom/android/server/policy/DeviceStateProviderImpl;->mLastReportedState:I

    .line 27
    .line 28
    new-instance v4, Landroid/util/ArrayMap;

    .line 29
    .line 30
    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object v4, v0, Lcom/android/server/policy/DeviceStateProviderImpl;->mLatestSensorEvent:Ljava/util/Map;

    .line 34
    .line 35
    const/4 v4, 0x0

    .line 36
    iput v4, v0, Lcom/android/server/policy/DeviceStateProviderImpl;->mThermalStatus:I

    .line 37
    .line 38
    move-object/from16 v5, p2

    .line 39
    .line 40
    check-cast v5, Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 43
    .line 44
    .line 45
    move-result v6

    .line 46
    move-object/from16 v7, p3

    .line 47
    .line 48
    check-cast v7, Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 51
    .line 52
    .line 53
    move-result v8

    .line 54
    if-ne v6, v8, :cond_0

    .line 55
    .line 56
    const/4 v6, 0x1

    .line 57
    goto :goto_0

    .line 58
    :cond_0
    move v6, v4

    .line 59
    :goto_0
    const-string v8, "Number of device states must be equal to the number of device state conditions."

    .line 60
    .line 61
    invoke-static {v6, v8}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    iput-object v1, v0, Lcom/android/server/policy/DeviceStateProviderImpl;->mContext:Landroid/content/Context;

    .line 65
    .line 66
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 67
    .line 68
    .line 69
    move-result v6

    .line 70
    new-array v6, v6, [Landroid/hardware/devicestate/DeviceState;

    .line 71
    .line 72
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v6

    .line 76
    check-cast v6, [Landroid/hardware/devicestate/DeviceState;

    .line 77
    .line 78
    new-instance v8, Lcom/android/server/policy/DeviceStateProviderImpl$$ExternalSyntheticLambda2;

    .line 79
    .line 80
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 81
    .line 82
    .line 83
    invoke-static {v8}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    .line 84
    .line 85
    .line 86
    move-result-object v8

    .line 87
    invoke-static {v6, v8}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 88
    .line 89
    .line 90
    iput-object v6, v0, Lcom/android/server/policy/DeviceStateProviderImpl;->mOrderedStates:[Landroid/hardware/devicestate/DeviceState;

    .line 91
    .line 92
    new-instance v6, Landroid/util/ArraySet;

    .line 93
    .line 94
    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    .line 95
    .line 96
    .line 97
    move v8, v4

    .line 98
    move v10, v8

    .line 99
    :goto_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 100
    .line 101
    .line 102
    move-result v11

    .line 103
    if-ge v8, v11, :cond_e

    .line 104
    .line 105
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v11

    .line 109
    check-cast v11, Landroid/hardware/devicestate/DeviceState;

    .line 110
    .line 111
    invoke-virtual {v11}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    .line 112
    .line 113
    .line 114
    move-result v11

    .line 115
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v12

    .line 119
    check-cast v12, Lcom/android/server/policy/devicestate/config/Conditions;

    .line 120
    .line 121
    sget-object v13, Lcom/android/server/policy/DeviceStateProviderImpl;->TRUE_BOOLEAN_SUPPLIER:Lcom/android/server/policy/DeviceStateProviderImpl$$ExternalSyntheticLambda0;

    .line 122
    .line 123
    sget-object v14, Lcom/android/server/policy/DeviceStateProviderImpl;->FALSE_BOOLEAN_SUPPLIER:Lcom/android/server/policy/DeviceStateProviderImpl$$ExternalSyntheticLambda0;

    .line 124
    .line 125
    if-nez v12, :cond_2

    .line 126
    .line 127
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v12

    .line 131
    check-cast v12, Landroid/hardware/devicestate/DeviceState;

    .line 132
    .line 133
    const/16 v15, 0xa

    .line 134
    .line 135
    invoke-virtual {v12, v15}, Landroid/hardware/devicestate/DeviceState;->hasProperty(I)Z

    .line 136
    .line 137
    .line 138
    move-result v12

    .line 139
    if-eqz v12, :cond_1

    .line 140
    .line 141
    iget-object v12, v0, Lcom/android/server/policy/DeviceStateProviderImpl;->mStateConditions:Landroid/util/SparseArray;

    .line 142
    .line 143
    invoke-virtual {v12, v11, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 144
    .line 145
    .line 146
    :goto_2
    move-object/from16 v17, v5

    .line 147
    .line 148
    move-object/from16 p3, v7

    .line 149
    .line 150
    move/from16 v18, v8

    .line 151
    .line 152
    goto/16 :goto_9

    .line 153
    .line 154
    :cond_1
    iget-object v12, v0, Lcom/android/server/policy/DeviceStateProviderImpl;->mStateConditions:Landroid/util/SparseArray;

    .line 155
    .line 156
    invoke-virtual {v12, v11, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    goto :goto_2

    .line 160
    :cond_2
    new-instance v15, Landroid/util/ArraySet;

    .line 161
    .line 162
    invoke-direct {v15}, Landroid/util/ArraySet;-><init>()V

    .line 163
    .line 164
    .line 165
    new-instance v2, Ljava/util/ArrayList;

    .line 166
    .line 167
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 168
    .line 169
    .line 170
    iget-object v4, v12, Lcom/android/server/policy/devicestate/config/Conditions;->lidSwitch:Lcom/android/server/policy/devicestate/config/LidSwitchCondition;

    .line 171
    .line 172
    if-eqz v4, :cond_4

    .line 173
    .line 174
    new-instance v9, Lcom/android/server/policy/DeviceStateProviderImpl$LidSwitchBooleanSupplier;

    .line 175
    .line 176
    iget-object v4, v4, Lcom/android/server/policy/devicestate/config/LidSwitchCondition;->open:Ljava/lang/Boolean;

    .line 177
    .line 178
    if-nez v4, :cond_3

    .line 179
    .line 180
    const/4 v4, 0x0

    .line 181
    goto :goto_3

    .line 182
    :cond_3
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 183
    .line 184
    .line 185
    move-result v4

    .line 186
    :goto_3
    invoke-direct {v9, v0, v4}, Lcom/android/server/policy/DeviceStateProviderImpl$LidSwitchBooleanSupplier;-><init>(Lcom/android/server/policy/DeviceStateProviderImpl;Z)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    const/4 v4, 0x1

    .line 193
    goto :goto_4

    .line 194
    :cond_4
    const/4 v4, 0x0

    .line 195
    :goto_4
    iget-object v9, v12, Lcom/android/server/policy/devicestate/config/Conditions;->sensor:Ljava/util/List;

    .line 196
    .line 197
    if-nez v9, :cond_5

    .line 198
    .line 199
    new-instance v9, Ljava/util/ArrayList;

    .line 200
    .line 201
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 202
    .line 203
    .line 204
    iput-object v9, v12, Lcom/android/server/policy/devicestate/config/Conditions;->sensor:Ljava/util/List;

    .line 205
    .line 206
    :cond_5
    iget-object v9, v12, Lcom/android/server/policy/devicestate/config/Conditions;->sensor:Ljava/util/List;

    .line 207
    .line 208
    const/4 v12, 0x0

    .line 209
    :goto_5
    move-object v3, v9

    .line 210
    check-cast v3, Ljava/util/ArrayList;

    .line 211
    .line 212
    move-object/from16 p3, v7

    .line 213
    .line 214
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 215
    .line 216
    .line 217
    move-result v7

    .line 218
    if-ge v12, v7, :cond_b

    .line 219
    .line 220
    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v3

    .line 224
    check-cast v3, Lcom/android/server/policy/devicestate/config/SensorCondition;

    .line 225
    .line 226
    iget-object v7, v3, Lcom/android/server/policy/devicestate/config/SensorCondition;->type:Ljava/lang/String;

    .line 227
    .line 228
    move-object/from16 v16, v9

    .line 229
    .line 230
    iget-object v9, v3, Lcom/android/server/policy/devicestate/config/SensorCondition;->name:Ljava/lang/String;

    .line 231
    .line 232
    move-object/from16 v17, v5

    .line 233
    .line 234
    iget-object v5, v0, Lcom/android/server/policy/DeviceStateProviderImpl;->mContext:Landroid/content/Context;

    .line 235
    .line 236
    const-class v1, Landroid/hardware/SensorManager;

    .line 237
    .line 238
    invoke-virtual {v5, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object v1

    .line 242
    check-cast v1, Landroid/hardware/SensorManager;

    .line 243
    .line 244
    const/4 v5, -0x1

    .line 245
    invoke-virtual {v1, v5}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    .line 246
    .line 247
    .line 248
    move-result-object v1

    .line 249
    move/from16 v18, v8

    .line 250
    .line 251
    const/4 v5, 0x0

    .line 252
    :goto_6
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 253
    .line 254
    .line 255
    move-result v8

    .line 256
    if-ge v5, v8, :cond_8

    .line 257
    .line 258
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    move-result-object v8

    .line 262
    check-cast v8, Landroid/hardware/Sensor;

    .line 263
    .line 264
    move-object/from16 v19, v1

    .line 265
    .line 266
    invoke-virtual {v8}, Landroid/hardware/Sensor;->getStringType()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v1

    .line 270
    move-object/from16 v20, v13

    .line 271
    .line 272
    invoke-virtual {v8}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v13

    .line 276
    if-eqz v1, :cond_7

    .line 277
    .line 278
    if-nez v13, :cond_6

    .line 279
    .line 280
    goto :goto_7

    .line 281
    :cond_6
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 282
    .line 283
    .line 284
    move-result v1

    .line 285
    if-eqz v1, :cond_7

    .line 286
    .line 287
    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 288
    .line 289
    .line 290
    move-result v1

    .line 291
    if-eqz v1, :cond_7

    .line 292
    .line 293
    goto :goto_8

    .line 294
    :cond_7
    :goto_7
    add-int/lit8 v5, v5, 0x1

    .line 295
    .line 296
    move-object/from16 v1, v19

    .line 297
    .line 298
    move-object/from16 v13, v20

    .line 299
    .line 300
    goto :goto_6

    .line 301
    :cond_8
    move-object/from16 v20, v13

    .line 302
    .line 303
    const/4 v8, 0x0

    .line 304
    :goto_8
    if-nez v8, :cond_9

    .line 305
    .line 306
    new-instance v1, Ljava/lang/StringBuilder;

    .line 307
    .line 308
    const-string v2, "Failed to find Sensor with type: "

    .line 309
    .line 310
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 311
    .line 312
    .line 313
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    .line 315
    .line 316
    const-string v2, " and name: "

    .line 317
    .line 318
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    .line 320
    .line 321
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    .line 323
    .line 324
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object v1

    .line 328
    const-string v2, "DeviceStateProviderImpl"

    .line 329
    .line 330
    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    .line 332
    .line 333
    iget-object v1, v0, Lcom/android/server/policy/DeviceStateProviderImpl;->mStateConditions:Landroid/util/SparseArray;

    .line 334
    .line 335
    invoke-virtual {v1, v11, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 336
    .line 337
    .line 338
    :goto_9
    const/4 v3, 0x1

    .line 339
    goto :goto_a

    .line 340
    :cond_9
    new-instance v1, Lcom/android/server/policy/DeviceStateProviderImpl$SensorBooleanSupplier;

    .line 341
    .line 342
    iget-object v5, v3, Lcom/android/server/policy/devicestate/config/SensorCondition;->value:Ljava/util/List;

    .line 343
    .line 344
    if-nez v5, :cond_a

    .line 345
    .line 346
    new-instance v5, Ljava/util/ArrayList;

    .line 347
    .line 348
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 349
    .line 350
    .line 351
    iput-object v5, v3, Lcom/android/server/policy/devicestate/config/SensorCondition;->value:Ljava/util/List;

    .line 352
    .line 353
    :cond_a
    iget-object v3, v3, Lcom/android/server/policy/devicestate/config/SensorCondition;->value:Ljava/util/List;

    .line 354
    .line 355
    invoke-direct {v1, v0, v8, v3}, Lcom/android/server/policy/DeviceStateProviderImpl$SensorBooleanSupplier;-><init>(Lcom/android/server/policy/DeviceStateProviderImpl;Landroid/hardware/Sensor;Ljava/util/List;)V

    .line 356
    .line 357
    .line 358
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 359
    .line 360
    .line 361
    invoke-virtual {v15, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 362
    .line 363
    .line 364
    add-int/lit8 v12, v12, 0x1

    .line 365
    .line 366
    move-object/from16 v1, p1

    .line 367
    .line 368
    move-object/from16 v7, p3

    .line 369
    .line 370
    move-object/from16 v9, v16

    .line 371
    .line 372
    move-object/from16 v5, v17

    .line 373
    .line 374
    move/from16 v8, v18

    .line 375
    .line 376
    move-object/from16 v13, v20

    .line 377
    .line 378
    goto/16 :goto_5

    .line 379
    .line 380
    :cond_b
    move-object/from16 v17, v5

    .line 381
    .line 382
    move/from16 v18, v8

    .line 383
    .line 384
    move-object/from16 v20, v13

    .line 385
    .line 386
    or-int/2addr v10, v4

    .line 387
    invoke-virtual {v6, v15}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 388
    .line 389
    .line 390
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 391
    .line 392
    .line 393
    move-result v1

    .line 394
    const/4 v3, 0x1

    .line 395
    if-le v1, v3, :cond_c

    .line 396
    .line 397
    iget-object v1, v0, Lcom/android/server/policy/DeviceStateProviderImpl;->mStateConditions:Landroid/util/SparseArray;

    .line 398
    .line 399
    new-instance v4, Lcom/android/server/policy/DeviceStateProviderImpl$AndBooleanSupplier;

    .line 400
    .line 401
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 402
    .line 403
    .line 404
    iput-object v2, v4, Lcom/android/server/policy/DeviceStateProviderImpl$AndBooleanSupplier;->mBooleanSuppliers:Ljava/util/List;

    .line 405
    .line 406
    invoke-virtual {v1, v11, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 407
    .line 408
    .line 409
    goto :goto_a

    .line 410
    :cond_c
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 411
    .line 412
    .line 413
    move-result v1

    .line 414
    if-lez v1, :cond_d

    .line 415
    .line 416
    iget-object v1, v0, Lcom/android/server/policy/DeviceStateProviderImpl;->mStateConditions:Landroid/util/SparseArray;

    .line 417
    .line 418
    const/4 v4, 0x0

    .line 419
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 420
    .line 421
    .line 422
    move-result-object v2

    .line 423
    check-cast v2, Ljava/util/function/BooleanSupplier;

    .line 424
    .line 425
    invoke-virtual {v1, v11, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 426
    .line 427
    .line 428
    goto :goto_a

    .line 429
    :cond_d
    iget-object v1, v0, Lcom/android/server/policy/DeviceStateProviderImpl;->mStateConditions:Landroid/util/SparseArray;

    .line 430
    .line 431
    move-object/from16 v2, v20

    .line 432
    .line 433
    invoke-virtual {v1, v11, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 434
    .line 435
    .line 436
    :goto_a
    add-int/lit8 v8, v18, 0x1

    .line 437
    .line 438
    move-object/from16 v1, p1

    .line 439
    .line 440
    move-object/from16 v7, p3

    .line 441
    .line 442
    move-object/from16 v5, v17

    .line 443
    .line 444
    const/4 v2, 0x0

    .line 445
    const/4 v3, -0x1

    .line 446
    const/4 v4, 0x0

    .line 447
    goto/16 :goto_1

    .line 448
    .line 449
    :cond_e
    move-object/from16 v17, v5

    .line 450
    .line 451
    if-eqz v10, :cond_f

    .line 452
    .line 453
    const-class v1, Lcom/android/server/input/InputManagerService$LocalService;

    .line 454
    .line 455
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 456
    .line 457
    .line 458
    move-result-object v1

    .line 459
    check-cast v1, Lcom/android/server/input/InputManagerService$LocalService;

    .line 460
    .line 461
    iget-object v1, v1, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    .line 462
    .line 463
    invoke-virtual {v1, v0}, Lcom/android/server/input/InputManagerService;->registerLidSwitchCallbackInternal(Lcom/android/server/input/InputManagerInternal$LidSwitchCallback;)V

    .line 464
    .line 465
    .line 466
    :cond_f
    iget-object v1, v0, Lcom/android/server/policy/DeviceStateProviderImpl;->mContext:Landroid/content/Context;

    .line 467
    .line 468
    const-class v2, Landroid/hardware/SensorManager;

    .line 469
    .line 470
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 471
    .line 472
    .line 473
    move-result-object v1

    .line 474
    check-cast v1, Landroid/hardware/SensorManager;

    .line 475
    .line 476
    const/4 v4, 0x0

    .line 477
    :goto_b
    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    .line 478
    .line 479
    .line 480
    move-result v2

    .line 481
    if-ge v4, v2, :cond_10

    .line 482
    .line 483
    invoke-virtual {v6, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 484
    .line 485
    .line 486
    move-result-object v2

    .line 487
    check-cast v2, Landroid/hardware/Sensor;

    .line 488
    .line 489
    const/4 v3, 0x0

    .line 490
    invoke-virtual {v1, v0, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 491
    .line 492
    .line 493
    add-int/lit8 v4, v4, 0x1

    .line 494
    .line 495
    goto :goto_b

    .line 496
    :cond_10
    const/4 v3, 0x0

    .line 497
    const-class v1, Landroid/os/PowerManager;

    .line 498
    .line 499
    move-object/from16 v2, p1

    .line 500
    .line 501
    invoke-virtual {v2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 502
    .line 503
    .line 504
    move-result-object v1

    .line 505
    check-cast v1, Landroid/os/PowerManager;

    .line 506
    .line 507
    if-eqz v1, :cond_14

    .line 508
    .line 509
    move v4, v3

    .line 510
    :goto_c
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    .line 511
    .line 512
    .line 513
    move-result v2

    .line 514
    if-ge v4, v2, :cond_12

    .line 515
    .line 516
    move-object/from16 v2, v17

    .line 517
    .line 518
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 519
    .line 520
    .line 521
    move-result-object v5

    .line 522
    check-cast v5, Landroid/hardware/devicestate/DeviceState;

    .line 523
    .line 524
    const/4 v6, 0x6

    .line 525
    invoke-virtual {v5, v6}, Landroid/hardware/devicestate/DeviceState;->hasProperty(I)Z

    .line 526
    .line 527
    .line 528
    move-result v5

    .line 529
    if-eqz v5, :cond_11

    .line 530
    .line 531
    invoke-virtual {v1, v0}, Landroid/os/PowerManager;->addThermalStatusListener(Landroid/os/PowerManager$OnThermalStatusChangedListener;)V

    .line 532
    .line 533
    .line 534
    goto :goto_d

    .line 535
    :cond_11
    add-int/lit8 v4, v4, 0x1

    .line 536
    .line 537
    move-object/from16 v17, v2

    .line 538
    .line 539
    goto :goto_c

    .line 540
    :cond_12
    move-object/from16 v2, v17

    .line 541
    .line 542
    :goto_d
    move v4, v3

    .line 543
    :goto_e
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 544
    .line 545
    .line 546
    move-result v3

    .line 547
    if-ge v4, v3, :cond_14

    .line 548
    .line 549
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 550
    .line 551
    .line 552
    move-result-object v3

    .line 553
    check-cast v3, Landroid/hardware/devicestate/DeviceState;

    .line 554
    .line 555
    const/4 v5, 0x7

    .line 556
    invoke-virtual {v3, v5}, Landroid/hardware/devicestate/DeviceState;->hasProperty(I)Z

    .line 557
    .line 558
    .line 559
    move-result v3

    .line 560
    if-eqz v3, :cond_13

    .line 561
    .line 562
    new-instance v2, Landroid/content/IntentFilter;

    .line 563
    .line 564
    const-string v3, "android.os.action.POWER_SAVE_MODE_CHANGED_INTERNAL"

    .line 565
    .line 566
    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 567
    .line 568
    .line 569
    new-instance v3, Lcom/android/server/policy/DeviceStateProviderImpl$1;

    .line 570
    .line 571
    invoke-direct {v3, v0, v1}, Lcom/android/server/policy/DeviceStateProviderImpl$1;-><init>(Lcom/android/server/policy/DeviceStateProviderImpl;Landroid/os/PowerManager;)V

    .line 572
    .line 573
    .line 574
    iget-object v0, v0, Lcom/android/server/policy/DeviceStateProviderImpl;->mContext:Landroid/content/Context;

    .line 575
    .line 576
    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 577
    .line 578
    .line 579
    goto :goto_f

    .line 580
    :cond_13
    add-int/lit8 v4, v4, 0x1

    .line 581
    .line 582
    goto :goto_e

    .line 583
    :cond_14
    :goto_f
    return-void
.end method

.method public static createFromConfig(Landroid/content/Context;Lcom/android/server/policy/DeviceStateProviderImpl$ReadableConfig;)Lcom/android/server/policy/DeviceStateProviderImpl;
    .locals 19

    .line 1
    const/16 v1, 0x10

    .line 2
    .line 3
    const/16 v6, 0xb

    .line 4
    .line 5
    const/4 v13, 0x4

    .line 6
    const/16 v16, 0x0

    .line 7
    .line 8
    const/16 v17, 0x1

    .line 9
    .line 10
    const-string v8, "DeviceStateProviderImpl"

    .line 11
    .line 12
    new-instance v7, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    new-instance v14, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 20
    .line 21
    .line 22
    if-eqz p1, :cond_15

    .line 23
    .line 24
    :try_start_0
    move-object/from16 v0, p1

    .line 25
    .line 26
    check-cast v0, Lcom/android/server/policy/DeviceStateProviderImpl$ReadableFileConfig;

    .line 27
    .line 28
    new-instance v4, Ljava/io/FileInputStream;

    .line 29
    .line 30
    iget-object v0, v0, Lcom/android/server/policy/DeviceStateProviderImpl$ReadableFileConfig;->mFile:Ljava/io/File;

    .line 31
    .line 32
    invoke-direct {v4, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    .line 35
    :try_start_1
    new-instance v11, Ljava/io/BufferedInputStream;

    .line 36
    .line 37
    invoke-direct {v11, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    .line 39
    .line 40
    :try_start_2
    invoke-static {v11}, Lcom/android/server/policy/devicestate/config/XmlParser;->read(Ljava/io/InputStream;)Lcom/android/server/policy/devicestate/config/DeviceStateConfig;

    .line 41
    .line 42
    .line 43
    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 44
    :try_start_3
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 45
    .line 46
    .line 47
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0

    .line 48
    .line 49
    .line 50
    goto :goto_4

    .line 51
    :catch_0
    move-exception v0

    .line 52
    goto :goto_3

    .line 53
    :catchall_0
    move-exception v0

    .line 54
    move-object v11, v0

    .line 55
    goto :goto_1

    .line 56
    :catchall_1
    move-exception v0

    .line 57
    move-object v12, v0

    .line 58
    :try_start_5
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :catchall_2
    move-exception v0

    .line 63
    move-object v11, v0

    .line 64
    :try_start_6
    invoke-virtual {v12, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 65
    .line 66
    .line 67
    :goto_0
    throw v12
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 68
    :goto_1
    :try_start_7
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 69
    .line 70
    .line 71
    goto :goto_2

    .line 72
    :catchall_3
    move-exception v0

    .line 73
    move-object v4, v0

    .line 74
    :try_start_8
    invoke-virtual {v11, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 75
    .line 76
    .line 77
    :goto_2
    throw v11
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_0

    .line 78
    :goto_3
    const-string v4, "Encountered an error while reading device state config"

    .line 79
    .line 80
    invoke-static {v8, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 81
    .line 82
    .line 83
    const/4 v0, 0x0

    .line 84
    :goto_4
    if-eqz v0, :cond_15

    .line 85
    .line 86
    iget-object v4, v0, Lcom/android/server/policy/devicestate/config/DeviceStateConfig;->deviceState:Ljava/util/List;

    .line 87
    .line 88
    if-nez v4, :cond_0

    .line 89
    .line 90
    new-instance v4, Ljava/util/ArrayList;

    .line 91
    .line 92
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 93
    .line 94
    .line 95
    iput-object v4, v0, Lcom/android/server/policy/devicestate/config/DeviceStateConfig;->deviceState:Ljava/util/List;

    .line 96
    .line 97
    :cond_0
    iget-object v0, v0, Lcom/android/server/policy/devicestate/config/DeviceStateConfig;->deviceState:Ljava/util/List;

    .line 98
    .line 99
    check-cast v0, Ljava/util/ArrayList;

    .line 100
    .line 101
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 106
    .line 107
    .line 108
    move-result v4

    .line 109
    if-eqz v4, :cond_15

    .line 110
    .line 111
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v4

    .line 115
    check-cast v4, Lcom/android/server/policy/devicestate/config/DeviceState;

    .line 116
    .line 117
    iget-object v11, v4, Lcom/android/server/policy/devicestate/config/DeviceState;->identifier:Ljava/math/BigInteger;

    .line 118
    .line 119
    invoke-virtual {v11}, Ljava/math/BigInteger;->intValue()I

    .line 120
    .line 121
    .line 122
    move-result v11

    .line 123
    iget-object v12, v4, Lcom/android/server/policy/devicestate/config/DeviceState;->name:Ljava/lang/String;

    .line 124
    .line 125
    if-nez v12, :cond_1

    .line 126
    .line 127
    const-string v12, ""

    .line 128
    .line 129
    :cond_1
    new-instance v3, Ljava/util/HashSet;

    .line 130
    .line 131
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 132
    .line 133
    .line 134
    new-instance v5, Ljava/util/HashSet;

    .line 135
    .line 136
    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 137
    .line 138
    .line 139
    iget-object v15, v4, Lcom/android/server/policy/devicestate/config/DeviceState;->properties:Lcom/android/server/policy/devicestate/config/Properties;

    .line 140
    .line 141
    if-eqz v15, :cond_14

    .line 142
    .line 143
    iget-object v9, v15, Lcom/android/server/policy/devicestate/config/Properties;->property:Ljava/util/List;

    .line 144
    .line 145
    if-nez v9, :cond_2

    .line 146
    .line 147
    new-instance v9, Ljava/util/ArrayList;

    .line 148
    .line 149
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 150
    .line 151
    .line 152
    iput-object v9, v15, Lcom/android/server/policy/devicestate/config/Properties;->property:Ljava/util/List;

    .line 153
    .line 154
    :cond_2
    iget-object v9, v15, Lcom/android/server/policy/devicestate/config/Properties;->property:Ljava/util/List;

    .line 155
    .line 156
    move/from16 v15, v16

    .line 157
    .line 158
    :goto_6
    move-object v2, v9

    .line 159
    check-cast v2, Ljava/util/ArrayList;

    .line 160
    .line 161
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 162
    .line 163
    .line 164
    move-result v10

    .line 165
    if-ge v15, v10, :cond_14

    .line 166
    .line 167
    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v2

    .line 171
    check-cast v2, Ljava/lang/String;

    .line 172
    .line 173
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 177
    .line 178
    .line 179
    move-result v18

    .line 180
    sparse-switch v18, :sswitch_data_0

    .line 181
    .line 182
    .line 183
    :goto_7
    const/4 v10, -0x1

    .line 184
    goto/16 :goto_8

    .line 185
    .line 186
    :sswitch_0
    const-string v10, "com.android.server.policy.PROPERTY_FOLDABLE_DISPLAY_CONFIGURATION_OUTER_PRIMARY"

    .line 187
    .line 188
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    move-result v10

    .line 192
    if-nez v10, :cond_3

    .line 193
    .line 194
    goto :goto_7

    .line 195
    :cond_3
    move v10, v1

    .line 196
    goto/16 :goto_8

    .line 197
    .line 198
    :sswitch_1
    const-string v10, "com.android.server.policy.PROPERTY_POLICY_CANCEL_OVERRIDE_REQUESTS"

    .line 199
    .line 200
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 201
    .line 202
    .line 203
    move-result v10

    .line 204
    if-nez v10, :cond_4

    .line 205
    .line 206
    goto :goto_7

    .line 207
    :cond_4
    const/16 v10, 0xf

    .line 208
    .line 209
    goto/16 :goto_8

    .line 210
    .line 211
    :sswitch_2
    const-string v10, "com.android.server.policy.PROPERTY_FEATURE_REAR_DISPLAY"

    .line 212
    .line 213
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 214
    .line 215
    .line 216
    move-result v10

    .line 217
    if-nez v10, :cond_5

    .line 218
    .line 219
    goto :goto_7

    .line 220
    :cond_5
    const/16 v10, 0xe

    .line 221
    .line 222
    goto/16 :goto_8

    .line 223
    .line 224
    :sswitch_3
    const-string v10, "com.android.server.policy.PROPERTY_POLICY_UNSUPPORTED_WHEN_POWER_SAVE_MODE"

    .line 225
    .line 226
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 227
    .line 228
    .line 229
    move-result v10

    .line 230
    if-nez v10, :cond_6

    .line 231
    .line 232
    goto :goto_7

    .line 233
    :cond_6
    const/16 v10, 0xd

    .line 234
    .line 235
    goto/16 :goto_8

    .line 236
    .line 237
    :sswitch_4
    const-string v10, "com.android.server.policy.PROPERTY_EXTENDED_DEVICE_STATE_EXTERNAL_DISPLAY"

    .line 238
    .line 239
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 240
    .line 241
    .line 242
    move-result v10

    .line 243
    if-nez v10, :cond_7

    .line 244
    .line 245
    goto :goto_7

    .line 246
    :cond_7
    const/16 v10, 0xc

    .line 247
    .line 248
    goto/16 :goto_8

    .line 249
    .line 250
    :sswitch_5
    const-string v10, "com.android.server.policy.PROPERTY_POLICY_AVAILABLE_FOR_APP_REQUEST"

    .line 251
    .line 252
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 253
    .line 254
    .line 255
    move-result v10

    .line 256
    if-nez v10, :cond_8

    .line 257
    .line 258
    goto :goto_7

    .line 259
    :cond_8
    move v10, v6

    .line 260
    goto/16 :goto_8

    .line 261
    .line 262
    :sswitch_6
    const-string v10, "com.android.server.policy.PROPERTY_FOLDABLE_HARDWARE_CONFIGURATION_FOLD_IN_HALF_OPEN"

    .line 263
    .line 264
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 265
    .line 266
    .line 267
    move-result v10

    .line 268
    if-nez v10, :cond_9

    .line 269
    .line 270
    goto :goto_7

    .line 271
    :cond_9
    const/16 v10, 0xa

    .line 272
    .line 273
    goto/16 :goto_8

    .line 274
    .line 275
    :sswitch_7
    const-string v10, "com.android.server.policy.PROPERTY_FOLDABLE_DISPLAY_CONFIGURATION_INNER_PRIMARY"

    .line 276
    .line 277
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 278
    .line 279
    .line 280
    move-result v10

    .line 281
    if-nez v10, :cond_a

    .line 282
    .line 283
    goto :goto_7

    .line 284
    :cond_a
    const/16 v10, 0x9

    .line 285
    .line 286
    goto/16 :goto_8

    .line 287
    .line 288
    :sswitch_8
    const-string v10, "com.android.server.policy.PROPERTY_POWER_CONFIGURATION_TRIGGER_WAKE"

    .line 289
    .line 290
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 291
    .line 292
    .line 293
    move-result v10

    .line 294
    if-nez v10, :cond_b

    .line 295
    .line 296
    goto :goto_7

    .line 297
    :cond_b
    const/16 v10, 0x8

    .line 298
    .line 299
    goto/16 :goto_8

    .line 300
    .line 301
    :sswitch_9
    const-string v10, "com.android.server.policy.PROPERTY_FEATURE_DUAL_DISPLAY_INTERNAL_DEFAULT"

    .line 302
    .line 303
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 304
    .line 305
    .line 306
    move-result v10

    .line 307
    if-nez v10, :cond_c

    .line 308
    .line 309
    goto :goto_7

    .line 310
    :cond_c
    const/4 v10, 0x7

    .line 311
    goto :goto_8

    .line 312
    :sswitch_a
    const-string v10, "com.android.server.policy.PROPERTY_POLICY_CANCEL_WHEN_REQUESTER_NOT_ON_TOP"

    .line 313
    .line 314
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 315
    .line 316
    .line 317
    move-result v10

    .line 318
    if-nez v10, :cond_d

    .line 319
    .line 320
    goto/16 :goto_7

    .line 321
    .line 322
    :cond_d
    const/4 v10, 0x6

    .line 323
    goto :goto_8

    .line 324
    :sswitch_b
    const-string v10, "com.android.server.policy.PROPERTY_POLICY_UNSUPPORTED_WHEN_THERMAL_STATUS_CRITICAL"

    .line 325
    .line 326
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 327
    .line 328
    .line 329
    move-result v10

    .line 330
    if-nez v10, :cond_e

    .line 331
    .line 332
    goto/16 :goto_7

    .line 333
    .line 334
    :cond_e
    const/4 v10, 0x5

    .line 335
    goto :goto_8

    .line 336
    :sswitch_c
    const-string v10, "com.android.server.policy.PROPERTY_POWER_CONFIGURATION_TRIGGER_SLEEP"

    .line 337
    .line 338
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 339
    .line 340
    .line 341
    move-result v10

    .line 342
    if-nez v10, :cond_f

    .line 343
    .line 344
    goto/16 :goto_7

    .line 345
    .line 346
    :cond_f
    move v10, v13

    .line 347
    goto :goto_8

    .line 348
    :sswitch_d
    const-string v10, "com.android.server.policy.PROPERTY_FOLDABLE_HARDWARE_CONFIGURATION_FOLD_IN_OPEN"

    .line 349
    .line 350
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 351
    .line 352
    .line 353
    move-result v10

    .line 354
    if-nez v10, :cond_10

    .line 355
    .line 356
    goto/16 :goto_7

    .line 357
    .line 358
    :cond_10
    const/4 v10, 0x3

    .line 359
    goto :goto_8

    .line 360
    :sswitch_e
    const-string v10, "com.android.server.policy.PROPERTY_EMULATED_ONLY"

    .line 361
    .line 362
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 363
    .line 364
    .line 365
    move-result v10

    .line 366
    if-nez v10, :cond_11

    .line 367
    .line 368
    goto/16 :goto_7

    .line 369
    .line 370
    :cond_11
    const/4 v10, 0x2

    .line 371
    goto :goto_8

    .line 372
    :sswitch_f
    const-string v10, "com.android.server.policy.PROPERTY_APP_INACCESSIBLE"

    .line 373
    .line 374
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 375
    .line 376
    .line 377
    move-result v10

    .line 378
    if-nez v10, :cond_12

    .line 379
    .line 380
    goto/16 :goto_7

    .line 381
    .line 382
    :cond_12
    move/from16 v10, v17

    .line 383
    .line 384
    goto :goto_8

    .line 385
    :sswitch_10
    const-string v10, "com.android.server.policy.PROPERTY_FOLDABLE_HARDWARE_CONFIGURATION_FOLD_IN_CLOSED"

    .line 386
    .line 387
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 388
    .line 389
    .line 390
    move-result v10

    .line 391
    if-nez v10, :cond_13

    .line 392
    .line 393
    goto/16 :goto_7

    .line 394
    .line 395
    :cond_13
    move/from16 v10, v16

    .line 396
    .line 397
    :goto_8
    packed-switch v10, :pswitch_data_0

    .line 398
    .line 399
    .line 400
    const-string v10, "Parsed unknown flag with name: "

    .line 401
    .line 402
    invoke-virtual {v10, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 403
    .line 404
    .line 405
    move-result-object v2

    .line 406
    invoke-static {v8, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    .line 408
    .line 409
    :goto_9
    const/16 v2, 0x9

    .line 410
    .line 411
    const/16 v10, 0xf

    .line 412
    .line 413
    goto/16 :goto_b

    .line 414
    .line 415
    :pswitch_0
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 416
    .line 417
    .line 418
    move-result-object v2

    .line 419
    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 420
    .line 421
    .line 422
    goto :goto_9

    .line 423
    :pswitch_1
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 424
    .line 425
    .line 426
    move-result-object v2

    .line 427
    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 428
    .line 429
    .line 430
    goto :goto_9

    .line 431
    :pswitch_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 432
    .line 433
    .line 434
    move-result-object v2

    .line 435
    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 436
    .line 437
    .line 438
    goto :goto_9

    .line 439
    :pswitch_3
    const/4 v2, 0x7

    .line 440
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 441
    .line 442
    .line 443
    move-result-object v10

    .line 444
    invoke-virtual {v3, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 445
    .line 446
    .line 447
    goto :goto_9

    .line 448
    :pswitch_4
    const/4 v2, 0x7

    .line 449
    const/16 v10, 0xf

    .line 450
    .line 451
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 452
    .line 453
    .line 454
    move-result-object v1

    .line 455
    invoke-virtual {v3, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 456
    .line 457
    .line 458
    :goto_a
    const/16 v2, 0x9

    .line 459
    .line 460
    goto/16 :goto_b

    .line 461
    .line 462
    :pswitch_5
    const/16 v1, 0x8

    .line 463
    .line 464
    const/16 v10, 0xf

    .line 465
    .line 466
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 467
    .line 468
    .line 469
    move-result-object v2

    .line 470
    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 471
    .line 472
    .line 473
    goto :goto_a

    .line 474
    :pswitch_6
    const/4 v2, 0x2

    .line 475
    const/16 v10, 0xf

    .line 476
    .line 477
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 478
    .line 479
    .line 480
    move-result-object v1

    .line 481
    invoke-virtual {v5, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 482
    .line 483
    .line 484
    goto :goto_a

    .line 485
    :pswitch_7
    const/16 v1, 0xc

    .line 486
    .line 487
    const/16 v10, 0xf

    .line 488
    .line 489
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 490
    .line 491
    .line 492
    move-result-object v2

    .line 493
    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 494
    .line 495
    .line 496
    goto :goto_a

    .line 497
    :pswitch_8
    const/16 v2, 0xe

    .line 498
    .line 499
    const/16 v10, 0xf

    .line 500
    .line 501
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 502
    .line 503
    .line 504
    move-result-object v1

    .line 505
    invoke-virtual {v3, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 506
    .line 507
    .line 508
    goto :goto_a

    .line 509
    :pswitch_9
    const/16 v2, 0xe

    .line 510
    .line 511
    const/16 v10, 0xf

    .line 512
    .line 513
    const/16 v1, 0x11

    .line 514
    .line 515
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 516
    .line 517
    .line 518
    move-result-object v1

    .line 519
    invoke-virtual {v3, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 520
    .line 521
    .line 522
    goto :goto_a

    .line 523
    :pswitch_a
    const/4 v1, 0x5

    .line 524
    const/16 v10, 0xf

    .line 525
    .line 526
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 527
    .line 528
    .line 529
    move-result-object v2

    .line 530
    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 531
    .line 532
    .line 533
    goto :goto_a

    .line 534
    :pswitch_b
    const/4 v2, 0x6

    .line 535
    const/16 v10, 0xf

    .line 536
    .line 537
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 538
    .line 539
    .line 540
    move-result-object v1

    .line 541
    invoke-virtual {v3, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 542
    .line 543
    .line 544
    goto :goto_a

    .line 545
    :pswitch_c
    const/16 v1, 0xd

    .line 546
    .line 547
    const/16 v10, 0xf

    .line 548
    .line 549
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 550
    .line 551
    .line 552
    move-result-object v2

    .line 553
    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 554
    .line 555
    .line 556
    goto :goto_a

    .line 557
    :pswitch_d
    const/4 v2, 0x3

    .line 558
    const/16 v10, 0xf

    .line 559
    .line 560
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 561
    .line 562
    .line 563
    move-result-object v1

    .line 564
    invoke-virtual {v5, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 565
    .line 566
    .line 567
    goto :goto_a

    .line 568
    :pswitch_e
    const/16 v1, 0xa

    .line 569
    .line 570
    const/16 v10, 0xf

    .line 571
    .line 572
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 573
    .line 574
    .line 575
    move-result-object v2

    .line 576
    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 577
    .line 578
    .line 579
    goto :goto_a

    .line 580
    :pswitch_f
    const/16 v2, 0x9

    .line 581
    .line 582
    const/16 v10, 0xf

    .line 583
    .line 584
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 585
    .line 586
    .line 587
    move-result-object v1

    .line 588
    invoke-virtual {v3, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 589
    .line 590
    .line 591
    goto :goto_b

    .line 592
    :pswitch_10
    const/16 v2, 0x9

    .line 593
    .line 594
    const/16 v10, 0xf

    .line 595
    .line 596
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 597
    .line 598
    .line 599
    move-result-object v1

    .line 600
    invoke-virtual {v5, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 601
    .line 602
    .line 603
    :goto_b
    add-int/lit8 v15, v15, 0x1

    .line 604
    .line 605
    const/16 v1, 0x10

    .line 606
    .line 607
    goto/16 :goto_6

    .line 608
    .line 609
    :cond_14
    const/16 v2, 0x9

    .line 610
    .line 611
    const/16 v10, 0xf

    .line 612
    .line 613
    new-instance v1, Landroid/hardware/devicestate/DeviceState$Configuration$Builder;

    .line 614
    .line 615
    invoke-direct {v1, v11, v12}, Landroid/hardware/devicestate/DeviceState$Configuration$Builder;-><init>(ILjava/lang/String;)V

    .line 616
    .line 617
    .line 618
    invoke-virtual {v1, v3}, Landroid/hardware/devicestate/DeviceState$Configuration$Builder;->setSystemProperties(Ljava/util/Set;)Landroid/hardware/devicestate/DeviceState$Configuration$Builder;

    .line 619
    .line 620
    .line 621
    move-result-object v1

    .line 622
    invoke-virtual {v1, v5}, Landroid/hardware/devicestate/DeviceState$Configuration$Builder;->setPhysicalProperties(Ljava/util/Set;)Landroid/hardware/devicestate/DeviceState$Configuration$Builder;

    .line 623
    .line 624
    .line 625
    move-result-object v1

    .line 626
    invoke-virtual {v1}, Landroid/hardware/devicestate/DeviceState$Configuration$Builder;->build()Landroid/hardware/devicestate/DeviceState$Configuration;

    .line 627
    .line 628
    .line 629
    move-result-object v1

    .line 630
    new-instance v3, Landroid/hardware/devicestate/DeviceState;

    .line 631
    .line 632
    invoke-direct {v3, v1}, Landroid/hardware/devicestate/DeviceState;-><init>(Landroid/hardware/devicestate/DeviceState$Configuration;)V

    .line 633
    .line 634
    .line 635
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 636
    .line 637
    .line 638
    iget-object v1, v4, Lcom/android/server/policy/devicestate/config/DeviceState;->conditions:Lcom/android/server/policy/devicestate/config/Conditions;

    .line 639
    .line 640
    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 641
    .line 642
    .line 643
    const/16 v1, 0x10

    .line 644
    .line 645
    goto/16 :goto_5

    .line 646
    .line 647
    :cond_15
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    .line 648
    .line 649
    .line 650
    move-result v0

    .line 651
    if-eqz v0, :cond_16

    .line 652
    .line 653
    sget-object v0, Lcom/android/server/policy/DeviceStateProviderImpl;->DEFAULT_DEVICE_STATE:Landroid/hardware/devicestate/DeviceState;

    .line 654
    .line 655
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 656
    .line 657
    .line 658
    const/4 v1, 0x0

    .line 659
    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 660
    .line 661
    .line 662
    :cond_16
    new-instance v0, Lcom/android/server/policy/DeviceStateProviderImpl;

    .line 663
    .line 664
    move-object/from16 v1, p0

    .line 665
    .line 666
    invoke-direct {v0, v1, v7, v14}, Lcom/android/server/policy/DeviceStateProviderImpl;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V

    .line 667
    .line 668
    .line 669
    return-object v0

    .line 670
    nop

    .line 671
    :sswitch_data_0
    .sparse-switch
        -0x7a23b2cf -> :sswitch_10
        -0x72bbce1a -> :sswitch_f
        -0x66b0d153 -> :sswitch_e
        -0x61123cb1 -> :sswitch_d
        -0x57ea94e0 -> :sswitch_c
        -0x42b4de97 -> :sswitch_b
        -0x11adf9fc -> :sswitch_a
        -0xb013857 -> :sswitch_9
        -0x2d45be5 -> :sswitch_8
        0x2aae3dfc -> :sswitch_7
        0x3af6fcf1 -> :sswitch_6
        0x3bcf1d05 -> :sswitch_5
        0x411507cc -> :sswitch_4
        0x463d0e30 -> :sswitch_3
        0x5b67cf1d -> :sswitch_2
        0x68a96952 -> :sswitch_1
        0x74f81b21 -> :sswitch_0
    .end sparse-switch

    .line 672
    .line 673
    .line 674
    .line 675
    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
    .line 682
    .line 683
    .line 684
    .line 685
    .line 686
    .line 687
    .line 688
    .line 689
    .line 690
    .line 691
    .line 692
    .line 693
    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    .line 738
    .line 739
    .line 740
    .line 741
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static toSensorValueString(Landroid/hardware/Sensor;Landroid/hardware/SensorEvent;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string/jumbo v0, "null"

    .line 2
    .line 3
    .line 4
    if-nez p0, :cond_0

    .line 5
    .line 6
    move-object p0, v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    :goto_0
    if-nez p1, :cond_1

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_1
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 16
    .line 17
    invoke-static {p1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :goto_1
    const-string p1, " : "

    .line 22
    .line 23
    invoke-static {p0, p1, v0}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    .line 1
    const-string p2, "  mIsLidOpen = "

    .line 2
    .line 3
    const-string v0, "  mThermalStatus = "

    .line 4
    .line 5
    const-string v1, "  mPowerSaveModeEnabled = "

    .line 6
    .line 7
    const-string v2, "  mLastReportedState = "

    .line 8
    .line 9
    const-string v3, "DeviceStateProviderImpl"

    .line 10
    .line 11
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v3, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mLock:Ljava/lang/Object;

    .line 15
    .line 16
    monitor-enter v3

    .line 17
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget v2, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mLastReportedState:I

    .line 23
    .line 24
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    new-instance v2, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-boolean v1, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mPowerSaveModeEnabled:Z

    .line 40
    .line 41
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iget v0, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mThermalStatus:I

    .line 57
    .line 58
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    iget-object p2, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mIsLidOpen:Ljava/lang/Boolean;

    .line 74
    .line 75
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    const-string p2, "  Sensor values:"

    .line 86
    .line 87
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    iget-object p2, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mLatestSensorEvent:Ljava/util/Map;

    .line 91
    .line 92
    check-cast p2, Landroid/util/ArrayMap;

    .line 93
    .line 94
    invoke-virtual {p2}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    .line 95
    .line 96
    .line 97
    move-result-object p2

    .line 98
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 99
    .line 100
    .line 101
    move-result-object p2

    .line 102
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    if-eqz v0, :cond_0

    .line 107
    .line 108
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    check-cast v0, Landroid/hardware/Sensor;

    .line 113
    .line 114
    iget-object v1, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mLatestSensorEvent:Ljava/util/Map;

    .line 115
    .line 116
    check-cast v1, Landroid/util/ArrayMap;

    .line 117
    .line 118
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    check-cast v1, Landroid/hardware/SensorEvent;

    .line 123
    .line 124
    new-instance v2, Ljava/lang/StringBuilder;

    .line 125
    .line 126
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    .line 128
    .line 129
    const-string v4, "   - "

    .line 130
    .line 131
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-static {v0, v1}, Lcom/android/server/policy/DeviceStateProviderImpl;->toSensorValueString(Landroid/hardware/Sensor;Landroid/hardware/SensorEvent;)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    goto :goto_0

    .line 149
    :catchall_0
    move-exception p0

    .line 150
    goto :goto_1

    .line 151
    :cond_0
    monitor-exit v3

    .line 152
    return-void

    .line 153
    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    throw p0
.end method

.method public final notifyDeviceStateChangedIfNeeded()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mListener:Lcom/android/server/devicestate/DeviceStateManagerService$DeviceStateProviderListener;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception p0

    .line 11
    goto/16 :goto_5

    .line 12
    .line 13
    :cond_0
    const/4 v1, 0x0

    .line 14
    :goto_0
    iget-object v2, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mOrderedStates:[Landroid/hardware/devicestate/DeviceState;

    .line 15
    .line 16
    array-length v3, v2

    .line 17
    const/4 v4, -0x1

    .line 18
    if-ge v1, v3, :cond_2

    .line 19
    .line 20
    aget-object v2, v2, v1

    .line 21
    .line 22
    invoke-virtual {v2}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    .line 23
    .line 24
    .line 25
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    :try_start_1
    iget-object v3, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mStateConditions:Landroid/util/SparseArray;

    .line 27
    .line 28
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    check-cast v3, Ljava/util/function/BooleanSupplier;

    .line 33
    .line 34
    invoke-interface {v3}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    .line 35
    .line 36
    .line 37
    move-result v3
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    if-eqz v3, :cond_1

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :catch_0
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    move v2, v4

    .line 45
    :goto_1
    if-ne v2, v4, :cond_3

    .line 46
    .line 47
    :try_start_2
    const-string v1, "DeviceStateProviderImpl"

    .line 48
    .line 49
    const-string v3, "No declared device states match any of the required conditions."

    .line 50
    .line 51
    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    const-string v1, "Sensor values:"

    .line 55
    .line 56
    const-string v3, "DeviceStateProviderImpl"

    .line 57
    .line 58
    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    iget-object v1, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mLatestSensorEvent:Ljava/util/Map;

    .line 62
    .line 63
    check-cast v1, Landroid/util/ArrayMap;

    .line 64
    .line 65
    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 74
    .line 75
    .line 76
    move-result v5

    .line 77
    if-eqz v5, :cond_3

    .line 78
    .line 79
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v5

    .line 83
    check-cast v5, Landroid/hardware/Sensor;

    .line 84
    .line 85
    iget-object v6, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mLatestSensorEvent:Ljava/util/Map;

    .line 86
    .line 87
    check-cast v6, Landroid/util/ArrayMap;

    .line 88
    .line 89
    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v6

    .line 93
    check-cast v6, Landroid/hardware/SensorEvent;

    .line 94
    .line 95
    invoke-static {v5, v6}, Lcom/android/server/policy/DeviceStateProviderImpl;->toSensorValueString(Landroid/hardware/Sensor;Landroid/hardware/SensorEvent;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v5

    .line 99
    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    .line 101
    .line 102
    goto :goto_2

    .line 103
    :cond_3
    if-eq v2, v4, :cond_4

    .line 104
    .line 105
    iget v1, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mLastReportedState:I

    .line 106
    .line 107
    if-eq v2, v1, :cond_4

    .line 108
    .line 109
    iput v2, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mLastReportedState:I

    .line 110
    .line 111
    goto :goto_3

    .line 112
    :cond_4
    move v2, v4

    .line 113
    :goto_3
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 114
    if-eq v2, v4, :cond_6

    .line 115
    .line 116
    iget-object p0, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mListener:Lcom/android/server/devicestate/DeviceStateManagerService$DeviceStateProviderListener;

    .line 117
    .line 118
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 119
    .line 120
    .line 121
    if-ltz v2, :cond_5

    .line 122
    .line 123
    const/16 v0, 0x2710

    .line 124
    .line 125
    if-gt v2, v0, :cond_5

    .line 126
    .line 127
    iput v2, p0, Lcom/android/server/devicestate/DeviceStateManagerService$DeviceStateProviderListener;->mCurrentBaseState:I

    .line 128
    .line 129
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$DeviceStateProviderListener;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    .line 130
    .line 131
    invoke-virtual {p0, v2}, Lcom/android/server/devicestate/DeviceStateManagerService;->setBaseState(I)V

    .line 132
    .line 133
    .line 134
    goto :goto_4

    .line 135
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 136
    .line 137
    const-string v0, "Invalid identifier: "

    .line 138
    .line 139
    invoke-static {v2, v0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    throw p0

    .line 147
    :cond_6
    :goto_4
    return-void

    .line 148
    :goto_5
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 149
    throw p0
.end method

.method public final notifyLidSwitchChanged(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mIsLidOpen:Ljava/lang/Boolean;

    .line 9
    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    invoke-virtual {p0}, Lcom/android/server/policy/DeviceStateProviderImpl;->notifyDeviceStateChangedIfNeeded()V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    throw p0
.end method

.method public final notifySupportedStatesChanged(I)V
    .locals 11

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mLock:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v1

    .line 9
    :try_start_0
    iget-object v2, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mListener:Lcom/android/server/devicestate/DeviceStateManagerService$DeviceStateProviderListener;

    .line 10
    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    monitor-exit v1

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    goto/16 :goto_c

    .line 17
    .line 18
    :cond_0
    iget-object v3, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mOrderedStates:[Landroid/hardware/devicestate/DeviceState;

    .line 19
    .line 20
    array-length v4, v3

    .line 21
    const/4 v5, 0x0

    .line 22
    move v6, v5

    .line 23
    :goto_0
    const/4 v7, 0x4

    .line 24
    if-ge v6, v4, :cond_4

    .line 25
    .line 26
    aget-object v8, v3, v6

    .line 27
    .line 28
    iget v9, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mThermalStatus:I

    .line 29
    .line 30
    const/4 v10, 0x6

    .line 31
    if-eq v9, v7, :cond_1

    .line 32
    .line 33
    const/4 v7, 0x5

    .line 34
    if-eq v9, v7, :cond_1

    .line 35
    .line 36
    if-eq v9, v10, :cond_1

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    invoke-virtual {v8, v10}, Landroid/hardware/devicestate/DeviceState;->hasProperty(I)Z

    .line 40
    .line 41
    .line 42
    move-result v7

    .line 43
    if-eqz v7, :cond_2

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_2
    :goto_1
    iget-boolean v7, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mPowerSaveModeEnabled:Z

    .line 47
    .line 48
    if-eqz v7, :cond_3

    .line 49
    .line 50
    const/4 v7, 0x7

    .line 51
    invoke-virtual {v8, v7}, Landroid/hardware/devicestate/DeviceState;->hasProperty(I)Z

    .line 52
    .line 53
    .line 54
    move-result v7

    .line 55
    if-eqz v7, :cond_3

    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_3
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    :goto_2
    add-int/lit8 v6, v6, 0x1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 66
    .line 67
    .line 68
    move-result p0

    .line 69
    new-array p0, p0, [Landroid/hardware/devicestate/DeviceState;

    .line 70
    .line 71
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    check-cast p0, [Landroid/hardware/devicestate/DeviceState;

    .line 76
    .line 77
    array-length v0, p0

    .line 78
    if-eqz v0, :cond_12

    .line 79
    .line 80
    iget-object v0, v2, Lcom/android/server/devicestate/DeviceStateManagerService$DeviceStateProviderListener;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    .line 81
    .line 82
    iget-object v1, v0, Lcom/android/server/devicestate/DeviceStateManagerService;->mLock:Ljava/lang/Object;

    .line 83
    .line 84
    monitor-enter v1

    .line 85
    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/devicestate/DeviceStateManagerService;->getSupportedStateIdentifiersLocked()[I

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    iget-object v3, v0, Lcom/android/server/devicestate/DeviceStateManagerService;->mDeviceStates:Landroid/util/SparseArray;

    .line 90
    .line 91
    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    .line 92
    .line 93
    .line 94
    move v3, v5

    .line 95
    move v4, v3

    .line 96
    :goto_3
    array-length v6, p0

    .line 97
    const/4 v8, 0x1

    .line 98
    if-ge v3, v6, :cond_6

    .line 99
    .line 100
    aget-object v6, p0, v3

    .line 101
    .line 102
    invoke-virtual {v6, v7}, Landroid/hardware/devicestate/DeviceState;->hasProperty(I)Z

    .line 103
    .line 104
    .line 105
    move-result v9

    .line 106
    if-eqz v9, :cond_5

    .line 107
    .line 108
    move v4, v8

    .line 109
    :cond_5
    iget-object v8, v0, Lcom/android/server/devicestate/DeviceStateManagerService;->mDeviceStates:Landroid/util/SparseArray;

    .line 110
    .line 111
    invoke-virtual {v6}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    .line 112
    .line 113
    .line 114
    move-result v9

    .line 115
    invoke-virtual {v8, v9, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    add-int/lit8 v3, v3, 0x1

    .line 119
    .line 120
    goto :goto_3

    .line 121
    :catchall_1
    move-exception p0

    .line 122
    goto/16 :goto_b

    .line 123
    .line 124
    :cond_6
    iget-object p0, v0, Lcom/android/server/devicestate/DeviceStateManagerService;->mOverrideRequestController:Lcom/android/server/devicestate/OverrideRequestController;

    .line 125
    .line 126
    iput-boolean v4, p0, Lcom/android/server/devicestate/OverrideRequestController;->mStickyRequestsAllowed:Z

    .line 127
    .line 128
    if-nez v4, :cond_7

    .line 129
    .line 130
    iget-boolean v3, p0, Lcom/android/server/devicestate/OverrideRequestController;->mStickyRequest:Z

    .line 131
    .line 132
    if-eqz v3, :cond_7

    .line 133
    .line 134
    invoke-virtual {p0, v5}, Lcom/android/server/devicestate/OverrideRequestController;->cancelCurrentRequestLocked(I)V

    .line 135
    .line 136
    .line 137
    :cond_7
    invoke-virtual {v0}, Lcom/android/server/devicestate/DeviceStateManagerService;->getSupportedStateIdentifiersLocked()[I

    .line 138
    .line 139
    .line 140
    move-result-object p0

    .line 141
    invoke-static {v2, p0}, Ljava/util/Arrays;->equals([I[I)Z

    .line 142
    .line 143
    .line 144
    move-result v2

    .line 145
    if-eqz v2, :cond_8

    .line 146
    .line 147
    monitor-exit v1

    .line 148
    goto/16 :goto_a

    .line 149
    .line 150
    :cond_8
    iget-object v2, v0, Lcom/android/server/devicestate/DeviceStateManagerService;->mOverrideRequestController:Lcom/android/server/devicestate/OverrideRequestController;

    .line 151
    .line 152
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 153
    .line 154
    .line 155
    const/4 v3, 0x3

    .line 156
    if-ne p1, v3, :cond_9

    .line 157
    .line 158
    goto :goto_4

    .line 159
    :cond_9
    move v8, v5

    .line 160
    :goto_4
    if-ne p1, v7, :cond_a

    .line 161
    .line 162
    const/4 p1, 0x2

    .line 163
    goto :goto_5

    .line 164
    :cond_a
    move p1, v5

    .line 165
    :goto_5
    or-int/2addr p1, v8

    .line 166
    iget-object v3, v2, Lcom/android/server/devicestate/OverrideRequestController;->mBaseStateRequest:Lcom/android/server/devicestate/OverrideRequest;

    .line 167
    .line 168
    if-eqz v3, :cond_d

    .line 169
    .line 170
    iget-object v3, v3, Lcom/android/server/devicestate/OverrideRequest;->mRequestedState:Landroid/hardware/devicestate/DeviceState;

    .line 171
    .line 172
    invoke-virtual {v3}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    .line 173
    .line 174
    .line 175
    move-result v3

    .line 176
    move v4, v5

    .line 177
    :goto_6
    array-length v6, p0

    .line 178
    if-ge v4, v6, :cond_c

    .line 179
    .line 180
    aget v6, p0, v4

    .line 181
    .line 182
    if-ne v6, v3, :cond_b

    .line 183
    .line 184
    goto :goto_7

    .line 185
    :cond_b
    add-int/lit8 v4, v4, 0x1

    .line 186
    .line 187
    goto :goto_6

    .line 188
    :cond_c
    invoke-virtual {v2, p1}, Lcom/android/server/devicestate/OverrideRequestController;->cancelCurrentBaseStateRequestLocked(I)V

    .line 189
    .line 190
    .line 191
    :cond_d
    :goto_7
    iget-object v3, v2, Lcom/android/server/devicestate/OverrideRequestController;->mRequest:Lcom/android/server/devicestate/OverrideRequest;

    .line 192
    .line 193
    if-eqz v3, :cond_10

    .line 194
    .line 195
    iget-object v3, v3, Lcom/android/server/devicestate/OverrideRequest;->mRequestedState:Landroid/hardware/devicestate/DeviceState;

    .line 196
    .line 197
    invoke-virtual {v3}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    .line 198
    .line 199
    .line 200
    move-result v3

    .line 201
    :goto_8
    array-length v4, p0

    .line 202
    if-ge v5, v4, :cond_f

    .line 203
    .line 204
    aget v4, p0, v5

    .line 205
    .line 206
    if-ne v4, v3, :cond_e

    .line 207
    .line 208
    goto :goto_9

    .line 209
    :cond_e
    add-int/lit8 v5, v5, 0x1

    .line 210
    .line 211
    goto :goto_8

    .line 212
    :cond_f
    invoke-virtual {v2, p1}, Lcom/android/server/devicestate/OverrideRequestController;->cancelCurrentRequestLocked(I)V

    .line 213
    .line 214
    .line 215
    :cond_10
    :goto_9
    invoke-virtual {v0}, Lcom/android/server/devicestate/DeviceStateManagerService;->updatePendingStateLocked()Z

    .line 216
    .line 217
    .line 218
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 219
    .line 220
    .line 221
    move-result-object p0

    .line 222
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 223
    .line 224
    .line 225
    move-result-object p0

    .line 226
    const p1, 0x10e008a

    .line 227
    .line 228
    .line 229
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    .line 230
    .line 231
    .line 232
    move-result p0

    .line 233
    const/4 p1, -0x1

    .line 234
    if-eq p0, p1, :cond_11

    .line 235
    .line 236
    iget-object p1, v0, Lcom/android/server/devicestate/DeviceStateManagerService;->mDeviceStates:Landroid/util/SparseArray;

    .line 237
    .line 238
    invoke-virtual {p1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object p0

    .line 242
    check-cast p0, Landroid/hardware/devicestate/DeviceState;

    .line 243
    .line 244
    iput-object p0, v0, Lcom/android/server/devicestate/DeviceStateManagerService;->mRearDisplayState:Landroid/hardware/devicestate/DeviceState;

    .line 245
    .line 246
    :cond_11
    invoke-virtual {v0}, Lcom/android/server/devicestate/DeviceStateManagerService;->notifyDeviceStateInfoChangedAsync()V

    .line 247
    .line 248
    .line 249
    iget-object p0, v0, Lcom/android/server/devicestate/DeviceStateManagerService;->mHandler:Landroid/os/Handler;

    .line 250
    .line 251
    new-instance p1, Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda6;

    .line 252
    .line 253
    const/4 v2, 0x2

    .line 254
    invoke-direct {p1, v0, v2}, Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/devicestate/DeviceStateManagerService;I)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 258
    .line 259
    .line 260
    monitor-exit v1

    .line 261
    :goto_a
    return-void

    .line 262
    :goto_b
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 263
    throw p0

    .line 264
    :cond_12
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 265
    .line 266
    const-string p1, "Supported device states must not be empty"

    .line 267
    .line 268
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    throw p0

    .line 272
    :goto_c
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 273
    throw p0
.end method

.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    .line 1
    return-void
.end method

.method public onPowerSaveModeChanged(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mPowerSaveModeEnabled:Z

    .line 5
    .line 6
    if-eq v1, p1, :cond_1

    .line 7
    .line 8
    iput-boolean p1, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mPowerSaveModeEnabled:Z

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    const/4 p1, 0x4

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x5

    .line 15
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/server/policy/DeviceStateProviderImpl;->notifySupportedStatesChanged(I)V

    .line 16
    .line 17
    .line 18
    goto :goto_1

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    goto :goto_2

    .line 21
    :cond_1
    :goto_1
    monitor-exit v0

    .line 22
    return-void

    .line 23
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    throw p0
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mLatestSensorEvent:Ljava/util/Map;

    .line 5
    .line 6
    iget-object v2, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    .line 7
    .line 8
    check-cast v1, Landroid/util/ArrayMap;

    .line 9
    .line 10
    invoke-virtual {v1, v2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    invoke-virtual {p0}, Lcom/android/server/policy/DeviceStateProviderImpl;->notifyDeviceStateChangedIfNeeded()V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    throw p0
.end method

.method public final onThermalStatusChanged(I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mThermalStatus:I

    .line 5
    .line 6
    iput p1, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mThermalStatus:I

    .line 7
    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    const/4 v0, 0x1

    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x6

    .line 12
    const/4 v4, 0x5

    .line 13
    const/4 v5, 0x4

    .line 14
    if-eq p1, v5, :cond_0

    .line 15
    .line 16
    if-eq p1, v4, :cond_0

    .line 17
    .line 18
    if-eq p1, v3, :cond_0

    .line 19
    .line 20
    move p1, v2

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move p1, v0

    .line 23
    :goto_0
    if-eq v1, v5, :cond_1

    .line 24
    .line 25
    if-eq v1, v4, :cond_1

    .line 26
    .line 27
    if-eq v1, v3, :cond_1

    .line 28
    .line 29
    move v0, v2

    .line 30
    :cond_1
    if-eq p1, v0, :cond_3

    .line 31
    .line 32
    const-string v0, "DeviceStateProviderImpl"

    .line 33
    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string v2, "Updating supported device states due to thermal status change. isThermalStatusCriticalOrAbove: "

    .line 37
    .line 38
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    if-eqz p1, :cond_2

    .line 52
    .line 53
    const/4 p1, 0x3

    .line 54
    goto :goto_1

    .line 55
    :cond_2
    const/4 p1, 0x2

    .line 56
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/server/policy/DeviceStateProviderImpl;->notifySupportedStatesChanged(I)V

    .line 57
    .line 58
    .line 59
    :cond_3
    return-void

    .line 60
    :catchall_0
    move-exception p0

    .line 61
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    throw p0
.end method
