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

    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCodeToCarrierMap:Ljava/util/HashMap;

    .line 11
    new-instance v1, Ljava/util/HashMap;

    .line 13
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 16
    iput-object v1, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 18
    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_TMO:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 20
    const-string v1, "TMB"

    .line 22
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_TMK:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 27
    const-string v1, "TMK"

    .line 29
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_TFN:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 34
    const-string v1, "TFN"

    .line 36
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_TFO:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 41
    const-string v1, "TFO"

    .line 43
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_DSH:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 48
    const-string v1, "DSH"

    .line 50
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_DSA:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 55
    const-string v1, "DSA"

    .line 57
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_DSG:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 62
    const-string v1, "DSG"

    .line 64
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_ATT:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 69
    const-string v1, "ATT"

    .line 71
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_AIO:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 76
    const-string v1, "AIO"

    .line 78
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_TFA:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 83
    const-string v1, "TFA"

    .line 85
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_TFC:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 90
    const-string v1, "TFC"

    .line 92
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_XAU:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 97
    const-string v1, "XAU"

    .line 99
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_XAA:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 104
    const-string v1, "XAA"

    .line 106
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_XAR:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 111
    const-string v1, "XAR"

    .line 113
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_XAG:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 118
    const-string v1, "XAG"

    .line 120
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_VZW:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 125
    const-string v1, "VZW"

    .line 127
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_SPR:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 132
    const-string v1, "SPR"

    .line 134
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_XAS:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 139
    const-string v1, "XAS"

    .line 141
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_BST:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 146
    const-string v1, "BST"

    .line 148
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_VMU:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 153
    const-string v1, "VMU"

    .line 155
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_USC:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 160
    const-string v1, "USC"

    .line 162
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_ACG:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 167
    const-string v1, "ACG"

    .line 169
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->JPN_DCM:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 174
    const-string v1, "DCM"

    .line 176
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->JPN_KDI:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 181
    const-string v1, "KDI"

    .line 183
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    const-string v1, "JCO"

    .line 188
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    const-string v1, "UQM"

    .line 193
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->JPN_RKT:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 198
    const-string v1, "RKT"

    .line 200
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->JPN_SBM:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 205
    const-string v1, "SBM"

    .line 207
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->CAD_TLS:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 212
    const-string v1, "TLS"

    .line 214
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    const-string v1, "KDO"

    .line 219
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    const-string v1, "PMB"

    .line 224
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->CAD_BMC:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 229
    const-string v1, "BMC"

    .line 231
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    const-string v1, "VMC"

    .line 236
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    const-string v1, "PCM"

    .line 241
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    const-string v1, "SOL"

    .line 246
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    const-string v1, "BWA"

    .line 251
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->CAD_RWC:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 256
    const-string v1, "RWC"

    .line 258
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    const-string v1, "FMC"

    .line 263
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    const-string v1, "CHR"

    .line 268
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    const-string v1, "TBT"

    .line 273
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    const-string v1, "VTR"

    .line 278
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    const-string v1, "FIZ"

    .line 283
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    const-string v1, "ESK"

    .line 288
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    const-string v1, "SJR"

    .line 293
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    const-string v1, "GLW"

    .line 298
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->CAD_XAC:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 303
    const-string v1, "XAC"

    .line 305
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    const-string v1, "CAO"

    .line 310
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->KOR_SKT:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 315
    const-string v1, "SKT"

    .line 317
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    const-string v1, "SKC"

    .line 322
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    const-string v1, "SKO"

    .line 327
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->KOR_LGT:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 332
    const-string v1, "LGT"

    .line 334
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    const-string v1, "LUC"

    .line 339
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    const-string v1, "LUO"

    .line 344
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->KOR_KTT:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 349
    const-string v1, "KTT"

    .line 351
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    const-string v1, "KTC"

    .line 356
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    const-string v1, "KTO"

    .line 361
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->CHN_CMC:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 366
    const-string v1, "CHM"

    .line 368
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->CHN_CTC:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 373
    const-string v1, "CTC"

    .line 375
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->CHN_CHU:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 380
    const-string v1, "CHU"

    .line 382
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->CHN_CHC:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 387
    const-string v1, "CHN"

    .line 389
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    const-string v1, "CHC"

    .line 394
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->ARG_UFN:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 399
    const-string v1, "UFN"

    .line 401
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->MEX_MNX:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 406
    const-string v1, "MNX"

    .line 408
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->MEX_IUS:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 413
    const-string v1, "IUS"

    .line 415
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->MEX_UNE:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 420
    const-string v1, "UNE"

    .line 422
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->PER_PEO:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 427
    const-string v1, "PEO"

    .line 429
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->PER_PNT:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 434
    const-string v1, "PNT"

    .line 436
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->PER_PET:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 441
    const-string v1, "PET"

    .line 443
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->SUI_SWC:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 448
    const-string v1, "SWC"

    .line 450
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->TUR_TUR:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 455
    const-string v1, "TUR"

    .line 457
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->SWA_IND:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 462
    const-string v1, "INS"

    .line 464
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    const-string v1, "INU"

    .line 469
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/server/location/gnss/sec/CarrierConfig;
    .locals 2

    .line 1
    const-class v0, Lcom/android/server/location/gnss/sec/CarrierConfig;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/android/server/location/gnss/sec/CarrierConfig;->mInstance:Lcom/android/server/location/gnss/sec/CarrierConfig;

    .line 6
    if-nez v1, :cond_0

    .line 8
    new-instance v1, Lcom/android/server/location/gnss/sec/CarrierConfig;

    .line 10
    invoke-direct {v1}, Lcom/android/server/location/gnss/sec/CarrierConfig;-><init>()V

    .line 13
    sput-object v1, Lcom/android/server/location/gnss/sec/CarrierConfig;->mInstance:Lcom/android/server/location/gnss/sec/CarrierConfig;

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

    .line 3
    if-eq p0, v0, :cond_1

    .line 5
    sget-object v0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_TFC:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 7
    if-eq p0, v0, :cond_1

    .line 9
    sget-object v0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_AIO:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 11
    if-eq p0, v0, :cond_1

    .line 13
    sget-object v0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->CAD_BMC:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 15
    if-eq p0, v0, :cond_1

    .line 17
    sget-object v0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->CAD_RWC:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 19
    if-eq p0, v0, :cond_1

    .line 21
    sget-object v0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->CAD_TLS:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 23
    if-eq p0, v0, :cond_1

    .line 25
    sget-object v0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->CAD_XAC:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 27
    if-ne p0, v0, :cond_0

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

    .line 3
    if-eq p0, v0, :cond_1

    .line 5
    sget-object v0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_TFO:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 7
    if-eq p0, v0, :cond_1

    .line 9
    sget-object v0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_DSH:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 11
    if-eq p0, v0, :cond_1

    .line 13
    sget-object v0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_TMK:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 15
    if-eq p0, v0, :cond_1

    .line 17
    sget-object v0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_XAU:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 19
    if-eq p0, v0, :cond_1

    .line 21
    sget-object v0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_XAG:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 23
    if-ne p0, v0, :cond_0

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

    .line 3
    if-eqz v0, :cond_4

    .line 5
    invoke-virtual {p0}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isKoreaMarket()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_4

    .line 11
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSimOperator:Ljava/lang/String;

    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    sget-object v1, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->KOR_SKT:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 18
    const/4 v2, -0x1

    .line 19
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 22
    move-result v3

    .line 23
    sparse-switch v3, :sswitch_data_0

    .line 26
    goto :goto_0

    .line 27
    :sswitch_0
    const-string v3, "45011"

    .line 29
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_0

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

    .line 40
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    move-result v0

    .line 44
    if-nez v0, :cond_1

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

    .line 51
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    move-result v0

    .line 55
    if-nez v0, :cond_2

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

    .line 62
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    move-result v0

    .line 66
    if-nez v0, :cond_3

    .line 68
    goto :goto_0

    .line 69
    :cond_3
    const/4 v2, 0x0

    .line 70
    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 73
    goto :goto_1

    .line 74
    :pswitch_0
    return-object v1

    .line 75
    :pswitch_1
    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->KOR_KTT:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 77
    return-object p0

    .line 78
    :pswitch_2
    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->KOR_LGT:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 80
    return-object p0

    .line 81
    :pswitch_3
    return-object v1

    .line 82
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCodeToCarrierMap:Ljava/util/HashMap;

    .line 84
    iget-object p0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    .line 86
    sget-object v1, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->NO_OPERATOR:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 88
    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    move-result-object p0

    .line 92
    check-cast p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

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

    .line 3
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 5
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 8
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/location/gnss/sec/CarrierConfig;->getCarrier()Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 11
    move-result-object v1

    .line 12
    sget-object v2, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_ATT:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 14
    if-eq v1, v2, :cond_1

    .line 16
    sget-object v2, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_XAR:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 18
    if-eq v1, v2, :cond_1

    .line 20
    sget-object v2, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_DSA:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 22
    if-eq v1, v2, :cond_1

    .line 24
    sget-object v2, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_DSG:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 26
    if-ne v1, v2, :cond_0

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

    .line 34
    const-string v6, "23"

    .line 36
    const-string v7, "WARM_STANDBY2"

    .line 38
    const-string v8, "3"

    .line 40
    const-string v9, "EE_SYNC_THRESHOLD_DAYS"

    .line 42
    const-string v10, "RTI_ENABLE"

    .line 44
    const-string v11, "VENDOR_LBS_SERVER_ENABLE"

    .line 46
    const-string v12, "SUPL_NI_ALLOW_GPS_OFF"

    .line 48
    const-string v13, "TLSv1_2"

    .line 50
    const-string v14, "AUTO_SUPL_VERSION_FOR_NI"

    .line 52
    const-string v15, "7200"

    .line 54
    const-string v3, "2"

    .line 56
    const-string v4, "CP_LPP_GUARD_TIME_SEC"

    .line 58
    move-object/from16 v17, v1

    .line 60
    const-string v1, "REAIDING_INTERVAL_SEC"

    .line 62
    move-object/from16 v18, v5

    .line 64
    const-string v5, "SHA256"

    .line 66
    move-object/from16 v19, v6

    .line 68
    const-string v6, "SUPL_HMAC_HASH"

    .line 70
    move-object/from16 v20, v7

    .line 72
    const-string v7, "SUPL_SSL_METHOD"

    .line 74
    move-object/from16 v21, v8

    .line 76
    const-string v8, "SUPL_OTDOA_CAPABLE"

    .line 78
    move-object/from16 v22, v9

    .line 80
    const-string v9, "SUPL_ECID_CAPABLE"

    .line 82
    move-object/from16 v23, v10

    .line 84
    const-string v10, "SUPL_USE_APN"

    .line 86
    move-object/from16 v24, v11

    .line 88
    const-string v11, "FALSE"

    .line 90
    move-object/from16 v25, v8

    .line 92
    const-string v8, "SUPL_LPP_CAPABLE"

    .line 94
    move-object/from16 v26, v8

    .line 96
    const-string v8, "TRUE"

    .line 98
    if-eqz v2, :cond_2

    .line 100
    iget-object v2, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 102
    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    iget-object v2, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 107
    invoke-virtual {v2, v1, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 112
    invoke-virtual {v1, v14, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 117
    invoke-virtual {v1, v7, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 122
    invoke-virtual {v1, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 127
    invoke-virtual {v1, v12, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 132
    invoke-virtual {v1, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 137
    invoke-virtual {v1, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 142
    move-object/from16 v2, v26

    .line 144
    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 149
    move-object/from16 v2, v25

    .line 151
    invoke-virtual {v1, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 156
    move-object/from16 v2, v24

    .line 158
    invoke-virtual {v1, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 163
    move-object/from16 v2, v23

    .line 165
    invoke-virtual {v1, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 170
    move-object/from16 v2, v21

    .line 172
    move-object/from16 v3, v22

    .line 174
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 179
    move-object/from16 v2, v19

    .line 181
    move-object/from16 v3, v20

    .line 183
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 188
    move-object/from16 v2, v18

    .line 190
    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    goto/16 :goto_b

    .line 195
    :cond_2
    move-object/from16 v27, v18

    .line 197
    move-object/from16 v28, v19

    .line 199
    move-object/from16 v29, v20

    .line 201
    move-object/from16 v30, v21

    .line 203
    move-object/from16 v31, v22

    .line 205
    move-object/from16 v32, v23

    .line 207
    move-object/from16 v33, v24

    .line 209
    move-object/from16 v34, v25

    .line 211
    move-object/from16 v2, v26

    .line 213
    invoke-static/range {v17 .. v17}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isTmbConfigRequired(Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;)Z

    .line 216
    move-result v18

    .line 217
    const-string v2, "ENABLE_5G_CP_CAPS_AUTO"

    .line 219
    move-object/from16 v19, v2

    .line 221
    const-string v2, "ENABLE_5G_CP_CAPS_MSA"

    .line 223
    move-object/from16 v20, v2

    .line 225
    const-string v2, "1"

    .line 227
    move-object/from16 v21, v2

    .line 229
    const-string v2, "ENABLE_5G_CP_CAPS_MSB"

    .line 231
    if-eqz v18, :cond_4

    .line 233
    move-object/from16 v18, v2

    .line 235
    iget-object v2, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 237
    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    iget-object v2, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 242
    invoke-virtual {v2, v1, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 247
    invoke-virtual {v1, v14, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 252
    invoke-virtual {v1, v7, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 257
    invoke-virtual {v1, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 262
    invoke-virtual {v1, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 267
    invoke-virtual {v1, v12, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 272
    invoke-virtual {v1, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 277
    move-object/from16 v2, v26

    .line 279
    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 284
    move-object/from16 v2, v34

    .line 286
    invoke-virtual {v1, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 291
    move-object/from16 v2, v33

    .line 293
    invoke-virtual {v1, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 298
    move-object/from16 v2, v32

    .line 300
    invoke-virtual {v1, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 305
    move-object/from16 v2, v30

    .line 307
    move-object/from16 v3, v31

    .line 309
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 314
    move-object/from16 v2, v28

    .line 316
    move-object/from16 v3, v29

    .line 318
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 323
    move-object/from16 v2, v27

    .line 325
    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mDeviceMode:Ljava/lang/String;

    .line 330
    if-eqz v1, :cond_3

    .line 332
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 335
    move-result-object v1

    .line 336
    const-string/jumbo v2, "tablet"

    .line 339
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

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

    .line 347
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 349
    move-object/from16 v3, v18

    .line 351
    move-object/from16 v2, v21

    .line 353
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 358
    move-object/from16 v3, v20

    .line 360
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 365
    move-object/from16 v3, v19

    .line 367
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 372
    const-string v3, "ENABLE_4G_CP_CAPS_MSB"

    .line 374
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 379
    const-string v3, "ENABLE_4G_CP_CAPS_MSA"

    .line 381
    const-string v4, "0"

    .line 383
    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 388
    const-string v3, "ENABLE_4G_CP_CAPS_AUTO"

    .line 390
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 395
    const-string v3, "ENABLE_3G_CP_CAPS_MSB"

    .line 397
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 402
    const-string v3, "ENABLE_3G_CP_CAPS_MSA"

    .line 404
    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 409
    const-string v3, "ENABLE_3G_CP_CAPS_AUTO"

    .line 411
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 416
    const-string v3, "ENABLE_2G_CP_CAPS_MSB"

    .line 418
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 423
    const-string v3, "ENABLE_2G_CP_CAPS_MSA"

    .line 425
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 430
    const-string v3, "ENABLE_2G_CP_CAPS_AUTO"

    .line 432
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 437
    const-string v2, "ENABLE_LPPE_CIVIC_ADDRESS"

    .line 439
    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 444
    const-string v2, "ENABLE_LPP_HA_GAD_SHAPE"

    .line 446
    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    goto/16 :goto_b

    .line 451
    :cond_4
    move-object/from16 v40, v2

    .line 453
    move-object/from16 v18, v13

    .line 455
    move-object/from16 v37, v19

    .line 457
    move-object/from16 v38, v20

    .line 459
    move-object/from16 v39, v21

    .line 461
    move-object/from16 v2, v26

    .line 463
    move-object/from16 v19, v28

    .line 465
    move-object/from16 v35, v29

    .line 467
    move-object/from16 v21, v30

    .line 469
    move-object/from16 v36, v31

    .line 471
    move-object/from16 v23, v32

    .line 473
    move-object/from16 v24, v33

    .line 475
    move-object/from16 v13, v34

    .line 477
    invoke-static/range {v17 .. v17}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isCanadaConfigRequired(Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;)Z

    .line 480
    move-result v20

    .line 481
    move-object/from16 v25, v13

    .line 483
    const-string v13, "TLSv1"

    .line 485
    const-string v2, "300"

    .line 487
    move-object/from16 v22, v9

    .line 489
    const-string/jumbo v9, "emergencyExtensionSeconds"

    .line 492
    if-eqz v20, :cond_5

    .line 494
    move-object/from16 v20, v12

    .line 496
    iget-object v12, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 498
    invoke-virtual {v12, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    iget-object v2, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 503
    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    iget-object v2, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 508
    invoke-virtual {v2, v1, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 513
    invoke-virtual {v1, v14, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 518
    invoke-virtual {v1, v7, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 523
    invoke-virtual {v1, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 528
    invoke-virtual {v1, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 533
    move-object/from16 v2, v20

    .line 535
    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 540
    move-object/from16 v3, v22

    .line 542
    invoke-virtual {v1, v3, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 547
    move-object/from16 v4, v26

    .line 549
    invoke-virtual {v1, v4, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 554
    move-object/from16 v12, v25

    .line 556
    invoke-virtual {v1, v12, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 561
    move-object/from16 v2, v24

    .line 563
    invoke-virtual {v1, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 566
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 568
    move-object/from16 v2, v23

    .line 570
    invoke-virtual {v1, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 575
    move-object/from16 v2, v21

    .line 577
    move-object/from16 v3, v36

    .line 579
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 582
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 584
    move-object/from16 v2, v19

    .line 586
    move-object/from16 v3, v35

    .line 588
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 591
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 593
    move-object/from16 v2, v27

    .line 595
    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 598
    goto/16 :goto_b

    .line 600
    :cond_5
    move-object/from16 v3, v22

    .line 602
    move-object/from16 v12, v25

    .line 604
    move-object/from16 v4, v26

    .line 606
    sget-object v14, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_VZW:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 608
    move-object/from16 v15, v17

    .line 610
    move-object/from16 v17, v2

    .line 612
    if-ne v15, v14, :cond_6

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

    .line 619
    move-object/from16 v19, v9

    .line 621
    const-string v9, "30"

    .line 623
    move-object/from16 v20, v1

    .line 625
    const-string v1, "SUPL_UT3_SEC"

    .line 627
    move-object/from16 v22, v3

    .line 629
    const-string v3, "SUPL_UT2_SEC"

    .line 631
    move-object/from16 v21, v13

    .line 633
    const-string v13, "10"

    .line 635
    move-object/from16 v23, v15

    .line 637
    const-string v15, "SUPL_UT1_SEC"

    .line 639
    move-object/from16 v24, v2

    .line 641
    const-string v2, "USE_RRLP_GOOGLE_SUPL"

    .line 643
    if-eqz v14, :cond_7

    .line 645
    iget-object v14, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 647
    invoke-virtual {v14, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 650
    iget-object v4, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 652
    invoke-virtual {v4, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 655
    iget-object v4, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 657
    invoke-virtual {v4, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 660
    iget-object v4, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 662
    invoke-virtual {v4, v15, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 665
    iget-object v4, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 667
    invoke-virtual {v4, v3, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 670
    iget-object v3, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 672
    invoke-virtual {v3, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 675
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 677
    invoke-virtual {v1, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 680
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 682
    move-object/from16 v2, v18

    .line 684
    invoke-virtual {v1, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 687
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 689
    invoke-virtual {v1, v12, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 692
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 694
    const-string v2, "SUPL_MULTI_LOCID_CAPABLE"

    .line 696
    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 699
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 701
    move-object/from16 v14, v24

    .line 703
    invoke-virtual {v1, v14, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 706
    goto/16 :goto_b

    .line 708
    :cond_7
    move-object/from16 v18, v9

    .line 710
    move-object/from16 v14, v24

    .line 712
    sget-object v9, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_SPR:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 714
    move-object/from16 v24, v1

    .line 716
    move-object/from16 v1, v23

    .line 718
    if-eq v1, v9, :cond_9

    .line 720
    sget-object v9, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_XAS:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 722
    if-eq v1, v9, :cond_9

    .line 724
    sget-object v9, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_BST:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 726
    if-eq v1, v9, :cond_9

    .line 728
    sget-object v9, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_VMU:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 730
    if-ne v1, v9, :cond_8

    .line 732
    goto :goto_4

    .line 733
    :cond_8
    move-object/from16 v23, v3

    .line 735
    const/4 v9, 0x0

    .line 736
    goto :goto_5

    .line 737
    :cond_9
    :goto_4
    move-object/from16 v23, v3

    .line 739
    const/4 v9, 0x1

    .line 740
    :goto_5
    const-string v3, "USE_NI_SLP_ADDRESS"

    .line 742
    if-eqz v9, :cond_a

    .line 744
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 746
    invoke-virtual {v1, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 749
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 751
    move-object/from16 v4, v21

    .line 753
    invoke-virtual {v1, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 756
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 758
    invoke-virtual {v1, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 761
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 763
    invoke-virtual {v1, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 766
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 768
    invoke-virtual {v1, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 771
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 773
    const-string v3, "SUPL_HOST_NI"

    .line 775
    const-string/jumbo v4, "supl2019.lbs.sprint.com"

    .line 778
    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 781
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 783
    invoke-virtual {v1, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 786
    goto/16 :goto_b

    .line 788
    :cond_a
    sget-object v9, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_USC:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 790
    if-eq v1, v9, :cond_c

    .line 792
    sget-object v9, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_ACG:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 794
    if-ne v1, v9, :cond_b

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

    .line 802
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 804
    invoke-virtual {v1, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 807
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 809
    invoke-virtual {v1, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 812
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 814
    invoke-virtual {v1, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 817
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 819
    invoke-virtual {v1, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 822
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 824
    const-string v2, "TLSv1_1"

    .line 826
    invoke-virtual {v1, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 829
    goto/16 :goto_b

    .line 831
    :cond_d
    sget-object v2, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->ARG_UFN:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 833
    if-ne v1, v2, :cond_e

    .line 835
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 837
    invoke-virtual {v1, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 840
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 842
    invoke-virtual {v1, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 845
    goto/16 :goto_b

    .line 847
    :cond_e
    sget-object v2, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->MEX_MNX:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 849
    if-eq v1, v2, :cond_10

    .line 851
    sget-object v2, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->MEX_IUS:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 853
    if-eq v1, v2, :cond_10

    .line 855
    sget-object v2, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->MEX_UNE:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 857
    if-ne v1, v2, :cond_f

    .line 859
    goto :goto_8

    .line 860
    :cond_f
    const/16 v16, 0x0

    .line 862
    goto :goto_9

    .line 863
    :cond_10
    :goto_8
    const/16 v16, 0x1

    .line 865
    :goto_9
    if-eqz v16, :cond_11

    .line 867
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 869
    move-object/from16 v2, v22

    .line 871
    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 874
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 876
    invoke-virtual {v1, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 879
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 881
    invoke-virtual {v1, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 884
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 886
    invoke-virtual {v1, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 889
    goto/16 :goto_b

    .line 891
    :cond_11
    move-object/from16 v2, v22

    .line 893
    sget-object v5, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->PER_PEO:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 895
    if-eq v1, v5, :cond_1b

    .line 897
    sget-object v5, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->PER_PET:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 899
    if-eq v1, v5, :cond_1b

    .line 901
    sget-object v5, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->PER_PNT:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 903
    if-ne v1, v5, :cond_12

    .line 905
    goto/16 :goto_a

    .line 907
    :cond_12
    sget-object v5, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->SWA_IND:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 909
    if-ne v1, v5, :cond_13

    .line 911
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 913
    const-string v2, "ENABLE_NAVIC"

    .line 915
    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 918
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 920
    invoke-virtual {v1, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 923
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 925
    move-object/from16 v2, v39

    .line 927
    move-object/from16 v3, v40

    .line 929
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 932
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 934
    move-object/from16 v3, v38

    .line 936
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 939
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 941
    move-object/from16 v3, v37

    .line 943
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 946
    goto/16 :goto_b

    .line 948
    :cond_13
    sget-object v5, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->KOR_LGT:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 950
    const-string v6, "ALLOW_CP_IGNORE_NFW_LOCATION_POLICY"

    .line 952
    const-string v7, "ALLOW_SUPL_IGNORE_NFW_LOCATION_POLICY"

    .line 954
    const-string v9, "SUPL_VER_SKT_NI"

    .line 956
    if-ne v1, v5, :cond_14

    .line 958
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 960
    invoke-virtual {v1, v12, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 963
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 965
    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 968
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 970
    invoke-virtual {v1, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 973
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 975
    invoke-virtual {v1, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 978
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 980
    invoke-virtual {v1, v9, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 983
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 985
    invoke-virtual {v1, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 988
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 990
    invoke-virtual {v1, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 993
    goto/16 :goto_b

    .line 995
    :cond_14
    sget-object v5, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->KOR_KTT:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 997
    if-ne v1, v5, :cond_15

    .line 999
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 1001
    invoke-virtual {v1, v12, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1004
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 1006
    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1009
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 1011
    invoke-virtual {v1, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1014
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 1016
    invoke-virtual {v1, v14, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1019
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 1021
    invoke-virtual {v1, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1024
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 1026
    invoke-virtual {v1, v9, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1029
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 1031
    invoke-virtual {v1, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1034
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 1036
    invoke-virtual {v1, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1039
    goto/16 :goto_b

    .line 1041
    :cond_15
    sget-object v5, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->KOR_SKT:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 1043
    if-ne v1, v5, :cond_16

    .line 1045
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 1047
    invoke-virtual {v1, v12, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1050
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 1052
    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1055
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 1057
    invoke-virtual {v1, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1060
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 1062
    invoke-virtual {v1, v3, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1065
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 1067
    invoke-virtual {v1, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1070
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 1072
    invoke-virtual {v1, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1075
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 1077
    invoke-virtual {v1, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1080
    goto/16 :goto_b

    .line 1082
    :cond_16
    sget-object v2, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->CHN_CMC:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 1084
    if-ne v1, v2, :cond_17

    .line 1086
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 1088
    const-string v2, "600"

    .line 1090
    move-object/from16 v3, v20

    .line 1092
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1095
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 1097
    const-string v2, "SUPL_LOG_ENABLE"

    .line 1099
    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1102
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 1104
    const-string v2, "SUPL_LOG_PATH"

    .line 1106
    const-string v3, "/data/AGPSLog.txt"

    .line 1108
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1111
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 1113
    const-string v2, "SUPL_NI_GPS_ICON"

    .line 1115
    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1118
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 1120
    const-string v2, "NO_DATA_STANDALONE"

    .line 1122
    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1125
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 1127
    const-string v2, "VENDOR_LBS_XTRA_SET_WITH_EE_IGNORE"

    .line 1129
    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1132
    goto/16 :goto_b

    .line 1134
    :cond_17
    sget-object v2, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->JPN_DCM:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 1136
    if-ne v1, v2, :cond_18

    .line 1138
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 1140
    invoke-virtual {v1, v15, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1143
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 1145
    move-object/from16 v2, v23

    .line 1147
    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1150
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 1152
    move-object/from16 v2, v24

    .line 1154
    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1157
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 1159
    const-string v2, "TCP_CONNETION_TIMEOUT"

    .line 1161
    move-object/from16 v3, v18

    .line 1163
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1166
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 1168
    const-string v2, "SUPL_NTT_DOCOMO"

    .line 1170
    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1173
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 1175
    invoke-virtual {v1, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1178
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 1180
    invoke-virtual {v1, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1183
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 1185
    const-string v2, "SUPL_OPERATOR_DCM"

    .line 1187
    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1190
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 1192
    const-string v2, "SUPL_IS_AGGRESSIVE"

    .line 1194
    invoke-virtual {v1, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1197
    goto :goto_b

    .line 1198
    :cond_18
    sget-object v2, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->JPN_KDI:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 1200
    if-ne v1, v2, :cond_19

    .line 1202
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 1204
    invoke-virtual {v1, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1207
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 1209
    invoke-virtual {v1, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1212
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 1214
    invoke-virtual {v1, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1217
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 1219
    const-string v2, "240"

    .line 1221
    move-object/from16 v5, v19

    .line 1223
    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1226
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 1228
    const-string v2, "SUPL_OPERATOR_KDDI"

    .line 1230
    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1233
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 1235
    const-string v2, "SUPL_SETCAPS_MSA_NI"

    .line 1237
    invoke-virtual {v1, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1240
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 1242
    const-string v2, "SUPL_SETCAPS_MSA_SI"

    .line 1244
    invoke-virtual {v1, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1247
    goto :goto_b

    .line 1248
    :cond_19
    move-object/from16 v5, v19

    .line 1250
    sget-object v2, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->JPN_RKT:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 1252
    if-ne v1, v2, :cond_1a

    .line 1254
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 1256
    invoke-virtual {v1, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1259
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 1261
    invoke-virtual {v1, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1264
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 1266
    invoke-virtual {v1, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1269
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 1271
    const-string v2, "SUPL_OPERATOR_RAKUTEN"

    .line 1273
    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1276
    goto :goto_b

    .line 1277
    :cond_1a
    sget-object v2, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->JPN_SBM:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 1279
    if-ne v1, v2, :cond_1c

    .line 1281
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 1283
    move-object/from16 v2, v17

    .line 1285
    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1288
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 1290
    invoke-virtual {v1, v4, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1293
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 1295
    invoke-virtual {v1, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1298
    goto :goto_b

    .line 1299
    :cond_1b
    :goto_a
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 1301
    invoke-virtual {v1, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1304
    :cond_1c
    :goto_b
    iget-object v0, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 1306
    return-object v0
.end method

.method public final isCanadaMarket()Z
    .locals 5

    .line 1
    const-string/jumbo v0, "ro.csc.country_code"

    .line 4
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    move-result-object v0

    .line 8
    const-string/jumbo v1, "ro.csc.countryiso_code"

    .line 11
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    move-result-object v1

    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    .line 17
    const-string/jumbo v3, "isCaMarket : code/country_Code/countryISO_Code = "

    .line 20
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    iget-object v3, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    .line 25
    const-string v4, "/"

    .line 27
    invoke-static {v2, v3, v4, v0, v4}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    const-string v3, "CarrierConfigForGnss"

    .line 32
    invoke-static {v2, v1, v3}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const-string v2, "BMC"

    .line 37
    iget-object v4, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    .line 39
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    move-result v2

    .line 43
    if-nez v2, :cond_1

    .line 45
    const-string v2, "RWC"

    .line 47
    iget-object v4, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    .line 49
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    move-result v2

    .line 53
    if-nez v2, :cond_1

    .line 55
    const-string v2, "TLS"

    .line 57
    iget-object v4, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    .line 59
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    move-result v2

    .line 63
    if-nez v2, :cond_1

    .line 65
    const-string v2, "SJR"

    .line 67
    iget-object v4, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    .line 69
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    move-result v2

    .line 73
    if-nez v2, :cond_1

    .line 75
    const-string v2, "XAC"

    .line 77
    iget-object p0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    .line 79
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    move-result p0

    .line 83
    if-nez p0, :cond_1

    .line 85
    const-string p0, "Canada"

    .line 87
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 90
    move-result p0

    .line 91
    if-nez p0, :cond_1

    .line 93
    const-string p0, "CA"

    .line 95
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 98
    move-result p0

    .line 99
    if-eqz p0, :cond_0

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

    .line 108
    invoke-static {v0, v3, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 111
    return p0
.end method

.method public final isChinaCarrier()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mCarrier:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 3
    sget-object v0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->CHN_CHN:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 5
    if-eq p0, v0, :cond_1

    .line 7
    sget-object v0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->CHN_CHU:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 9
    if-eq p0, v0, :cond_1

    .line 11
    sget-object v0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->CHN_CHC:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 13
    if-eq p0, v0, :cond_1

    .line 15
    sget-object v0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->CHN_CMC:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 17
    if-eq p0, v0, :cond_1

    .line 19
    sget-object v0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->CHN_CTC:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 21
    if-ne p0, v0, :cond_0

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

    .line 3
    sget-object v0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->JPN_SBM:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 5
    if-ne p0, v0, :cond_0

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

    .line 3
    iget-object v1, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 11
    const-string v0, "SKC"

    .line 13
    iget-object v1, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_1

    .line 21
    const-string v0, "SKO"

    .line 23
    iget-object v1, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_1

    .line 31
    const-string v0, "LGT"

    .line 33
    iget-object v1, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_1

    .line 41
    const-string v0, "LUC"

    .line 43
    iget-object v1, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    move-result v0

    .line 49
    if-nez v0, :cond_1

    .line 51
    const-string v0, "LUO"

    .line 53
    iget-object v1, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    move-result v0

    .line 59
    if-nez v0, :cond_1

    .line 61
    const-string v0, "KTT"

    .line 63
    iget-object v1, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    move-result v0

    .line 69
    if-nez v0, :cond_1

    .line 71
    const-string v0, "KTC"

    .line 73
    iget-object v1, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    move-result v0

    .line 79
    if-nez v0, :cond_1

    .line 81
    const-string v0, "KTO"

    .line 83
    iget-object v1, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 88
    move-result v0

    .line 89
    if-nez v0, :cond_1

    .line 91
    const-string v0, "KOO"

    .line 93
    iget-object p0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    .line 95
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 98
    move-result p0

    .line 99
    if-eqz p0, :cond_0

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

    .line 108
    const-string v1, "CarrierConfigForGnss"

    .line 110
    invoke-static {v0, v1, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 113
    return p0
.end method

.method public final isKoreaSktSim()Z
    .locals 2

    .line 1
    const-string v0, "45005"

    .line 3
    iget-object v1, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSimOperator:Ljava/lang/String;

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 11
    const-string v0, "45011"

    .line 13
    iget-object p0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSimOperator:Ljava/lang/String;

    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    move-result p0

    .line 19
    if-eqz p0, :cond_0

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

    .line 4
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    move-result-object v0

    .line 8
    const-string/jumbo v1, "ro.csc.countryiso_code"

    .line 11
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    move-result-object v1

    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    .line 17
    const-string/jumbo v3, "isUSAMarket : code/country_Code/countryISO_Code = "

    .line 20
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    iget-object v3, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    .line 25
    const-string v4, "/"

    .line 27
    invoke-static {v2, v3, v4, v0, v4}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    const-string v3, "CarrierConfigForGnss"

    .line 32
    invoke-static {v2, v1, v3}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const-string v2, "TMB"

    .line 37
    iget-object v4, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    .line 39
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    move-result v2

    .line 43
    if-nez v2, :cond_1

    .line 45
    const-string v2, "ATT"

    .line 47
    iget-object v4, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    .line 49
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    move-result v2

    .line 53
    if-nez v2, :cond_1

    .line 55
    const-string v2, "TFA"

    .line 57
    iget-object v4, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    .line 59
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    move-result v2

    .line 63
    if-nez v2, :cond_1

    .line 65
    const-string v2, "TFO"

    .line 67
    iget-object v4, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    .line 69
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    move-result v2

    .line 73
    if-nez v2, :cond_1

    .line 75
    const-string v2, "TFN"

    .line 77
    iget-object v4, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    .line 79
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    move-result v2

    .line 83
    if-nez v2, :cond_1

    .line 85
    const-string v2, "TFC"

    .line 87
    iget-object v4, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    .line 89
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 92
    move-result v2

    .line 93
    if-nez v2, :cond_1

    .line 95
    const-string v2, "AIO"

    .line 97
    iget-object v4, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    .line 99
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 102
    move-result v2

    .line 103
    if-nez v2, :cond_1

    .line 105
    const-string v2, "TMK"

    .line 107
    iget-object v4, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    .line 109
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 112
    move-result v2

    .line 113
    if-nez v2, :cond_1

    .line 115
    const-string v2, "DSH"

    .line 117
    iget-object v4, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    .line 119
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 122
    move-result v2

    .line 123
    if-nez v2, :cond_1

    .line 125
    const-string v2, "DSA"

    .line 127
    iget-object v4, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    .line 129
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 132
    move-result v2

    .line 133
    if-nez v2, :cond_1

    .line 135
    const-string v2, "DSG"

    .line 137
    iget-object v4, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    .line 139
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 142
    move-result v2

    .line 143
    if-nez v2, :cond_1

    .line 145
    const-string v2, "XAU"

    .line 147
    iget-object v4, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    .line 149
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 152
    move-result v2

    .line 153
    if-nez v2, :cond_1

    .line 155
    const-string v2, "XAR"

    .line 157
    iget-object v4, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    .line 159
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 162
    move-result v2

    .line 163
    if-nez v2, :cond_1

    .line 165
    const-string v2, "XAG"

    .line 167
    iget-object v4, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    .line 169
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 172
    move-result v2

    .line 173
    if-nez v2, :cond_1

    .line 175
    const-string v2, "XAA"

    .line 177
    iget-object v4, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    .line 179
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 182
    move-result v2

    .line 183
    if-nez v2, :cond_1

    .line 185
    const-string v2, "VZW"

    .line 187
    iget-object v4, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    .line 189
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 192
    move-result v2

    .line 193
    if-nez v2, :cond_1

    .line 195
    const-string v2, "SPR"

    .line 197
    iget-object v4, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    .line 199
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 202
    move-result v2

    .line 203
    if-nez v2, :cond_1

    .line 205
    const-string v2, "USC"

    .line 207
    iget-object v4, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    .line 209
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 212
    move-result v2

    .line 213
    if-nez v2, :cond_1

    .line 215
    const-string v2, "ACG"

    .line 217
    iget-object v4, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    .line 219
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 222
    move-result v2

    .line 223
    if-nez v2, :cond_1

    .line 225
    const-string v2, "BST"

    .line 227
    iget-object v4, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    .line 229
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 232
    move-result v2

    .line 233
    if-nez v2, :cond_1

    .line 235
    const-string v2, "VMU"

    .line 237
    iget-object v4, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    .line 239
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 242
    move-result v2

    .line 243
    if-nez v2, :cond_1

    .line 245
    const-string v2, "XAS"

    .line 247
    iget-object p0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    .line 249
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 252
    move-result p0

    .line 253
    if-nez p0, :cond_1

    .line 255
    const-string p0, "USA"

    .line 257
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 260
    move-result p0

    .line 261
    if-nez p0, :cond_1

    .line 263
    const-string p0, "US"

    .line 265
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 268
    move-result p0

    .line 269
    if-eqz p0, :cond_0

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

    .line 278
    invoke-static {v0, v3, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 281
    return p0
.end method

.method public final isUsaVerizon()Z
    .locals 1

    .line 1
    const-string v0, "VZW"

    .line 3
    iget-object p0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    .line 5
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result p0

    .line 9
    return p0
.end method
