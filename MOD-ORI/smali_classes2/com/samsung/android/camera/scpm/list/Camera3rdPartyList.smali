.class public final Lcom/samsung/android/camera/scpm/list/Camera3rdPartyList;
.super Lcom/samsung/android/camera/scpm/ScpmList;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final INSTANCE:Lcom/samsung/android/camera/scpm/list/Camera3rdPartyList;


# direct methods
.method static constructor <clinit>()V
    .locals 59

    .line 1
    new-instance v0, Lcom/samsung/android/camera/scpm/list/Camera3rdPartyList;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/samsung/android/camera/scpm/ScpmList;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/samsung/android/camera/scpm/ScpmList$PolicyType;->CAMERA_3RD_PARTY:Lcom/samsung/android/camera/scpm/ScpmList$PolicyType;

    .line 7
    .line 8
    iput-object v1, v0, Lcom/samsung/android/camera/scpm/ScpmList;->mType:Lcom/samsung/android/camera/scpm/ScpmList$PolicyType;

    .line 9
    .line 10
    const-string v1, "2024051305"

    .line 11
    .line 12
    iput-object v1, v0, Lcom/samsung/android/camera/scpm/ScpmList;->mVersion:Ljava/lang/String;

    .line 13
    .line 14
    const-string v1, "camera3rdpartylist-1857"

    .line 15
    .line 16
    iput-object v1, v0, Lcom/samsung/android/camera/scpm/ScpmList;->mConfigurationName:Ljava/lang/String;

    .line 17
    .line 18
    const-string v1, "extra"

    .line 19
    .line 20
    const-string/jumbo v2, "packageName"

    .line 21
    .line 22
    .line 23
    const-string/jumbo v3, "value"

    .line 24
    .line 25
    .line 26
    filled-new-array {v2, v3, v1}, [Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    iput-object v1, v0, Lcom/samsung/android/camera/scpm/ScpmList;->mItemNames:[Ljava/lang/String;

    .line 31
    .line 32
    const-string v1, "Y29tLmhhbmFiYW5rLmViay5jaGFubmVsLmFuZHJvaWQuaGFuYW5iYW5r"

    .line 33
    .line 34
    const-string v2, "1"

    .line 35
    .line 36
    const-string v3, "0"

    .line 37
    .line 38
    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    const-string v1, "Y29tLmludHNpZy5CQ1JMaXRl"

    .line 43
    .line 44
    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    const-string v1, "Y29tLmludHNpZy5CaXpDYXJkUmVhZGVy"

    .line 49
    .line 50
    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v6

    .line 54
    const-string v1, "Y29tLmtha2FvYmFuay5jaGFubmVs"

    .line 55
    .line 56
    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v7

    .line 60
    const-string v1, "Y29tLnNoaW5oYW4uc2Jhbmtpbmc="

    .line 61
    .line 62
    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v8

    .line 66
    const-string v1, "a3Iub3Iuc2JiYW5rLnBsdXM="

    .line 67
    .line 68
    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v9

    .line 72
    const-string v1, "bmguc21hcnQuYmFua2luZw=="

    .line 73
    .line 74
    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v10

    .line 78
    const-string v1, "Y29tLnNuYXBjaGF0LmFuZHJvaWQ="

    .line 79
    .line 80
    const-string v2, "4"

    .line 81
    .line 82
    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v11

    .line 86
    const-string v1, "Y29tLmppbnNpdC5zYWZlcGFzcw=="

    .line 87
    .line 88
    const-string v2, "16"

    .line 89
    .line 90
    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v12

    .line 94
    const-string v1, "Y29tLnppbmcuemFsbw=="

    .line 95
    .line 96
    const-string v2, "256"

    .line 97
    .line 98
    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v13

    .line 102
    const-string v1, "bmF0aXguYWkuZHJpdmUubWFwLm1vdmUuZWFybi53ZWIz"

    .line 103
    .line 104
    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v14

    .line 108
    const-string v1, "bmV0Lmxvdm9vLmFuZHJvaWQ="

    .line 109
    .line 110
    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v15

    .line 114
    const-string v1, "Y29tLmFsaWJhYmEuYW5kcm9pZC5yaW1ldA=="

    .line 115
    .line 116
    const-string v2, "260"

    .line 117
    .line 118
    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v16

    .line 122
    const-string v1, "Y29tLmFuZHJvaWQuY2hyb21l"

    .line 123
    .line 124
    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v17

    .line 128
    const-string v1, "Y29tLmNpc2NvLndlYmV4Lm1lZXRpbmdz"

    .line 129
    .line 130
    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v18

    .line 134
    const-string v1, "Y29tLmNpc2NvLnd4Mi5hbmRyb2lk"

    .line 135
    .line 136
    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v19

    .line 140
    const-string v1, "Y29tLmRpc2NvcmQ="

    .line 141
    .line 142
    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v20

    .line 146
    const-string v1, "Y29tLmZhY2Vib29rLmthdGFuYQ=="

    .line 147
    .line 148
    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v21

    .line 152
    const-string v1, "Y29tLmZhY2Vib29rLm9yY2E="

    .line 153
    .line 154
    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v22

    .line 158
    const-string v1, "Y29tLmdvb2dsZS5hbmRyb2lkLmFwcHMubWVldGluZ3M="

    .line 159
    .line 160
    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v23

    .line 164
    const-string v1, "Y29tLmdvb2dsZS5hbmRyb2lkLmFwcHMudGFjaHlvbg=="

    .line 165
    .line 166
    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v24

    .line 170
    const-string v1, "Y29tLmdvb2dsZS5hbmRyb2lkLmdt"

    .line 171
    .line 172
    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v25

    .line 176
    const-string v1, "Y29tLmdvb2dsZS5hbmRyb2lkLnRhbGs="

    .line 177
    .line 178
    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v26

    .line 182
    const-string v1, "Y29tLmltby5hbmRyb2lkLmltb2lt"

    .line 183
    .line 184
    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v27

    .line 188
    const-string v1, "Y29tLmt0Lm5hcmxl"

    .line 189
    .line 190
    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v28

    .line 194
    const-string v1, "Y29tLm1pY3Jvc29mdC50ZWFtcw=="

    .line 195
    .line 196
    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v29

    .line 200
    const-string v1, "Y29tLnNhbXN1bmcuYW5kcm9pZC5hcmRyYXdpbmc="

    .line 201
    .line 202
    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v30

    .line 206
    const-string v1, "Y29tLnNkcy5tZWV0aW5n"

    .line 207
    .line 208
    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v31

    .line 212
    const-string v1, "Y29tLnNkcy5zZHNtZWV0aW5n"

    .line 213
    .line 214
    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v32

    .line 218
    const-string v1, "Y29tLnNlYy5zdmU="

    .line 219
    .line 220
    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v33

    .line 224
    const-string v1, "Y29tLnNnaWdnbGUucHJvZHVjdGlvbg=="

    .line 225
    .line 226
    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v34

    .line 230
    const-string v1, "Y29tLnNrdC5wcm9kLmRpYWxlcg=="

    .line 231
    .line 232
    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v35

    .line 236
    const-string v1, "Y29tLnNreXBlLmluc2lkZXJz"

    .line 237
    .line 238
    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v36

    .line 242
    const-string v1, "Y29tLnNreXBlLnJhaWRlcg=="

    .line 243
    .line 244
    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v37

    .line 248
    const-string v1, "Y29tLnRlbmNlbnQubW0="

    .line 249
    .line 250
    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v38

    .line 254
    const-string v1, "Y29tLnRlbmNlbnQubW9iaWxlcXE="

    .line 255
    .line 256
    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v39

    .line 260
    const-string v1, "Y29tLnRlbmNlbnQudGlt"

    .line 261
    .line 262
    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v40

    .line 266
    const-string v1, "Y29tLnZpYmVyLnZvaXA="

    .line 267
    .line 268
    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v41

    .line 272
    const-string v1, "Y29tLndlc2Nhbi5hbG8="

    .line 273
    .line 274
    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v42

    .line 278
    const-string v1, "Y29tLndoYXRzYXBw"

    .line 279
    .line 280
    move-object/from16 v58, v0

    .line 281
    .line 282
    const-string v0, "2308"

    .line 283
    .line 284
    filled-new-array {v1, v0, v3}, [Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v43

    .line 288
    const-string v0, "aW0udGhlYm90Lm1lc3Nlbmdlcg=="

    .line 289
    .line 290
    filled-new-array {v0, v2, v3}, [Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v44

    .line 294
    const-string v0, "anAubmF2ZXIubGluZS5hbmRyb2lk"

    .line 295
    .line 296
    filled-new-array {v0, v2, v3}, [Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v45

    .line 300
    const-string v0, "b3JnLmppdHNpLm1lZXQ="

    .line 301
    .line 302
    filled-new-array {v0, v2, v3}, [Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object v46

    .line 306
    const-string v0, "b3JnLnRlbGVncmFtLm1lc3Nlbmdlcg=="

    .line 307
    .line 308
    filled-new-array {v0, v2, v3}, [Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v47

    .line 312
    const-string v0, "b3JnLnRob3VnaHRjcmltZS5zZWN1cmVzbXM="

    .line 313
    .line 314
    filled-new-array {v0, v2, v3}, [Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v48

    .line 318
    const-string v0, "dXMuem9vbS52aWRlb21lZXRpbmdz"

    .line 319
    .line 320
    filled-new-array {v0, v2, v3}, [Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v49

    .line 324
    const-string v0, "2.0B"

    .line 325
    .line 326
    const-string v1, "Y29tLmtha2FvLnRhbGs="

    .line 327
    .line 328
    const-string v2, "262"

    .line 329
    .line 330
    filled-new-array {v1, v2, v0}, [Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object v50

    .line 334
    const-string v0, "Y29tLm5pYW50aWNsYWJzLnBva2Vtb25nbw=="

    .line 335
    .line 336
    const-string v1, "264"

    .line 337
    .line 338
    filled-new-array {v0, v1, v3}, [Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object v51

    .line 342
    const-string v0, "c2cuYmlnby5saXZl"

    .line 343
    .line 344
    const-string v1, "292"

    .line 345
    .line 346
    filled-new-array {v0, v1, v3}, [Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object v52

    .line 350
    const-string v0, "Y29tLnNrdC50bWFwLmt1"

    .line 351
    .line 352
    const-string v1, "296"

    .line 353
    .line 354
    filled-new-array {v0, v1, v3}, [Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object v53

    .line 358
    const-string v0, "Y29tLnByaXNtLmxpdmU="

    .line 359
    .line 360
    const-string v1, "352"

    .line 361
    .line 362
    filled-new-array {v0, v1, v3}, [Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object v54

    .line 366
    const-string v0, "Y29tLnNvY2lhbC5tZWRpYS5icm9hZGNhc3QuYW9zcG9wLmU="

    .line 367
    .line 368
    filled-new-array {v0, v1, v3}, [Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object v55

    .line 372
    const-string v0, "Y29tLnZhdWx0bWljcm8uY2FtZXJhZmkubGl2ZQ=="

    .line 373
    .line 374
    filled-new-array {v0, v1, v3}, [Ljava/lang/String;

    .line 375
    .line 376
    .line 377
    move-result-object v56

    .line 378
    const-string v0, "a3IuY28ubm93Y29tLm1vYmlsZS5hZnJlZWNh"

    .line 379
    .line 380
    filled-new-array {v0, v1, v3}, [Ljava/lang/String;

    .line 381
    .line 382
    .line 383
    move-result-object v57

    .line 384
    filled-new-array/range {v4 .. v57}, [[Ljava/lang/String;

    .line 385
    .line 386
    .line 387
    move-result-object v0

    .line 388
    move-object/from16 v1, v58

    .line 389
    .line 390
    invoke-virtual {v1, v0}, Lcom/samsung/android/camera/scpm/ScpmList;->setPackageList([[Ljava/lang/String;)V

    .line 391
    .line 392
    .line 393
    sput-object v1, Lcom/samsung/android/camera/scpm/list/Camera3rdPartyList;->INSTANCE:Lcom/samsung/android/camera/scpm/list/Camera3rdPartyList;

    .line 394
    .line 395
    return-void
.end method
