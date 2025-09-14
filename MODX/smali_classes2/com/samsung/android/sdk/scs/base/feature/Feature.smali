.class public abstract Lcom/samsung/android/sdk/scs/base/feature/Feature;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final SUPPORTED_SIVS_FEATURES:Ljava/util/List;

.field public static final SUPPORTED_VISUAL_CLOUD_FEATURES:Ljava/util/List;

.field public static final SUPPORTED_VISUAL_FEATURES:Ljava/util/List;

.field public static sIsVst:Ljava/lang/Boolean;

.field public static sIsWatch:Ljava/lang/Boolean;

.field public static final sinceVersionMap:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 31

    .line 1
    const-string v29, "FEATURE_SIVS_FORMAT_CONVERSION"

    .line 2
    .line 3
    const-string v30, "FEATURE_AI_LANGUAGE_PACK_CONFIGURATION_PROVIDER"

    .line 4
    .line 5
    const-string v0, "FEATURE_SPEECH_RECOGNITION"

    .line 6
    .line 7
    const-string v1, "FEATURE_SPEECH_LOCALE_RECOGNITION"

    .line 8
    .line 9
    const-string v2, "FEATURE_SPEAKER_DIARISATION"

    .line 10
    .line 11
    const-string v3, "FEATURE_AUDIO_TO_TRANSLATION"

    .line 12
    .line 13
    const-string v4, "FEATURE_AI_GEN_SUMMARY"

    .line 14
    .line 15
    const-string v5, "FEATURE_AI_GEN_TRANSLATION"

    .line 16
    .line 17
    const-string v6, "FEATURE_AI_GEN_TONE"

    .line 18
    .line 19
    const-string v7, "FEATURE_AI_GEN_CORRECTION"

    .line 20
    .line 21
    const-string v8, "FEATURE_AI_GEN_SUGGESTION"

    .line 22
    .line 23
    const-string v9, "FEATURE_AI_GEN_SUGGESTION_ONDEVICE"

    .line 24
    .line 25
    const-string v10, "FEATURE_AI_GEN_SMART_COVER"

    .line 26
    .line 27
    const-string v11, "FEATURE_AI_GEN_SMART_REPLY"

    .line 28
    .line 29
    const-string v12, "FEATURE_AI_GEN_EMOJI_AUGMENTATION"

    .line 30
    .line 31
    const-string v13, "FEATURE_AI_GEN_NOTES_ORGANIZATION"

    .line 32
    .line 33
    const-string v14, "FEATURE_AI_GEN_SMART_CAPTURE"

    .line 34
    .line 35
    const-string v15, "FEATURE_AI_GEN_GENERIC"

    .line 36
    .line 37
    const-string v16, "FEATURE_AI_GEN_USAGE"

    .line 38
    .line 39
    const-string v17, "FEATURE_NEURAL_TRANSLATION"

    .line 40
    .line 41
    const-string v18, "FEATURE_LANGUAGE_LIST_IDENTIFICATION"

    .line 42
    .line 43
    const-string v19, "FEATURE_LANGUAGE_IDENTIFICATION_AND_GET_CANDIDATE"

    .line 44
    .line 45
    const-string v20, "FEATURE_NEURAL_TRANSLATION_BY_CHUNK"

    .line 46
    .line 47
    const-string v21, "FEATURE_NEURAL_TRANSLATION_CLEAR_WITH_SOURCE_ID"

    .line 48
    .line 49
    const-string v22, "FEATURE_NEURAL_TRANSLATION_TAG_SUPPORTED"

    .line 50
    .line 51
    const-string v23, "FEATURE_SIVS_CLASSIFICATION"

    .line 52
    .line 53
    const-string v24, "FEATURE_SIVS_CONFIGURATION"

    .line 54
    .line 55
    const-string v25, "FEATURE_SIVS_EXTRACTION"

    .line 56
    .line 57
    const-string v26, "FEATURE_SIVS_EXTRACTION_ONDEVICE"

    .line 58
    .line 59
    const-string v27, "FEATURE_SIVS_WRITING_COMPOSER"

    .line 60
    .line 61
    const-string v28, "FEATURE_SIVS_WRITING_COMPOSER_ONDEVICE"

    .line 62
    .line 63
    filled-new-array/range {v0 .. v30}, [Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    sput-object v0, Lcom/samsung/android/sdk/scs/base/feature/Feature;->SUPPORTED_SIVS_FEATURES:Ljava/util/List;

    .line 72
    .line 73
    const-string v6, "FEATURE_SKETCH_GUIDE_EDITING_ON_DEVICE"

    .line 74
    .line 75
    const-string v7, "FEATURE_PORTRAIT_RELIGHT_ON_DEVICE"

    .line 76
    .line 77
    const-string v1, "FEATURE_DOWNLOAD"

    .line 78
    .line 79
    const-string v2, "FEATURE_WALLPAPER"

    .line 80
    .line 81
    const-string v3, "FEATURE_GEN_EDIT_ON_DEVICE"

    .line 82
    .line 83
    const-string v4, "FEATURE_PORTRAIT_ON_DEVICE"

    .line 84
    .line 85
    const-string v5, "FEATURE_SKETCH_TO_IMAGE_ON_DEVICE"

    .line 86
    .line 87
    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    sput-object v0, Lcom/samsung/android/sdk/scs/base/feature/Feature;->SUPPORTED_VISUAL_FEATURES:Ljava/util/List;

    .line 96
    .line 97
    const-string v6, "FEATURE_GEN_STICKER"

    .line 98
    .line 99
    const-string v7, "FEATURE_IMAGE_CONVERSION"

    .line 100
    .line 101
    const-string v1, "FEATURE_PORTRAIT"

    .line 102
    .line 103
    const-string v2, "FEATURE_SKETCH_TO_IMAGE"

    .line 104
    .line 105
    const-string v3, "FEATURE_SKETCH_GUIDE_EDITING"

    .line 106
    .line 107
    const-string v4, "FEATURE_SKETCH_GUIDE_EDITING_CROPPING_RECT"

    .line 108
    .line 109
    const-string v5, "FEATURE_C2PA"

    .line 110
    .line 111
    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    sput-object v0, Lcom/samsung/android/sdk/scs/base/feature/Feature;->SUPPORTED_VISUAL_CLOUD_FEATURES:Ljava/util/List;

    .line 120
    .line 121
    new-instance v0, Ljava/util/HashMap;

    .line 122
    .line 123
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 124
    .line 125
    .line 126
    const/4 v1, 0x1

    .line 127
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    const-string v2, "FEATURE_IMAGE_GET_BOUNDARIES"

    .line 132
    .line 133
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    const-string v2, "FEATURE_IMAGE_GET_LARGEST_BOUNDARY"

    .line 137
    .line 138
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    const/4 v2, 0x2

    .line 142
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    const-string v3, "FEATURE_IMAGE_UPSCALE"

    .line 147
    .line 148
    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    const-string v3, "FEATURE_SUGGESTION_SUGGEST_KEYWORD"

    .line 152
    .line 153
    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    const-string v3, "FEATURE_SUGGESTION_SUGGEST_APP_CATEGORY"

    .line 157
    .line 158
    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    const/4 v3, 0x3

    .line 162
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 163
    .line 164
    .line 165
    move-result-object v3

    .line 166
    const-string v4, "FEATURE_SUGGESTION_SUGGEST_APP_CATEGORY_DETAILS"

    .line 167
    .line 168
    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    const-string v4, "FEATURE_SUGGESTION_SUGGEST_FOLDER_NAME"

    .line 172
    .line 173
    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    const-string v4, "FEATURE_TEXT_GET_ENTITY"

    .line 177
    .line 178
    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    const/16 v4, 0x18

    .line 182
    .line 183
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 184
    .line 185
    .line 186
    move-result-object v4

    .line 187
    const-string v5, "FEATURE_TEXT_GET_ENTITY_BULK"

    .line 188
    .line 189
    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    const/16 v4, 0x9

    .line 193
    .line 194
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 195
    .line 196
    .line 197
    move-result-object v4

    .line 198
    const-string v5, "FEATURE_TEXT_GET_ENTITY_DATETIME_NUMERAL"

    .line 199
    .line 200
    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    const/16 v5, 0x16

    .line 204
    .line 205
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 206
    .line 207
    .line 208
    move-result-object v5

    .line 209
    const-string v6, "FEATURE_TEXT_GET_ENTITY_DATETIME_SEARCH"

    .line 210
    .line 211
    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    const-string v5, "FEATURE_TEXT_GET_ENTITY_PHONE_NUMBER"

    .line 215
    .line 216
    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    const/16 v5, 0xa

    .line 220
    .line 221
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 222
    .line 223
    .line 224
    move-result-object v5

    .line 225
    const-string v6, "FEATURE_TEXT_GET_ENTITY_POI"

    .line 226
    .line 227
    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    const-string v6, "FEATURE_TEXT_GET_ENTITY_BANK"

    .line 231
    .line 232
    invoke-virtual {v0, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    const/16 v6, 0xf

    .line 236
    .line 237
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 238
    .line 239
    .line 240
    move-result-object v6

    .line 241
    const-string v7, "FEATURE_TEXT_GET_ENTITY_IS_MAPPABLE"

    .line 242
    .line 243
    invoke-virtual {v0, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    const-string v7, "FEATURE_TEXT_GET_ENTITY_IS_RELATIVE"

    .line 247
    .line 248
    invoke-virtual {v0, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    const/16 v6, 0x11

    .line 252
    .line 253
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 254
    .line 255
    .line 256
    move-result-object v6

    .line 257
    const-string v7, "FEATURE_TEXT_GET_ENTITY_IS_SPECIAL_DAY"

    .line 258
    .line 259
    invoke-virtual {v0, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    const/16 v6, 0x12

    .line 263
    .line 264
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 265
    .line 266
    .line 267
    move-result-object v6

    .line 268
    const-string v7, "FEATURE_TEXT_GET_ENTITY_HAS_YEAR_MONTH_DAY"

    .line 269
    .line 270
    invoke-virtual {v0, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    const/16 v7, 0x10

    .line 274
    .line 275
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 276
    .line 277
    .line 278
    move-result-object v7

    .line 279
    const-string v8, "FEATURE_TEXT_GET_ENTITY_UPI_ID"

    .line 280
    .line 281
    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    .line 283
    .line 284
    const/16 v7, 0x14

    .line 285
    .line 286
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 287
    .line 288
    .line 289
    move-result-object v7

    .line 290
    const-string v8, "FEATURE_TEXT_GET_ENTITY_UNIT"

    .line 291
    .line 292
    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    .line 294
    .line 295
    const/16 v7, 0xd

    .line 296
    .line 297
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 298
    .line 299
    .line 300
    move-result-object v7

    .line 301
    const-string v8, "FEATURE_TEXT_GET_EVENT"

    .line 302
    .line 303
    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    const-string v7, "FEATURE_TEXT_GET_EVENT_HAS_YEAR_MONTH_DAY"

    .line 307
    .line 308
    invoke-virtual {v0, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    .line 310
    .line 311
    const/16 v6, 0x15

    .line 312
    .line 313
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 314
    .line 315
    .line 316
    move-result-object v6

    .line 317
    const-string v7, "FEATURE_TEXT_GET_EVENT_INDEX"

    .line 318
    .line 319
    invoke-virtual {v0, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    .line 321
    .line 322
    const-string v6, "FEATURE_TEXT_GET_KEY_PHRASE"

    .line 323
    .line 324
    invoke-virtual {v0, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    .line 326
    .line 327
    const/16 v6, 0xb

    .line 328
    .line 329
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 330
    .line 331
    .line 332
    move-result-object v6

    .line 333
    const-string v7, "FEATURE_TEXT_GET_KEY_PHRASE_EVENT_TITLE"

    .line 334
    .line 335
    invoke-virtual {v0, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    .line 337
    .line 338
    const/4 v7, 0x5

    .line 339
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 340
    .line 341
    .line 342
    move-result-object v7

    .line 343
    const-string v8, "FEATURE_TEXT_GET_DOCUMENT_CATEGORY"

    .line 344
    .line 345
    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    .line 347
    .line 348
    const-string v8, "FEATURE_TEXT_GET_BNLP"

    .line 349
    .line 350
    invoke-virtual {v0, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    .line 352
    .line 353
    const/16 v8, 0xc

    .line 354
    .line 355
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 356
    .line 357
    .line 358
    move-result-object v8

    .line 359
    const-string v9, "FEATURE_TEXT_GET_BNLP_TOKEN"

    .line 360
    .line 361
    invoke-virtual {v0, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    .line 363
    .line 364
    const-string v8, "FEATURE_TEXT_DETECT_LANGUAGE"

    .line 365
    .line 366
    invoke-virtual {v0, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    .line 368
    .line 369
    const/16 v8, 0x13

    .line 370
    .line 371
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 372
    .line 373
    .line 374
    move-result-object v8

    .line 375
    const-string v9, "FEATURE_TEXT_CONVERT_UNIT"

    .line 376
    .line 377
    invoke-virtual {v0, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    .line 379
    .line 380
    const/16 v8, 0x17

    .line 381
    .line 382
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 383
    .line 384
    .line 385
    move-result-object v8

    .line 386
    const-string v9, "FEATURE_TEXT_GET_REMINDER_ENTITY"

    .line 387
    .line 388
    invoke-virtual {v0, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    .line 390
    .line 391
    const-string v8, "FEATURE_NATURAL_LANGUAGE_QUERY"

    .line 392
    .line 393
    invoke-virtual {v0, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    .line 395
    .line 396
    const-string v8, "FEATURE_SPEECH_RECOGNITION"

    .line 397
    .line 398
    invoke-virtual {v0, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    .line 400
    .line 401
    const/4 v8, 0x7

    .line 402
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 403
    .line 404
    .line 405
    move-result-object v8

    .line 406
    const-string v9, "FEATURE_SPEECH_LOCALE_RECOGNITION"

    .line 407
    .line 408
    invoke-virtual {v0, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    .line 410
    .line 411
    const-string v9, "FEATURE_SPEAKER_DIARISATION"

    .line 412
    .line 413
    invoke-virtual {v0, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    .line 415
    .line 416
    const-string v9, "FEATURE_AUDIO_TO_TRANSLATION"

    .line 417
    .line 418
    invoke-virtual {v0, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    .line 420
    .line 421
    const/4 v9, 0x6

    .line 422
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 423
    .line 424
    .line 425
    move-result-object v9

    .line 426
    const-string v10, "FEATURE_AI_GEN_SUMMARY"

    .line 427
    .line 428
    invoke-virtual {v0, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    .line 430
    .line 431
    const-string v10, "FEATURE_AI_GEN_TRANSLATION"

    .line 432
    .line 433
    invoke-virtual {v0, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    .line 435
    .line 436
    const-string v10, "FEATURE_AI_GEN_TONE"

    .line 437
    .line 438
    invoke-virtual {v0, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    .line 440
    .line 441
    const-string v10, "FEATURE_AI_GEN_CORRECTION"

    .line 442
    .line 443
    invoke-virtual {v0, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    .line 445
    .line 446
    const-string v10, "FEATURE_AI_GEN_SUGGESTION"

    .line 447
    .line 448
    invoke-virtual {v0, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    .line 450
    .line 451
    const-string v10, "FEATURE_AI_GEN_SUGGESTION_ONDEVICE"

    .line 452
    .line 453
    invoke-virtual {v0, v10, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    .line 455
    .line 456
    const-string v10, "FEATURE_AI_GEN_SMART_COVER"

    .line 457
    .line 458
    invoke-virtual {v0, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    .line 460
    .line 461
    const-string v10, "FEATURE_AI_GEN_SMART_REPLY"

    .line 462
    .line 463
    invoke-virtual {v0, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    .line 465
    .line 466
    const-string v10, "FEATURE_AI_GEN_EMOJI_AUGMENTATION"

    .line 467
    .line 468
    invoke-virtual {v0, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    .line 470
    .line 471
    const-string v10, "FEATURE_AI_GEN_NOTES_ORGANIZATION"

    .line 472
    .line 473
    invoke-virtual {v0, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    .line 475
    .line 476
    const-string v10, "FEATURE_AI_GEN_SMART_CAPTURE"

    .line 477
    .line 478
    invoke-virtual {v0, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    .line 480
    .line 481
    const-string v10, "FEATURE_AI_GEN_GENERIC"

    .line 482
    .line 483
    invoke-virtual {v0, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    .line 485
    .line 486
    const-string v10, "FEATURE_NEURAL_TRANSLATION"

    .line 487
    .line 488
    invoke-virtual {v0, v10, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    .line 490
    .line 491
    const-string v10, "FEATURE_LANGUAGE_LIST_IDENTIFICATION"

    .line 492
    .line 493
    invoke-virtual {v0, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    .line 495
    .line 496
    const/16 v8, 0x8

    .line 497
    .line 498
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 499
    .line 500
    .line 501
    move-result-object v8

    .line 502
    const-string v10, "FEATURE_LANGUAGE_IDENTIFICATION_AND_GET_CANDIDATE"

    .line 503
    .line 504
    invoke-virtual {v0, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    .line 506
    .line 507
    const-string v10, "FEATURE_NEURAL_TRANSLATION_BY_CHUNK"

    .line 508
    .line 509
    invoke-virtual {v0, v10, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    .line 511
    .line 512
    const-string v6, "FEATURE_NEURAL_TRANSLATION_TAG_SUPPORTED"

    .line 513
    .line 514
    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    .line 516
    .line 517
    const-string v6, "FEATURE_NEURAL_TRANSLATION_CLEAR_WITH_SOURCE_ID"

    .line 518
    .line 519
    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    .line 521
    .line 522
    const-string v6, "FEATURE_SIVS_CLASSIFICATION"

    .line 523
    .line 524
    invoke-virtual {v0, v6, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    .line 526
    .line 527
    const-string v6, "FEATURE_SIVS_EXTRACTION"

    .line 528
    .line 529
    invoke-virtual {v0, v6, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    .line 531
    .line 532
    const-string v6, "FEATURE_SIVS_EXTRACTION_ONDEVICE"

    .line 533
    .line 534
    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    .line 536
    .line 537
    const-string v6, "FEATURE_SIVS_WRITING_COMPOSER"

    .line 538
    .line 539
    invoke-virtual {v0, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    .line 541
    .line 542
    const-string v6, "FEATURE_SIVS_WRITING_COMPOSER_ONDEVICE"

    .line 543
    .line 544
    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    .line 546
    .line 547
    const-string v6, "FEATURE_SIVS_FORMAT_CONVERSION"

    .line 548
    .line 549
    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    .line 551
    .line 552
    const-string v5, "FEATURE_SIVS_CONFIGURATION"

    .line 553
    .line 554
    invoke-virtual {v0, v5, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 555
    .line 556
    .line 557
    const-string v5, "FEATURE_AI_GEN_USAGE"

    .line 558
    .line 559
    invoke-virtual {v0, v5, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    .line 561
    .line 562
    const-string v5, "FEATURE_AI_LANGUAGE_PACK_CONFIGURATION_PROVIDER"

    .line 563
    .line 564
    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 565
    .line 566
    .line 567
    const-string v4, "FEATURE_WALLPAPER"

    .line 568
    .line 569
    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 570
    .line 571
    .line 572
    const-string v4, "FEATURE_DOWNLOAD"

    .line 573
    .line 574
    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 575
    .line 576
    .line 577
    const-string v4, "FEATURE_PORTRAIT"

    .line 578
    .line 579
    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 580
    .line 581
    .line 582
    const-string v4, "FEATURE_SKETCH_TO_IMAGE"

    .line 583
    .line 584
    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    .line 586
    .line 587
    const-string v4, "FEATURE_SKETCH_GUIDE_EDITING"

    .line 588
    .line 589
    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 590
    .line 591
    .line 592
    const-string v1, "FEATURE_SKETCH_GUIDE_EDITING_CROPPING_RECT"

    .line 593
    .line 594
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 595
    .line 596
    .line 597
    const-string v1, "FEATURE_C2PA"

    .line 598
    .line 599
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 600
    .line 601
    .line 602
    const-string v1, "FEATURE_GEN_STICKER"

    .line 603
    .line 604
    invoke-virtual {v0, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 605
    .line 606
    .line 607
    const-string v1, "FEATURE_IMAGE_CONVERSION"

    .line 608
    .line 609
    invoke-virtual {v0, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 610
    .line 611
    .line 612
    const/4 v1, 0x4

    .line 613
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 614
    .line 615
    .line 616
    move-result-object v1

    .line 617
    const-string v2, "FEATURE_GEN_EDIT_ON_DEVICE"

    .line 618
    .line 619
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 620
    .line 621
    .line 622
    const-string v1, "FEATURE_SKETCH_TO_IMAGE_ON_DEVICE"

    .line 623
    .line 624
    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 625
    .line 626
    .line 627
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 628
    .line 629
    .line 630
    move-result-object v0

    .line 631
    sput-object v0, Lcom/samsung/android/sdk/scs/base/feature/Feature;->sinceVersionMap:Ljava/util/Map;

    .line 632
    .line 633
    return-void
.end method

.method public static checkFeature(Landroid/content/Context;)I
    .locals 10

    .line 1
    const-string v0, "Get feature version from global settings. feature : FEATURE_TEXT_GET_DOCUMENT_CATEGORY, version : "

    .line 2
    .line 3
    const-string v1, "checkFeature(). "

    .line 4
    .line 5
    const-string v2, "ScsApi@Feature"

    .line 6
    .line 7
    invoke-static {v2}, Lcom/samsung/android/sdk/scs/base/utils/Log;->concatPrefixTag(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    const-string v4, "checkFeature() : FEATURE_TEXT_GET_DOCUMENT_CATEGORY, sdk : 4.0.14"

    .line 12
    .line 13
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    if-eqz p0, :cond_15

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    .line 20
    .line 21
    .line 22
    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    goto :goto_0

    .line 24
    :catch_0
    move-exception v4

    .line 25
    const-string v5, "ScsApi@FrameworkWrapper"

    .line 26
    .line 27
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    invoke-static {v5, v4}, Lcom/samsung/android/sdk/scs/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    move v4, v3

    .line 35
    :goto_0
    if-eqz v4, :cond_0

    .line 36
    .line 37
    const-string p0, "checkFeature(). not supported in emergency mode"

    .line 38
    .line 39
    invoke-static {v2, p0}, Lcom/samsung/android/sdk/scs/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const/16 p0, 0x8

    .line 43
    .line 44
    invoke-static {p0}, Lcom/samsung/android/sdk/scs/base/feature/FeatureStatusCache;->setStatus(I)V

    .line 45
    .line 46
    .line 47
    return p0

    .line 48
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/sdk/scs/base/feature/Feature;->isSIVSAvailableOSVersion(Landroid/content/Context;)Z

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    const-string v5, "FEATURE_TEXT_GET_DOCUMENT_CATEGORY"

    .line 53
    .line 54
    if-eqz v4, :cond_1

    .line 55
    .line 56
    sget-object v4, Lcom/samsung/android/sdk/scs/base/feature/Feature;->SUPPORTED_SIVS_FEATURES:Ljava/util/List;

    .line 57
    .line 58
    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    if-eqz v4, :cond_1

    .line 63
    .line 64
    const-string v4, "com.samsung.android.intellivoiceservice"

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_1
    sget-object v4, Lcom/samsung/android/sdk/scs/base/feature/Feature;->SUPPORTED_VISUAL_FEATURES:Ljava/util/List;

    .line 68
    .line 69
    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v4

    .line 73
    if-eqz v4, :cond_2

    .line 74
    .line 75
    const-string v4, "com.samsung.android.aicore"

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_2
    sget-object v4, Lcom/samsung/android/sdk/scs/base/feature/Feature;->SUPPORTED_VISUAL_CLOUD_FEATURES:Ljava/util/List;

    .line 79
    .line 80
    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    if-eqz v4, :cond_3

    .line 85
    .line 86
    const-string v4, "com.samsung.android.visual.cloudcore"

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_3
    const-string v4, "com.samsung.android.scs"

    .line 90
    .line 91
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 92
    .line 93
    .line 94
    move-result-object v6

    .line 95
    const/16 v7, 0x80

    .line 96
    .line 97
    invoke-virtual {v6, v4, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 98
    .line 99
    .line 100
    move-result-object v6

    .line 101
    iget-boolean v6, v6, Landroid/content/pm/ApplicationInfo;->enabled:Z

    .line 102
    .line 103
    if-nez v6, :cond_4

    .line 104
    .line 105
    new-instance p0, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    const-string v0, " has disabled."

    .line 114
    .line 115
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    invoke-static {v2}, Lcom/samsung/android/sdk/scs/base/utils/Log;->concatPrefixTag(Ljava/lang/String;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    .line 128
    .line 129
    const/4 p0, 0x2

    .line 130
    invoke-static {p0}, Lcom/samsung/android/sdk/scs/base/feature/FeatureStatusCache;->setStatus(I)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_5

    .line 131
    .line 132
    .line 133
    return p0

    .line 134
    :cond_4
    invoke-static {p0}, Lcom/samsung/android/sdk/scs/base/feature/Feature;->isSIVSAvailableOSVersion(Landroid/content/Context;)Z

    .line 135
    .line 136
    .line 137
    move-result v1

    .line 138
    if-eqz v1, :cond_5

    .line 139
    .line 140
    sget-object v1, Lcom/samsung/android/sdk/scs/base/feature/Feature;->SUPPORTED_SIVS_FEATURES:Ljava/util/List;

    .line 141
    .line 142
    invoke-interface {v1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    move-result v1

    .line 146
    if-eqz v1, :cond_5

    .line 147
    .line 148
    const-string/jumbo v1, "scs_sivs_supported_feature_info"

    .line 149
    .line 150
    .line 151
    goto :goto_3

    .line 152
    :cond_5
    sget-object v1, Lcom/samsung/android/sdk/scs/base/feature/Feature;->SUPPORTED_VISUAL_FEATURES:Ljava/util/List;

    .line 153
    .line 154
    invoke-interface {v1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    move-result v1

    .line 158
    if-nez v1, :cond_7

    .line 159
    .line 160
    sget-object v1, Lcom/samsung/android/sdk/scs/base/feature/Feature;->SUPPORTED_VISUAL_CLOUD_FEATURES:Ljava/util/List;

    .line 161
    .line 162
    invoke-interface {v1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    move-result v1

    .line 166
    if-eqz v1, :cond_6

    .line 167
    .line 168
    goto :goto_2

    .line 169
    :cond_6
    const-string/jumbo v1, "scs_core_supported_feature_info"

    .line 170
    .line 171
    .line 172
    goto :goto_3

    .line 173
    :cond_7
    :goto_2
    const-string/jumbo v1, "scs_visual_supported_feature_info"

    .line 174
    .line 175
    .line 176
    :goto_3
    new-instance v6, Ljava/lang/StringBuilder;

    .line 177
    .line 178
    const-string v8, "getFeatureVersionFromSettings(), serviceApp : "

    .line 179
    .line 180
    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    const-string v8, ", feature : FEATURE_TEXT_GET_DOCUMENT_CATEGORY, settingKey : "

    .line 187
    .line 188
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v6

    .line 198
    const-string v8, "ScsApi@FeatureHelper"

    .line 199
    .line 200
    invoke-static {v8, v6}, Lcom/samsung/android/sdk/scs/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    const/4 v6, -0x2

    .line 204
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 205
    .line 206
    .line 207
    move-result-object v9

    .line 208
    invoke-virtual {v9, v4, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 209
    .line 210
    .line 211
    move-result-object v4
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_3

    .line 212
    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 213
    .line 214
    .line 215
    move-result-object v7

    .line 216
    invoke-static {v7, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 220
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 221
    .line 222
    .line 223
    move-result v7

    .line 224
    if-eqz v7, :cond_8

    .line 225
    .line 226
    :goto_4
    move v1, v6

    .line 227
    goto :goto_7

    .line 228
    :cond_8
    :try_start_4
    invoke-static {v1}, Lcom/samsung/android/sdk/scs/base/utils/FeatureHelper;->getFeatureConfig(Ljava/lang/String;)Lcom/samsung/android/scs/ai/sdkcommon/feature/FeatureConfig;

    .line 229
    .line 230
    .line 231
    move-result-object v1

    .line 232
    iget-object v4, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 233
    .line 234
    invoke-virtual {v1}, Lcom/samsung/android/scs/ai/sdkcommon/feature/FeatureConfig;->getAppVersion()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v7

    .line 238
    invoke-virtual {v4, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 239
    .line 240
    .line 241
    move-result v4

    .line 242
    if-eqz v4, :cond_9

    .line 243
    .line 244
    goto :goto_4

    .line 245
    :cond_9
    invoke-virtual {v1}, Lcom/samsung/android/scs/ai/sdkcommon/feature/FeatureConfig;->getFeatures()Ljava/util/Map;

    .line 246
    .line 247
    .line 248
    move-result-object v1

    .line 249
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 250
    .line 251
    .line 252
    move-result-object v4

    .line 253
    invoke-interface {v1, v5, v4}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    move-result-object v1

    .line 257
    check-cast v1, Ljava/lang/Integer;

    .line 258
    .line 259
    if-eqz v1, :cond_a

    .line 260
    .line 261
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 262
    .line 263
    .line 264
    move-result v1

    .line 265
    goto :goto_5

    .line 266
    :catch_1
    move-exception v0

    .line 267
    goto :goto_6

    .line 268
    :cond_a
    move v1, v6

    .line 269
    :goto_5
    new-instance v4, Ljava/lang/StringBuilder;

    .line 270
    .line 271
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v0

    .line 281
    invoke-static {v8, v0}, Lcom/samsung/android/sdk/scs/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 282
    .line 283
    .line 284
    goto :goto_7

    .line 285
    :goto_6
    invoke-static {v8}, Lcom/samsung/android/sdk/scs/base/utils/Log;->concatPrefixTag(Ljava/lang/String;)Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v1

    .line 289
    const-string v4, "Unexpected behaviour when reading global settings"

    .line 290
    .line 291
    invoke-static {v1, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 292
    .line 293
    .line 294
    goto :goto_4

    .line 295
    :catch_2
    move-exception v0

    .line 296
    invoke-static {v8}, Lcom/samsung/android/sdk/scs/base/utils/Log;->concatPrefixTag(Ljava/lang/String;)Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v1

    .line 300
    const-string v4, "Failed to getString from global settings."

    .line 301
    .line 302
    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 303
    .line 304
    .line 305
    goto :goto_4

    .line 306
    :catch_3
    move-exception v0

    .line 307
    invoke-static {v8}, Lcom/samsung/android/sdk/scs/base/utils/Log;->concatPrefixTag(Ljava/lang/String;)Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v1

    .line 311
    const-string v4, "Failed to get package info."

    .line 312
    .line 313
    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 314
    .line 315
    .line 316
    goto :goto_4

    .line 317
    :goto_7
    const-string v0, "checkScsFeature(). retBundle == null!!!"

    .line 318
    .line 319
    if-ne v1, v6, :cond_f

    .line 320
    .line 321
    invoke-static {p0}, Lcom/samsung/android/sdk/scs/base/feature/Feature;->isSIVSAvailableOSVersion(Landroid/content/Context;)Z

    .line 322
    .line 323
    .line 324
    move-result v1

    .line 325
    if-eqz v1, :cond_b

    .line 326
    .line 327
    sget-object v1, Lcom/samsung/android/sdk/scs/base/feature/Feature;->SUPPORTED_SIVS_FEATURES:Ljava/util/List;

    .line 328
    .line 329
    invoke-interface {v1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 330
    .line 331
    .line 332
    move-result v1

    .line 333
    if-eqz v1, :cond_b

    .line 334
    .line 335
    const-string v1, "content://com.samsung.android.intellivoiceservice.feature"

    .line 336
    .line 337
    goto :goto_8

    .line 338
    :cond_b
    sget-object v1, Lcom/samsung/android/sdk/scs/base/feature/Feature;->SUPPORTED_VISUAL_FEATURES:Ljava/util/List;

    .line 339
    .line 340
    invoke-interface {v1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 341
    .line 342
    .line 343
    move-result v1

    .line 344
    if-eqz v1, :cond_c

    .line 345
    .line 346
    const-string v1, "content://com.samsung.android.aicore.feature"

    .line 347
    .line 348
    goto :goto_8

    .line 349
    :cond_c
    sget-object v1, Lcom/samsung/android/sdk/scs/base/feature/Feature;->SUPPORTED_VISUAL_CLOUD_FEATURES:Ljava/util/List;

    .line 350
    .line 351
    invoke-interface {v1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 352
    .line 353
    .line 354
    move-result v1

    .line 355
    if-eqz v1, :cond_d

    .line 356
    .line 357
    const-string v1, "content://com.samsung.android.visual.cloudcore.feature"

    .line 358
    .line 359
    goto :goto_8

    .line 360
    :cond_d
    const-string v1, "content://com.samsung.android.scs.feature"

    .line 361
    .line 362
    :goto_8
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 363
    .line 364
    .line 365
    move-result-object v1

    .line 366
    const-string v4, "getFeatureVersionFromProvider()"

    .line 367
    .line 368
    invoke-static {v8, v4}, Lcom/samsung/android/sdk/scs/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    .line 370
    .line 371
    const-string v4, "featureSupportRequest"

    .line 372
    .line 373
    const/4 v7, 0x0

    .line 374
    :try_start_5
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 375
    .line 376
    .line 377
    move-result-object p0

    .line 378
    invoke-virtual {p0, v1, v4, v5, v7}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 379
    .line 380
    .line 381
    move-result-object v7
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 382
    goto :goto_9

    .line 383
    :catch_4
    move-exception p0

    .line 384
    new-instance v1, Ljava/lang/StringBuilder;

    .line 385
    .line 386
    const-string v4, "checkScsFeature(). "

    .line 387
    .line 388
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 389
    .line 390
    .line 391
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 392
    .line 393
    .line 394
    move-result-object p0

    .line 395
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    .line 397
    .line 398
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 399
    .line 400
    .line 401
    move-result-object p0

    .line 402
    invoke-static {v8, p0}, Lcom/samsung/android/sdk/scs/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    .line 404
    .line 405
    :goto_9
    if-nez v7, :cond_e

    .line 406
    .line 407
    invoke-static {v8, v0}, Lcom/samsung/android/sdk/scs/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    .line 409
    .line 410
    move v1, v6

    .line 411
    goto :goto_a

    .line 412
    :cond_e
    const-string p0, "constVersion"

    .line 413
    .line 414
    invoke-virtual {v7, p0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 415
    .line 416
    .line 417
    move-result p0

    .line 418
    move v1, p0

    .line 419
    :cond_f
    :goto_a
    if-ne v1, v6, :cond_10

    .line 420
    .line 421
    invoke-static {v2, v0}, Lcom/samsung/android/sdk/scs/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    .line 423
    .line 424
    const/16 v3, 0x7d0

    .line 425
    .line 426
    goto :goto_d

    .line 427
    :cond_10
    if-nez v1, :cond_11

    .line 428
    .line 429
    invoke-static {v2}, Lcom/samsung/android/sdk/scs/base/utils/Log;->concatPrefixTag(Ljava/lang/String;)Ljava/lang/String;

    .line 430
    .line 431
    .line 432
    move-result-object p0

    .line 433
    const-string v0, "checkScsFeature(). FEATURE_TEXT_GET_DOCUMENT_CATEGORY is not available!!"

    .line 434
    .line 435
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    .line 437
    .line 438
    const/4 v3, 0x5

    .line 439
    goto :goto_d

    .line 440
    :cond_11
    const/4 p0, -0x1

    .line 441
    const/4 v0, 0x3

    .line 442
    if-ne v1, p0, :cond_12

    .line 443
    .line 444
    invoke-static {v2}, Lcom/samsung/android/sdk/scs/base/utils/Log;->concatPrefixTag(Ljava/lang/String;)Ljava/lang/String;

    .line 445
    .line 446
    .line 447
    move-result-object p0

    .line 448
    const-string v1, "checkScsFeature(). SCS doesn\'t know FEATURE_TEXT_GET_DOCUMENT_CATEGORY. SCS update might be required."

    .line 449
    .line 450
    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    .line 452
    .line 453
    :goto_b
    move v3, v0

    .line 454
    goto :goto_d

    .line 455
    :cond_12
    sget-object p0, Lcom/samsung/android/sdk/scs/base/feature/Feature;->sinceVersionMap:Ljava/util/Map;

    .line 456
    .line 457
    invoke-interface {p0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 458
    .line 459
    .line 460
    move-result v4

    .line 461
    if-eqz v4, :cond_13

    .line 462
    .line 463
    invoke-interface {p0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    .line 465
    .line 466
    move-result-object p0

    .line 467
    check-cast p0, Ljava/lang/Integer;

    .line 468
    .line 469
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 470
    .line 471
    .line 472
    move-result p0

    .line 473
    goto :goto_c

    .line 474
    :cond_13
    const p0, 0x7fffffff

    .line 475
    .line 476
    .line 477
    :goto_c
    if-ge v1, p0, :cond_14

    .line 478
    .line 479
    new-instance v3, Ljava/lang/StringBuilder;

    .line 480
    .line 481
    const-string v4, "checkScsFeature(). FEATURE_TEXT_GET_DOCUMENT_CATEGORY, scsVersion: "

    .line 482
    .line 483
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 484
    .line 485
    .line 486
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 487
    .line 488
    .line 489
    const-string v1, ", sinceVersion: "

    .line 490
    .line 491
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    .line 493
    .line 494
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 495
    .line 496
    .line 497
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 498
    .line 499
    .line 500
    move-result-object p0

    .line 501
    invoke-static {v2, p0}, Lcom/samsung/android/sdk/scs/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    .line 503
    .line 504
    goto :goto_b

    .line 505
    :cond_14
    :goto_d
    invoke-static {v3}, Lcom/samsung/android/sdk/scs/base/feature/FeatureStatusCache;->setStatus(I)V

    .line 506
    .line 507
    .line 508
    return v3

    .line 509
    :catch_5
    const-string p0, "dump(), "

    .line 510
    .line 511
    const-string v0, " does not exist"

    .line 512
    .line 513
    invoke-static {p0, v4, v0}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 514
    .line 515
    .line 516
    move-result-object p0

    .line 517
    invoke-static {v2}, Lcom/samsung/android/sdk/scs/base/utils/Log;->concatPrefixTag(Ljava/lang/String;)Ljava/lang/String;

    .line 518
    .line 519
    .line 520
    move-result-object v0

    .line 521
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    .line 523
    .line 524
    const/4 p0, 0x1

    .line 525
    invoke-static {p0}, Lcom/samsung/android/sdk/scs/base/feature/FeatureStatusCache;->setStatus(I)V

    .line 526
    .line 527
    .line 528
    return p0

    .line 529
    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 530
    .line 531
    const-string v1, "checkFeature(). input is null. context: "

    .line 532
    .line 533
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 534
    .line 535
    .line 536
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 537
    .line 538
    .line 539
    const-string p0, ", feature: FEATURE_TEXT_GET_DOCUMENT_CATEGORY"

    .line 540
    .line 541
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    .line 543
    .line 544
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 545
    .line 546
    .line 547
    move-result-object p0

    .line 548
    invoke-static {v2, p0}, Lcom/samsung/android/sdk/scs/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    .line 550
    .line 551
    const/16 p0, 0x12c

    .line 552
    .line 553
    return p0
.end method

.method public static isSIVSAvailableOSVersion(Landroid/content/Context;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/sdk/scs/base/feature/Feature;->isWatch(Landroid/content/Context;)Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    const/4 v2, 0x1

    .line 7
    if-nez v1, :cond_2

    .line 8
    .line 9
    invoke-static {p0}, Lcom/samsung/android/sdk/scs/base/feature/Feature;->isVst(Landroid/content/Context;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    sget p0, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    .line 17
    .line 18
    const v1, 0x24a54

    .line 19
    .line 20
    .line 21
    if-lt p0, v1, :cond_1

    .line 22
    .line 23
    move v0, v2

    .line 24
    :cond_1
    return v0

    .line 25
    :cond_2
    :goto_0
    sget p0, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    const v1, 0x249f0

    .line 28
    .line 29
    .line 30
    if-lt p0, v1, :cond_3

    .line 31
    .line 32
    move v0, v2

    .line 33
    :catch_0
    :cond_3
    return v0
.end method

.method public static isVst(Landroid/content/Context;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/sdk/scs/base/feature/Feature;->sIsVst:Ljava/lang/Boolean;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0

    .line 10
    :cond_0
    :try_start_0
    const-string v0, "android.software.xr.immersive"

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    sput-object p0, Lcom/samsung/android/sdk/scs/base/feature/Feature;->sIsVst:Ljava/lang/Boolean;

    .line 25
    .line 26
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 27
    .line 28
    .line 29
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    return p0

    .line 31
    :catch_0
    const/4 p0, 0x0

    .line 32
    return p0
.end method

.method public static isWatch(Landroid/content/Context;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/sdk/scs/base/feature/Feature;->sIsWatch:Ljava/lang/Boolean;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0

    .line 10
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    const-string v0, "android.hardware.type.watch"

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    sput-object p0, Lcom/samsung/android/sdk/scs/base/feature/Feature;->sIsWatch:Ljava/lang/Boolean;

    .line 25
    .line 26
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 27
    .line 28
    .line 29
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    return p0

    .line 31
    :catch_0
    const/4 p0, 0x0

    .line 32
    return p0
.end method
