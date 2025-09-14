.class public final Lcom/android/server/location/gnss/sec/CarrierConfig;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static mInstance:Lcom/android/server/location/gnss/sec/CarrierConfig;


# instance fields
.field public mCarrier:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

.field public mDeviceMode:Ljava/lang/String;

.field public final mExtraConfigHashMap:Ljava/util/HashMap;

.field public mSalesCode:Ljava/lang/String;

.field public final mSalesCodeToCarrierMap:Ljava/util/HashMap;

.field public mSimOperator:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

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
    iput-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCodeToCarrierMap:Ljava/util/HashMap;

    .line 10
    .line 11
    new-instance v1, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 17
    .line 18
    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_TMO:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 19
    .line 20
    const-string v1, "TMB"

    .line 21
    .line 22
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_TMK:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 26
    .line 27
    const-string v1, "TMK"

    .line 28
    .line 29
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_TFN:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 33
    .line 34
    const-string v1, "TFN"

    .line 35
    .line 36
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_TFO:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 40
    .line 41
    const-string v1, "TFO"

    .line 42
    .line 43
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_DSH:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 47
    .line 48
    const-string v1, "DSH"

    .line 49
    .line 50
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_DSA:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 54
    .line 55
    const-string v1, "DSA"

    .line 56
    .line 57
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_DSG:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 61
    .line 62
    const-string v1, "DSG"

    .line 63
    .line 64
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_ATT:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 68
    .line 69
    const-string v1, "ATT"

    .line 70
    .line 71
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_AIO:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 75
    .line 76
    const-string v1, "AIO"

    .line 77
    .line 78
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_TFA:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 82
    .line 83
    const-string v1, "TFA"

    .line 84
    .line 85
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_TFC:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 89
    .line 90
    const-string v1, "TFC"

    .line 91
    .line 92
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_XAU:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 96
    .line 97
    const-string v1, "XAU"

    .line 98
    .line 99
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_XAA:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 103
    .line 104
    const-string v1, "XAA"

    .line 105
    .line 106
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_XAR:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 110
    .line 111
    const-string v1, "XAR"

    .line 112
    .line 113
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_XAG:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 117
    .line 118
    const-string v1, "XAG"

    .line 119
    .line 120
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_VZW:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 124
    .line 125
    const-string v1, "VZW"

    .line 126
    .line 127
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_SPR:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 131
    .line 132
    const-string v1, "SPR"

    .line 133
    .line 134
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_XAS:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 138
    .line 139
    const-string v1, "XAS"

    .line 140
    .line 141
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_BST:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 145
    .line 146
    const-string v1, "BST"

    .line 147
    .line 148
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_VMU:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 152
    .line 153
    const-string v1, "VMU"

    .line 154
    .line 155
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_USC:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 159
    .line 160
    const-string v1, "USC"

    .line 161
    .line 162
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_ACG:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 166
    .line 167
    const-string v1, "ACG"

    .line 168
    .line 169
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->JPN_DCM:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 173
    .line 174
    const-string v1, "DCM"

    .line 175
    .line 176
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->JPN_KDI:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 180
    .line 181
    const-string v1, "KDI"

    .line 182
    .line 183
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    const-string v1, "JCO"

    .line 187
    .line 188
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    const-string v1, "UQM"

    .line 192
    .line 193
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->JPN_RKT:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 197
    .line 198
    const-string v1, "RKT"

    .line 199
    .line 200
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->JPN_SBM:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 204
    .line 205
    const-string v1, "SBM"

    .line 206
    .line 207
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->CAD_TLS:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 211
    .line 212
    const-string v1, "TLS"

    .line 213
    .line 214
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    const-string v1, "KDO"

    .line 218
    .line 219
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    const-string v1, "PMB"

    .line 223
    .line 224
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->CAD_BMC:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 228
    .line 229
    const-string v1, "BMC"

    .line 230
    .line 231
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    const-string v1, "VMC"

    .line 235
    .line 236
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    const-string v1, "PCM"

    .line 240
    .line 241
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    const-string v1, "SOL"

    .line 245
    .line 246
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    const-string v1, "BWA"

    .line 250
    .line 251
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->CAD_RWC:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 255
    .line 256
    const-string v1, "RWC"

    .line 257
    .line 258
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    const-string v1, "FMC"

    .line 262
    .line 263
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    .line 265
    .line 266
    const-string v1, "CHR"

    .line 267
    .line 268
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    .line 270
    .line 271
    const-string v1, "TBT"

    .line 272
    .line 273
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    const-string v1, "VTR"

    .line 277
    .line 278
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    const-string v1, "FIZ"

    .line 282
    .line 283
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    .line 285
    .line 286
    const-string v1, "ESK"

    .line 287
    .line 288
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    .line 290
    .line 291
    const-string v1, "SJR"

    .line 292
    .line 293
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    .line 295
    .line 296
    const-string v1, "GLW"

    .line 297
    .line 298
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    .line 300
    .line 301
    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->CAD_XAC:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 302
    .line 303
    const-string v1, "XAC"

    .line 304
    .line 305
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    .line 307
    .line 308
    const-string v1, "CAO"

    .line 309
    .line 310
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    .line 312
    .line 313
    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->KOR_SKT:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 314
    .line 315
    const-string v1, "SKT"

    .line 316
    .line 317
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    .line 319
    .line 320
    const-string v1, "SKC"

    .line 321
    .line 322
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    .line 324
    .line 325
    const-string v1, "SKO"

    .line 326
    .line 327
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    .line 329
    .line 330
    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->KOR_LGT:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 331
    .line 332
    const-string v1, "LGT"

    .line 333
    .line 334
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    .line 336
    .line 337
    const-string v1, "LUC"

    .line 338
    .line 339
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    .line 341
    .line 342
    const-string v1, "LUO"

    .line 343
    .line 344
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    .line 346
    .line 347
    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->KOR_KTT:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 348
    .line 349
    const-string v1, "KTT"

    .line 350
    .line 351
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    .line 353
    .line 354
    const-string v1, "KTC"

    .line 355
    .line 356
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    .line 358
    .line 359
    const-string v1, "KTO"

    .line 360
    .line 361
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    .line 363
    .line 364
    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->CHN_CMC:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 365
    .line 366
    const-string v1, "CHM"

    .line 367
    .line 368
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    .line 370
    .line 371
    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->CHN_CTC:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 372
    .line 373
    const-string v1, "CTC"

    .line 374
    .line 375
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    .line 377
    .line 378
    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->CHN_CHU:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 379
    .line 380
    const-string v1, "CHU"

    .line 381
    .line 382
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    .line 384
    .line 385
    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->CHN_CHC:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 386
    .line 387
    const-string v1, "CHN"

    .line 388
    .line 389
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    .line 391
    .line 392
    const-string v1, "CHC"

    .line 393
    .line 394
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    .line 396
    .line 397
    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->ARG_UFN:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 398
    .line 399
    const-string v1, "UFN"

    .line 400
    .line 401
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    .line 403
    .line 404
    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->MEX_MNX:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 405
    .line 406
    const-string v1, "MNX"

    .line 407
    .line 408
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    .line 410
    .line 411
    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->MEX_IUS:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 412
    .line 413
    const-string v1, "IUS"

    .line 414
    .line 415
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    .line 417
    .line 418
    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->MEX_UNE:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 419
    .line 420
    const-string v1, "UNE"

    .line 421
    .line 422
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    .line 424
    .line 425
    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->PER_PEO:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 426
    .line 427
    const-string v1, "PEO"

    .line 428
    .line 429
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    .line 431
    .line 432
    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->PER_PNT:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 433
    .line 434
    const-string v1, "PNT"

    .line 435
    .line 436
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    .line 438
    .line 439
    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->PER_PET:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 440
    .line 441
    const-string v1, "PET"

    .line 442
    .line 443
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    .line 445
    .line 446
    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->SUI_SWC:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 447
    .line 448
    const-string v1, "SWC"

    .line 449
    .line 450
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    .line 452
    .line 453
    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->TUR_TUR:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 454
    .line 455
    const-string v1, "TUR"

    .line 456
    .line 457
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    .line 459
    .line 460
    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->SWA_IND:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 461
    .line 462
    const-string v1, "INS"

    .line 463
    .line 464
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    .line 466
    .line 467
    const-string v1, "INU"

    .line 468
    .line 469
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    .line 471
    .line 472
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/server/location/gnss/sec/CarrierConfig;
    .locals 2

    .line 1
    const-class v0, Lcom/android/server/location/gnss/sec/CarrierConfig;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/android/server/location/gnss/sec/CarrierConfig;->mInstance:Lcom/android/server/location/gnss/sec/CarrierConfig;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Lcom/android/server/location/gnss/sec/CarrierConfig;

    .line 9
    .line 10
    invoke-direct {v1}, Lcom/android/server/location/gnss/sec/CarrierConfig;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lcom/android/server/location/gnss/sec/CarrierConfig;->mInstance:Lcom/android/server/location/gnss/sec/CarrierConfig;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception v1

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    sget-object v1, Lcom/android/server/location/gnss/sec/CarrierConfig;->mInstance:Lcom/android/server/location/gnss/sec/CarrierConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    monitor-exit v0

    .line 21
    return-object v1

    .line 22
    :goto_1
    monitor-exit v0

    .line 23
    throw v1
