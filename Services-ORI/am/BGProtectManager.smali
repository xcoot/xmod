.class public final Lcom/android/server/am/BGProtectManager;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final BOOTING_EMPTY_KILL_SKIP_ARRAY:[Ljava/lang/String;

.field public static final CAMERA_GUARD_ARRAY:[Ljava/lang/String;

.field public static final DHA_DYNAMICEXCEPT_PROC_ARRAY:[Ljava/lang/String;

.field public static final DHA_NEVERKILLEXCEPT_ARRAY:[[Ljava/lang/String;

.field public static final DHA_NEVERKILLEXCEPT_ARRAY_BY_KEY:[[Ljava/lang/String;

.field public static final DHA_STATICEXCEPT_PROC_ARRAY:[[Ljava/lang/String;

.field public static final LMKD_CAM_CLIENT_EXCEPT_ARRAY:[Ljava/lang/String;

.field public static final PROVIDER_LIFEGUARD_ARRAY:[Ljava/lang/String;

.field public static final WEBVIEW_ADJ_THRESHOLD:I

.field public static allowListCleared:Z

.field public static final beks_package_key_bit:I

.field public static final dha_MLexcept_map:Ljava/util/ArrayList;

.field public static final dha_amsexcept_map:Ljava/util/HashMap;

.field public static final dha_cameraguard_map:Ljava/util/HashMap;

.field public static final dha_keep_onlyact_key:I

.field public static final dha_keepchimera_key:I

.field public static final dha_keepempty_chn_key:I

.field public static dha_keepempty_key:I

.field public static dha_keepempty_key_knox:I

.field public static final dha_keepempty_map:Ljava/util/HashMap;

.field public static final dha_neverkillexcept_key:I

.field public static final dha_neverkillexcept_map:Ljava/util/HashMap;

.field public static mAMSExceptionEnable:Z

.field public static final mCameraGuardEnable:Z

.field public static final mTotalMemMb:J

.field public static final sBEKS_processList:Ljava/util/ArrayList;

.field public static final sProvider_lifeguard_key:I

.field public static final sProvider_lifeguard_memory_TH:I


# instance fields
.field public AMSExceptionProviderUpgradeAdjEnable:Z

.field public BOOTING_EMPTY_KILL_SKIP_ENABLE:Z

.field public CLEANUP_WEBVIEW_ENABLE:Z

.field public DIALER_EXCEPTION_TH:I

.field public NEVERKILL_SQETOOL_ENABLE:Z

.field public NapProcessSlotDefault:Lcom/android/server/am/ProcessRecord;

.field public NapProcessSlotLimit:I

.field public PICKED_ADJ_EXCEPT:Ljava/util/ArrayList;

.field public PICKED_ADJ_TIME_LIMIT:I

.field public mContext:Landroid/content/Context;

.field public mDhaKeepEmptyEnable:I

.field public mDhaKeepEmptyEnableKnox:I

.field public mKnoxAMSExceptionEnable:Z

.field public recentActivityProcessLimit:I

.field public recentActivityProcessList:Ljava/util/ArrayList;

.field public removeContactExceptList:Z


# direct methods
.method static constructor <clinit>()V
    .locals 38

    .line 1
    invoke-static {}, Landroid/os/Process;->getTotalMemory()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/32 v2, 0x100000

    .line 6
    .line 7
    .line 8
    div-long/2addr v0, v2

    .line 9
    sput-wide v0, Lcom/android/server/am/BGProtectManager;->mTotalMemMb:J

    .line 10
    .line 11
    const-string v0, "ams_exception_enable"

    .line 12
    .line 13
    const-string/jumbo v1, "true"

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyBool(Ljava/lang/String;Ljava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    sput-boolean v0, Lcom/android/server/am/BGProtectManager;->mAMSExceptionEnable:Z

    .line 21
    .line 22
    const/16 v0, 0x398

    .line 23
    .line 24
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string/jumbo v2, "webview_adj_th"

    .line 29
    .line 30
    .line 31
    invoke-static {v2, v0}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    sput v0, Lcom/android/server/am/BGProtectManager;->WEBVIEW_ADJ_THRESHOLD:I

    .line 36
    .line 37
    const-string/jumbo v0, "camera_guard_enable"

    .line 38
    .line 39
    .line 40
    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyBool(Ljava/lang/String;Ljava/lang/String;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    sput-boolean v0, Lcom/android/server/am/BGProtectManager;->mCameraGuardEnable:Z

    .line 45
    .line 46
    const-string v0, "beks_key"

    .line 47
    .line 48
    const-string v1, "31"

    .line 49
    .line 50
    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    sput v0, Lcom/android/server/am/BGProtectManager;->beks_package_key_bit:I

    .line 55
    .line 56
    const/4 v0, 0x0

    .line 57
    sput-boolean v0, Lcom/android/server/am/BGProtectManager;->allowListCleared:Z

    .line 58
    .line 59
    const-string v0, "Y29tLmdvb2dsZS5wcm9jZXNzLmdhcHBz"

    .line 60
    .line 61
    invoke-static {v0}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    const-string v14, "Y29tLnNlYy5hbmRyb2lkLmdhbGxlcnkzZA=="

    .line 66
    .line 67
    invoke-static {v14}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    const-string v15, "Y29tLnNlYy5hbmRyb2lkLmFwcC5zYnJvd3Nlcg=="

    .line 72
    .line 73
    invoke-static {v15}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    const-string v4, "Y29tLmdvb2dsZS5hbmRyb2lkLmdt"

    .line 78
    .line 79
    invoke-static {v4}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    const-string v5, "Y29tLmdvb2dsZS5hbmRyb2lkLmFwcHMubWFwcw=="

    .line 84
    .line 85
    invoke-static {v5}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    const-string v16, "Y29tLnNhbXN1bmcuYW5kcm9pZC5hcHAubm90ZXM="

    .line 90
    .line 91
    invoke-static/range {v16 .. v16}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v6

    .line 95
    const-string v7, "Y29tLmFuZHJvaWQudmVuZGluZw=="

    .line 96
    .line 97
    invoke-static {v7}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v7

    .line 101
    const-string v17, "Y29tLnNlYy5hbmRyb2lkLmFwcC5teWZpbGVz"

    .line 102
    .line 103
    invoke-static/range {v17 .. v17}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v8

    .line 107
    const-string v9, "SU5DQUxMVUk="

    .line 108
    .line 109
    invoke-static {v9}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v9

    .line 113
    const-string v18, "Y29tLnNlYy5hbmRyb2lkLmFwcC5jYW1lcmE="

    .line 114
    .line 115
    invoke-static/range {v18 .. v18}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v10

    .line 119
    const-string v11, "TU1T"

    .line 120
    .line 121
    invoke-static {v11}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v11

    .line 125
    const-string v12, "Y29tLmJhaWR1LkJhaWR1TWFw"

    .line 126
    .line 127
    invoke-static {v12}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v12

    .line 131
    const-string v19, "Y29tLmFuZHJvaWQuc2V0dGluZ3M="

    .line 132
    .line 133
    invoke-static/range {v19 .. v19}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v13

    .line 137
    filled-new-array/range {v1 .. v13}, [Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    sput-object v1, Lcom/android/server/am/BGProtectManager;->DHA_DYNAMICEXCEPT_PROC_ARRAY:[Ljava/lang/String;

    .line 142
    .line 143
    const-string v1, "YW5kcm9pZC5wcm9jZXNzLmFjb3Jl"

    .line 144
    .line 145
    invoke-static {v1}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    sget-object v2, Lcom/android/server/am/BGProtectManager$exceptFlag;->NORMALANDKNOX:Lcom/android/server/am/BGProtectManager$exceptFlag;

    .line 150
    .line 151
    invoke-virtual {v2}, Lcom/android/server/am/BGProtectManager$exceptFlag;->getString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v3

    .line 155
    filled-new-array {v1, v3}, [Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v4

    .line 159
    const-string v1, "Q09OVEFDVFM="

    .line 160
    .line 161
    invoke-static {v1}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    sget-object v3, Lcom/android/server/am/BGProtectManager$exceptFlag;->NORMALANDKNOXPWHL:Lcom/android/server/am/BGProtectManager$exceptFlag;

    .line 166
    .line 167
    invoke-virtual {v3}, Lcom/android/server/am/BGProtectManager$exceptFlag;->getString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v5

    .line 171
    filled-new-array {v1, v5}, [Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v5

    .line 175
    const-string v1, "RElBTEVS"

    .line 176
    .line 177
    invoke-static {v1}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v1

    .line 181
    invoke-virtual {v3}, Lcom/android/server/am/BGProtectManager$exceptFlag;->getString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v6

    .line 185
    filled-new-array {v1, v6}, [Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v6

    .line 189
    const-string v1, "SE9NRUhVQg=="

    .line 190
    .line 191
    invoke-static {v1}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    invoke-virtual {v3}, Lcom/android/server/am/BGProtectManager$exceptFlag;->getString()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v3

    .line 199
    filled-new-array {v1, v3}, [Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v7

    .line 203
    const-string v1, "YW5kcm9pZC5wcm9jZXNzLm1lZGlh"

    .line 204
    .line 205
    invoke-static {v1}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    sget-object v3, Lcom/android/server/am/BGProtectManager$exceptFlag;->CAMERAMEDIA:Lcom/android/server/am/BGProtectManager$exceptFlag;

    .line 210
    .line 211
    invoke-virtual {v3}, Lcom/android/server/am/BGProtectManager$exceptFlag;->getString()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v3

    .line 215
    filled-new-array {v1, v3}, [Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v8

    .line 219
    const-string v1, "Q01I"

    .line 220
    .line 221
    invoke-static {v1}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v1

    .line 225
    invoke-virtual {v2}, Lcom/android/server/am/BGProtectManager$exceptFlag;->getString()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v2

    .line 229
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v9

    .line 233
    const-string v1, "QklYQlk="

    .line 234
    .line 235
    invoke-static {v1}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v1

    .line 239
    sget-object v2, Lcom/android/server/am/BGProtectManager$exceptFlag;->HOMEHUB:Lcom/android/server/am/BGProtectManager$exceptFlag;

    .line 240
    .line 241
    invoke-virtual {v2}, Lcom/android/server/am/BGProtectManager$exceptFlag;->getString()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v2

    .line 245
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v10

    .line 249
    filled-new-array/range {v4 .. v10}, [[Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v1

    .line 253
    sput-object v1, Lcom/android/server/am/BGProtectManager;->DHA_STATICEXCEPT_PROC_ARRAY:[[Ljava/lang/String;

    .line 254
    .line 255
    invoke-static {v0}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v20

    .line 259
    const-string v0, "Y29tLnNhbXN1bmcuYW5kcm9pZC5tb2JpbGVzZXJ2aWNl"

    .line 260
    .line 261
    invoke-static {v0}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v21

    .line 265
    const-string v0, "Y29tLm9zcC5hcHAuc2lnbmlu"

    .line 266
    .line 267
    invoke-static {v0}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v22

    .line 271
    const-string v0, "Y29tLmdvb2dsZS5wcm9jZXNzLmdzZXJ2aWNlcw=="

    .line 272
    .line 273
    invoke-static {v0}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v23

    .line 277
    const-string v0, "Y29tLnNlYy5hbmRyb2lkLnByb3ZpZGVyLmJhZGdl"

    .line 278
    .line 279
    invoke-static {v0}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v24

    .line 283
    const-string v0, "Y29tLnNhbXN1bmcuaXBzZXJ2aWNl"

    .line 284
    .line 285
    invoke-static {v0}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v25

    .line 289
    const-string v0, "Y29tLnNlYy5hbmRyb2lkLmFwcC5zb3VuZGFsaXZl"

    .line 290
    .line 291
    invoke-static {v0}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v26

    .line 295
    const-string v0, "Y29tLmdvb2dsZS5hbmRyb2lkLmdvb2dsZXF1aWNrc2VhcmNoYm94OnNlYXJjaA=="

    .line 296
    .line 297
    invoke-static {v0}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v27

    .line 301
    const-string v0, "Y29tLnNlYy5hbmRyb2lkLmFwcC5zYnJvd3Nlcjpwcml2aWxlZ2VkX3Byb2Nlc3Mw"

    .line 302
    .line 303
    invoke-static {v0}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v28

    .line 307
    const-string v0, "Y29tLnZlcml6b24ubWVzc2FnaW5nLnZ6bXNncw=="

    .line 308
    .line 309
    invoke-static {v0}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v29

    .line 313
    const-string v0, "Y29tLmFuZHJvaWQucHJvdmlkZXJzLmNhbGVuZGFy"

    .line 314
    .line 315
    invoke-static {v0}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v30

    .line 319
    const-string v0, "Y29tLnNhbXN1bmcuYW5kcm9pZC5zY2xvdWQ="

    .line 320
    .line 321
    invoke-static {v0}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v31

    .line 325
    const-string v0, "Y29tLnNhbXN1bmcuYW5kcm9pZC5zYW1zdW5ncGFzcw=="

    .line 326
    .line 327
    invoke-static {v0}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object v32

    .line 331
    const-string v0, "Y29tLnNhbXN1bmcuYW5kcm9pZC5hcHAucmVtaW5kZXI="

    .line 332
    .line 333
    invoke-static {v0}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v33

    .line 337
    const-string v0, "Y29tLnNhbXN1bmcuYW5kcm9pZC5hcHAucm91dGluZXM="

    .line 338
    .line 339
    invoke-static {v0}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object v34

    .line 343
    const-string v0, "Y29tLnNlYy51bmlmaWVkd2Zj"

    .line 344
    .line 345
    invoke-static {v0}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object v35

    .line 349
    const-string v0, "Y29tLnNhbXN1bmcuYW5kcm9pZC5nbG9iYWxwb3N0cHJvY21ncg=="

    .line 350
    .line 351
    invoke-static {v0}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object v36

    .line 355
    const-string v0, "Y29tLnNhbXN1bmcuYW5kcm9pZC5jYWxlbmRhcg=="

    .line 356
    .line 357
    invoke-static {v0}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object v37

    .line 361
    filled-new-array/range {v20 .. v37}, [Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object v1

    .line 365
    sput-object v1, Lcom/android/server/am/BGProtectManager;->PROVIDER_LIFEGUARD_ARRAY:[Ljava/lang/String;

    .line 366
    .line 367
    const-string v1, "Y29tLnNhbGFiLmFjdA=="

    .line 368
    .line 369
    invoke-static {v1}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object v2

    .line 373
    invoke-static {v1}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    .line 374
    .line 375
    .line 376
    move-result-object v1

    .line 377
    const-string v3, "2"

    .line 378
    .line 379
    const-string/jumbo v4, "plat"

    .line 380
    .line 381
    .line 382
    filled-new-array {v2, v3, v1, v4}, [Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    move-result-object v1

    .line 386
    const-string v2, "Y29tLnNlYy5hbmRyb2lkLmFwcC50aW55bQ=="

    .line 387
    .line 388
    invoke-static {v2}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    .line 389
    .line 390
    .line 391
    move-result-object v5

    .line 392
    invoke-static {v2}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    .line 393
    .line 394
    .line 395
    move-result-object v2

    .line 396
    filled-new-array {v5, v3, v2, v4}, [Ljava/lang/String;

    .line 397
    .line 398
    .line 399
    move-result-object v2

    .line 400
    const-string v5, "Y29tLnNlYy5hZWNtb25pdG9y"

    .line 401
    .line 402
    invoke-static {v5}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    .line 403
    .line 404
    .line 405
    move-result-object v6

    .line 406
    invoke-static {v5}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    .line 407
    .line 408
    .line 409
    move-result-object v5

    .line 410
    filled-new-array {v6, v3, v5, v4}, [Ljava/lang/String;

    .line 411
    .line 412
    .line 413
    move-result-object v4

    .line 414
    const-string v5, "RkFDVE9SWQ=="

    .line 415
    .line 416
    invoke-static {v5}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    .line 417
    .line 418
    .line 419
    move-result-object v5

    .line 420
    const-string v6, ""

    .line 421
    .line 422
    filled-new-array {v5, v3, v6, v6}, [Ljava/lang/String;

    .line 423
    .line 424
    .line 425
    move-result-object v3

    .line 426
    filled-new-array {v1, v2, v4, v3}, [[Ljava/lang/String;

    .line 427
    .line 428
    .line 429
    move-result-object v1

    .line 430
    sput-object v1, Lcom/android/server/am/BGProtectManager;->DHA_NEVERKILLEXCEPT_ARRAY:[[Ljava/lang/String;

    .line 431
    .line 432
    const-string v1, "Y29tLmdvb2dsZS5hbmRyb2lkLmdtcw=="

    .line 433
    .line 434
    invoke-static {v1}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    .line 435
    .line 436
    .line 437
    move-result-object v2

    .line 438
    invoke-static {v1}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    .line 439
    .line 440
    .line 441
    move-result-object v3

    .line 442
    const-string v4, "1"

    .line 443
    .line 444
    const-string/jumbo v5, "priv"

    .line 445
    .line 446
    .line 447
    filled-new-array {v2, v4, v3, v5}, [Ljava/lang/String;

    .line 448
    .line 449
    .line 450
    move-result-object v2

    .line 451
    const-string v3, "Y29tLmdvb2dsZS5hbmRyb2lkLmdtcy5wZXJzaXN0ZW50"

    .line 452
    .line 453
    invoke-static {v3}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    .line 454
    .line 455
    .line 456
    move-result-object v3

    .line 457
    invoke-static {v1}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    .line 458
    .line 459
    .line 460
    move-result-object v1

    .line 461
    filled-new-array {v3, v4, v1, v5}, [Ljava/lang/String;

    .line 462
    .line 463
    .line 464
    move-result-object v1

    .line 465
    filled-new-array {v2, v1}, [[Ljava/lang/String;

    .line 466
    .line 467
    .line 468
    move-result-object v1

    .line 469
    sput-object v1, Lcom/android/server/am/BGProtectManager;->DHA_NEVERKILLEXCEPT_ARRAY_BY_KEY:[[Ljava/lang/String;

    .line 470
    .line 471
    invoke-static/range {v17 .. v17}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    .line 472
    .line 473
    .line 474
    move-result-object v2

    .line 475
    invoke-static {v15}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    .line 476
    .line 477
    .line 478
    move-result-object v3

    .line 479
    invoke-static/range {v19 .. v19}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    .line 480
    .line 481
    .line 482
    move-result-object v4

    .line 483
    invoke-static {v14}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    .line 484
    .line 485
    .line 486
    move-result-object v5

    .line 487
    const-string v1, "Y29tLnNhbXN1bmcuYW5kcm9pZC5kaWFsZXI="

    .line 488
    .line 489
    invoke-static {v1}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    .line 490
    .line 491
    .line 492
    move-result-object v6

    .line 493
    const-string v1, "Y29tLnNhbXN1bmcuYW5kcm9pZC5tZXNzYWdpbmc="

    .line 494
    .line 495
    invoke-static {v1}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    .line 496
    .line 497
    .line 498
    move-result-object v7

    .line 499
    invoke-static/range {v18 .. v18}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    .line 500
    .line 501
    .line 502
    move-result-object v8

    .line 503
    invoke-static/range {v16 .. v16}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    .line 504
    .line 505
    .line 506
    move-result-object v9

    .line 507
    const-string v1, "Y29tLnNlYy5hbmRyb2lkLmFwcC5jbG9ja3BhY2thZ2U="

    .line 508
    .line 509
    invoke-static {v1}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    .line 510
    .line 511
    .line 512
    move-result-object v10

    .line 513
    invoke-static {v0}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    .line 514
    .line 515
    .line 516
    move-result-object v11

    .line 517
    const-string v0, "Y29tLnNlYy5hbmRyb2lkLmFwcC52b2ljZW5vdGU="

    .line 518
    .line 519
    invoke-static {v0}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    .line 520
    .line 521
    .line 522
    move-result-object v12

    .line 523
    filled-new-array/range {v2 .. v12}, [Ljava/lang/String;

    .line 524
    .line 525
    .line 526
    move-result-object v0

    .line 527
    sput-object v0, Lcom/android/server/am/BGProtectManager;->BOOTING_EMPTY_KILL_SKIP_ARRAY:[Ljava/lang/String;

    .line 528
    .line 529
    invoke-static {v14}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    .line 530
    .line 531
    .line 532
    move-result-object v0

    .line 533
    filled-new-array {v0}, [Ljava/lang/String;

    .line 534
    .line 535
    .line 536
    move-result-object v0

    .line 537
    sput-object v0, Lcom/android/server/am/BGProtectManager;->CAMERA_GUARD_ARRAY:[Ljava/lang/String;

    .line 538
    .line 539
    const-string v0, "Y29tLnNhbXN1bmcuYWRhcHRpdmVicmlnaHRuZXNzZ28="

    .line 540
    .line 541
    invoke-static {v0}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    .line 542
    .line 543
    .line 544
    move-result-object v0

    .line 545
    const-string v1, "YW5kcm9pZC5zeXN0ZW0="

    .line 546
    .line 547
    invoke-static {v1}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    .line 548
    .line 549
    .line 550
    move-result-object v1

    .line 551
    const-string v2, "Y29tLnNhbXN1bmcuYW5kcm9pZC5zbWFydGZhY2U="

    .line 552
    .line 553
    invoke-static {v2}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    .line 554
    .line 555
    .line 556
    move-result-object v2

    .line 557
    const-string v3, "Y29tLnNhbXN1bmcuYW5kcm9pZC5iaW8uZmFjZS5zZXJ2aWNl"

    .line 558
    .line 559
    invoke-static {v3}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    .line 560
    .line 561
    .line 562
    move-result-object v3

    .line 563
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    .line 564
    .line 565
    .line 566
    move-result-object v0

    .line 567
    sput-object v0, Lcom/android/server/am/BGProtectManager;->LMKD_CAM_CLIENT_EXCEPT_ARRAY:[Ljava/lang/String;

    .line 568
    .line 569
    new-instance v0, Ljava/util/ArrayList;

    .line 570
    .line 571
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 572
    .line 573
    .line 574
    sput-object v0, Lcom/android/server/am/BGProtectManager;->sBEKS_processList:Ljava/util/ArrayList;

    .line 575
    .line 576
    new-instance v0, Ljava/util/HashMap;

    .line 577
    .line 578
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 579
    .line 580
    .line 581
    sput-object v0, Lcom/android/server/am/BGProtectManager;->dha_keepempty_map:Ljava/util/HashMap;

    .line 582
    .line 583
    new-instance v0, Ljava/util/HashMap;

    .line 584
    .line 585
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 586
    .line 587
    .line 588
    sput-object v0, Lcom/android/server/am/BGProtectManager;->dha_amsexcept_map:Ljava/util/HashMap;

    .line 589
    .line 590
    new-instance v0, Ljava/util/ArrayList;

    .line 591
    .line 592
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 593
    .line 594
    .line 595
    sput-object v0, Lcom/android/server/am/BGProtectManager;->dha_MLexcept_map:Ljava/util/ArrayList;

    .line 596
    .line 597
    new-instance v0, Ljava/util/HashMap;

    .line 598
    .line 599
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 600
    .line 601
    .line 602
    sput-object v0, Lcom/android/server/am/BGProtectManager;->dha_neverkillexcept_map:Ljava/util/HashMap;

    .line 603
    .line 604
    new-instance v0, Ljava/util/HashMap;

    .line 605
    .line 606
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 607
    .line 608
    .line 609
    sput-object v0, Lcom/android/server/am/BGProtectManager;->dha_cameraguard_map:Ljava/util/HashMap;

    .line 610
    .line 611
    const-string/jumbo v0, "dha_pwhl_key"

    .line 612
    .line 613
    .line 614
    const-string v1, "512"

    .line 615
    .line 616
    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    .line 618
    .line 619
    move-result v0

    .line 620
    sput v0, Lcom/android/server/am/BGProtectManager;->dha_keepempty_key:I

    .line 621
    .line 622
    const-string/jumbo v0, "dha_pwhl_key_knox"

    .line 623
    .line 624
    .line 625
    const-string v1, "1539"

    .line 626
    .line 627
    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    .line 629
    .line 630
    move-result v0

    .line 631
    sput v0, Lcom/android/server/am/BGProtectManager;->dha_keepempty_key_knox:I

    .line 632
    .line 633
    sget v0, Lcom/android/server/am/BGProtectManager;->dha_keepempty_key:I

    .line 634
    .line 635
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 636
    .line 637
    .line 638
    move-result-object v0

    .line 639
    const-string/jumbo v1, "dha_pwhl_chn_key"

    .line 640
    .line 641
    .line 642
    invoke-static {v1, v0}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    .line 644
    .line 645
    move-result v0

    .line 646
    sput v0, Lcom/android/server/am/BGProtectManager;->dha_keepempty_chn_key:I

    .line 647
    .line 648
    const-string/jumbo v0, "dha_chimerawhl_key"

    .line 649
    .line 650
    .line 651
    const-string v1, "0"

    .line 652
    .line 653
    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    .line 655
    .line 656
    move-result v0

    .line 657
    sput v0, Lcom/android/server/am/BGProtectManager;->dha_keepchimera_key:I

    .line 658
    .line 659
    const-string/jumbo v0, "dha_onlyact_key"

    .line 660
    .line 661
    .line 662
    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    .line 664
    .line 665
    move-result v0

    .line 666
    sput v0, Lcom/android/server/am/BGProtectManager;->dha_keep_onlyact_key:I

    .line 667
    .line 668
    const-string/jumbo v0, "dha_neverkill_key"

    .line 669
    .line 670
    .line 671
    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    .line 673
    .line 674
    move-result v0

    .line 675
    sput v0, Lcom/android/server/am/BGProtectManager;->dha_neverkillexcept_key:I

    .line 676
    .line 677
    const-string v0, "add_protect"

    .line 678
    .line 679
    const-string/jumbo v1, "false"

    .line 680
    .line 681
    .line 682
    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyBool(Ljava/lang/String;Ljava/lang/String;)Z

    .line 683
    .line 684
    .line 685
    const-string/jumbo v0, "plg_memory_th"

    .line 686
    .line 687
    .line 688
    const-string v1, "4096"

    .line 689
    .line 690
    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    .line 692
    .line 693
    move-result v0

    .line 694
    sput v0, Lcom/android/server/am/BGProtectManager;->sProvider_lifeguard_memory_TH:I

    .line 695
    .line 696
    const-string/jumbo v0, "plg_key"

    .line 697
    .line 698
    .line 699
    const-string v1, "3"

    .line 700
    .line 701
    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    .line 703
    .line 704
    move-result v0

    .line 705
    sput v0, Lcom/android/server/am/BGProtectManager;->sProvider_lifeguard_key:I

    .line 706
    .line 707
    return-void
.end method

.method public static IsProtected(Lcom/android/server/am/ProcessRecord;)Z
    .locals 7

    .line 1
    sget-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->sHH_AMSExceptionEnable:Z

    .line 2
    .line 3
    sget-object v1, Lcom/android/server/am/BGProtectManager$exceptFlag;->NORMALONLY:Lcom/android/server/am/BGProtectManager$exceptFlag;

    .line 4
    .line 5
    sget-object v2, Lcom/android/server/am/BGProtectManager$exceptFlag;->SANDBOX:Lcom/android/server/am/BGProtectManager$exceptFlag;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x3

    .line 9
    const/16 v5, 0x13

    .line 10
    .line 11
    const/4 v6, 0x1

    .line 12
    if-eqz v0, :cond_4

    .line 13
    .line 14
    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->isAMSException:Z

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    .line 19
    .line 20
    invoke-virtual {v2}, Lcom/android/server/am/BGProtectManager$exceptFlag;->getValue()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eq v0, v2, :cond_0

    .line 25
    .line 26
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    .line 27
    .line 28
    invoke-virtual {v1}, Lcom/android/server/am/BGProtectManager$exceptFlag;->getValue()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-ne v0, v1, :cond_1

    .line 33
    .line 34
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 35
    .line 36
    iget v0, v0, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    .line 37
    .line 38
    if-eq v0, v5, :cond_1

    .line 39
    .line 40
    :cond_0
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->dhaKeepEmptyFlag:I

    .line 41
    .line 42
    if-lez v0, :cond_2

    .line 43
    .line 44
    if-ge v0, v4, :cond_2

    .line 45
    .line 46
    :cond_1
    return v6

    .line 47
    :cond_2
    invoke-static {p0}, Lcom/android/server/am/BGProtectManager;->isOnlyActCheck(Lcom/android/server/am/ProcessRecord;)Z

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    if-eqz p0, :cond_3

    .line 52
    .line 53
    return v6

    .line 54
    :cond_3
    return v3

    .line 55
    :cond_4
    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->isAMSException:Z

    .line 56
    .line 57
    if-eqz v0, :cond_5

    .line 58
    .line 59
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    .line 60
    .line 61
    invoke-virtual {v2}, Lcom/android/server/am/BGProtectManager$exceptFlag;->getValue()I

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    if-eq v0, v2, :cond_5

    .line 66
    .line 67
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    .line 68
    .line 69
    sget-object v2, Lcom/android/server/am/BGProtectManager$exceptFlag;->HOMEHUB:Lcom/android/server/am/BGProtectManager$exceptFlag;

    .line 70
    .line 71
    invoke-virtual {v2}, Lcom/android/server/am/BGProtectManager$exceptFlag;->getValue()I

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    if-eq v0, v2, :cond_5

    .line 76
    .line 77
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    .line 78
    .line 79
    invoke-virtual {v1}, Lcom/android/server/am/BGProtectManager$exceptFlag;->getValue()I

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-ne v0, v1, :cond_6

    .line 84
    .line 85
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 86
    .line 87
    iget v0, v0, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    .line 88
    .line 89
    if-eq v0, v5, :cond_6

    .line 90
    .line 91
    :cond_5
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->dhaKeepEmptyFlag:I

    .line 92
    .line 93
    if-lez v0, :cond_7

    .line 94
    .line 95
    if-ge v0, v4, :cond_7

    .line 96
    .line 97
    :cond_6
    return v6

    .line 98
    :cond_7
    invoke-static {p0}, Lcom/android/server/am/BGProtectManager;->isOnlyActCheck(Lcom/android/server/am/ProcessRecord;)Z

    .line 99
    .line 100
    .line 101
    move-result p0

    .line 102
    if-eqz p0, :cond_8

    .line 103
    .line 104
    return v6

    .line 105
    :cond_8
    return v3
.end method

.method public static addBEKSList(Z)V
    .locals 3

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    sget-object p0, Lcom/android/server/am/BGProtectManager;->sBEKS_processList:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 p0, 0x1

    .line 9
    const/4 v0, 0x0

    .line 10
    :goto_0
    sget-object v1, Lcom/android/server/am/BGProtectManager;->BOOTING_EMPTY_KILL_SKIP_ARRAY:[Ljava/lang/String;

    .line 11
    .line 12
    array-length v2, v1

    .line 13
    if-ge v0, v2, :cond_2

    .line 14
    .line 15
    sget v2, Lcom/android/server/am/BGProtectManager;->beks_package_key_bit:I

    .line 16
    .line 17
    and-int/2addr v2, p0

    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    sget-object v2, Lcom/android/server/am/BGProtectManager;->sBEKS_processList:Ljava/util/ArrayList;

    .line 21
    .line 22
    aget-object v1, v1, v0

    .line 23
    .line 24
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    :cond_1
    shl-int/lit8 p0, p0, 0x1

    .line 28
    .line 29
    add-int/lit8 v0, v0, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    return-void
.end method

.method public static appIsPickedProcess(ILjava/lang/String;)I
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string p0, "_&_"

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    sget-object p1, Lcom/android/server/am/BGProtectManager;->dha_MLexcept_map:Ljava/util/ArrayList;

    .line 26
    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    return p0

    .line 40
    :cond_0
    const/4 p0, -0x1

    .line 41
    return p0
.end method

.method public static getContactsPackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, "Y29tLmFuZHJvaWQuY29udGFjdHM="

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-string v2, "SEC_FLOATING_FEATURE_CONTACTS_CONFIG_PACKAGE_NAME"

    .line 12
    .line 13
    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    return-object v0

    .line 24
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    const/4 v2, 0x0

    .line 33
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    .line 36
    move-object v0, v1

    .line 37
    :catch_0
    return-object v0
.end method

.method public static getInCallUIPackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, "Y29tLmFuZHJvaWQuaW5jYWxsdWk="

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-string v2, "SEC_FLOATING_FEATURE_VOICECALL_CONFIG_INCALLUI_PACKAGE_NAME"

    .line 12
    .line 13
    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    return-object v0

    .line 24
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    const/4 v2, 0x0

    .line 33
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    .line 36
    move-object v0, v1

    .line 37
    :catch_0
    return-object v0
.end method

.method public static getMessagePackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, "Y29tLmFuZHJvaWQubW1z"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-string v2, "SEC_FLOATING_FEATURE_MESSAGE_CONFIG_PACKAGE_NAME"

    .line 12
    .line 13
    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    return-object v0

    .line 24
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    const/4 v2, 0x0

    .line 33
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    .line 36
    move-object v0, v1

    .line 37
    :catch_0
    return-object v0
.end method

.method public static isCachedOrPickedActivityProcess(Lcom/android/server/am/ProcessRecord;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 2
    .line 3
    iget v0, v0, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    .line 4
    .line 5
    const/16 v1, 0x352

    .line 6
    .line 7
    if-lt v0, v1, :cond_2

    .line 8
    .line 9
    const/16 v1, 0x3e7

    .line 10
    .line 11
    if-gt v0, v1, :cond_2

    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    .line 14
    .line 15
    iget-boolean v0, v0, Lcom/android/server/wm/WindowProcessController;->mHasActivities:Z

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 21
    .line 22
    iget v0, v0, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    .line 23
    .line 24
    const/16 v2, 0xa

    .line 25
    .line 26
    if-eq v0, v2, :cond_0

    .line 27
    .line 28
    const/16 v2, 0xf

    .line 29
    .line 30
    if-ne v0, v2, :cond_1

    .line 31
    .line 32
    :cond_0
    return v1

    .line 33
    :cond_1
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 34
    .line 35
    iget p0, p0, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    .line 36
    .line 37
    const/16 v0, 0x10

    .line 38
    .line 39
    if-ne p0, v0, :cond_2

    .line 40
    .line 41
    return v1

    .line 42
    :cond_2
    const/4 p0, 0x0

    .line 43
    return p0
.end method

.method public static isDhaKeepEmptyProcess(Ljava/lang/String;)I
    .locals 2

    .line 1
    sget-object v0, Lcom/android/server/am/BGProtectManager;->dha_keepempty_map:Ljava/util/HashMap;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Ljava/lang/Integer;

    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    return p0

    .line 22
    :cond_0
    const/4 p0, -0x1

    .line 23
    return p0
.end method

.method public static isOnlyActCheck(Lcom/android/server/am/ProcessRecord;)Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->dhaKeepEmptyFlag:I

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    .line 7
    .line 8
    iget-boolean p0, p0, Lcom/android/server/wm/WindowProcessController;->mHasActivities:Z

    .line 9
    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    const/4 p0, 0x1

    .line 13
    return p0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    return p0
.end method

.method public static isWebviewProcess(Lcom/android/server/am/ProcessRecord;)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mHostingRecord:Lcom/android/server/am/HostingRecord;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mHostingRecord:Lcom/android/server/am/HostingRecord;

    .line 6
    .line 7
    iget v0, v0, Lcom/android/server/am/HostingRecord;->mHostingZygote:I

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    if-ne v0, v1, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mHostingRecord:Lcom/android/server/am/HostingRecord;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/android/server/am/HostingRecord;->mHostingName:Ljava/lang/String;

    .line 15
    .line 16
    const-string/jumbo v1, "check webview name : "

    .line 17
    .line 18
    .line 19
    const-string v2, "DynamicHiddenApp_BGProtectManager"

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string/jumbo v1, "check hostingname webview : "

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mHostingRecord:Lcom/android/server/am/HostingRecord;

    .line 40
    .line 41
    iget-object p0, p0, Lcom/android/server/am/HostingRecord;->mHostingName:Ljava/lang/String;

    .line 42
    .line 43
    invoke-static {v0, p0, v2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 53
    .line 54
    const-string/jumbo v1, "check hostingname webview : null "

    .line 55
    .line 56
    .line 57
    invoke-static {v0, p0, v1, v2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    :goto_0
    const/4 p0, 0x2

    .line 61
    return p0

    .line 62
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 63
    .line 64
    const-string v1, ":sandboxed_process"

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-eqz v0, :cond_2

    .line 71
    .line 72
    const/4 p0, 0x4

    .line 73
    return p0

    .line 74
    :cond_2
    const-string/jumbo v0, "com.sec.android.app.sbrowser"

    .line 75
    .line 76
    .line 77
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 78
    .line 79
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result p0

    .line 83
    if-eqz p0, :cond_3

    .line 84
    .line 85
    const/4 p0, 0x6

    .line 86
    return p0

    .line 87
    :cond_3
    const/4 p0, -0x1

    .line 88
    return p0
.end method


# virtual methods
.method public final addAllowlistList(Z)V
    .locals 14

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    sget-object v0, Lcom/android/server/am/BGProtectManager;->dha_amsexcept_map:Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lcom/android/server/am/BGProtectManager;->dha_keepempty_map:Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 11
    .line 12
    .line 13
    sget-object v0, Lcom/android/server/am/BGProtectManager;->dha_neverkillexcept_map:Ljava/util/HashMap;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 16
    .line 17
    .line 18
    sget-object v0, Lcom/android/server/am/BGProtectManager;->dha_cameraguard_map:Ljava/util/HashMap;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 21
    .line 22
    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    move v1, v0

    .line 25
    :goto_0
    sget-object v2, Lcom/android/server/am/BGProtectManager;->DHA_STATICEXCEPT_PROC_ARRAY:[[Ljava/lang/String;

    .line 26
    .line 27
    array-length v3, v2

    .line 28
    const/4 v4, 0x1

    .line 29
    if-ge v1, v3, :cond_1

    .line 30
    .line 31
    sget-object v3, Lcom/android/server/am/BGProtectManager;->dha_amsexcept_map:Ljava/util/HashMap;

    .line 32
    .line 33
    aget-object v2, v2, v1

    .line 34
    .line 35
    aget-object v5, v2, v0

    .line 36
    .line 37
    aget-object v2, v2, v4

    .line 38
    .line 39
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    invoke-virtual {p0, v3, v5, v2, p1}, Lcom/android/server/am/BGProtectManager;->dhaAddPackageName(Ljava/util/HashMap;Ljava/lang/String;IZ)V

    .line 44
    .line 45
    .line 46
    add-int/lit8 v1, v1, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    sget v1, Lcom/android/server/am/BGProtectManager;->sProvider_lifeguard_memory_TH:I

    .line 50
    .line 51
    int-to-long v1, v1

    .line 52
    sget-wide v5, Lcom/android/server/am/BGProtectManager;->mTotalMemMb:J

    .line 53
    .line 54
    cmp-long v1, v5, v1

    .line 55
    .line 56
    if-lez v1, :cond_3

    .line 57
    .line 58
    move v1, v0

    .line 59
    move v2, v4

    .line 60
    :goto_1
    sget-object v3, Lcom/android/server/am/BGProtectManager;->PROVIDER_LIFEGUARD_ARRAY:[Ljava/lang/String;

    .line 61
    .line 62
    array-length v5, v3

    .line 63
    if-ge v1, v5, :cond_3

    .line 64
    .line 65
    sget v5, Lcom/android/server/am/BGProtectManager;->sProvider_lifeguard_key:I

    .line 66
    .line 67
    and-int/2addr v5, v2

    .line 68
    if-eqz v5, :cond_2

    .line 69
    .line 70
    sget-object v5, Lcom/android/server/am/BGProtectManager;->dha_amsexcept_map:Ljava/util/HashMap;

    .line 71
    .line 72
    aget-object v3, v3, v1

    .line 73
    .line 74
    invoke-virtual {p0, v5, v3, v4, p1}, Lcom/android/server/am/BGProtectManager;->dhaAddPackageName(Ljava/util/HashMap;Ljava/lang/String;IZ)V

    .line 75
    .line 76
    .line 77
    :cond_2
    shl-int/lit8 v2, v2, 0x1

    .line 78
    .line 79
    add-int/lit8 v1, v1, 0x1

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_3
    iget-boolean v1, p0, Lcom/android/server/am/BGProtectManager;->NEVERKILL_SQETOOL_ENABLE:Z

    .line 83
    .line 84
    const/4 v2, 0x3

    .line 85
    const/4 v3, 0x2

    .line 86
    if-eqz v1, :cond_4

    .line 87
    .line 88
    move v1, v0

    .line 89
    :goto_2
    sget-object v5, Lcom/android/server/am/BGProtectManager;->DHA_NEVERKILLEXCEPT_ARRAY:[[Ljava/lang/String;

    .line 90
    .line 91
    array-length v6, v5

    .line 92
    if-ge v1, v6, :cond_4

    .line 93
    .line 94
    sget-object v8, Lcom/android/server/am/BGProtectManager;->dha_neverkillexcept_map:Ljava/util/HashMap;

    .line 95
    .line 96
    aget-object v6, v5, v1

    .line 97
    .line 98
    aget-object v9, v6, v0

    .line 99
    .line 100
    aget-object v6, v6, v4

    .line 101
    .line 102
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    move-result v10

    .line 106
    aget-object v5, v5, v1

    .line 107
    .line 108
    aget-object v11, v5, v3

    .line 109
    .line 110
    aget-object v12, v5, v2

    .line 111
    .line 112
    move-object v7, p0

    .line 113
    invoke-virtual/range {v7 .. v12}, Lcom/android/server/am/BGProtectManager;->dhaAddNeverKilledPackageName(Ljava/util/HashMap;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    add-int/lit8 v1, v1, 0x1

    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_4
    move v1, v0

    .line 120
    move v5, v4

    .line 121
    :goto_3
    sget-object v6, Lcom/android/server/am/BGProtectManager;->DHA_NEVERKILLEXCEPT_ARRAY_BY_KEY:[[Ljava/lang/String;

    .line 122
    .line 123
    array-length v7, v6

    .line 124
    if-ge v1, v7, :cond_6

    .line 125
    .line 126
    sget v7, Lcom/android/server/am/BGProtectManager;->dha_neverkillexcept_key:I

    .line 127
    .line 128
    and-int/2addr v7, v5

    .line 129
    if-eqz v7, :cond_5

    .line 130
    .line 131
    sget-object v9, Lcom/android/server/am/BGProtectManager;->dha_neverkillexcept_map:Ljava/util/HashMap;

    .line 132
    .line 133
    aget-object v7, v6, v1

    .line 134
    .line 135
    aget-object v10, v7, v0

    .line 136
    .line 137
    aget-object v7, v7, v4

    .line 138
    .line 139
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 140
    .line 141
    .line 142
    move-result v11

    .line 143
    aget-object v6, v6, v1

    .line 144
    .line 145
    aget-object v12, v6, v3

    .line 146
    .line 147
    aget-object v13, v6, v2

    .line 148
    .line 149
    move-object v8, p0

    .line 150
    invoke-virtual/range {v8 .. v13}, Lcom/android/server/am/BGProtectManager;->dhaAddNeverKilledPackageName(Ljava/util/HashMap;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    :cond_5
    shl-int/lit8 v5, v5, 0x1

    .line 154
    .line 155
    add-int/lit8 v1, v1, 0x1

    .line 156
    .line 157
    goto :goto_3

    .line 158
    :cond_6
    move v1, v0

    .line 159
    move v5, v4

    .line 160
    :goto_4
    sget-object v6, Lcom/android/server/am/BGProtectManager;->DHA_DYNAMICEXCEPT_PROC_ARRAY:[Ljava/lang/String;

    .line 161
    .line 162
    array-length v7, v6

    .line 163
    if-ge v1, v7, :cond_b

    .line 164
    .line 165
    iget v7, p0, Lcom/android/server/am/BGProtectManager;->mDhaKeepEmptyEnable:I

    .line 166
    .line 167
    if-ne v7, v4, :cond_7

    .line 168
    .line 169
    sget v8, Lcom/android/server/am/BGProtectManager;->dha_keepchimera_key:I

    .line 170
    .line 171
    and-int/2addr v8, v5

    .line 172
    if-eqz v8, :cond_7

    .line 173
    .line 174
    sget-object v8, Lcom/android/server/am/BGProtectManager;->dha_keepempty_map:Ljava/util/HashMap;

    .line 175
    .line 176
    aget-object v9, v6, v1

    .line 177
    .line 178
    invoke-virtual {p0, v8, v9, v2, p1}, Lcom/android/server/am/BGProtectManager;->dhaAddPackageName(Ljava/util/HashMap;Ljava/lang/String;IZ)V

    .line 179
    .line 180
    .line 181
    :cond_7
    iget v8, p0, Lcom/android/server/am/BGProtectManager;->mDhaKeepEmptyEnableKnox:I

    .line 182
    .line 183
    if-ne v8, v4, :cond_8

    .line 184
    .line 185
    sget v8, Lcom/android/server/am/BGProtectManager;->dha_keepempty_key_knox:I

    .line 186
    .line 187
    and-int/2addr v8, v5

    .line 188
    if-eqz v8, :cond_8

    .line 189
    .line 190
    sget-object v8, Lcom/android/server/am/BGProtectManager;->dha_keepempty_map:Ljava/util/HashMap;

    .line 191
    .line 192
    aget-object v9, v6, v1

    .line 193
    .line 194
    invoke-virtual {p0, v8, v9, v3, p1}, Lcom/android/server/am/BGProtectManager;->dhaAddPackageName(Ljava/util/HashMap;Ljava/lang/String;IZ)V

    .line 195
    .line 196
    .line 197
    :cond_8
    if-ne v7, v4, :cond_9

    .line 198
    .line 199
    sget v8, Lcom/android/server/am/BGProtectManager;->dha_keepempty_key:I

    .line 200
    .line 201
    and-int/2addr v8, v5

    .line 202
    if-eqz v8, :cond_9

    .line 203
    .line 204
    sget-object v8, Lcom/android/server/am/BGProtectManager;->dha_keepempty_map:Ljava/util/HashMap;

    .line 205
    .line 206
    aget-object v9, v6, v1

    .line 207
    .line 208
    invoke-virtual {p0, v8, v9, v4, p1}, Lcom/android/server/am/BGProtectManager;->dhaAddPackageName(Ljava/util/HashMap;Ljava/lang/String;IZ)V

    .line 209
    .line 210
    .line 211
    :cond_9
    if-ne v7, v4, :cond_a

    .line 212
    .line 213
    sget v7, Lcom/android/server/am/BGProtectManager;->dha_keep_onlyact_key:I

    .line 214
    .line 215
    and-int/2addr v7, v5

    .line 216
    if-eqz v7, :cond_a

    .line 217
    .line 218
    sget-object v7, Lcom/android/server/am/BGProtectManager;->dha_keepempty_map:Ljava/util/HashMap;

    .line 219
    .line 220
    aget-object v6, v6, v1

    .line 221
    .line 222
    const/4 v8, 0x4

    .line 223
    invoke-virtual {p0, v7, v6, v8, p1}, Lcom/android/server/am/BGProtectManager;->dhaAddPackageName(Ljava/util/HashMap;Ljava/lang/String;IZ)V

    .line 224
    .line 225
    .line 226
    :cond_a
    shl-int/lit8 v5, v5, 0x1

    .line 227
    .line 228
    add-int/lit8 v1, v1, 0x1

    .line 229
    .line 230
    goto :goto_4

    .line 231
    :cond_b
    :goto_5
    sget-boolean v1, Lcom/android/server/am/BGProtectManager;->mCameraGuardEnable:Z

    .line 232
    .line 233
    if-eqz v1, :cond_c

    .line 234
    .line 235
    sget-object v1, Lcom/android/server/am/BGProtectManager;->CAMERA_GUARD_ARRAY:[Ljava/lang/String;

    .line 236
    .line 237
    array-length v2, v1

    .line 238
    if-ge v0, v2, :cond_c

    .line 239
    .line 240
    sget-object v2, Lcom/android/server/am/BGProtectManager;->dha_cameraguard_map:Ljava/util/HashMap;

    .line 241
    .line 242
    aget-object v1, v1, v0

    .line 243
    .line 244
    invoke-virtual {p0, v2, v1, v4, p1}, Lcom/android/server/am/BGProtectManager;->dhaAddPackageName(Ljava/util/HashMap;Ljava/lang/String;IZ)V

    .line 245
    .line 246
    .line 247
    add-int/lit8 v0, v0, 0x1

    .line 248
    .line 249
    goto :goto_5

    .line 250
    :cond_c
    return-void
.end method

.method public final dhaAddNeverKilledPackageName(Ljava/util/HashMap;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/am/BGProtectManager;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-string/jumbo p0, "plat"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    const/high16 v0, 0x100000

    .line 14
    .line 15
    if-eqz p0, :cond_1

    .line 16
    .line 17
    move p0, v0

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const-string/jumbo p0, "priv"

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    if-eqz p0, :cond_2

    .line 27
    .line 28
    const/16 p0, 0x8

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    const/4 p0, 0x0

    .line 32
    :goto_0
    const-string p5, "RkFDVE9SWQ=="

    .line 33
    .line 34
    invoke-static {p5}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p5

    .line 38
    invoke-virtual {p5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result p5

    .line 42
    if-eqz p5, :cond_3

    .line 43
    .line 44
    const-string p2, "0"

    .line 45
    .line 46
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    move-result p2

    .line 50
    const-string/jumbo p4, "ro.debuggable"

    .line 51
    .line 52
    .line 53
    invoke-static {p4, p2}, Landroid/os/SemSystemProperties;->getInt(Ljava/lang/String;I)I

    .line 54
    .line 55
    .line 56
    move-result p2

    .line 57
    const/4 p4, 0x1

    .line 58
    if-ne p2, p4, :cond_4

    .line 59
    .line 60
    const-string p2, "DynamicHiddenApp_BGProtectManager"

    .line 61
    .line 62
    const-string/jumbo p4, "it\'s debuggable binary!! add FACTORY in allowlist"

    .line 63
    .line 64
    .line 65
    invoke-static {p2, p4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    or-int/2addr p0, v0

    .line 69
    const-string p2, "Y29tLnNlYy5mYWNhdGZ1bmN0aW9u"

    .line 70
    .line 71
    invoke-static {p2}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p4

    .line 75
    new-instance p5, Landroid/util/Pair;

    .line 76
    .line 77
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    new-instance v1, Lcom/android/server/am/BGProtectManager$PackageValidationInfo;

    .line 82
    .line 83
    invoke-static {p2}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    invoke-direct {v1, p2, p0}, Lcom/android/server/am/BGProtectManager$PackageValidationInfo;-><init>(Ljava/lang/String;I)V

    .line 88
    .line 89
    .line 90
    invoke-direct {p5, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1, p4, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    const-string p2, "Y29tLnNlYy5mYWN1aWZ1bmN0aW9u"

    .line 97
    .line 98
    invoke-static {p2}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p4

    .line 102
    new-instance p5, Landroid/util/Pair;

    .line 103
    .line 104
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    new-instance v1, Lcom/android/server/am/BGProtectManager$PackageValidationInfo;

    .line 109
    .line 110
    invoke-static {p2}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p2

    .line 114
    invoke-direct {v1, p2, p0}, Lcom/android/server/am/BGProtectManager$PackageValidationInfo;-><init>(Ljava/lang/String;I)V

    .line 115
    .line 116
    .line 117
    invoke-direct {p5, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1, p4, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    const-string p2, "Y29tLnNhbXN1bmcuYW5kcm9pZC5haXJjb21tYW5kbWFuYWdlcg=="

    .line 124
    .line 125
    invoke-static {p2}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p4

    .line 129
    new-instance p5, Landroid/util/Pair;

    .line 130
    .line 131
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 132
    .line 133
    .line 134
    move-result-object p3

    .line 135
    new-instance v0, Lcom/android/server/am/BGProtectManager$PackageValidationInfo;

    .line 136
    .line 137
    invoke-static {p2}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p2

    .line 141
    invoke-direct {v0, p2, p0}, Lcom/android/server/am/BGProtectManager$PackageValidationInfo;-><init>(Ljava/lang/String;I)V

    .line 142
    .line 143
    .line 144
    invoke-direct {p5, p3, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {p1, p4, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    goto :goto_1

    .line 151
    :cond_3
    new-instance p5, Landroid/util/Pair;

    .line 152
    .line 153
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 154
    .line 155
    .line 156
    move-result-object p3

    .line 157
    new-instance v0, Lcom/android/server/am/BGProtectManager$PackageValidationInfo;

    .line 158
    .line 159
    invoke-direct {v0, p4, p0}, Lcom/android/server/am/BGProtectManager$PackageValidationInfo;-><init>(Ljava/lang/String;I)V

    .line 160
    .line 161
    .line 162
    invoke-direct {p5, p3, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {p1, p2, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    :cond_4
    :goto_1
    return-void
.end method

.method public final dhaAddPackageName(Ljava/util/HashMap;Ljava/lang/String;IZ)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/am/BGProtectManager;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-string v0, "TU1T"

    .line 7
    .line 8
    invoke-static {v0}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "Q09OVEFDVFM="

    .line 13
    .line 14
    invoke-static {v1}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const-string v2, "SU5DQUxMVUk="

    .line 19
    .line 20
    invoke-static {v2}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    const-string v3, "RElBTEVS"

    .line 25
    .line 26
    invoke-static {v3}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    const-string v4, "SE9NRUhVQg=="

    .line 31
    .line 32
    invoke-static {v4}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    const-string v5, "QklYQlk="

    .line 37
    .line 38
    invoke-static {v5}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    const-string v6, "RkFDVE9SWQ=="

    .line 43
    .line 44
    invoke-static {v6}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v6

    .line 48
    const-string v7, "Q01I"

    .line 49
    .line 50
    invoke-static {v7}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v7

    .line 54
    if-eqz p4, :cond_1

    .line 55
    .line 56
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result p4

    .line 60
    if-nez p4, :cond_a

    .line 61
    .line 62
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result p4

    .line 66
    if-nez p4, :cond_a

    .line 67
    .line 68
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result p4

    .line 72
    if-nez p4, :cond_a

    .line 73
    .line 74
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result p4

    .line 78
    if-eqz p4, :cond_1

    .line 79
    .line 80
    goto/16 :goto_0

    .line 81
    .line 82
    :cond_1
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result p4

    .line 86
    if-eqz p4, :cond_2

    .line 87
    .line 88
    iget-object p0, p0, Lcom/android/server/am/BGProtectManager;->mContext:Landroid/content/Context;

    .line 89
    .line 90
    invoke-static {p0}, Lcom/android/server/am/BGProtectManager;->getMessagePackageName(Landroid/content/Context;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 95
    .line 96
    .line 97
    move-result-object p2

    .line 98
    invoke-virtual {p1, p0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    goto/16 :goto_0

    .line 102
    .line 103
    :cond_2
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result p4

    .line 107
    if-eqz p4, :cond_3

    .line 108
    .line 109
    iget-boolean p4, p0, Lcom/android/server/am/BGProtectManager;->removeContactExceptList:Z

    .line 110
    .line 111
    if-nez p4, :cond_3

    .line 112
    .line 113
    iget-object p0, p0, Lcom/android/server/am/BGProtectManager;->mContext:Landroid/content/Context;

    .line 114
    .line 115
    invoke-static {p0}, Lcom/android/server/am/BGProtectManager;->getContactsPackageName(Landroid/content/Context;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 120
    .line 121
    .line 122
    move-result-object p2

    .line 123
    invoke-virtual {p1, p0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    goto/16 :goto_0

    .line 127
    .line 128
    :cond_3
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result p4

    .line 132
    if-eqz p4, :cond_4

    .line 133
    .line 134
    iget p0, p0, Lcom/android/server/am/BGProtectManager;->DIALER_EXCEPTION_TH:I

    .line 135
    .line 136
    int-to-long v0, p0

    .line 137
    sget-wide v2, Lcom/android/server/am/BGProtectManager;->mTotalMemMb:J

    .line 138
    .line 139
    cmp-long p0, v2, v0

    .line 140
    .line 141
    if-lez p0, :cond_a

    .line 142
    .line 143
    const-string p0, "Y29tLnNhbXN1bmcuYW5kcm9pZC5kaWFsZXI="

    .line 144
    .line 145
    invoke-static {p0}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object p0

    .line 149
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 150
    .line 151
    .line 152
    move-result-object p2

    .line 153
    invoke-virtual {p1, p0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    goto/16 :goto_0

    .line 157
    .line 158
    :cond_4
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    move-result p4

    .line 162
    if-eqz p4, :cond_5

    .line 163
    .line 164
    const-string p0, "Y29tLnNhbXN1bmcuYW5kcm9pZC5ob21laHVi"

    .line 165
    .line 166
    invoke-static {p0}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p0

    .line 170
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 171
    .line 172
    .line 173
    move-result-object p2

    .line 174
    invoke-virtual {p1, p0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    goto/16 :goto_0

    .line 178
    .line 179
    :cond_5
    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    move-result p4

    .line 183
    if-eqz p4, :cond_6

    .line 184
    .line 185
    const-string p0, "Y29tLnNhbXN1bmcuYW5kcm9pZC5iaXhieS5hZ2VudA=="

    .line 186
    .line 187
    invoke-static {p0}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object p0

    .line 191
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 192
    .line 193
    .line 194
    move-result-object p2

    .line 195
    invoke-virtual {p1, p0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    goto/16 :goto_0

    .line 199
    .line 200
    :cond_6
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 201
    .line 202
    .line 203
    move-result p4

    .line 204
    if-eqz p4, :cond_7

    .line 205
    .line 206
    iget-object p0, p0, Lcom/android/server/am/BGProtectManager;->mContext:Landroid/content/Context;

    .line 207
    .line 208
    invoke-static {p0}, Lcom/android/server/am/BGProtectManager;->getInCallUIPackageName(Landroid/content/Context;)Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object p0

    .line 212
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 213
    .line 214
    .line 215
    move-result-object p2

    .line 216
    invoke-virtual {p1, p0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    goto :goto_0

    .line 220
    :cond_7
    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 221
    .line 222
    .line 223
    move-result p0

    .line 224
    if-eqz p0, :cond_8

    .line 225
    .line 226
    const-string p0, "0"

    .line 227
    .line 228
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 229
    .line 230
    .line 231
    move-result p0

    .line 232
    const-string/jumbo p4, "ro.debuggable"

    .line 233
    .line 234
    .line 235
    invoke-static {p4, p0}, Landroid/os/SemSystemProperties;->getInt(Ljava/lang/String;I)I

    .line 236
    .line 237
    .line 238
    move-result p0

    .line 239
    const/4 p4, 0x1

    .line 240
    if-ne p0, p4, :cond_8

    .line 241
    .line 242
    const-string p0, "DynamicHiddenApp_BGProtectManager"

    .line 243
    .line 244
    const-string/jumbo p2, "it\'s debuggable binary!! add FACTORY in allowlist"

    .line 245
    .line 246
    .line 247
    invoke-static {p0, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    .line 249
    .line 250
    const-string p0, "Y29tLnNlYy5mYWNhdGZ1bmN0aW9u"

    .line 251
    .line 252
    invoke-static {p0}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object p0

    .line 256
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 257
    .line 258
    .line 259
    move-result-object p2

    .line 260
    invoke-virtual {p1, p0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    const-string p0, "Y29tLnNlYy5mYWN1aWZ1bmN0aW9u"

    .line 264
    .line 265
    invoke-static {p0}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object p0

    .line 269
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 270
    .line 271
    .line 272
    move-result-object p2

    .line 273
    invoke-virtual {p1, p0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    const-string p0, "Y29tLnNhbXN1bmcuYW5kcm9pZC5haXJjb21tYW5kbWFuYWdlcg=="

    .line 277
    .line 278
    invoke-static {p0}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object p0

    .line 282
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 283
    .line 284
    .line 285
    move-result-object p2

    .line 286
    invoke-virtual {p1, p0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    .line 288
    .line 289
    goto :goto_0

    .line 290
    :cond_8
    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 291
    .line 292
    .line 293
    move-result p0

    .line 294
    if-eqz p0, :cond_9

    .line 295
    .line 296
    const-string p0, "Y29tLnNhbXN1bmcuY21oOkNNSA=="

    .line 297
    .line 298
    invoke-static {p0}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object p0

    .line 302
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 303
    .line 304
    .line 305
    move-result-object p2

    .line 306
    invoke-virtual {p1, p0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    .line 308
    .line 309
    const-string p0, "Y29tLnNhbXN1bmcuY21o"

    .line 310
    .line 311
    invoke-static {p0}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object p0

    .line 315
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 316
    .line 317
    .line 318
    move-result-object p2

    .line 319
    invoke-virtual {p1, p0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    .line 321
    .line 322
    goto :goto_0

    .line 323
    :cond_9
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 324
    .line 325
    .line 326
    move-result-object p0

    .line 327
    invoke-virtual {p1, p2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    .line 329
    .line 330
    :cond_a
    :goto_0
    return-void
.end method

.method public final dhaDeletePackageName(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/am/BGProtectManager;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-string v0, "TU1T"

    .line 7
    .line 8
    invoke-static {v0}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "Q09OVEFDVFM="

    .line 13
    .line 14
    invoke-static {v1}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const-string v2, "SU5DQUxMVUk="

    .line 19
    .line 20
    invoke-static {v2}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    const-string v3, "RElBTEVS"

    .line 25
    .line 26
    invoke-static {v3}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    const-string v4, "Q01I"

    .line 31
    .line 32
    invoke-static {v4}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    iget-object p0, p0, Lcom/android/server/am/BGProtectManager;->mContext:Landroid/content/Context;

    .line 43
    .line 44
    invoke-static {p0}, Lcom/android/server/am/BGProtectManager;->getMessagePackageName(Landroid/content/Context;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-virtual {p2, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_2

    .line 57
    .line 58
    iget-object p0, p0, Lcom/android/server/am/BGProtectManager;->mContext:Landroid/content/Context;

    .line 59
    .line 60
    invoke-static {p0}, Lcom/android/server/am/BGProtectManager;->getContactsPackageName(Landroid/content/Context;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-virtual {p2, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_2
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-eqz v0, :cond_3

    .line 73
    .line 74
    const-string p0, "Y29tLnNhbXN1bmcuYW5kcm9pZC5kaWFsZXI="

    .line 75
    .line 76
    invoke-static {p0}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    invoke-virtual {p2, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_3
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-eqz v0, :cond_4

    .line 89
    .line 90
    iget-object p0, p0, Lcom/android/server/am/BGProtectManager;->mContext:Landroid/content/Context;

    .line 91
    .line 92
    invoke-static {p0}, Lcom/android/server/am/BGProtectManager;->getInCallUIPackageName(Landroid/content/Context;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    invoke-virtual {p2, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_4
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result p0

    .line 104
    if-eqz p0, :cond_5

    .line 105
    .line 106
    const-string p0, "Y29tLnNhbXN1bmcuY21oOkNNSA=="

    .line 107
    .line 108
    invoke-static {p0}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    invoke-virtual {p2, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    const-string p0, "Y29tLnNhbXN1bmcuY21o"

    .line 116
    .line 117
    invoke-static {p0}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    invoke-virtual {p2, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_5
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    :goto_0
    return-void
.end method

.method public final initBGProtectManagerPostBoot()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/server/am/BGProtectManager;->addAllowlistList(Z)V

    .line 3
    .line 4
    .line 5
    iget-boolean v1, p0, Lcom/android/server/am/BGProtectManager;->BOOTING_EMPTY_KILL_SKIP_ENABLE:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Lcom/android/server/am/BGProtectManager;->addBEKSList(Z)V

    .line 10
    .line 11
    .line 12
    :cond_0
    const-string/jumbo v0, "persist.sys.bub_onoff"

    .line 13
    .line 14
    .line 15
    const-string/jumbo v1, "on"

    .line 16
    .line 17
    .line 18
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/android/server/am/BGProtectManager;->removeAllowlistByBUB()V

    .line 29
    .line 30
    .line 31
    :cond_1
    return-void
.end method

.method public final isBEKCondition(Lcom/android/server/am/ProcessRecord;)Z
    .locals 2

    .line 1
    iget-boolean p0, p0, Lcom/android/server/am/BGProtectManager;->BOOTING_EMPTY_KILL_SKIP_ENABLE:Z

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    sget-object p0, Lcom/android/server/am/BGProtectManager;->sBEKS_processList:Ljava/util/ArrayList;

    .line 6
    .line 7
    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 16
    .line 17
    .line 18
    move-result-wide p0

    .line 19
    const-wide/32 v0, 0x927c0

    .line 20
    .line 21
    .line 22
    cmp-long p0, p0, v0

    .line 23
    .line 24
    if-gtz p0, :cond_0

    .line 25
    .line 26
    const/4 p0, 0x1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 p0, 0x0

    .line 29
    :goto_0
    return p0
.end method

.method public final removeAllowlistByBUB()V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/server/am/BGProtectManager;->dha_amsexcept_map:Ljava/util/HashMap;

    .line 2
    .line 3
    const-string v1, "Q09OVEFDVFM="

    .line 4
    .line 5
    invoke-static {v1}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p0, v1, v0}, Lcom/android/server/am/BGProtectManager;->dhaDeletePackageName(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 10
    .line 11
    .line 12
    const-string v1, "RElBTEVS"

    .line 13
    .line 14
    invoke-static {v1}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {p0, v1, v0}, Lcom/android/server/am/BGProtectManager;->dhaDeletePackageName(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 19
    .line 20
    .line 21
    sget v0, Lcom/android/server/am/BGProtectManager;->sProvider_lifeguard_memory_TH:I

    .line 22
    .line 23
    int-to-long v0, v0

    .line 24
    sget-wide v2, Lcom/android/server/am/BGProtectManager;->mTotalMemMb:J

    .line 25
    .line 26
    cmp-long v0, v2, v0

    .line 27
    .line 28
    if-lez v0, :cond_1

    .line 29
    .line 30
    const/4 v0, 0x1

    .line 31
    const/4 v1, 0x0

    .line 32
    :goto_0
    sget-object v2, Lcom/android/server/am/BGProtectManager;->PROVIDER_LIFEGUARD_ARRAY:[Ljava/lang/String;

    .line 33
    .line 34
    array-length v3, v2

    .line 35
    if-ge v1, v3, :cond_1

    .line 36
    .line 37
    sget v3, Lcom/android/server/am/BGProtectManager;->sProvider_lifeguard_key:I

    .line 38
    .line 39
    and-int/2addr v3, v0

    .line 40
    if-eqz v3, :cond_0

    .line 41
    .line 42
    sget-object v3, Lcom/android/server/am/BGProtectManager;->dha_amsexcept_map:Ljava/util/HashMap;

    .line 43
    .line 44
    aget-object v2, v2, v1

    .line 45
    .line 46
    invoke-virtual {p0, v2, v3}, Lcom/android/server/am/BGProtectManager;->dhaDeletePackageName(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 47
    .line 48
    .line 49
    :cond_0
    shl-int/lit8 v0, v0, 0x1

    .line 50
    .line 51
    add-int/lit8 v1, v1, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    sget-object p0, Lcom/android/server/am/BGProtectManager;->dha_keepempty_map:Ljava/util/HashMap;

    .line 55
    .line 56
    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    .line 57
    .line 58
    .line 59
    sget-object p0, Lcom/android/server/am/BGProtectManager;->dha_cameraguard_map:Ljava/util/HashMap;

    .line 60
    .line 61
    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    .line 62
    .line 63
    .line 64
    return-void
.end method
