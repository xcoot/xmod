.class public abstract Lcom/android/server/usb/descriptors/report/UsbStrings;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final sACControlInterfaceNames:Ljava/util/HashMap;

.field public static final sACStreamingInterfaceNames:Ljava/util/HashMap;

.field public static final sAudioEncodingNames:Ljava/util/HashMap;

.field public static final sAudioSubclassNames:Ljava/util/HashMap;

.field public static final sClassNames:Ljava/util/HashMap;

.field public static final sDescriptorNames:Ljava/util/HashMap;

.field public static final sFormatNames:Ljava/util/HashMap;

.field public static final sTerminalNames:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/server/usb/descriptors/report/UsbStrings;->sDescriptorNames:Ljava/util/HashMap;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    const-string v3, "Device"

    .line 14
    .line 15
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    sget-object v0, Lcom/android/server/usb/descriptors/report/UsbStrings;->sDescriptorNames:Ljava/util/HashMap;

    .line 19
    .line 20
    const/4 v2, 0x2

    .line 21
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    const-string v5, "Config"

    .line 26
    .line 27
    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    sget-object v0, Lcom/android/server/usb/descriptors/report/UsbStrings;->sDescriptorNames:Ljava/util/HashMap;

    .line 31
    .line 32
    const/4 v4, 0x3

    .line 33
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    const-string v6, "String"

    .line 38
    .line 39
    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    sget-object v0, Lcom/android/server/usb/descriptors/report/UsbStrings;->sDescriptorNames:Ljava/util/HashMap;

    .line 43
    .line 44
    const/4 v5, 0x4

    .line 45
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 46
    .line 47
    .line 48
    move-result-object v6

    .line 49
    const-string v7, "Interface"

    .line 50
    .line 51
    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    sget-object v0, Lcom/android/server/usb/descriptors/report/UsbStrings;->sDescriptorNames:Ljava/util/HashMap;

    .line 55
    .line 56
    const/4 v6, 0x5

    .line 57
    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 58
    .line 59
    .line 60
    move-result-object v7

    .line 61
    const-string v8, "Endpoint"

    .line 62
    .line 63
    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    sget-object v0, Lcom/android/server/usb/descriptors/report/UsbStrings;->sDescriptorNames:Ljava/util/HashMap;

    .line 67
    .line 68
    const/16 v7, 0xf

    .line 69
    .line 70
    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 71
    .line 72
    .line 73
    move-result-object v8

    .line 74
    const-string v9, "BOS (whatever that means)"

    .line 75
    .line 76
    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    sget-object v0, Lcom/android/server/usb/descriptors/report/UsbStrings;->sDescriptorNames:Ljava/util/HashMap;

    .line 80
    .line 81
    const/16 v8, 0xb

    .line 82
    .line 83
    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 84
    .line 85
    .line 86
    move-result-object v9

    .line 87
    const-string v10, "Interface Association"

    .line 88
    .line 89
    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    sget-object v0, Lcom/android/server/usb/descriptors/report/UsbStrings;->sDescriptorNames:Ljava/util/HashMap;

    .line 93
    .line 94
    const/16 v9, 0x10

    .line 95
    .line 96
    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 97
    .line 98
    .line 99
    move-result-object v10

    .line 100
    const-string v11, "Capability"

    .line 101
    .line 102
    invoke-virtual {v0, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    sget-object v0, Lcom/android/server/usb/descriptors/report/UsbStrings;->sDescriptorNames:Ljava/util/HashMap;

    .line 106
    .line 107
    const/16 v10, 0x21

    .line 108
    .line 109
    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 110
    .line 111
    .line 112
    move-result-object v10

    .line 113
    const-string v11, "HID"

    .line 114
    .line 115
    invoke-virtual {v0, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    sget-object v0, Lcom/android/server/usb/descriptors/report/UsbStrings;->sDescriptorNames:Ljava/util/HashMap;

    .line 119
    .line 120
    const/16 v10, 0x22

    .line 121
    .line 122
    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 123
    .line 124
    .line 125
    move-result-object v10

    .line 126
    const-string v12, "Report"

    .line 127
    .line 128
    invoke-virtual {v0, v10, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    sget-object v0, Lcom/android/server/usb/descriptors/report/UsbStrings;->sDescriptorNames:Ljava/util/HashMap;

    .line 132
    .line 133
    const/16 v10, 0x23

    .line 134
    .line 135
    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 136
    .line 137
    .line 138
    move-result-object v10

    .line 139
    const-string v12, "Physical"

    .line 140
    .line 141
    invoke-virtual {v0, v10, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    sget-object v0, Lcom/android/server/usb/descriptors/report/UsbStrings;->sDescriptorNames:Ljava/util/HashMap;

    .line 145
    .line 146
    const/16 v10, 0x24

    .line 147
    .line 148
    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 149
    .line 150
    .line 151
    move-result-object v10

    .line 152
    const-string v13, "Class-specific Interface"

    .line 153
    .line 154
    invoke-virtual {v0, v10, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    sget-object v0, Lcom/android/server/usb/descriptors/report/UsbStrings;->sDescriptorNames:Ljava/util/HashMap;

    .line 158
    .line 159
    const/16 v10, 0x25

    .line 160
    .line 161
    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 162
    .line 163
    .line 164
    move-result-object v10

    .line 165
    const-string v13, "Class-specific Endpoint"

    .line 166
    .line 167
    invoke-virtual {v0, v10, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    sget-object v0, Lcom/android/server/usb/descriptors/report/UsbStrings;->sDescriptorNames:Ljava/util/HashMap;

    .line 171
    .line 172
    const/16 v10, 0x29

    .line 173
    .line 174
    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 175
    .line 176
    .line 177
    move-result-object v10

    .line 178
    const-string v13, "Hub"

    .line 179
    .line 180
    invoke-virtual {v0, v10, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    sget-object v0, Lcom/android/server/usb/descriptors/report/UsbStrings;->sDescriptorNames:Ljava/util/HashMap;

    .line 184
    .line 185
    const/16 v10, 0x2a

    .line 186
    .line 187
    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 188
    .line 189
    .line 190
    move-result-object v10

    .line 191
    const-string v14, "Superspeed Hub"

    .line 192
    .line 193
    invoke-virtual {v0, v10, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    sget-object v0, Lcom/android/server/usb/descriptors/report/UsbStrings;->sDescriptorNames:Ljava/util/HashMap;

    .line 197
    .line 198
    const/16 v10, 0x30

    .line 199
    .line 200
    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 201
    .line 202
    .line 203
    move-result-object v10

    .line 204
    const-string v14, "Endpoint Companion"

    .line 205
    .line 206
    invoke-virtual {v0, v10, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    new-instance v0, Ljava/util/HashMap;

    .line 210
    .line 211
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 212
    .line 213
    .line 214
    sput-object v0, Lcom/android/server/usb/descriptors/report/UsbStrings;->sACControlInterfaceNames:Ljava/util/HashMap;

    .line 215
    .line 216
    const/4 v10, 0x0

    .line 217
    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 218
    .line 219
    .line 220
    move-result-object v14

    .line 221
    const-string v15, "Undefined"

    .line 222
    .line 223
    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    sget-object v0, Lcom/android/server/usb/descriptors/report/UsbStrings;->sACControlInterfaceNames:Ljava/util/HashMap;

    .line 227
    .line 228
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 229
    .line 230
    .line 231
    move-result-object v14

    .line 232
    const-string v9, "Header"

    .line 233
    .line 234
    invoke-virtual {v0, v14, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    sget-object v0, Lcom/android/server/usb/descriptors/report/UsbStrings;->sACControlInterfaceNames:Ljava/util/HashMap;

    .line 238
    .line 239
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 240
    .line 241
    .line 242
    move-result-object v9

    .line 243
    const-string v14, "Input Terminal"

    .line 244
    .line 245
    invoke-virtual {v0, v9, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    sget-object v0, Lcom/android/server/usb/descriptors/report/UsbStrings;->sACControlInterfaceNames:Ljava/util/HashMap;

    .line 249
    .line 250
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 251
    .line 252
    .line 253
    move-result-object v9

    .line 254
    const-string v14, "Output Terminal"

    .line 255
    .line 256
    invoke-virtual {v0, v9, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    sget-object v0, Lcom/android/server/usb/descriptors/report/UsbStrings;->sACControlInterfaceNames:Ljava/util/HashMap;

    .line 260
    .line 261
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 262
    .line 263
    .line 264
    move-result-object v9

    .line 265
    const-string v14, "Mixer Unit"

    .line 266
    .line 267
    invoke-virtual {v0, v9, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    sget-object v0, Lcom/android/server/usb/descriptors/report/UsbStrings;->sACControlInterfaceNames:Ljava/util/HashMap;

    .line 271
    .line 272
    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 273
    .line 274
    .line 275
    move-result-object v9

    .line 276
    const-string v14, "Selector Unit"

    .line 277
    .line 278
    invoke-virtual {v0, v9, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    sget-object v0, Lcom/android/server/usb/descriptors/report/UsbStrings;->sACControlInterfaceNames:Ljava/util/HashMap;

    .line 282
    .line 283
    const/4 v9, 0x6

    .line 284
    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 285
    .line 286
    .line 287
    move-result-object v14

    .line 288
    const-string v5, "Feature Unit"

    .line 289
    .line 290
    invoke-virtual {v0, v14, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    .line 292
    .line 293
    sget-object v0, Lcom/android/server/usb/descriptors/report/UsbStrings;->sACControlInterfaceNames:Ljava/util/HashMap;

    .line 294
    .line 295
    const/4 v5, 0x7

    .line 296
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 297
    .line 298
    .line 299
    move-result-object v14

    .line 300
    const-string v7, "Processing Unit"

    .line 301
    .line 302
    invoke-virtual {v0, v14, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    .line 304
    .line 305
    sget-object v0, Lcom/android/server/usb/descriptors/report/UsbStrings;->sACControlInterfaceNames:Ljava/util/HashMap;

    .line 306
    .line 307
    const/16 v7, 0x8

    .line 308
    .line 309
    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 310
    .line 311
    .line 312
    move-result-object v14

    .line 313
    const-string v7, "Extension Unit"

    .line 314
    .line 315
    invoke-virtual {v0, v14, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    .line 317
    .line 318
    sget-object v0, Lcom/android/server/usb/descriptors/report/UsbStrings;->sACControlInterfaceNames:Ljava/util/HashMap;

    .line 319
    .line 320
    const/16 v7, 0xa

    .line 321
    .line 322
    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 323
    .line 324
    .line 325
    move-result-object v14

    .line 326
    const-string v7, "Clock Source"

    .line 327
    .line 328
    invoke-virtual {v0, v14, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    .line 330
    .line 331
    sget-object v0, Lcom/android/server/usb/descriptors/report/UsbStrings;->sACControlInterfaceNames:Ljava/util/HashMap;

    .line 332
    .line 333
    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 334
    .line 335
    .line 336
    move-result-object v7

    .line 337
    const-string v14, "Clock Selector"

    .line 338
    .line 339
    invoke-virtual {v0, v7, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    .line 341
    .line 342
    sget-object v0, Lcom/android/server/usb/descriptors/report/UsbStrings;->sACControlInterfaceNames:Ljava/util/HashMap;

    .line 343
    .line 344
    const/16 v7, 0xc

    .line 345
    .line 346
    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 347
    .line 348
    .line 349
    move-result-object v7

    .line 350
    const-string v14, "Clock Multiplier"

    .line 351
    .line 352
    invoke-virtual {v0, v7, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    .line 354
    .line 355
    sget-object v0, Lcom/android/server/usb/descriptors/report/UsbStrings;->sACControlInterfaceNames:Ljava/util/HashMap;

    .line 356
    .line 357
    const/16 v7, 0xd

    .line 358
    .line 359
    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 360
    .line 361
    .line 362
    move-result-object v14

    .line 363
    const-string v7, "Sample Rate Converter"

    .line 364
    .line 365
    invoke-virtual {v0, v14, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    .line 367
    .line 368
    new-instance v0, Ljava/util/HashMap;

    .line 369
    .line 370
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 371
    .line 372
    .line 373
    sput-object v0, Lcom/android/server/usb/descriptors/report/UsbStrings;->sACStreamingInterfaceNames:Ljava/util/HashMap;

    .line 374
    .line 375
    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 376
    .line 377
    .line 378
    move-result-object v7

    .line 379
    invoke-virtual {v0, v7, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    .line 381
    .line 382
    sget-object v0, Lcom/android/server/usb/descriptors/report/UsbStrings;->sACStreamingInterfaceNames:Ljava/util/HashMap;

    .line 383
    .line 384
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 385
    .line 386
    .line 387
    move-result-object v7

    .line 388
    const-string v14, "General"

    .line 389
    .line 390
    invoke-virtual {v0, v7, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    .line 392
    .line 393
    sget-object v0, Lcom/android/server/usb/descriptors/report/UsbStrings;->sACStreamingInterfaceNames:Ljava/util/HashMap;

    .line 394
    .line 395
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 396
    .line 397
    .line 398
    move-result-object v7

    .line 399
    const-string v14, "Format Type"

    .line 400
    .line 401
    invoke-virtual {v0, v7, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    .line 403
    .line 404
    sget-object v0, Lcom/android/server/usb/descriptors/report/UsbStrings;->sACStreamingInterfaceNames:Ljava/util/HashMap;

    .line 405
    .line 406
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 407
    .line 408
    .line 409
    move-result-object v7

    .line 410
    const-string v14, "Format Specific"

    .line 411
    .line 412
    invoke-virtual {v0, v7, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    .line 414
    .line 415
    new-instance v0, Ljava/util/HashMap;

    .line 416
    .line 417
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 418
    .line 419
    .line 420
    sput-object v0, Lcom/android/server/usb/descriptors/report/UsbStrings;->sClassNames:Ljava/util/HashMap;

    .line 421
    .line 422
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 423
    .line 424
    .line 425
    move-result-object v7

    .line 426
    invoke-virtual {v0, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    .line 428
    .line 429
    sget-object v0, Lcom/android/server/usb/descriptors/report/UsbStrings;->sClassNames:Ljava/util/HashMap;

    .line 430
    .line 431
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 432
    .line 433
    .line 434
    move-result-object v3

    .line 435
    const-string v7, "Audio"

    .line 436
    .line 437
    invoke-virtual {v0, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    .line 439
    .line 440
    sget-object v0, Lcom/android/server/usb/descriptors/report/UsbStrings;->sClassNames:Ljava/util/HashMap;

    .line 441
    .line 442
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 443
    .line 444
    .line 445
    move-result-object v3

    .line 446
    const-string v7, "Communications"

    .line 447
    .line 448
    invoke-virtual {v0, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    .line 450
    .line 451
    sget-object v0, Lcom/android/server/usb/descriptors/report/UsbStrings;->sClassNames:Ljava/util/HashMap;

    .line 452
    .line 453
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 454
    .line 455
    .line 456
    move-result-object v3

    .line 457
    invoke-virtual {v0, v3, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    .line 459
    .line 460
    sget-object v0, Lcom/android/server/usb/descriptors/report/UsbStrings;->sClassNames:Ljava/util/HashMap;

    .line 461
    .line 462
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 463
    .line 464
    .line 465
    move-result-object v3

    .line 466
    invoke-virtual {v0, v3, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    .line 468
    .line 469
    sget-object v0, Lcom/android/server/usb/descriptors/report/UsbStrings;->sClassNames:Ljava/util/HashMap;

    .line 470
    .line 471
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 472
    .line 473
    .line 474
    move-result-object v3

    .line 475
    const-string v7, "Image"

    .line 476
    .line 477
    invoke-virtual {v0, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    .line 479
    .line 480
    sget-object v0, Lcom/android/server/usb/descriptors/report/UsbStrings;->sClassNames:Ljava/util/HashMap;

    .line 481
    .line 482
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 483
    .line 484
    .line 485
    move-result-object v3

    .line 486
    const-string v5, "Printer"

    .line 487
    .line 488
    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    .line 490
    .line 491
    sget-object v0, Lcom/android/server/usb/descriptors/report/UsbStrings;->sClassNames:Ljava/util/HashMap;

    .line 492
    .line 493
    const/16 v3, 0x8

    .line 494
    .line 495
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 496
    .line 497
    .line 498
    move-result-object v3

    .line 499
    const-string v5, "Storage"

    .line 500
    .line 501
    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    .line 503
    .line 504
    sget-object v0, Lcom/android/server/usb/descriptors/report/UsbStrings;->sClassNames:Ljava/util/HashMap;

    .line 505
    .line 506
    const/16 v3, 0x9

    .line 507
    .line 508
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 509
    .line 510
    .line 511
    move-result-object v3

    .line 512
    invoke-virtual {v0, v3, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    .line 514
    .line 515
    sget-object v0, Lcom/android/server/usb/descriptors/report/UsbStrings;->sClassNames:Ljava/util/HashMap;

    .line 516
    .line 517
    const/16 v3, 0xa

    .line 518
    .line 519
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 520
    .line 521
    .line 522
    move-result-object v3

    .line 523
    const-string v5, "CDC Control"

    .line 524
    .line 525
    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    .line 527
    .line 528
    sget-object v0, Lcom/android/server/usb/descriptors/report/UsbStrings;->sClassNames:Ljava/util/HashMap;

    .line 529
    .line 530
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 531
    .line 532
    .line 533
    move-result-object v3

    .line 534
    const-string v5, "Smart Card"

    .line 535
    .line 536
    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    .line 538
    .line 539
    sget-object v0, Lcom/android/server/usb/descriptors/report/UsbStrings;->sClassNames:Ljava/util/HashMap;

    .line 540
    .line 541
    const/16 v3, 0xd

    .line 542
    .line 543
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 544
    .line 545
    .line 546
    move-result-object v3

    .line 547
    const-string v5, "Security"

    .line 548
    .line 549
    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    .line 551
    .line 552
    sget-object v0, Lcom/android/server/usb/descriptors/report/UsbStrings;->sClassNames:Ljava/util/HashMap;

    .line 553
    .line 554
    const/16 v3, 0xe

    .line 555
    .line 556
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 557
    .line 558
    .line 559
    move-result-object v3

    .line 560
    const-string v5, "Video"

    .line 561
    .line 562
    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    .line 564
    .line 565
    sget-object v0, Lcom/android/server/usb/descriptors/report/UsbStrings;->sClassNames:Ljava/util/HashMap;

    .line 566
    .line 567
    const/16 v3, 0xf

    .line 568
    .line 569
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 570
    .line 571
    .line 572
    move-result-object v3

    .line 573
    const-string v5, "Healthcare"

    .line 574
    .line 575
    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 576
    .line 577
    .line 578
    sget-object v0, Lcom/android/server/usb/descriptors/report/UsbStrings;->sClassNames:Ljava/util/HashMap;

    .line 579
    .line 580
    const/16 v3, 0x10

    .line 581
    .line 582
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 583
    .line 584
    .line 585
    move-result-object v3

    .line 586
    const-string v5, "Audio/Video"

    .line 587
    .line 588
    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 589
    .line 590
    .line 591
    sget-object v0, Lcom/android/server/usb/descriptors/report/UsbStrings;->sClassNames:Ljava/util/HashMap;

    .line 592
    .line 593
    const/16 v3, 0x11

    .line 594
    .line 595
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 596
    .line 597
    .line 598
    move-result-object v3

    .line 599
    const-string v5, "Billboard"

    .line 600
    .line 601
    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    .line 603
    .line 604
    sget-object v0, Lcom/android/server/usb/descriptors/report/UsbStrings;->sClassNames:Ljava/util/HashMap;

    .line 605
    .line 606
    const/16 v3, 0x12

    .line 607
    .line 608
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 609
    .line 610
    .line 611
    move-result-object v3

    .line 612
    const-string v5, "Type C Bridge"

    .line 613
    .line 614
    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    .line 616
    .line 617
    sget-object v0, Lcom/android/server/usb/descriptors/report/UsbStrings;->sClassNames:Ljava/util/HashMap;

    .line 618
    .line 619
    const/16 v3, 0xdc

    .line 620
    .line 621
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 622
    .line 623
    .line 624
    move-result-object v3

    .line 625
    const-string v5, "Diagnostic"

    .line 626
    .line 627
    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    .line 629
    .line 630
    sget-object v0, Lcom/android/server/usb/descriptors/report/UsbStrings;->sClassNames:Ljava/util/HashMap;

    .line 631
    .line 632
    const/16 v3, 0xe0

    .line 633
    .line 634
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 635
    .line 636
    .line 637
    move-result-object v3

    .line 638
    const-string v5, "Wireless"

    .line 639
    .line 640
    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 641
    .line 642
    .line 643
    sget-object v0, Lcom/android/server/usb/descriptors/report/UsbStrings;->sClassNames:Ljava/util/HashMap;

    .line 644
    .line 645
    const/16 v3, 0xef

    .line 646
    .line 647
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 648
    .line 649
    .line 650
    move-result-object v3

    .line 651
    const-string v5, "Misc"

    .line 652
    .line 653
    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 654
    .line 655
    .line 656
    sget-object v0, Lcom/android/server/usb/descriptors/report/UsbStrings;->sClassNames:Ljava/util/HashMap;

    .line 657
    .line 658
    const/16 v3, 0xfe

    .line 659
    .line 660
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 661
    .line 662
    .line 663
    move-result-object v3

    .line 664
    const-string v5, "Application Specific"

    .line 665
    .line 666
    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 667
    .line 668
    .line 669
    sget-object v0, Lcom/android/server/usb/descriptors/report/UsbStrings;->sClassNames:Ljava/util/HashMap;

    .line 670
    .line 671
    const/16 v3, 0xff

    .line 672
    .line 673
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 674
    .line 675
    .line 676
    move-result-object v3

    .line 677
    const-string v5, "Vendor Specific"

    .line 678
    .line 679
    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 680
    .line 681
    .line 682
    new-instance v0, Ljava/util/HashMap;

    .line 683
    .line 684
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 685
    .line 686
    .line 687
    sput-object v0, Lcom/android/server/usb/descriptors/report/UsbStrings;->sAudioSubclassNames:Ljava/util/HashMap;

    .line 688
    .line 689
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 690
    .line 691
    .line 692
    move-result-object v3

    .line 693
    const-string v5, "Undefinded"

    .line 694
    .line 695
    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 696
    .line 697
    .line 698
    sget-object v0, Lcom/android/server/usb/descriptors/report/UsbStrings;->sAudioSubclassNames:Ljava/util/HashMap;

    .line 699
    .line 700
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 701
    .line 702
    .line 703
    move-result-object v3

    .line 704
    const-string v5, "Audio Control"

    .line 705
    .line 706
    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 707
    .line 708
    .line 709
    sget-object v0, Lcom/android/server/usb/descriptors/report/UsbStrings;->sAudioSubclassNames:Ljava/util/HashMap;

    .line 710
    .line 711
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 712
    .line 713
    .line 714
    move-result-object v3

    .line 715
    const-string v5, "Audio Streaming"

    .line 716
    .line 717
    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 718
    .line 719
    .line 720
    sget-object v0, Lcom/android/server/usb/descriptors/report/UsbStrings;->sAudioSubclassNames:Ljava/util/HashMap;

    .line 721
    .line 722
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 723
    .line 724
    .line 725
    move-result-object v3

    .line 726
    const-string v5, "MIDI Streaming"

    .line 727
    .line 728
    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 729
    .line 730
    .line 731
    new-instance v0, Ljava/util/HashMap;

    .line 732
    .line 733
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 734
    .line 735
    .line 736
    sput-object v0, Lcom/android/server/usb/descriptors/report/UsbStrings;->sAudioEncodingNames:Ljava/util/HashMap;

    .line 737
    .line 738
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 739
    .line 740
    .line 741
    move-result-object v3

    .line 742
    const-string v5, "Format I Undefined"

    .line 743
    .line 744
    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 745
    .line 746
    .line 747
    sget-object v0, Lcom/android/server/usb/descriptors/report/UsbStrings;->sAudioEncodingNames:Ljava/util/HashMap;

    .line 748
    .line 749
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 750
    .line 751
    .line 752
    move-result-object v3

    .line 753
    const-string v5, "Format I PCM"

    .line 754
    .line 755
    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 756
    .line 757
    .line 758
    sget-object v0, Lcom/android/server/usb/descriptors/report/UsbStrings;->sAudioEncodingNames:Ljava/util/HashMap;

    .line 759
    .line 760
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 761
    .line 762
    .line 763
    move-result-object v3

    .line 764
    const-string v5, "Format I PCM8"

    .line 765
    .line 766
    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 767
    .line 768
    .line 769
    sget-object v0, Lcom/android/server/usb/descriptors/report/UsbStrings;->sAudioEncodingNames:Ljava/util/HashMap;

    .line 770
    .line 771
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 772
    .line 773
    .line 774
    move-result-object v3

    .line 775
    const-string v5, "Format I FLOAT"

    .line 776
    .line 777
    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 778
    .line 779
    .line 780
    sget-object v0, Lcom/android/server/usb/descriptors/report/UsbStrings;->sAudioEncodingNames:Ljava/util/HashMap;

    .line 781
    .line 782
    const/4 v3, 0x4

    .line 783
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 784
    .line 785
    .line 786
    move-result-object v5

    .line 787
    const-string v3, "Format I ALAW"

    .line 788
    .line 789
    invoke-virtual {v0, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 790
    .line 791
    .line 792
    sget-object v0, Lcom/android/server/usb/descriptors/report/UsbStrings;->sAudioEncodingNames:Ljava/util/HashMap;

    .line 793
    .line 794
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 795
    .line 796
    .line 797
    move-result-object v3

    .line 798
    const-string v5, "Format I MuLAW"

    .line 799
    .line 800
    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 801
    .line 802
    .line 803
    sget-object v0, Lcom/android/server/usb/descriptors/report/UsbStrings;->sAudioEncodingNames:Ljava/util/HashMap;

    .line 804
    .line 805
    const/16 v3, 0x1000

    .line 806
    .line 807
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 808
    .line 809
    .line 810
    move-result-object v3

    .line 811
    const-string v5, "FORMAT_II Undefined"

    .line 812
    .line 813
    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 814
    .line 815
    .line 816
    sget-object v0, Lcom/android/server/usb/descriptors/report/UsbStrings;->sAudioEncodingNames:Ljava/util/HashMap;

    .line 817
    .line 818
    const/16 v3, 0x1001

    .line 819
    .line 820
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 821
    .line 822
    .line 823
    move-result-object v3

    .line 824
    const-string v5, "FORMAT_II MPEG"

    .line 825
    .line 826
    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 827
    .line 828
    .line 829
    sget-object v0, Lcom/android/server/usb/descriptors/report/UsbStrings;->sAudioEncodingNames:Ljava/util/HashMap;

    .line 830
    .line 831
    const/16 v3, 0x1002

    .line 832
    .line 833
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 834
    .line 835
    .line 836
    move-result-object v3

    .line 837
    const-string v5, "FORMAT_II AC3"

    .line 838
    .line 839
    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 840
    .line 841
    .line 842
    sget-object v0, Lcom/android/server/usb/descriptors/report/UsbStrings;->sAudioEncodingNames:Ljava/util/HashMap;

    .line 843
    .line 844
    const/16 v3, 0x2000

    .line 845
    .line 846
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 847
    .line 848
    .line 849
    move-result-object v3

    .line 850
    const-string v5, "FORMAT_III Undefined"

    .line 851
    .line 852
    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 853
    .line 854
    .line 855
    sget-object v0, Lcom/android/server/usb/descriptors/report/UsbStrings;->sAudioEncodingNames:Ljava/util/HashMap;

    .line 856
    .line 857
    const/16 v3, 0x2001

    .line 858
    .line 859
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 860
    .line 861
    .line 862
    move-result-object v3

    .line 863
    const-string v5, "FORMAT_III IEC1937 AC3"

    .line 864
    .line 865
    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 866
    .line 867
    .line 868
    sget-object v0, Lcom/android/server/usb/descriptors/report/UsbStrings;->sAudioEncodingNames:Ljava/util/HashMap;

    .line 869
    .line 870
    const/16 v3, 0x2002

    .line 871
    .line 872
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 873
    .line 874
    .line 875
    move-result-object v3

    .line 876
    const-string v5, "FORMAT_III MPEG1 Layer 1"

    .line 877
    .line 878
    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 879
    .line 880
    .line 881
    sget-object v0, Lcom/android/server/usb/descriptors/report/UsbStrings;->sAudioEncodingNames:Ljava/util/HashMap;

    .line 882
    .line 883
    const/16 v3, 0x2003

    .line 884
    .line 885
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 886
    .line 887
    .line 888
    move-result-object v3

    .line 889
    const-string v5, "FORMAT_III MPEG1 Layer 2"

    .line 890
    .line 891
    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 892
    .line 893
    .line 894
    sget-object v0, Lcom/android/server/usb/descriptors/report/UsbStrings;->sAudioEncodingNames:Ljava/util/HashMap;

    .line 895
    .line 896
    const/16 v3, 0x2004

    .line 897
    .line 898
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 899
    .line 900
    .line 901
    move-result-object v3

    .line 902
    const-string v5, "FORMAT_III MPEG2 EXT"

    .line 903
    .line 904
    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 905
    .line 906
    .line 907
    sget-object v0, Lcom/android/server/usb/descriptors/report/UsbStrings;->sAudioEncodingNames:Ljava/util/HashMap;

    .line 908
    .line 909
    const/16 v3, 0x2005

    .line 910
    .line 911
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 912
    .line 913
    .line 914
    move-result-object v3

    .line 915
    const-string v5, "FORMAT_III MPEG2 Layer1LS"

    .line 916
    .line 917
    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 918
    .line 919
    .line 920
    new-instance v0, Ljava/util/HashMap;

    .line 921
    .line 922
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 923
    .line 924
    .line 925
    sput-object v0, Lcom/android/server/usb/descriptors/report/UsbStrings;->sTerminalNames:Ljava/util/HashMap;

    .line 926
    .line 927
    const/16 v3, 0x101

    .line 928
    .line 929
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 930
    .line 931
    .line 932
    move-result-object v3

    .line 933
    const-string v5, "USB Streaming"

    .line 934
    .line 935
    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 936
    .line 937
    .line 938
    sget-object v0, Lcom/android/server/usb/descriptors/report/UsbStrings;->sTerminalNames:Ljava/util/HashMap;

    .line 939
    .line 940
    const/16 v3, 0x200

    .line 941
    .line 942
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 943
    .line 944
    .line 945
    move-result-object v3

    .line 946
    invoke-virtual {v0, v3, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 947
    .line 948
    .line 949
    sget-object v0, Lcom/android/server/usb/descriptors/report/UsbStrings;->sTerminalNames:Ljava/util/HashMap;

    .line 950
    .line 951
    const/16 v3, 0x201

    .line 952
    .line 953
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 954
    .line 955
    .line 956
    move-result-object v3

    .line 957
    const-string v5, "Microphone"

    .line 958
    .line 959
    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 960
    .line 961
    .line 962
    sget-object v0, Lcom/android/server/usb/descriptors/report/UsbStrings;->sTerminalNames:Ljava/util/HashMap;

    .line 963
    .line 964
    const/16 v3, 0x202

    .line 965
    .line 966
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 967
    .line 968
    .line 969
    move-result-object v3

    .line 970
    const-string v5, "Desktop Microphone"

    .line 971
    .line 972
    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 973
    .line 974
    .line 975
    sget-object v0, Lcom/android/server/usb/descriptors/report/UsbStrings;->sTerminalNames:Ljava/util/HashMap;

    .line 976
    .line 977
    const/16 v3, 0x203

    .line 978
    .line 979
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 980
    .line 981
    .line 982
    move-result-object v3

    .line 983
    const-string v5, "Personal (headset) Microphone"

    .line 984
    .line 985
    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 986
    .line 987
    .line 988
    sget-object v0, Lcom/android/server/usb/descriptors/report/UsbStrings;->sTerminalNames:Ljava/util/HashMap;

    .line 989
    .line 990
    const/16 v3, 0x204

    .line 991
    .line 992
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 993
    .line 994
    .line 995
    move-result-object v3

    .line 996
    const-string v5, "Omni Microphone"

    .line 997
    .line 998
    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 999
    .line 1000
    .line 1001
    sget-object v0, Lcom/android/server/usb/descriptors/report/UsbStrings;->sTerminalNames:Ljava/util/HashMap;

    .line 1002
    .line 1003
    const/16 v3, 0x205

    .line 1004
    .line 1005
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1006
    .line 1007
    .line 1008
    move-result-object v3

    .line 1009
    const-string v5, "Microphone Array"

    .line 1010
    .line 1011
    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1012
    .line 1013
    .line 1014
    sget-object v0, Lcom/android/server/usb/descriptors/report/UsbStrings;->sTerminalNames:Ljava/util/HashMap;

    .line 1015
    .line 1016
    const/16 v3, 0x206

    .line 1017
    .line 1018
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1019
    .line 1020
    .line 1021
    move-result-object v3

    .line 1022
    const-string v5, "Proecessing Microphone Array"

    .line 1023
    .line 1024
    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1025
    .line 1026
    .line 1027
    sget-object v0, Lcom/android/server/usb/descriptors/report/UsbStrings;->sTerminalNames:Ljava/util/HashMap;

    .line 1028
    .line 1029
    const/16 v3, 0x300

    .line 1030
    .line 1031
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1032
    .line 1033
    .line 1034
    move-result-object v3

    .line 1035
    invoke-virtual {v0, v3, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1036
    .line 1037
    .line 1038
    sget-object v0, Lcom/android/server/usb/descriptors/report/UsbStrings;->sTerminalNames:Ljava/util/HashMap;

    .line 1039
    .line 1040
    const/16 v3, 0x301

    .line 1041
    .line 1042
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1043
    .line 1044
    .line 1045
    move-result-object v3

    .line 1046
    const-string v5, "Speaker"

    .line 1047
    .line 1048
    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1049
    .line 1050
    .line 1051
    sget-object v0, Lcom/android/server/usb/descriptors/report/UsbStrings;->sTerminalNames:Ljava/util/HashMap;

    .line 1052
    .line 1053
    const/16 v3, 0x302

    .line 1054
    .line 1055
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1056
    .line 1057
    .line 1058
    move-result-object v3

    .line 1059
    const-string v5, "Headphones"

    .line 1060
    .line 1061
    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1062
    .line 1063
    .line 1064
    sget-object v0, Lcom/android/server/usb/descriptors/report/UsbStrings;->sTerminalNames:Ljava/util/HashMap;

    .line 1065
    .line 1066
    const/16 v3, 0x303

    .line 1067
    .line 1068
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1069
    .line 1070
    .line 1071
    move-result-object v3

    .line 1072
    const-string v5, "Head Mounted Speaker"

    .line 1073
    .line 1074
    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1075
    .line 1076
    .line 1077
    sget-object v0, Lcom/android/server/usb/descriptors/report/UsbStrings;->sTerminalNames:Ljava/util/HashMap;

    .line 1078
    .line 1079
    const/16 v3, 0x304

    .line 1080
    .line 1081
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1082
    .line 1083
    .line 1084
    move-result-object v3

    .line 1085
    const-string v5, "Desktop Speaker"

    .line 1086
    .line 1087
    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1088
    .line 1089
    .line 1090
    sget-object v0, Lcom/android/server/usb/descriptors/report/UsbStrings;->sTerminalNames:Ljava/util/HashMap;

    .line 1091
    .line 1092
    const/16 v3, 0x305

    .line 1093
    .line 1094
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1095
    .line 1096
    .line 1097
    move-result-object v3

    .line 1098
    const-string v5, "Room Speaker"

    .line 1099
    .line 1100
    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1101
    .line 1102
    .line 1103
    sget-object v0, Lcom/android/server/usb/descriptors/report/UsbStrings;->sTerminalNames:Ljava/util/HashMap;

    .line 1104
    .line 1105
    const/16 v3, 0x306

    .line 1106
    .line 1107
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1108
    .line 1109
    .line 1110
    move-result-object v3

    .line 1111
    const-string v5, "Communications Speaker"

    .line 1112
    .line 1113
    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1114
    .line 1115
    .line 1116
    sget-object v0, Lcom/android/server/usb/descriptors/report/UsbStrings;->sTerminalNames:Ljava/util/HashMap;

    .line 1117
    .line 1118
    const/16 v3, 0x307

    .line 1119
    .line 1120
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1121
    .line 1122
    .line 1123
    move-result-object v3

    .line 1124
    const-string v5, "Low Frequency Speaker"

    .line 1125
    .line 1126
    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1127
    .line 1128
    .line 1129
    sget-object v0, Lcom/android/server/usb/descriptors/report/UsbStrings;->sTerminalNames:Ljava/util/HashMap;

    .line 1130
    .line 1131
    const/16 v3, 0x400

    .line 1132
    .line 1133
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1134
    .line 1135
    .line 1136
    move-result-object v3

    .line 1137
    invoke-virtual {v0, v3, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1138
    .line 1139
    .line 1140
    sget-object v0, Lcom/android/server/usb/descriptors/report/UsbStrings;->sTerminalNames:Ljava/util/HashMap;

    .line 1141
    .line 1142
    const/16 v3, 0x401

    .line 1143
    .line 1144
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1145
    .line 1146
    .line 1147
    move-result-object v3

    .line 1148
    const-string v5, "Handset"

    .line 1149
    .line 1150
    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1151
    .line 1152
    .line 1153
    sget-object v0, Lcom/android/server/usb/descriptors/report/UsbStrings;->sTerminalNames:Ljava/util/HashMap;

    .line 1154
    .line 1155
    const/16 v3, 0x402

    .line 1156
    .line 1157
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1158
    .line 1159
    .line 1160
    move-result-object v3

    .line 1161
    const-string v5, "Headset"

    .line 1162
    .line 1163
    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1164
    .line 1165
    .line 1166
    sget-object v0, Lcom/android/server/usb/descriptors/report/UsbStrings;->sTerminalNames:Ljava/util/HashMap;

    .line 1167
    .line 1168
    const/16 v3, 0x403

    .line 1169
    .line 1170
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1171
    .line 1172
    .line 1173
    move-result-object v3

    .line 1174
    const-string v5, "Speaker Phone"

    .line 1175
    .line 1176
    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1177
    .line 1178
    .line 1179
    sget-object v0, Lcom/android/server/usb/descriptors/report/UsbStrings;->sTerminalNames:Ljava/util/HashMap;

    .line 1180
    .line 1181
    const/16 v3, 0x404

    .line 1182
    .line 1183
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1184
    .line 1185
    .line 1186
    move-result-object v3

    .line 1187
    const-string v5, "Speaker Phone (echo supressing)"

    .line 1188
    .line 1189
    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1190
    .line 1191
    .line 1192
    sget-object v0, Lcom/android/server/usb/descriptors/report/UsbStrings;->sTerminalNames:Ljava/util/HashMap;

    .line 1193
    .line 1194
    const/16 v3, 0x405

    .line 1195
    .line 1196
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1197
    .line 1198
    .line 1199
    move-result-object v3

    .line 1200
    const-string v5, "Speaker Phone (echo canceling)"

    .line 1201
    .line 1202
    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1203
    .line 1204
    .line 1205
    sget-object v0, Lcom/android/server/usb/descriptors/report/UsbStrings;->sTerminalNames:Ljava/util/HashMap;

    .line 1206
    .line 1207
    const/16 v3, 0x500

    .line 1208
    .line 1209
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1210
    .line 1211
    .line 1212
    move-result-object v3

    .line 1213
    invoke-virtual {v0, v3, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1214
    .line 1215
    .line 1216
    sget-object v0, Lcom/android/server/usb/descriptors/report/UsbStrings;->sTerminalNames:Ljava/util/HashMap;

    .line 1217
    .line 1218
    const/16 v3, 0x501

    .line 1219
    .line 1220
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1221
    .line 1222
    .line 1223
    move-result-object v3

    .line 1224
    const-string v5, "Phone Line"

    .line 1225
    .line 1226
    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1227
    .line 1228
    .line 1229
    sget-object v0, Lcom/android/server/usb/descriptors/report/UsbStrings;->sTerminalNames:Ljava/util/HashMap;

    .line 1230
    .line 1231
    const/16 v3, 0x502

    .line 1232
    .line 1233
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1234
    .line 1235
    .line 1236
    move-result-object v3

    .line 1237
    const-string v5, "Telephone"

    .line 1238
    .line 1239
    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1240
    .line 1241
    .line 1242
    sget-object v0, Lcom/android/server/usb/descriptors/report/UsbStrings;->sTerminalNames:Ljava/util/HashMap;

    .line 1243
    .line 1244
    const/16 v3, 0x503

    .line 1245
    .line 1246
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1247
    .line 1248
    .line 1249
    move-result-object v3

    .line 1250
    const-string v5, "Down Line Phone"

    .line 1251
    .line 1252
    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1253
    .line 1254
    .line 1255
    sget-object v0, Lcom/android/server/usb/descriptors/report/UsbStrings;->sTerminalNames:Ljava/util/HashMap;

    .line 1256
    .line 1257
    const/16 v3, 0x600

    .line 1258
    .line 1259
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1260
    .line 1261
    .line 1262
    move-result-object v3

    .line 1263
    invoke-virtual {v0, v3, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1264
    .line 1265
    .line 1266
    sget-object v0, Lcom/android/server/usb/descriptors/report/UsbStrings;->sTerminalNames:Ljava/util/HashMap;

    .line 1267
    .line 1268
    const/16 v3, 0x601

    .line 1269
    .line 1270
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1271
    .line 1272
    .line 1273
    move-result-object v3

    .line 1274
    const-string v5, "Analog Connector"

    .line 1275
    .line 1276
    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1277
    .line 1278
    .line 1279
    sget-object v0, Lcom/android/server/usb/descriptors/report/UsbStrings;->sTerminalNames:Ljava/util/HashMap;

    .line 1280
    .line 1281
    const/16 v3, 0x602

    .line 1282
    .line 1283
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1284
    .line 1285
    .line 1286
    move-result-object v3

    .line 1287
    const-string v5, "Digital Connector"

    .line 1288
    .line 1289
    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1290
    .line 1291
    .line 1292
    sget-object v0, Lcom/android/server/usb/descriptors/report/UsbStrings;->sTerminalNames:Ljava/util/HashMap;

    .line 1293
    .line 1294
    const/16 v3, 0x603

    .line 1295
    .line 1296
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1297
    .line 1298
    .line 1299
    move-result-object v3

    .line 1300
    const-string v5, "Line Connector"

    .line 1301
    .line 1302
    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1303
    .line 1304
    .line 1305
    sget-object v0, Lcom/android/server/usb/descriptors/report/UsbStrings;->sTerminalNames:Ljava/util/HashMap;

    .line 1306
    .line 1307
    const/16 v3, 0x604

    .line 1308
    .line 1309
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1310
    .line 1311
    .line 1312
    move-result-object v3

    .line 1313
    const-string v5, "Legacy Audio Connector"

    .line 1314
    .line 1315
    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1316
    .line 1317
    .line 1318
    sget-object v0, Lcom/android/server/usb/descriptors/report/UsbStrings;->sTerminalNames:Ljava/util/HashMap;

    .line 1319
    .line 1320
    const/16 v3, 0x605

    .line 1321
    .line 1322
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1323
    .line 1324
    .line 1325
    move-result-object v3

    .line 1326
    const-string v5, "S/PIDF Interface"

    .line 1327
    .line 1328
    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1329
    .line 1330
    .line 1331
    sget-object v0, Lcom/android/server/usb/descriptors/report/UsbStrings;->sTerminalNames:Ljava/util/HashMap;

    .line 1332
    .line 1333
    const/16 v3, 0x606

    .line 1334
    .line 1335
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1336
    .line 1337
    .line 1338
    move-result-object v3

    .line 1339
    const-string v5, "1394 Audio"

    .line 1340
    .line 1341
    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1342
    .line 1343
    .line 1344
    sget-object v0, Lcom/android/server/usb/descriptors/report/UsbStrings;->sTerminalNames:Ljava/util/HashMap;

    .line 1345
    .line 1346
    const/16 v3, 0x607

    .line 1347
    .line 1348
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1349
    .line 1350
    .line 1351
    move-result-object v3

    .line 1352
    const-string v5, "1394 Audio/Video"

    .line 1353
    .line 1354
    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1355
    .line 1356
    .line 1357
    sget-object v0, Lcom/android/server/usb/descriptors/report/UsbStrings;->sTerminalNames:Ljava/util/HashMap;

    .line 1358
    .line 1359
    const/16 v3, 0x700

    .line 1360
    .line 1361
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1362
    .line 1363
    .line 1364
    move-result-object v3

    .line 1365
    invoke-virtual {v0, v3, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1366
    .line 1367
    .line 1368
    sget-object v0, Lcom/android/server/usb/descriptors/report/UsbStrings;->sTerminalNames:Ljava/util/HashMap;

    .line 1369
    .line 1370
    const/16 v3, 0x701

    .line 1371
    .line 1372
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1373
    .line 1374
    .line 1375
    move-result-object v3

    .line 1376
    const-string v5, "Calibration Nose"

    .line 1377
    .line 1378
    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1379
    .line 1380
    .line 1381
    sget-object v0, Lcom/android/server/usb/descriptors/report/UsbStrings;->sTerminalNames:Ljava/util/HashMap;

    .line 1382
    .line 1383
    const/16 v3, 0x702

    .line 1384
    .line 1385
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1386
    .line 1387
    .line 1388
    move-result-object v3

    .line 1389
    const-string v5, "EQ Noise"

    .line 1390
    .line 1391
    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1392
    .line 1393
    .line 1394
    sget-object v0, Lcom/android/server/usb/descriptors/report/UsbStrings;->sTerminalNames:Ljava/util/HashMap;

    .line 1395
    .line 1396
    const/16 v3, 0x703

    .line 1397
    .line 1398
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1399
    .line 1400
    .line 1401
    move-result-object v3

    .line 1402
    const-string v5, "CD Player"

    .line 1403
    .line 1404
    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1405
    .line 1406
    .line 1407
    sget-object v0, Lcom/android/server/usb/descriptors/report/UsbStrings;->sTerminalNames:Ljava/util/HashMap;

    .line 1408
    .line 1409
    const/16 v3, 0x704

    .line 1410
    .line 1411
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1412
    .line 1413
    .line 1414
    move-result-object v3

    .line 1415
    const-string v5, "DAT"

    .line 1416
    .line 1417
    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1418
    .line 1419
    .line 1420
    sget-object v0, Lcom/android/server/usb/descriptors/report/UsbStrings;->sTerminalNames:Ljava/util/HashMap;

    .line 1421
    .line 1422
    const/16 v3, 0x705

    .line 1423
    .line 1424
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1425
    .line 1426
    .line 1427
    move-result-object v3

    .line 1428
    const-string v5, "DCC"

    .line 1429
    .line 1430
    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1431
    .line 1432
    .line 1433
    sget-object v0, Lcom/android/server/usb/descriptors/report/UsbStrings;->sTerminalNames:Ljava/util/HashMap;

    .line 1434
    .line 1435
    const/16 v3, 0x706

    .line 1436
    .line 1437
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1438
    .line 1439
    .line 1440
    move-result-object v3

    .line 1441
    const-string v5, "Mini Disk"

    .line 1442
    .line 1443
    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1444
    .line 1445
    .line 1446
    sget-object v0, Lcom/android/server/usb/descriptors/report/UsbStrings;->sTerminalNames:Ljava/util/HashMap;

    .line 1447
    .line 1448
    const/16 v3, 0x707

    .line 1449
    .line 1450
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1451
    .line 1452
    .line 1453
    move-result-object v3

    .line 1454
    const-string v5, "Analog Tap"

    .line 1455
    .line 1456
    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1457
    .line 1458
    .line 1459
    sget-object v0, Lcom/android/server/usb/descriptors/report/UsbStrings;->sTerminalNames:Ljava/util/HashMap;

    .line 1460
    .line 1461
    const/16 v3, 0x708

    .line 1462
    .line 1463
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1464
    .line 1465
    .line 1466
    move-result-object v3

    .line 1467
    const-string v5, "Phonograph"

    .line 1468
    .line 1469
    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1470
    .line 1471
    .line 1472
    sget-object v0, Lcom/android/server/usb/descriptors/report/UsbStrings;->sTerminalNames:Ljava/util/HashMap;

    .line 1473
    .line 1474
    const/16 v3, 0x709

    .line 1475
    .line 1476
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1477
    .line 1478
    .line 1479
    move-result-object v3

    .line 1480
    const-string v5, "VCR Audio"

    .line 1481
    .line 1482
    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1483
    .line 1484
    .line 1485
    sget-object v0, Lcom/android/server/usb/descriptors/report/UsbStrings;->sTerminalNames:Ljava/util/HashMap;

    .line 1486
    .line 1487
    const/16 v3, 0x70a

    .line 1488
    .line 1489
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1490
    .line 1491
    .line 1492
    move-result-object v3

    .line 1493
    const-string v5, "Video Disk Audio"

    .line 1494
    .line 1495
    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1496
    .line 1497
    .line 1498
    sget-object v0, Lcom/android/server/usb/descriptors/report/UsbStrings;->sTerminalNames:Ljava/util/HashMap;

    .line 1499
    .line 1500
    const/16 v3, 0x70b

    .line 1501
    .line 1502
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1503
    .line 1504
    .line 1505
    move-result-object v3

    .line 1506
    const-string v5, "DVD Audio"

    .line 1507
    .line 1508
    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1509
    .line 1510
    .line 1511
    sget-object v0, Lcom/android/server/usb/descriptors/report/UsbStrings;->sTerminalNames:Ljava/util/HashMap;

    .line 1512
    .line 1513
    const/16 v3, 0x70c

    .line 1514
    .line 1515
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1516
    .line 1517
    .line 1518
    move-result-object v3

    .line 1519
    const-string v5, "TV Audio"

    .line 1520
    .line 1521
    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1522
    .line 1523
    .line 1524
    sget-object v0, Lcom/android/server/usb/descriptors/report/UsbStrings;->sTerminalNames:Ljava/util/HashMap;

    .line 1525
    .line 1526
    const/16 v3, 0x70d

    .line 1527
    .line 1528
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1529
    .line 1530
    .line 1531
    move-result-object v3

    .line 1532
    const-string v5, "Satellite Audio"

    .line 1533
    .line 1534
    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1535
    .line 1536
    .line 1537
    sget-object v0, Lcom/android/server/usb/descriptors/report/UsbStrings;->sTerminalNames:Ljava/util/HashMap;

    .line 1538
    .line 1539
    const/16 v3, 0x70e

    .line 1540
    .line 1541
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1542
    .line 1543
    .line 1544
    move-result-object v3

    .line 1545
    const-string v5, "Cable Tuner Audio"

    .line 1546
    .line 1547
    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1548
    .line 1549
    .line 1550
    sget-object v0, Lcom/android/server/usb/descriptors/report/UsbStrings;->sTerminalNames:Ljava/util/HashMap;

    .line 1551
    .line 1552
    const/16 v3, 0x70f

    .line 1553
    .line 1554
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1555
    .line 1556
    .line 1557
    move-result-object v3

    .line 1558
    const-string v5, "DSS Audio"

    .line 1559
    .line 1560
    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1561
    .line 1562
    .line 1563
    sget-object v0, Lcom/android/server/usb/descriptors/report/UsbStrings;->sTerminalNames:Ljava/util/HashMap;

    .line 1564
    .line 1565
    const/16 v3, 0x711

    .line 1566
    .line 1567
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1568
    .line 1569
    .line 1570
    move-result-object v3

    .line 1571
    const-string v5, "Radio Transmitter"

    .line 1572
    .line 1573
    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1574
    .line 1575
    .line 1576
    sget-object v0, Lcom/android/server/usb/descriptors/report/UsbStrings;->sTerminalNames:Ljava/util/HashMap;

    .line 1577
    .line 1578
    const/16 v3, 0x712

    .line 1579
    .line 1580
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1581
    .line 1582
    .line 1583
    move-result-object v3

    .line 1584
    const-string v5, "Multitrack Recorder"

    .line 1585
    .line 1586
    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1587
    .line 1588
    .line 1589
    sget-object v0, Lcom/android/server/usb/descriptors/report/UsbStrings;->sTerminalNames:Ljava/util/HashMap;

    .line 1590
    .line 1591
    const/16 v3, 0x713

    .line 1592
    .line 1593
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1594
    .line 1595
    .line 1596
    move-result-object v3

    .line 1597
    const-string v5, "Synthesizer"

    .line 1598
    .line 1599
    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1600
    .line 1601
    .line 1602
    new-instance v0, Ljava/util/HashMap;

    .line 1603
    .line 1604
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1605
    .line 1606
    .line 1607
    sput-object v0, Lcom/android/server/usb/descriptors/report/UsbStrings;->sFormatNames:Ljava/util/HashMap;

    .line 1608
    .line 1609
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1610
    .line 1611
    .line 1612
    move-result-object v1

    .line 1613
    const-string v3, "FORMAT_TYPE_I"

    .line 1614
    .line 1615
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1616
    .line 1617
    .line 1618
    sget-object v0, Lcom/android/server/usb/descriptors/report/UsbStrings;->sFormatNames:Ljava/util/HashMap;

    .line 1619
    .line 1620
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1621
    .line 1622
    .line 1623
    move-result-object v1

    .line 1624
    const-string v2, "FORMAT_TYPE_II"

    .line 1625
    .line 1626
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1627
    .line 1628
    .line 1629
    sget-object v0, Lcom/android/server/usb/descriptors/report/UsbStrings;->sFormatNames:Ljava/util/HashMap;

    .line 1630
    .line 1631
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1632
    .line 1633
    .line 1634
    move-result-object v1

    .line 1635
    const-string v2, "FORMAT_TYPE_III"

    .line 1636
    .line 1637
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1638
    .line 1639
    .line 1640
    sget-object v0, Lcom/android/server/usb/descriptors/report/UsbStrings;->sFormatNames:Ljava/util/HashMap;

    .line 1641
    .line 1642
    const/4 v1, 0x4

    .line 1643
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1644
    .line 1645
    .line 1646
    move-result-object v1

    .line 1647
    const-string v2, "FORMAT_TYPE_IV"

    .line 1648
    .line 1649
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1650
    .line 1651
    .line 1652
    sget-object v0, Lcom/android/server/usb/descriptors/report/UsbStrings;->sFormatNames:Ljava/util/HashMap;

    .line 1653
    .line 1654
    const/16 v1, -0x7f

    .line 1655
    .line 1656
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1657
    .line 1658
    .line 1659
    move-result-object v1

    .line 1660
    const-string v2, "EXT_FORMAT_TYPE_I"

    .line 1661
    .line 1662
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1663
    .line 1664
    .line 1665
    sget-object v0, Lcom/android/server/usb/descriptors/report/UsbStrings;->sFormatNames:Ljava/util/HashMap;

    .line 1666
    .line 1667
    const/16 v1, -0x7e

    .line 1668
    .line 1669
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1670
    .line 1671
    .line 1672
    move-result-object v1

    .line 1673
    const-string v2, "EXT_FORMAT_TYPE_II"

    .line 1674
    .line 1675
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1676
    .line 1677
    .line 1678
    sget-object v0, Lcom/android/server/usb/descriptors/report/UsbStrings;->sFormatNames:Ljava/util/HashMap;

    .line 1679
    .line 1680
    const/16 v1, -0x7d

    .line 1681
    .line 1682
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1683
    .line 1684
    .line 1685
    move-result-object v1

    .line 1686
    const-string v2, "EXT_FORMAT_TYPE_III"

    .line 1687
    .line 1688
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1689
    .line 1690
    .line 1691
    return-void
.end method

.method public static getClassName(I)Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/android/server/usb/descriptors/report/UsbStrings;->sClassNames:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/String;

    .line 12
    .line 13
    and-int/lit16 p0, p0, 0xff

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string v1, "Unknown Class ID [0x"

    .line 21
    .line 22
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v1, ":"

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string p0, "]"

    .line 41
    .line 42
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    :goto_0
    return-object v0
.end method