.end method

.method public static isCanadaConfigRequired(Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_TFA:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 2
    .line 3
    if-eq p0, v0, :cond_1

    .line 4
    .line 5
    sget-object v0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_TFC:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 6
    .line 7
    if-eq p0, v0, :cond_1

    .line 8
    .line 9
    sget-object v0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_AIO:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 10
    .line 11
    if-eq p0, v0, :cond_1

    .line 12
    .line 13
    sget-object v0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->CAD_BMC:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 14
    .line 15
    if-eq p0, v0, :cond_1

    .line 16
    .line 17
    sget-object v0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->CAD_RWC:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 18
    .line 19
    if-eq p0, v0, :cond_1

    .line 20
    .line 21
    sget-object v0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->CAD_TLS:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 22
    .line 23
    if-eq p0, v0, :cond_1

    .line 24
    .line 25
    sget-object v0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->CAD_XAC:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 26
    .line 27
    if-ne p0, v0, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 p0, 0x0

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 33
    :goto_1
    return p0
.end method

.method public static isTmbConfigRequired(Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_TMO:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 2
    .line 3
    if-eq p0, v0, :cond_1

    .line 4
    .line 5
    sget-object v0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_TFO:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 6
    .line 7
    if-eq p0, v0, :cond_1

    .line 8
    .line 9
    sget-object v0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_DSH:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 10
    .line 11
    if-eq p0, v0, :cond_1

    .line 12
    .line 13
    sget-object v0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_TMK:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 14
    .line 15
    if-eq p0, v0, :cond_1

    .line 16
    .line 17
    sget-object v0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_XAU:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 18
    .line 19
    if-eq p0, v0, :cond_1

    .line 20
    .line 21
    sget-object v0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_XAG:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 22
    .line 23
    if-ne p0, v0, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 p0, 0x0

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 29
    :goto_1
    return p0
.end method


# virtual methods
.method public final getCarrier()Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSimOperator:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isKoreaMarket()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_4

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSimOperator:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    sget-object v1, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->KOR_SKT:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 17
    .line 18
    const/4 v2, -0x1

    .line 19
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    sparse-switch v3, :sswitch_data_0

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :sswitch_0
    const-string v3, "45011"

    .line 28
    .line 29
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 v2, 0x3

    .line 37
    goto :goto_0

    .line 38
    :sswitch_1
    const-string v3, "45008"

    .line 39
    .line 40
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-nez v0, :cond_1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    const/4 v2, 0x2

    .line 48
    goto :goto_0

    .line 49
    :sswitch_2
    const-string v3, "45006"

    .line 50
    .line 51
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-nez v0, :cond_2

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_2
    const/4 v2, 0x1

    .line 59
    goto :goto_0

    .line 60
    :sswitch_3
    const-string v3, "45005"

    .line 61
    .line 62
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-nez v0, :cond_3

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_3
    const/4 v2, 0x0

    .line 70
    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :pswitch_0
    return-object v1

    .line 75
    :pswitch_1
    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->KOR_KTT:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 76
    .line 77
    return-object p0

    .line 78
    :pswitch_2
    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->KOR_LGT:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 79
    .line 80
    return-object p0

    .line 81
    :pswitch_3
    return-object v1

    .line 82
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCodeToCarrierMap:Ljava/util/HashMap;

    .line 83
    .line 84
    iget-object p0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    .line 85
    .line 86
    sget-object v1, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->NO_OPERATOR:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 87
    .line 88
    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    check-cast p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 93
    .line 94
    return-object p0

    .line 95
    :sswitch_data_0
    .sparse-switch
        0x2f59814 -> :sswitch_3
        0x2f59815 -> :sswitch_2
        0x2f59817 -> :sswitch_1
        0x2f5982f -> :sswitch_0
    .end sparse-switch

    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getConfigMap()Ljava/util/HashMap;
    .locals 41

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 6
    .line 7
    .line 8
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/location/gnss/sec/CarrierConfig;->getCarrier()Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    sget-object v2, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_ATT:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 13
    .line 14
    if-eq v1, v2, :cond_1

    .line 15
    .line 16
    sget-object v2, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_XAR:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 17
    .line 18
    if-eq v1, v2, :cond_1

    .line 19
    .line 20
    sget-object v2, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_DSA:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 21
    .line 22
    if-eq v1, v2, :cond_1

    .line 23
    .line 24
    sget-object v2, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_DSG:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 25
    .line 26
    if-ne v1, v2, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v2, 0x0

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 32
    :goto_1
    const-string v5, "ENABLE_GALILEO"

    .line 33
    .line 34
    const-string v6, "23"

    .line 35
    .line 36
    const-string v7, "WARM_STANDBY2"

    .line 37
    .line 38
    const-string v8, "3"

    .line 39
    .line 40
    const-string v9, "EE_SYNC_THRESHOLD_DAYS"

    .line 41
    .line 42
    const-string v10, "RTI_ENABLE"

    .line 43
    .line 44
    const-string v11, "VENDOR_LBS_SERVER_ENABLE"

    .line 45
    .line 46
    const-string v12, "SUPL_NI_ALLOW_GPS_OFF"

    .line 47
    .line 48
    const-string v13, "TLSv1_2"

    .line 49
    .line 50
    const-string v14, "AUTO_SUPL_VERSION_FOR_NI"

    .line 51
    .line 52
    const-string v15, "7200"

    .line 53
    .line 54
    const-string v3, "2"

    .line 55
    .line 56
    const-string v4, "CP_LPP_GUARD_TIME_SEC"

    .line 57
    .line 58
    move-object/from16 v17, v1

    .line 59
    .line 60
    const-string v1, "REAIDING_INTERVAL_SEC"

    .line 61
    .line 62
    move-object/from16 v18, v5

    .line 63
    .line 64
    const-string v5, "SHA256"

    .line 65
    .line 66
    move-object/from16 v19, v6

    .line 67
    .line 68
    const-string v6, "SUPL_HMAC_HASH"

    .line 69
    .line 70
    move-object/from16 v20, v7

    .line 71
    .line 72
    const-string v7, "SUPL_SSL_METHOD"

    .line 73
    .line 74
    move-object/from16 v21, v8

    .line 75
    .line 76
    const-string v8, "SUPL_OTDOA_CAPABLE"

    .line 77
    .line 78
    move-object/from16 v22, v9

    .line 79
    .line 80
    const-string v9, "SUPL_ECID_CAPABLE"

    .line 81
    .line 82
    move-object/from16 v23, v10

    .line 83
    .line 84
    const-string v10, "SUPL_USE_APN"

    .line 85
    .line 86
    move-object/from16 v24, v11

    .line 87
    .line 88
    const-string v11, "FALSE"

    .line 89
    .line 90
    move-object/from16 v25, v8

    .line 91
    .line 92
    const-string v8, "SUPL_LPP_CAPABLE"

    .line 93
    .line 94
    move-object/from16 v26, v8

    .line 95
    .line 96
    const-string v8, "TRUE"

    .line 97
    .line 98
    if-eqz v2, :cond_2

    .line 99
    .line 100
    iget-object v2, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 101
    .line 102
    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    iget-object v2, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 106
    .line 107
    invoke-virtual {v2, v1, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 111
    .line 112
    invoke-virtual {v1, v14, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 116
    .line 117
    invoke-virtual {v1, v7, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 121
    .line 122
    invoke-virtual {v1, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 126
    .line 127
    invoke-virtual {v1, v12, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 131
    .line 132
    invoke-virtual {v1, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 136
    .line 137
    invoke-virtual {v1, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 141
    .line 142
    move-object/from16 v2, v26

    .line 143
    .line 144
    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 148
    .line 149
    move-object/from16 v2, v25

    .line 150
    .line 151
    invoke-virtual {v1, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 155
    .line 156
    move-object/from16 v2, v24

    .line 157
    .line 158
    invoke-virtual {v1, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 162
    .line 163
    move-object/from16 v2, v23

    .line 164
    .line 165
    invoke-virtual {v1, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 169
    .line 170
    move-object/from16 v2, v21

    .line 171
    .line 172
    move-object/from16 v3, v22

    .line 173
    .line 174
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 178
    .line 179
    move-object/from16 v2, v19

    .line 180
    .line 181
    move-object/from16 v3, v20

    .line 182
    .line 183
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 187
    .line 188
    move-object/from16 v2, v18

    .line 189
    .line 190
    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    goto/16 :goto_b

    .line 194
    .line 195
    :cond_2
    move-object/from16 v27, v18

    .line 196
    .line 197
    move-object/from16 v28, v19

    .line 198
    .line 199
    move-object/from16 v29, v20

    .line 200
    .line 201
    move-object/from16 v30, v21

    .line 202
    .line 203
    move-object/from16 v31, v22

    .line 204
    .line 205
    move-object/from16 v32, v23

    .line 206
    .line 207
    move-object/from16 v33, v24

    .line 208
    .line 209
    move-object/from16 v34, v25

    .line 210
    .line 211
    move-object/from16 v2, v26

    .line 212
    .line 213
    invoke-static/range {v17 .. v17}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isTmbConfigRequired(Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;)Z

    .line 214
    .line 215
    .line 216
    move-result v18

    .line 217
    const-string v2, "ENABLE_5G_CP_CAPS_AUTO"

    .line 218
    .line 219
    move-object/from16 v19, v2

    .line 220
    .line 221
    const-string v2, "ENABLE_5G_CP_CAPS_MSA"

    .line 222
    .line 223
    move-object/from16 v20, v2

    .line 224
    .line 225
    const-string v2, "1"

    .line 226
    .line 227
    move-object/from16 v21, v2

    .line 228
    .line 229
    const-string v2, "ENABLE_5G_CP_CAPS_MSB"

    .line 230
    .line 231
    if-eqz v18, :cond_4

    .line 232
    .line 233
    move-object/from16 v18, v2

    .line 234
    .line 235
    iget-object v2, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 236
    .line 237
    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    iget-object v2, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 241
    .line 242
    invoke-virtual {v2, v1, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 246
    .line 247
    invoke-virtual {v1, v14, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 251
    .line 252
    invoke-virtual {v1, v7, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 256
    .line 257
    invoke-virtual {v1, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 261
    .line 262
    invoke-virtual {v1, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 266
    .line 267
    invoke-virtual {v1, v12, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 271
    .line 272
    invoke-virtual {v1, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 276
    .line 277
    move-object/from16 v2, v26

    .line 278
    .line 279
    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 283
    .line 284
    move-object/from16 v2, v34

    .line 285
    .line 286
    invoke-virtual {v1, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    .line 288
    .line 289
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 290
    .line 291
    move-object/from16 v2, v33

    .line 292
    .line 293
    invoke-virtual {v1, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    .line 295
    .line 296
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 297
    .line 298
    move-object/from16 v2, v32

    .line 299
    .line 300
    invoke-virtual {v1, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    .line 302
    .line 303
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 304
    .line 305
    move-object/from16 v2, v30

    .line 306
    .line 307
    move-object/from16 v3, v31

    .line 308
    .line 309
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    .line 311
    .line 312
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 313
    .line 314
    move-object/from16 v2, v28

    .line 315
    .line 316
    move-object/from16 v3, v29

    .line 317
    .line 318
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    .line 320
    .line 321
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 322
    .line 323
    move-object/from16 v2, v27

    .line 324
    .line 325
    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    .line 327
    .line 328
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mDeviceMode:Ljava/lang/String;

    .line 329
    .line 330
    if-eqz v1, :cond_3

    .line 331
    .line 332
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v1

    .line 336
    const-string/jumbo v2, "tablet"

    .line 337
    .line 338
    .line 339
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 340
    .line 341
    .line 342
    move-result v4

    .line 343
    goto :goto_2

    .line 344
    :cond_3
    const/4 v4, 0x0

    .line 345
    :goto_2
    if-nez v4, :cond_1c

    .line 346
    .line 347
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 348
    .line 349
    move-object/from16 v3, v18

    .line 350
    .line 351
    move-object/from16 v2, v21

    .line 352
    .line 353
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    .line 355
    .line 356
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 357
    .line 358
    move-object/from16 v3, v20

    .line 359
    .line 360
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    .line 362
    .line 363
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 364
    .line 365
    move-object/from16 v3, v19

    .line 366
    .line 367
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    .line 369
    .line 370
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 371
    .line 372
    const-string v3, "ENABLE_4G_CP_CAPS_MSB"

    .line 373
    .line 374
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    .line 376
    .line 377
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 378
    .line 379
    const-string v3, "ENABLE_4G_CP_CAPS_MSA"

    .line 380
    .line 381
    const-string v4, "0"

    .line 382
    .line 383
    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    .line 385
    .line 386
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 387
    .line 388
    const-string v3, "ENABLE_4G_CP_CAPS_AUTO"

    .line 389
    .line 390
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    .line 392
    .line 393
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 394
    .line 395
    const-string v3, "ENABLE_3G_CP_CAPS_MSB"

    .line 396
    .line 397
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    .line 399
    .line 400
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 401
    .line 402
    const-string v3, "ENABLE_3G_CP_CAPS_MSA"

    .line 403
    .line 404
    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    .line 406
    .line 407
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 408
    .line 409
    const-string v3, "ENABLE_3G_CP_CAPS_AUTO"

    .line 410
    .line 411
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    .line 413
    .line 414
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 415
    .line 416
    const-string v3, "ENABLE_2G_CP_CAPS_MSB"

    .line 417
    .line 418
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    .line 420
    .line 421
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 422
    .line 423
    const-string v3, "ENABLE_2G_CP_CAPS_MSA"

    .line 424
    .line 425
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    .line 427
    .line 428
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 429
    .line 430
    const-string v3, "ENABLE_2G_CP_CAPS_AUTO"

    .line 431
    .line 432
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    .line 434
    .line 435
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 436
    .line 437
    const-string v2, "ENABLE_LPPE_CIVIC_ADDRESS"

    .line 438
    .line 439
    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    .line 441
    .line 442
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 443
    .line 444
    const-string v2, "ENABLE_LPP_HA_GAD_SHAPE"

    .line 445
    .line 446
    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    .line 448
    .line 449
    goto/16 :goto_b

    .line 450
    .line 451
    :cond_4
    move-object/from16 v40, v2

    .line 452
    .line 453
    move-object/from16 v18, v13

    .line 454
    .line 455
    move-object/from16 v37, v19

    .line 456
    .line 457
    move-object/from16 v38, v20

    .line 458
    .line 459
    move-object/from16 v39, v21

    .line 460
    .line 461
    move-object/from16 v2, v26

    .line 462
    .line 463
    move-object/from16 v19, v28

    .line 464
    .line 465
    move-object/from16 v35, v29

    .line 466
    .line 467
    move-object/from16 v21, v30

    .line 468
    .line 469
    move-object/from16 v36, v31

    .line 470
    .line 471
    move-object/from16 v23, v32

    .line 472
    .line 473
    move-object/from16 v24, v33

    .line 474
    .line 475
    move-object/from16 v13, v34

    .line 476
    .line 477
    invoke-static/range {v17 .. v17}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isCanadaConfigRequired(Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;)Z

    .line 478
    .line 479
    .line 480
    move-result v20

    .line 481
    move-object/from16 v25, v13

    .line 482
    .line 483
    const-string v13, "TLSv1"

    .line 484
    .line 485
    const-string v2, "300"

    .line 486
    .line 487
    move-object/from16 v22, v9

    .line 488
    .line 489
    const-string/jumbo v9, "emergencyExtensionSeconds"

    .line 490
    .line 491
    .line 492
    if-eqz v20, :cond_5

    .line 493
    .line 494
    move-object/from16 v20, v12

    .line 495
    .line 496
    iget-object v12, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 497
    .line 498
    invoke-virtual {v12, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    .line 500
    .line 501
    iget-object v2, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 502
    .line 503
    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    .line 505
    .line 506
    iget-object v2, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 507
    .line 508
    invoke-virtual {v2, v1, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    .line 510
    .line 511
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 512
    .line 513
    invoke-virtual {v1, v14, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    .line 515
    .line 516
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 517
    .line 518
    invoke-virtual {v1, v7, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    .line 520
    .line 521
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 522
    .line 523
    invoke-virtual {v1, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    .line 525
    .line 526
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 527
    .line 528
    invoke-virtual {v1, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    .line 530
    .line 531
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 532
    .line 533
    move-object/from16 v2, v20

    .line 534
    .line 535
    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 536
    .line 537
    .line 538
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 539
    .line 540
    move-object/from16 v3, v22

    .line 541
    .line 542
    invoke-virtual {v1, v3, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 543
    .line 544
    .line 545
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 546
    .line 547
    move-object/from16 v4, v26

    .line 548
    .line 549
    invoke-virtual {v1, v4, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    .line 551
    .line 552
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 553
    .line 554
    move-object/from16 v12, v25

    .line 555
    .line 556
    invoke-virtual {v1, v12, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    .line 558
    .line 559
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 560
    .line 561
    move-object/from16 v2, v24

    .line 562
    .line 563
    invoke-virtual {v1, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 564
    .line 565
    .line 566
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 567
    .line 568
    move-object/from16 v2, v23

    .line 569
    .line 570
    invoke-virtual {v1, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    .line 572
    .line 573
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 574
    .line 575
    move-object/from16 v2, v21

    .line 576
    .line 577
    move-object/from16 v3, v36

    .line 578
    .line 579
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 580
    .line 581
    .line 582
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 583
    .line 584
    move-object/from16 v2, v19

    .line 585
    .line 586
    move-object/from16 v3, v35

    .line 587
    .line 588
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 589
    .line 590
    .line 591
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 592
    .line 593
    move-object/from16 v2, v27

    .line 594
    .line 595
    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 596
    .line 597
    .line 598
    goto/16 :goto_b

    .line 599
    .line 600
    :cond_5
    move-object/from16 v3, v22

    .line 601
    .line 602
    move-object/from16 v12, v25

    .line 603
    .line 604
    move-object/from16 v4, v26

    .line 605
    .line 606
    sget-object v14, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_VZW:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 607
    .line 608
    move-object/from16 v15, v17

    .line 609
    .line 610
    move-object/from16 v17, v2

    .line 611
    .line 612
    if-ne v15, v14, :cond_6

    .line 613
    .line 614
    const/4 v14, 0x1

    .line 615
    goto :goto_3

    .line 616
    :cond_6
    const/4 v14, 0x0

    .line 617
    :goto_3
    const-string v2, "SUPL_LPPE_CAPABLE"

    .line 618
    .line 619
    move-object/from16 v19, v9

    .line 620
    .line 621
    const-string v9, "30"

    .line 622
    .line 623
    move-object/from16 v20, v1

    .line 624
    .line 625
    const-string v1, "SUPL_UT3_SEC"

    .line 626
    .line 627
    move-object/from16 v22, v3

    .line 628
    .line 629
    const-string v3, "SUPL_UT2_SEC"

    .line 630
    .line 631
    move-object/from16 v21, v13

    .line 632
    .line 633
    const-string v13, "10"

    .line 634
    .line 635
    move-object/from16 v23, v15

    .line 636
    .line 637
    const-string v15, "SUPL_UT1_SEC"

    .line 638
    .line 639
    move-object/from16 v24, v2

    .line 640
    .line 641
    const-string v2, "USE_RRLP_GOOGLE_SUPL"

    .line 642
    .line 643
    if-eqz v14, :cond_7

    .line 644
    .line 645
    iget-object v14, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 646
    .line 647
    invoke-virtual {v14, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 648
    .line 649
    .line 650
    iget-object v4, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 651
    .line 652
    invoke-virtual {v4, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 653
    .line 654
    .line 655
    iget-object v4, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 656
    .line 657
    invoke-virtual {v4, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 658
    .line 659
    .line 660
    iget-object v4, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 661
    .line 662
    invoke-virtual {v4, v15, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 663
    .line 664
    .line 665
    iget-object v4, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 666
    .line 667
    invoke-virtual {v4, v3, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 668
    .line 669
    .line 670
    iget-object v3, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 671
    .line 672
    invoke-virtual {v3, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 673
    .line 674
    .line 675
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 676
    .line 677
    invoke-virtual {v1, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 678
    .line 679
    .line 680
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 681
    .line 682
    move-object/from16 v2, v18

    .line 683
    .line 684
    invoke-virtual {v1, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 685
    .line 686
    .line 687
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 688
    .line 689
    invoke-virtual {v1, v12, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 690
    .line 691
    .line 692
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 693
    .line 694
    const-string v2, "SUPL_MULTI_LOCID_CAPABLE"

    .line 695
    .line 696
    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 697
    .line 698
    .line 699
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 700
    .line 701
    move-object/from16 v14, v24

    .line 702
    .line 703
    invoke-virtual {v1, v14, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 704
    .line 705
    .line 706
    goto/16 :goto_b

    .line 707
    .line 708
    :cond_7
    move-object/from16 v18, v9

    .line 709
    .line 710
    move-object/from16 v14, v24

    .line 711
    .line 712
    sget-object v9, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_SPR:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 713
    .line 714
    move-object/from16 v24, v1

    .line 715
    .line 716
    move-object/from16 v1, v23

    .line 717
    .line 718
    if-eq v1, v9, :cond_9

    .line 719
    .line 720
    sget-object v9, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_XAS:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 721
    .line 722
    if-eq v1, v9, :cond_9

    .line 723
    .line 724
    sget-object v9, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_BST:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 725
    .line 726
    if-eq v1, v9, :cond_9

    .line 727
    .line 728
    sget-object v9, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_VMU:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 729
    .line 730
    if-ne v1, v9, :cond_8

    .line 731
    .line 732
    goto :goto_4

    .line 733
    :cond_8
    move-object/from16 v23, v3

    .line 734
    .line 735
    const/4 v9, 0x0

    .line 736
    goto :goto_5

    .line 737
    :cond_9
    :goto_4
    move-object/from16 v23, v3

    .line 738
    .line 739
    const/4 v9, 0x1

    .line 740
    :goto_5
    const-string v3, "USE_NI_SLP_ADDRESS"

    .line 741
    .line 742
    if-eqz v9, :cond_a

    .line 743
    .line 744
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 745
    .line 746
    invoke-virtual {v1, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 747
    .line 748
    .line 749
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 750
    .line 751
    move-object/from16 v4, v21

    .line 752
    .line 753
    invoke-virtual {v1, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 754
    .line 755
    .line 756
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 757
    .line 758
    invoke-virtual {v1, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 759
    .line 760
    .line 761
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 762
    .line 763
    invoke-virtual {v1, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 764
    .line 765
    .line 766
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 767
    .line 768
    invoke-virtual {v1, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 769
    .line 770
    .line 771
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 772
    .line 773
    const-string v3, "SUPL_HOST_NI"

    .line 774
    .line 775
    const-string/jumbo v4, "supl2019.lbs.sprint.com"

    .line 776
    .line 777
    .line 778
    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 779
    .line 780
    .line 781
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 782
    .line 783
    invoke-virtual {v1, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 784
    .line 785
    .line 786
    goto/16 :goto_b

    .line 787
    .line 788
    :cond_a
    sget-object v9, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_USC:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 789
    .line 790
    if-eq v1, v9, :cond_c

    .line 791
    .line 792
    sget-object v9, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_ACG:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 793
    .line 794
    if-ne v1, v9, :cond_b

    .line 795
    .line 796
    goto :goto_6

    .line 797
    :cond_b
    const/4 v9, 0x0

    .line 798
    goto :goto_7

    .line 799
    :cond_c
    :goto_6
    const/4 v9, 0x1

    .line 800
    :goto_7
    if-eqz v9, :cond_d

    .line 801
    .line 802
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 803
    .line 804
    invoke-virtual {v1, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 805
    .line 806
    .line 807
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 808
    .line 809
    invoke-virtual {v1, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 810
    .line 811
    .line 812
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 813
    .line 814
    invoke-virtual {v1, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 815
    .line 816
    .line 817
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 818
    .line 819
    invoke-virtual {v1, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 820
    .line 821
    .line 822
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 823
    .line 824
    const-string v2, "TLSv1_1"

    .line 825
    .line 826
    invoke-virtual {v1, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 827
    .line 828
    .line 829
    goto/16 :goto_b

    .line 830
    .line 831
    :cond_d
    sget-object v2, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->ARG_UFN:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 832
    .line 833
    if-ne v1, v2, :cond_e

    .line 834
    .line 835
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 836
    .line 837
    invoke-virtual {v1, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 838
    .line 839
    .line 840
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 841
    .line 842
    invoke-virtual {v1, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 843
    .line 844
    .line 845
    goto/16 :goto_b

    .line 846
    .line 847
    :cond_e
    sget-object v2, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->MEX_MNX:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 848
    .line 849
    if-eq v1, v2, :cond_10

    .line 850
    .line 851
    sget-object v2, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->MEX_IUS:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 852
    .line 853
    if-eq v1, v2, :cond_10

    .line 854
    .line 855
    sget-object v2, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->MEX_UNE:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 856
    .line 857
    if-ne v1, v2, :cond_f

    .line 858
    .line 859
    goto :goto_8

    .line 860
    :cond_f
    const/16 v16, 0x0

    .line 861
    .line 862
    goto :goto_9

    .line 863
    :cond_10
    :goto_8
    const/16 v16, 0x1

    .line 864
    .line 865
    :goto_9
    if-eqz v16, :cond_11

    .line 866
    .line 867
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 868
    .line 869
    move-object/from16 v2, v22

    .line 870
    .line 871
    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 872
    .line 873
    .line 874
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 875
    .line 876
    invoke-virtual {v1, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 877
    .line 878
    .line 879
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 880
    .line 881
    invoke-virtual {v1, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 882
    .line 883
    .line 884
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 885
    .line 886
    invoke-virtual {v1, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 887
    .line 888
    .line 889
    goto/16 :goto_b

    .line 890
    .line 891
    :cond_11
    move-object/from16 v2, v22

    .line 892
    .line 893
    sget-object v5, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->PER_PEO:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 894
    .line 895
    if-eq v1, v5, :cond_1b

    .line 896
    .line 897
    sget-object v5, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->PER_PET:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 898
    .line 899
    if-eq v1, v5, :cond_1b

    .line 900
    .line 901
    sget-object v5, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->PER_PNT:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 902
    .line 903
    if-ne v1, v5, :cond_12

    .line 904
    .line 905
    goto/16 :goto_a

    .line 906
    .line 907
    :cond_12
    sget-object v5, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->SWA_IND:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 908
    .line 909
    if-ne v1, v5, :cond_13

    .line 910
    .line 911
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 912
    .line 913
    const-string v2, "ENABLE_NAVIC"

    .line 914
    .line 915
    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 916
    .line 917
    .line 918
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 919
    .line 920
    invoke-virtual {v1, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 921
    .line 922
    .line 923
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 924
    .line 925
    move-object/from16 v2, v39

    .line 926
    .line 927
    move-object/from16 v3, v40

    .line 928
    .line 929
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 930
    .line 931
    .line 932
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 933
    .line 934
    move-object/from16 v3, v38

    .line 935
    .line 936
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 937
    .line 938
    .line 939
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 940
    .line 941
    move-object/from16 v3, v37

    .line 942
    .line 943
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 944
    .line 945
    .line 946
    goto/16 :goto_b

    .line 947
    .line 948
    :cond_13
    sget-object v5, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->KOR_LGT:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 949
    .line 950
    const-string v6, "ALLOW_CP_IGNORE_NFW_LOCATION_POLICY"

    .line 951
    .line 952
    const-string v7, "ALLOW_SUPL_IGNORE_NFW_LOCATION_POLICY"

    .line 953
    .line 954
    const-string v9, "SUPL_VER_SKT_NI"

    .line 955
    .line 956
    if-ne v1, v5, :cond_14

    .line 957
    .line 958
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 959
    .line 960
    invoke-virtual {v1, v12, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 961
    .line 962
    .line 963
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 964
    .line 965
    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 966
    .line 967
    .line 968
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 969
    .line 970
    invoke-virtual {v1, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 971
    .line 972
    .line 973
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 974
    .line 975
    invoke-virtual {v1, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 976
    .line 977
    .line 978
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 979
    .line 980
    invoke-virtual {v1, v9, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 981
    .line 982
    .line 983
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 984
    .line 985
    invoke-virtual {v1, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 986
    .line 987
    .line 988
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 989
    .line 990
    invoke-virtual {v1, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 991
    .line 992
    .line 993
    goto/16 :goto_b

    .line 994
    .line 995
    :cond_14
    sget-object v5, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->KOR_KTT:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 996
    .line 997
    if-ne v1, v5, :cond_15

    .line 998
    .line 999
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 1000
    .line 1001
    invoke-virtual {v1, v12, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1002
    .line 1003
    .line 1004
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 1005
    .line 1006
    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1007
    .line 1008
    .line 1009
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 1010
    .line 1011
    invoke-virtual {v1, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1012
    .line 1013
    .line 1014
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 1015
    .line 1016
    invoke-virtual {v1, v14, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1017
    .line 1018
    .line 1019
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 1020
    .line 1021
    invoke-virtual {v1, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1022
    .line 1023
    .line 1024
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 1025
    .line 1026
    invoke-virtual {v1, v9, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1027
    .line 1028
    .line 1029
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 1030
    .line 1031
    invoke-virtual {v1, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1032
    .line 1033
    .line 1034
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 1035
    .line 1036
    invoke-virtual {v1, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1037
    .line 1038
    .line 1039
    goto/16 :goto_b

    .line 1040
    .line 1041
    :cond_15
    sget-object v5, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->KOR_SKT:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 1042
    .line 1043
    if-ne v1, v5, :cond_16

    .line 1044
    .line 1045
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 1046
    .line 1047
    invoke-virtual {v1, v12, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1048
    .line 1049
    .line 1050
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 1051
    .line 1052
    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1053
    .line 1054
    .line 1055
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 1056
    .line 1057
    invoke-virtual {v1, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1058
    .line 1059
    .line 1060
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 1061
    .line 1062
    invoke-virtual {v1, v3, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1063
    .line 1064
    .line 1065
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 1066
    .line 1067
    invoke-virtual {v1, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1068
    .line 1069
    .line 1070
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 1071
    .line 1072
    invoke-virtual {v1, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1073
    .line 1074
    .line 1075
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 1076
    .line 1077
    invoke-virtual {v1, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1078
    .line 1079
    .line 1080
    goto/16 :goto_b

    .line 1081
    .line 1082
    :cond_16
    sget-object v2, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->CHN_CMC:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 1083
    .line 1084
    if-ne v1, v2, :cond_17

    .line 1085
    .line 1086
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 1087
    .line 1088
    const-string v2, "600"

    .line 1089
    .line 1090
    move-object/from16 v3, v20

    .line 1091
    .line 1092
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1093
    .line 1094
    .line 1095
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 1096
    .line 1097
    const-string v2, "SUPL_LOG_ENABLE"

    .line 1098
    .line 1099
    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1100
    .line 1101
    .line 1102
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 1103
    .line 1104
    const-string v2, "SUPL_LOG_PATH"

    .line 1105
    .line 1106
    const-string v3, "/data/AGPSLog.txt"

    .line 1107
    .line 1108
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1109
    .line 1110
    .line 1111
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 1112
    .line 1113
    const-string v2, "SUPL_NI_GPS_ICON"

    .line 1114
    .line 1115
    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1116
    .line 1117
    .line 1118
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 1119
    .line 1120
    const-string v2, "NO_DATA_STANDALONE"

    .line 1121
    .line 1122
    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1123
    .line 1124
    .line 1125
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 1126
    .line 1127
    const-string v2, "VENDOR_LBS_XTRA_SET_WITH_EE_IGNORE"

    .line 1128
    .line 1129
    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1130
    .line 1131
    .line 1132
    goto/16 :goto_b

    .line 1133
    .line 1134
    :cond_17
    sget-object v2, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->JPN_DCM:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 1135
    .line 1136
    if-ne v1, v2, :cond_18

    .line 1137
    .line 1138
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 1139
    .line 1140
    invoke-virtual {v1, v15, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1141
    .line 1142
    .line 1143
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 1144
    .line 1145
    move-object/from16 v2, v23

    .line 1146
    .line 1147
    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1148
    .line 1149
    .line 1150
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 1151
    .line 1152
    move-object/from16 v2, v24

    .line 1153
    .line 1154
    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1155
    .line 1156
    .line 1157
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 1158
    .line 1159
    const-string v2, "TCP_CONNETION_TIMEOUT"

    .line 1160
    .line 1161
    move-object/from16 v3, v18

    .line 1162
    .line 1163
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1164
    .line 1165
    .line 1166
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 1167
    .line 1168
    const-string v2, "SUPL_NTT_DOCOMO"

    .line 1169
    .line 1170
    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1171
    .line 1172
    .line 1173
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 1174
    .line 1175
    invoke-virtual {v1, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1176
    .line 1177
    .line 1178
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 1179
    .line 1180
    invoke-virtual {v1, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1181
    .line 1182
    .line 1183
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 1184
    .line 1185
    const-string v2, "SUPL_OPERATOR_DCM"

    .line 1186
    .line 1187
    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1188
    .line 1189
    .line 1190
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 1191
    .line 1192
    const-string v2, "SUPL_IS_AGGRESSIVE"

    .line 1193
    .line 1194
    invoke-virtual {v1, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1195
    .line 1196
    .line 1197
    goto :goto_b

    .line 1198
    :cond_18
    sget-object v2, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->JPN_KDI:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 1199
    .line 1200
    if-ne v1, v2, :cond_19

    .line 1201
    .line 1202
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 1203
    .line 1204
    invoke-virtual {v1, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1205
    .line 1206
    .line 1207
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 1208
    .line 1209
    invoke-virtual {v1, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1210
    .line 1211
    .line 1212
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 1213
    .line 1214
    invoke-virtual {v1, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1215
    .line 1216
    .line 1217
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 1218
    .line 1219
    const-string v2, "240"

    .line 1220
    .line 1221
    move-object/from16 v5, v19

    .line 1222
    .line 1223
    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1224
    .line 1225
    .line 1226
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 1227
    .line 1228
    const-string v2, "SUPL_OPERATOR_KDDI"

    .line 1229
    .line 1230
    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1231
    .line 1232
    .line 1233
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 1234
    .line 1235
    const-string v2, "SUPL_SETCAPS_MSA_NI"

    .line 1236
    .line 1237
    invoke-virtual {v1, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1238
    .line 1239
    .line 1240
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 1241
    .line 1242
    const-string v2, "SUPL_SETCAPS_MSA_SI"

    .line 1243
    .line 1244
    invoke-virtual {v1, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1245
    .line 1246
    .line 1247
    goto :goto_b

    .line 1248
    :cond_19
    move-object/from16 v5, v19

    .line 1249
    .line 1250
    sget-object v2, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->JPN_RKT:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 1251
    .line 1252
    if-ne v1, v2, :cond_1a

    .line 1253
    .line 1254
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 1255
    .line 1256
    invoke-virtual {v1, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1257
    .line 1258
    .line 1259
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 1260
    .line 1261
    invoke-virtual {v1, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1262
    .line 1263
    .line 1264
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 1265
    .line 1266
    invoke-virtual {v1, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1267
    .line 1268
    .line 1269
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 1270
    .line 1271
    const-string v2, "SUPL_OPERATOR_RAKUTEN"

    .line 1272
    .line 1273
    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1274
    .line 1275
    .line 1276
    goto :goto_b

    .line 1277
    :cond_1a
    sget-object v2, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->JPN_SBM:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 1278
    .line 1279
    if-ne v1, v2, :cond_1c

    .line 1280
    .line 1281
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 1282
    .line 1283
    move-object/from16 v2, v17

    .line 1284
    .line 1285
    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1286
    .line 1287
    .line 1288
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 1289
    .line 1290
    invoke-virtual {v1, v4, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1291
    .line 1292
    .line 1293
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 1294
    .line 1295
    invoke-virtual {v1, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1296
    .line 1297
    .line 1298
    goto :goto_b

    .line 1299
    :cond_1b
    :goto_a
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 1300
    .line 1301
    invoke-virtual {v1, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1302
    .line 1303
    .line 1304
    :cond_1c
    :goto_b
    iget-object v0, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 1305
    .line 1306
    return-object v0
.end method

.method public final isCanadaMarket()Z
    .locals 5

    .line 1
    const-string/jumbo v0, "ro.csc.country_code"

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const-string/jumbo v1, "ro.csc.countryiso_code"

    .line 9
    .line 10
    .line 11
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string/jumbo v3, "isCaMarket : code/country_Code/countryISO_Code = "

    .line 18
    .line 19
    .line 20
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v3, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    .line 24
    .line 25
    const-string v4, "/"

    .line 26
    .line 27
    invoke-static {v2, v3, v4, v0, v4}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const-string v3, "CarrierConfigForGnss"

    .line 31
    .line 32
    invoke-static {v2, v1, v3}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const-string v2, "BMC"

    .line 36
    .line 37
    iget-object v4, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-nez v2, :cond_1

    .line 44
    .line 45
    const-string v2, "RWC"

    .line 46
    .line 47
    iget-object v4, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-nez v2, :cond_1

    .line 54
    .line 55
    const-string v2, "TLS"

    .line 56
    .line 57
    iget-object v4, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    if-nez v2, :cond_1

    .line 64
    .line 65
    const-string v2, "SJR"

    .line 66
    .line 67
    iget-object v4, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    .line 68
    .line 69
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    if-nez v2, :cond_1

    .line 74
    .line 75
    const-string v2, "XAC"

    .line 76
    .line 77
    iget-object p0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    .line 78
    .line 79
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result p0

    .line 83
    if-nez p0, :cond_1

    .line 84
    .line 85
    const-string p0, "Canada"

    .line 86
    .line 87
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result p0

    .line 91
    if-nez p0, :cond_1

    .line 92
    .line 93
    const-string p0, "CA"

    .line 94
    .line 95
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result p0

    .line 99
    if-eqz p0, :cond_0

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_0
    const/4 p0, 0x0

    .line 103
    goto :goto_1

    .line 104
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 105
    :goto_1
    const-string/jumbo v0, "isCaMarket : "

    .line 106
    .line 107
    .line 108
    invoke-static {v0, v3, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 109
    .line 110
    .line 111
    return p0
.end method

.method public final isChinaCarrier()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mCarrier:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 2
    .line 3
    sget-object v0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->CHN_CHN:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 4
    .line 5
    if-eq p0, v0, :cond_1

    .line 6
    .line 7
    sget-object v0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->CHN_CHU:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 8
    .line 9
    if-eq p0, v0, :cond_1

    .line 10
    .line 11
    sget-object v0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->CHN_CHC:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 12
    .line 13
    if-eq p0, v0, :cond_1

    .line 14
    .line 15
    sget-object v0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->CHN_CMC:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 16
    .line 17
    if-eq p0, v0, :cond_1

    .line 18
    .line 19
    sget-object v0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->CHN_CTC:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 20
    .line 21
    if-ne p0, v0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p0, 0x0

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 27
    :goto_1
    return p0
.end method

.method public final isJapanSoftbank()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mCarrier:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 2
    .line 3
    sget-object v0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->JPN_SBM:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 4
    .line 5
    if-ne p0, v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    :goto_0
    return p0
.end method

.method public final isKoreaMarket()Z
    .locals 2

    .line 1
    const-string v0, "SKT"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    const-string v0, "SKC"

    .line 12
    .line 13
    iget-object v1, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    const-string v0, "SKO"

    .line 22
    .line 23
    iget-object v1, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    const-string v0, "LGT"

    .line 32
    .line 33
    iget-object v1, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_1

    .line 40
    .line 41
    const-string v0, "LUC"

    .line 42
    .line 43
    iget-object v1, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-nez v0, :cond_1

    .line 50
    .line 51
    const-string v0, "LUO"

    .line 52
    .line 53
    iget-object v1, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-nez v0, :cond_1

    .line 60
    .line 61
    const-string v0, "KTT"

    .line 62
    .line 63
    iget-object v1, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-nez v0, :cond_1

    .line 70
    .line 71
    const-string v0, "KTC"

    .line 72
    .line 73
    iget-object v1, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-nez v0, :cond_1

    .line 80
    .line 81
    const-string v0, "KTO"

    .line 82
    .line 83
    iget-object v1, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    if-nez v0, :cond_1

    .line 90
    .line 91
    const-string v0, "KOO"

    .line 92
    .line 93
    iget-object p0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    .line 94
    .line 95
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result p0

    .line 99
    if-eqz p0, :cond_0

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_0
    const/4 p0, 0x0

    .line 103
    goto :goto_1

    .line 104
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 105
    :goto_1
    const-string/jumbo v0, "isKORMarket : "

    .line 106
    .line 107
    .line 108
    const-string v1, "CarrierConfigForGnss"

    .line 109
    .line 110
    invoke-static {v0, v1, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 111
    .line 112
    .line 113
    return p0
.end method

.method public final isKoreaSktSim()Z
    .locals 2

    .line 1
    const-string v0, "45005"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSimOperator:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    const-string v0, "45011"

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSimOperator:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 25
    :goto_1
    return p0
.end method

.method public final isUSAMarket()Z
    .locals 5

    .line 1
    const-string/jumbo v0, "ro.csc.country_code"

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const-string/jumbo v1, "ro.csc.countryiso_code"

    .line 9
    .line 10
    .line 11
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string/jumbo v3, "isUSAMarket : code/country_Code/countryISO_Code = "

    .line 18
    .line 19
    .line 20
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v3, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    .line 24
    .line 25
    const-string v4, "/"

    .line 26
    .line 27
    invoke-static {v2, v3, v4, v0, v4}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const-string v3, "CarrierConfigForGnss"

    .line 31
    .line 32
    invoke-static {v2, v1, v3}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const-string v2, "TMB"

    .line 36
    .line 37
    iget-object v4, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-nez v2, :cond_1

    .line 44
    .line 45
    const-string v2, "ATT"

    .line 46
    .line 47
    iget-object v4, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-nez v2, :cond_1

    .line 54
    .line 55
    const-string v2, "TFA"

    .line 56
    .line 57
    iget-object v4, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    if-nez v2, :cond_1

    .line 64
    .line 65
    const-string v2, "TFO"

    .line 66
    .line 67
    iget-object v4, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    .line 68
    .line 69
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    if-nez v2, :cond_1

    .line 74
    .line 75
    const-string v2, "TFN"

    .line 76
    .line 77
    iget-object v4, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    .line 78
    .line 79
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    if-nez v2, :cond_1

    .line 84
    .line 85
    const-string v2, "TFC"

    .line 86
    .line 87
    iget-object v4, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    .line 88
    .line 89
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    if-nez v2, :cond_1

    .line 94
    .line 95
    const-string v2, "AIO"

    .line 96
    .line 97
    iget-object v4, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    .line 98
    .line 99
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    if-nez v2, :cond_1

    .line 104
    .line 105
    const-string v2, "TMK"

    .line 106
    .line 107
    iget-object v4, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    .line 108
    .line 109
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    if-nez v2, :cond_1

    .line 114
    .line 115
    const-string v2, "DSH"

    .line 116
    .line 117
    iget-object v4, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    .line 118
    .line 119
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result v2

    .line 123
    if-nez v2, :cond_1

    .line 124
    .line 125
    const-string v2, "DSA"

    .line 126
    .line 127
    iget-object v4, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    .line 128
    .line 129
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    move-result v2

    .line 133
    if-nez v2, :cond_1

    .line 134
    .line 135
    const-string v2, "DSG"

    .line 136
    .line 137
    iget-object v4, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    .line 138
    .line 139
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    move-result v2

    .line 143
    if-nez v2, :cond_1

    .line 144
    .line 145
    const-string v2, "XAU"

    .line 146
    .line 147
    iget-object v4, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    .line 148
    .line 149
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result v2

    .line 153
    if-nez v2, :cond_1

    .line 154
    .line 155
    const-string v2, "XAR"

    .line 156
    .line 157
    iget-object v4, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    .line 158
    .line 159
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    move-result v2

    .line 163
    if-nez v2, :cond_1

    .line 164
    .line 165
    const-string v2, "XAG"

    .line 166
    .line 167
    iget-object v4, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    .line 168
    .line 169
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    move-result v2

    .line 173
    if-nez v2, :cond_1

    .line 174
    .line 175
    const-string v2, "XAA"

    .line 176
    .line 177
    iget-object v4, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    .line 178
    .line 179
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    move-result v2

    .line 183
    if-nez v2, :cond_1

    .line 184
    .line 185
    const-string v2, "VZW"

    .line 186
    .line 187
    iget-object v4, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    .line 188
    .line 189
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    move-result v2

    .line 193
    if-nez v2, :cond_1

    .line 194
    .line 195
    const-string v2, "SPR"

    .line 196
    .line 197
    iget-object v4, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    .line 198
    .line 199
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    move-result v2

    .line 203
    if-nez v2, :cond_1

    .line 204
    .line 205
    const-string v2, "USC"

    .line 206
    .line 207
    iget-object v4, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    .line 208
    .line 209
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 210
    .line 211
    .line 212
    move-result v2

    .line 213
    if-nez v2, :cond_1

    .line 214
    .line 215
    const-string v2, "ACG"

    .line 216
    .line 217
    iget-object v4, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    .line 218
    .line 219
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    move-result v2

    .line 223
    if-nez v2, :cond_1

    .line 224
    .line 225
    const-string v2, "BST"

    .line 226
    .line 227
    iget-object v4, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    .line 228
    .line 229
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 230
    .line 231
    .line 232
    move-result v2

    .line 233
    if-nez v2, :cond_1

    .line 234
    .line 235
    const-string v2, "VMU"

    .line 236
    .line 237
    iget-object v4, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    .line 238
    .line 239
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 240
    .line 241
    .line 242
    move-result v2

    .line 243
    if-nez v2, :cond_1

    .line 244
    .line 245
    const-string v2, "XAS"

    .line 246
    .line 247
    iget-object p0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    .line 248
    .line 249
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 250
    .line 251
    .line 252
    move-result p0

    .line 253
    if-nez p0, :cond_1

    .line 254
    .line 255
    const-string p0, "USA"

    .line 256
    .line 257
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 258
    .line 259
    .line 260
    move-result p0

    .line 261
    if-nez p0, :cond_1

    .line 262
    .line 263
    const-string p0, "US"

    .line 264
    .line 265
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 266
    .line 267
    .line 268
    move-result p0

    .line 269
    if-eqz p0, :cond_0

    .line 270
    .line 271
    goto :goto_0

    .line 272
    :cond_0
    const/4 p0, 0x0

    .line 273
    goto :goto_1

    .line 274
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 275
    :goto_1
    const-string/jumbo v0, "isUSAMarket : "

    .line 276
    .line 277
    .line 278
    invoke-static {v0, v3, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 279
    .line 280
    .line 281
    return p0
.end method

.method public final isUsaVerizon()Z
    .locals 1

    .line 1
    const-string v0, "VZW"

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method
