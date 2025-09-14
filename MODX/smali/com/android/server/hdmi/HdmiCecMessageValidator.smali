.class public abstract Lcom/android/server/hdmi/HdmiCecMessageValidator;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final sValidationInfo:Landroid/util/SparseArray;


# direct methods
.method public static -$$Nest$smisValidPlayMode(I)Z
    .locals 2

    .line 1
    const/4 v0, 0x5

    .line 2
    const/4 v1, 0x7

    .line 3
    invoke-static {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 9
    const/16 v0, 0x9

    .line 11
    const/16 v1, 0xb

    .line 13
    invoke-static {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_1

    .line 19
    const/16 v0, 0x15

    .line 21
    const/16 v1, 0x17

    .line 23
    invoke-static {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_1

    .line 29
    const/16 v0, 0x19

    .line 31
    const/16 v1, 0x1b

    .line 33
    invoke-static {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_1

    .line 39
    const/16 v0, 0x24

    .line 41
    const/16 v1, 0x25

    .line 43
    invoke-static {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    .line 46
    move-result v0

    .line 47
    if-nez v0, :cond_1

    .line 49
    const/16 v0, 0x20

    .line 51
    if-ne p0, v0, :cond_0

    .line 53
    goto :goto_0

    .line 54
    :cond_0
    const/4 p0, 0x0

    .line 55
    goto :goto_1

    .line 56
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 57
    :goto_1
    return p0
.end method

.method public static -$$Nest$smisValidRecordingSequence(I)Z
    .locals 2

    .line 1
    and-int/lit16 v0, p0, 0xff

    .line 3
    and-int/lit16 p0, p0, 0x80

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz p0, :cond_0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    .line 12
    move-result p0

    .line 13
    const/4 v0, 0x1

    .line 14
    if-gt p0, v0, :cond_1

    .line 16
    move v1, v0

    .line 17
    :cond_1
    :goto_0
    return v1
.end method

.method public static -$$Nest$smtoErrorCode(Z)I
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/4 p0, 0x3

    .line 6
    :goto_0
    return p0
.end method

.method static constructor <clinit>()V
    .locals 15

    .line 1
    new-instance v0, Landroid/util/SparseArray;

    .line 3
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 6
    sput-object v0, Lcom/android/server/hdmi/HdmiCecMessageValidator;->sValidationInfo:Landroid/util/SparseArray;

    .line 8
    new-instance v0, Lcom/android/server/hdmi/HdmiCecMessageValidator$PlayModeValidator;

    .line 10
    const/4 v1, 0x5

    .line 11
    invoke-direct {v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator$PlayModeValidator;-><init>(I)V

    .line 14
    const/16 v1, 0x82

    .line 16
    const v2, 0xffdf

    .line 19
    const v3, 0x8000

    .line 22
    invoke-static {v1, v0, v2, v3}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    .line 25
    const/16 v1, 0x9d

    .line 27
    const/16 v2, 0x7fff

    .line 29
    invoke-static {v1, v0, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    .line 32
    new-instance v1, Lcom/android/server/hdmi/HdmiCecMessageValidator$PlayModeValidator;

    .line 34
    const/4 v4, 0x7

    .line 35
    invoke-direct {v1, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator$PlayModeValidator;-><init>(I)V

    .line 38
    const/16 v4, 0x84

    .line 40
    const v5, 0xffff

    .line 43
    invoke-static {v4, v1, v5, v3}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    .line 46
    new-instance v1, Lcom/android/server/hdmi/HdmiCecMessageValidator$PlayModeValidator;

    .line 48
    const/16 v4, 0x8

    .line 50
    invoke-direct {v1, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator$PlayModeValidator;-><init>(I)V

    .line 53
    const/16 v4, 0x80

    .line 55
    invoke-static {v4, v1, v5, v3}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    .line 58
    const/16 v1, 0x81

    .line 60
    invoke-static {v1, v0, v5, v3}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    .line 63
    const/16 v1, 0x86

    .line 65
    invoke-static {v1, v0, v2, v3}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    .line 68
    new-instance v1, Lcom/android/server/hdmi/HdmiCecMessageValidator$SystemAudioModeRequestValidator;

    .line 70
    const/4 v4, 0x5

    .line 71
    invoke-direct {v1, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator$PlayModeValidator;-><init>(I)V

    .line 74
    const/16 v4, 0x70

    .line 76
    invoke-static {v4, v1, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    .line 79
    new-instance v1, Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;

    .line 81
    const/4 v4, 0x0

    .line 82
    const/4 v6, 0x0

    .line 83
    invoke-direct {v1, v4, v6}, Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;-><init>(II)V

    .line 86
    const/16 v6, 0xff

    .line 88
    invoke-static {v6, v1, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    .line 91
    const/16 v6, 0x9f

    .line 93
    invoke-static {v6, v1, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    .line 96
    const/16 v6, 0x91

    .line 98
    invoke-static {v6, v1, v5, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    .line 101
    const/16 v6, 0x71

    .line 103
    invoke-static {v6, v1, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    .line 106
    const/16 v6, 0x8f

    .line 108
    invoke-static {v6, v1, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    .line 111
    const/16 v6, 0x8c

    .line 113
    invoke-static {v6, v1, v5, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    .line 116
    const/16 v6, 0x46

    .line 118
    invoke-static {v6, v1, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    .line 121
    const/16 v6, 0x83

    .line 123
    invoke-static {v6, v1, v5, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    .line 126
    const/16 v6, 0x7d

    .line 128
    invoke-static {v6, v1, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    .line 131
    const/4 v6, 0x4

    .line 132
    invoke-static {v6, v1, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    .line 135
    const/16 v7, 0xc0

    .line 137
    invoke-static {v7, v1, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    .line 140
    const/16 v7, 0xb

    .line 142
    invoke-static {v7, v1, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    .line 145
    const/16 v7, 0xf

    .line 147
    invoke-static {v7, v1, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    .line 150
    const/16 v7, 0xc1

    .line 152
    invoke-static {v7, v1, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    .line 155
    const/16 v7, 0xc2

    .line 157
    invoke-static {v7, v1, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    .line 160
    const/16 v7, 0xc3

    .line 162
    invoke-static {v7, v1, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    .line 165
    const/16 v7, 0xc4

    .line 167
    invoke-static {v7, v1, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    .line 170
    const/16 v7, 0x85

    .line 172
    invoke-static {v7, v1, v5, v3}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    .line 175
    const/16 v7, 0x36

    .line 177
    invoke-static {v7, v1, v5, v5}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    .line 180
    const/16 v7, 0xc5

    .line 182
    invoke-static {v7, v1, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    .line 185
    const/16 v7, 0xd

    .line 187
    invoke-static {v7, v1, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    .line 190
    const/4 v7, 0x6

    .line 191
    invoke-static {v7, v1, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    .line 194
    const/4 v8, 0x5

    .line 195
    invoke-static {v8, v1, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    .line 198
    const/16 v8, 0x45

    .line 200
    invoke-static {v8, v1, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    .line 203
    const/16 v8, 0x8b

    .line 205
    invoke-static {v8, v1, v2, v5}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    .line 208
    new-instance v8, Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;

    .line 210
    const/4 v9, 0x1

    .line 211
    const/4 v10, 0x1

    .line 212
    invoke-direct {v8, v9, v10}, Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;-><init>(II)V

    .line 215
    const/16 v10, 0x9

    .line 217
    invoke-static {v10, v8, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    .line 220
    new-instance v8, Lcom/android/server/hdmi/HdmiCecMessageValidator$PlayModeValidator;

    .line 222
    const/4 v10, 0x6

    .line 223
    invoke-direct {v8, v10}, Lcom/android/server/hdmi/HdmiCecMessageValidator$PlayModeValidator;-><init>(I)V

    .line 226
    const/16 v10, 0xa

    .line 228
    invoke-static {v10, v8, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    .line 231
    new-instance v8, Lcom/android/server/hdmi/HdmiCecMessageValidator$PlayModeValidator;

    .line 233
    const/4 v10, 0x1

    .line 234
    invoke-direct {v8, v10}, Lcom/android/server/hdmi/HdmiCecMessageValidator$PlayModeValidator;-><init>(I)V

    .line 237
    const/16 v10, 0x33

    .line 239
    invoke-static {v10, v8, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    .line 242
    new-instance v8, Lcom/android/server/hdmi/HdmiCecMessageValidator$PlayModeValidator;

    .line 244
    const/4 v10, 0x2

    .line 245
    invoke-direct {v8, v10}, Lcom/android/server/hdmi/HdmiCecMessageValidator$PlayModeValidator;-><init>(I)V

    .line 248
    const/16 v10, 0x99

    .line 250
    invoke-static {v10, v8, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    .line 253
    new-instance v8, Lcom/android/server/hdmi/HdmiCecMessageValidator$PlayModeValidator;

    .line 255
    const/4 v10, 0x3

    .line 256
    invoke-direct {v8, v10}, Lcom/android/server/hdmi/HdmiCecMessageValidator$PlayModeValidator;-><init>(I)V

    .line 259
    const/16 v10, 0xa1

    .line 261
    invoke-static {v10, v8, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    .line 264
    new-instance v8, Lcom/android/server/hdmi/HdmiCecMessageValidator$PlayModeValidator;

    .line 266
    const/4 v10, 0x1

    .line 267
    invoke-direct {v8, v10}, Lcom/android/server/hdmi/HdmiCecMessageValidator$PlayModeValidator;-><init>(I)V

    .line 270
    const/16 v10, 0x34

    .line 272
    invoke-static {v10, v8, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    .line 275
    new-instance v8, Lcom/android/server/hdmi/HdmiCecMessageValidator$PlayModeValidator;

    .line 277
    const/4 v10, 0x2

    .line 278
    invoke-direct {v8, v10}, Lcom/android/server/hdmi/HdmiCecMessageValidator$PlayModeValidator;-><init>(I)V

    .line 281
    const/16 v10, 0x97

    .line 283
    invoke-static {v10, v8, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    .line 286
    new-instance v8, Lcom/android/server/hdmi/HdmiCecMessageValidator$PlayModeValidator;

    .line 288
    const/4 v10, 0x3

    .line 289
    invoke-direct {v8, v10}, Lcom/android/server/hdmi/HdmiCecMessageValidator$PlayModeValidator;-><init>(I)V

    .line 292
    const/16 v10, 0xa2

    .line 294
    invoke-static {v10, v8, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    .line 297
    new-instance v8, Lcom/android/server/hdmi/HdmiCecMessageValidator$AsciiValidator;

    .line 299
    invoke-direct {v8, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator$AsciiValidator;-><init>(I)V

    .line 302
    const/16 v10, 0x67

    .line 304
    invoke-static {v10, v8, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    .line 307
    new-instance v8, Lcom/android/server/hdmi/HdmiCecMessageValidator$PlayModeValidator;

    .line 309
    const/16 v10, 0xc

    .line 311
    invoke-direct {v8, v10}, Lcom/android/server/hdmi/HdmiCecMessageValidator$PlayModeValidator;-><init>(I)V

    .line 314
    const/16 v10, 0x43

    .line 316
    invoke-static {v10, v8, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    .line 319
    new-instance v8, Lcom/android/server/hdmi/HdmiCecMessageValidator$PlayModeValidator;

    .line 321
    const/16 v10, 0xd

    .line 323
    invoke-direct {v8, v10}, Lcom/android/server/hdmi/HdmiCecMessageValidator$PlayModeValidator;-><init>(I)V

    .line 326
    const/16 v10, 0x35

    .line 328
    invoke-static {v10, v8, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    .line 331
    new-instance v8, Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;

    .line 333
    const/4 v10, 0x0

    .line 334
    invoke-direct {v8, v9, v10}, Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;-><init>(II)V

    .line 337
    const/16 v10, 0x9e

    .line 339
    invoke-static {v10, v8, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    .line 342
    new-instance v10, Lcom/android/server/hdmi/HdmiCecMessageValidator$AsciiValidator;

    .line 344
    invoke-direct {v10}, Lcom/android/server/hdmi/HdmiCecMessageValidator$AsciiValidator;-><init>()V

    .line 347
    const/16 v11, 0x32

    .line 349
    invoke-static {v11, v10, v9, v3}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    .line 352
    new-instance v10, Lcom/android/server/hdmi/HdmiCecMessageValidator$AsciiValidator;

    .line 354
    const/4 v11, 0x3

    .line 355
    invoke-direct {v10, v9, v11}, Lcom/android/server/hdmi/HdmiCecMessageValidator$AsciiValidator;-><init>(II)V

    .line 358
    new-instance v12, Lcom/android/server/hdmi/HdmiCecMessageValidator$AsciiValidator;

    .line 360
    invoke-direct {v12, v9, v6}, Lcom/android/server/hdmi/HdmiCecMessageValidator$AsciiValidator;-><init>(II)V

    .line 363
    const/16 v13, 0x42

    .line 365
    invoke-static {v13, v12, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    .line 368
    new-instance v12, Lcom/android/server/hdmi/HdmiCecMessageValidator$AsciiValidator;

    .line 370
    const/16 v13, 0x11

    .line 372
    const/16 v14, 0x1f

    .line 374
    invoke-direct {v12, v13, v14}, Lcom/android/server/hdmi/HdmiCecMessageValidator$AsciiValidator;-><init>(II)V

    .line 377
    const/16 v13, 0x1b

    .line 379
    invoke-static {v13, v12, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    .line 382
    const/16 v12, 0x1a

    .line 384
    invoke-static {v12, v10, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    .line 387
    new-instance v12, Lcom/android/server/hdmi/HdmiCecMessageValidator$PlayModeValidator;

    .line 389
    const/4 v13, 0x0

    .line 390
    invoke-direct {v12, v13}, Lcom/android/server/hdmi/HdmiCecMessageValidator$PlayModeValidator;-><init>(I)V

    .line 393
    const/16 v13, 0x41

    .line 395
    invoke-static {v13, v12, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    .line 398
    const/16 v12, 0x8

    .line 400
    invoke-static {v12, v10, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    .line 403
    new-instance v10, Lcom/android/server/hdmi/HdmiCecMessageValidator$PlayModeValidator;

    .line 405
    const/16 v12, 0x9

    .line 407
    invoke-direct {v10, v12}, Lcom/android/server/hdmi/HdmiCecMessageValidator$PlayModeValidator;-><init>(I)V

    .line 410
    const/16 v12, 0x92

    .line 412
    invoke-static {v12, v10, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    .line 415
    new-instance v10, Lcom/android/server/hdmi/HdmiCecMessageValidator$PlayModeValidator;

    .line 417
    const/16 v12, 0xa

    .line 419
    invoke-direct {v10, v12}, Lcom/android/server/hdmi/HdmiCecMessageValidator$PlayModeValidator;-><init>(I)V

    .line 422
    const/16 v12, 0x93

    .line 424
    invoke-static {v12, v10, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    .line 427
    new-instance v10, Lcom/android/server/hdmi/HdmiCecMessageValidator$PlayModeValidator;

    .line 429
    const/16 v12, 0xe

    .line 431
    invoke-direct {v10, v12}, Lcom/android/server/hdmi/HdmiCecMessageValidator$PlayModeValidator;-><init>(I)V

    .line 434
    const/4 v12, 0x7

    .line 435
    invoke-static {v12, v10, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    .line 438
    new-instance v10, Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;

    .line 440
    const/4 v12, 0x1

    .line 441
    invoke-direct {v10, v4, v12}, Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;-><init>(II)V

    .line 444
    new-instance v12, Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;

    .line 446
    const/4 v13, 0x0

    .line 447
    invoke-direct {v12, v11, v13}, Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;-><init>(II)V

    .line 450
    const/16 v13, 0x87

    .line 452
    invoke-static {v13, v12, v2, v3}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    .line 455
    new-instance v12, Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;

    .line 457
    const/4 v13, 0x1

    .line 458
    invoke-direct {v12, v9, v13}, Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;-><init>(II)V

    .line 461
    const/16 v13, 0x89

    .line 463
    invoke-static {v13, v12, v5, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    .line 466
    new-instance v12, Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;

    .line 468
    const/4 v13, 0x1

    .line 469
    invoke-direct {v12, v6, v13}, Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;-><init>(II)V

    .line 472
    const/16 v13, 0xa0

    .line 474
    invoke-static {v13, v12, v5, v5}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    .line 477
    const/16 v12, 0x8a

    .line 479
    invoke-static {v12, v10, v5, v5}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    .line 482
    new-instance v12, Lcom/android/server/hdmi/HdmiCecMessageValidator$PlayModeValidator;

    .line 484
    const/4 v13, 0x4

    .line 485
    invoke-direct {v12, v13}, Lcom/android/server/hdmi/HdmiCecMessageValidator$PlayModeValidator;-><init>(I)V

    .line 488
    const/16 v13, 0x64

    .line 490
    invoke-static {v13, v12, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    .line 493
    new-instance v12, Lcom/android/server/hdmi/HdmiCecMessageValidator$AsciiValidator;

    .line 495
    invoke-direct {v12, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator$AsciiValidator;-><init>(I)V

    .line 498
    const/16 v13, 0x47

    .line 500
    invoke-static {v13, v12, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    .line 503
    new-instance v12, Lcom/android/server/hdmi/HdmiCecMessageValidator$AsciiValidator;

    .line 505
    const/4 v13, 0x2

    .line 506
    invoke-direct {v12, v4, v13}, Lcom/android/server/hdmi/HdmiCecMessageValidator$AsciiValidator;-><init>(II)V

    .line 509
    const/16 v14, 0x8d

    .line 511
    invoke-static {v14, v12, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    .line 514
    new-instance v12, Lcom/android/server/hdmi/HdmiCecMessageValidator$AsciiValidator;

    .line 516
    invoke-direct {v12, v4, v9}, Lcom/android/server/hdmi/HdmiCecMessageValidator$AsciiValidator;-><init>(II)V

    .line 519
    const/16 v9, 0x8e

    .line 521
    invoke-static {v9, v12, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    .line 524
    new-instance v9, Lcom/android/server/hdmi/HdmiCecMessageValidator$PlayModeValidator;

    .line 526
    const/16 v12, 0xf

    .line 528
    invoke-direct {v9, v12}, Lcom/android/server/hdmi/HdmiCecMessageValidator$PlayModeValidator;-><init>(I)V

    .line 531
    const/16 v12, 0x44

    .line 533
    invoke-static {v12, v9, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    .line 536
    new-instance v9, Lcom/android/server/hdmi/HdmiCecMessageValidator$AsciiValidator;

    .line 538
    invoke-direct {v9, v4, v11}, Lcom/android/server/hdmi/HdmiCecMessageValidator$AsciiValidator;-><init>(II)V

    .line 541
    const/16 v12, 0x90

    .line 543
    invoke-static {v12, v9, v2, v5}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    .line 546
    new-instance v9, Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;

    .line 548
    const/4 v12, 0x0

    .line 549
    invoke-direct {v9, v13, v12}, Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;-><init>(II)V

    .line 552
    invoke-static {v4, v9, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    .line 555
    const/16 v9, 0x7a

    .line 557
    invoke-static {v9, v8, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    .line 560
    new-instance v9, Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;

    .line 562
    invoke-direct {v9, v11, v12}, Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;-><init>(II)V

    .line 565
    const/16 v11, 0xa3

    .line 567
    invoke-static {v11, v9, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    .line 570
    const/16 v9, 0xa4

    .line 572
    invoke-static {v9, v8, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    .line 575
    new-instance v8, Lcom/android/server/hdmi/HdmiCecMessageValidator$PlayModeValidator;

    .line 577
    const/16 v9, 0xb

    .line 579
    invoke-direct {v8, v9}, Lcom/android/server/hdmi/HdmiCecMessageValidator$PlayModeValidator;-><init>(I)V

    .line 582
    const/16 v9, 0x20

    .line 584
    const/16 v11, 0x72

    .line 586
    invoke-static {v11, v8, v9, v5}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    .line 589
    new-instance v8, Lcom/android/server/hdmi/HdmiCecMessageValidator$PlayModeValidator;

    .line 591
    const/16 v9, 0xb

    .line 593
    invoke-direct {v8, v9}, Lcom/android/server/hdmi/HdmiCecMessageValidator$PlayModeValidator;-><init>(I)V

    .line 596
    const/16 v9, 0x7e

    .line 598
    invoke-static {v9, v8, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    .line 601
    new-instance v8, Lcom/android/server/hdmi/HdmiCecMessageValidator$AsciiValidator;

    .line 603
    invoke-direct {v8, v4, v7}, Lcom/android/server/hdmi/HdmiCecMessageValidator$AsciiValidator;-><init>(II)V

    .line 606
    const/16 v4, 0x9a

    .line 608
    invoke-static {v4, v8, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    .line 611
    const/16 v4, 0xa5

    .line 613
    invoke-static {v4, v1, v5, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    .line 616
    const/16 v1, 0xa7

    .line 618
    invoke-static {v1, v0, v2, v3}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    .line 621
    new-instance v0, Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;

    .line 623
    const/4 v1, 0x1

    .line 624
    invoke-direct {v0, v6, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;-><init>(II)V

    .line 627
    const/16 v1, 0xa8

    .line 629
    invoke-static {v1, v0, v2, v3}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    .line 632
    const/16 v0, 0xf8

    .line 634
    invoke-static {v0, v10, v5, v3}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    .line 637
    return-void
.end method

.method public static addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/server/hdmi/HdmiCecMessageValidator;->sValidationInfo:Landroid/util/SparseArray;

    .line 3
    new-instance v1, Lcom/android/server/hdmi/HdmiCecMessageValidator$ValidationInfo;

    .line 5
    invoke-direct {v1, p1, p2, p3}, Lcom/android/server/hdmi/HdmiCecMessageValidator$ValidationInfo;-><init>(Lcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    .line 8
    invoke-virtual {v0, p0, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 11
    return-void
.end method

.method public static isValidAnalogueFrequency(I)Z
    .locals 1

    .line 1
    const v0, 0xffff

    .line 4
    and-int/2addr p0, v0

    .line 5
    if-eqz p0, :cond_0

    .line 7
    if-eq p0, v0, :cond_0

    .line 9
    const/4 p0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    :goto_0
    return p0
.end method

.method public static isValidChannelIdentifier(I[B)Z
    .locals 5

    .line 1
    aget-byte v0, p1, p0

    .line 3
    and-int/lit16 v0, v0, 0xfc

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x4

    .line 8
    if-ne v0, v3, :cond_1

    .line 10
    array-length p1, p1

    .line 11
    sub-int/2addr p1, p0

    .line 12
    const/4 p0, 0x3

    .line 13
    if-lt p1, p0, :cond_0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move v1, v2

    .line 17
    :goto_0
    return v1

    .line 18
    :cond_1
    const/16 v4, 0x8

    .line 20
    if-ne v0, v4, :cond_3

    .line 22
    array-length p1, p1

    .line 23
    sub-int/2addr p1, p0

    .line 24
    if-lt p1, v3, :cond_2

    .line 26
    goto :goto_1

    .line 27
    :cond_2
    move v1, v2

    .line 28
    :goto_1
    return v1

    .line 29
    :cond_3
    return v2
.end method

.method public static isValidDigitalServiceIdentification(I[B)Z
    .locals 12

    .line 1
    aget-byte v0, p1, p0

    .line 3
    and-int/lit16 v1, v0, 0x80

    .line 5
    and-int/lit8 v0, v0, 0x7f

    .line 7
    const/4 v2, 0x1

    .line 8
    add-int/2addr p0, v2

    .line 9
    const/16 v3, 0x1b

    .line 11
    const/16 v4, 0x18

    .line 13
    const/4 v5, 0x2

    .line 14
    const/16 v6, 0x12

    .line 16
    const/16 v7, 0x10

    .line 18
    const/16 v8, 0xa

    .line 20
    const/16 v9, 0x8

    .line 22
    const/4 v10, 0x0

    .line 23
    if-nez v1, :cond_9

    .line 25
    if-eqz v0, :cond_1

    .line 27
    invoke-static {v0, v9, v8}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_0

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move v1, v10

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    :goto_0
    move v1, v2

    .line 37
    :goto_1
    const/4 v8, 0x6

    .line 38
    if-eqz v1, :cond_3

    .line 40
    array-length p1, p1

    .line 41
    sub-int/2addr p1, p0

    .line 42
    if-lt p1, v8, :cond_2

    .line 44
    goto :goto_2

    .line 45
    :cond_2
    move v2, v10

    .line 46
    :goto_2
    return v2

    .line 47
    :cond_3
    if-eq v0, v2, :cond_7

    .line 49
    invoke-static {v0, v7, v6}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_4

    .line 55
    goto :goto_4

    .line 56
    :cond_4
    if-eq v0, v5, :cond_5

    .line 58
    invoke-static {v0, v4, v3}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_d

    .line 64
    :cond_5
    array-length p1, p1

    .line 65
    sub-int/2addr p1, p0

    .line 66
    if-lt p1, v8, :cond_6

    .line 68
    goto :goto_3

    .line 69
    :cond_6
    move v2, v10

    .line 70
    :goto_3
    return v2

    .line 71
    :cond_7
    :goto_4
    array-length p1, p1

    .line 72
    sub-int/2addr p1, p0

    .line 73
    const/4 p0, 0x4

    .line 74
    if-lt p1, p0, :cond_8

    .line 76
    goto :goto_5

    .line 77
    :cond_8
    move v2, v10

    .line 78
    :goto_5
    return v2

    .line 79
    :cond_9
    const/16 v11, 0x80

    .line 81
    if-ne v1, v11, :cond_d

    .line 83
    if-eqz v0, :cond_c

    .line 85
    invoke-static {v0, v9, v8}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    .line 88
    move-result v1

    .line 89
    if-eqz v1, :cond_a

    .line 91
    goto :goto_6

    .line 92
    :cond_a
    if-eq v0, v2, :cond_c

    .line 94
    invoke-static {v0, v7, v6}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    .line 97
    move-result v1

    .line 98
    if-eqz v1, :cond_b

    .line 100
    goto :goto_6

    .line 101
    :cond_b
    if-eq v0, v5, :cond_c

    .line 103
    invoke-static {v0, v4, v3}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    .line 106
    move-result v0

    .line 107
    if-eqz v0, :cond_d

    .line 109
    :cond_c
    :goto_6
    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidChannelIdentifier(I[B)Z

    .line 112
    move-result p0

    .line 113
    return p0

    .line 114
    :cond_d
    return v10
.end method

.method public static isValidMinute(I)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/16 v1, 0x3b

    .line 4
    invoke-static {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    .line 7
    move-result p0

    .line 8
    return p0
.end method

.method public static isValidPhysicalAddress(I[B)Z
    .locals 1

    .line 1
    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiUtils;->twoBytesToInt(I[B)I

    .line 4
    move-result p0

    .line 5
    :cond_0
    if-eqz p0, :cond_1

    .line 7
    const p1, 0xf000

    .line 10
    and-int/2addr p1, p0

    .line 11
    shl-int/lit8 p0, p0, 0x4

    .line 13
    const v0, 0xffff

    .line 16
    and-int/2addr p0, v0

    .line 17
    if-nez p1, :cond_0

    .line 19
    if-eqz p0, :cond_0

    .line 21
    const/4 p0, 0x0

    .line 22
    return p0

    .line 23
    :cond_1
    const/4 p0, 0x1

    .line 24
    return p0
.end method

.method public static isWithinRange(III)Z
    .locals 0

    .line 1
    and-int/lit16 p0, p0, 0xff

    .line 3
    if-lt p0, p1, :cond_0

    .line 5
    if-gt p0, p2, :cond_0

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

.method public static validateAddress(IIII)I
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    shl-int p0, v0, p0

    .line 4
    and-int/2addr p0, p2

    .line 5
    if-nez p0, :cond_0

    .line 7
    return v0

    .line 8
    :cond_0
    shl-int p0, v0, p1

    .line 10
    and-int/2addr p0, p3

    .line 11
    if-nez p0, :cond_1

    .line 13
    const/4 p0, 0x2

    .line 14
    return p0

    .line 15
    :cond_1
    const/4 p0, 0x0

    .line 16
    return p0
.end method
