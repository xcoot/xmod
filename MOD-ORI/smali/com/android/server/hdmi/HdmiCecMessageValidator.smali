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

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    const/16 v0, 0x9

    .line 10
    .line 11
    const/16 v1, 0xb

    .line 12
    .line 13
    invoke-static {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    const/16 v0, 0x15

    .line 20
    .line 21
    const/16 v1, 0x17

    .line 22
    .line 23
    invoke-static {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    const/16 v0, 0x19

    .line 30
    .line 31
    const/16 v1, 0x1b

    .line 32
    .line 33
    invoke-static {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_1

    .line 38
    .line 39
    const/16 v0, 0x24

    .line 40
    .line 41
    const/16 v1, 0x25

    .line 42
    .line 43
    invoke-static {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-nez v0, :cond_1

    .line 48
    .line 49
    const/16 v0, 0x20

    .line 50
    .line 51
    if-ne p0, v0, :cond_0

    .line 52
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

    .line 2
    .line 3
    and-int/lit16 p0, p0, 0x80

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    const/4 v0, 0x1

    .line 14
    if-gt p0, v0, :cond_1

    .line 15
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

    .line 2
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

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/server/hdmi/HdmiCecMessageValidator;->sValidationInfo:Landroid/util/SparseArray;

    .line 7
    .line 8
    new-instance v0, Lcom/android/server/hdmi/HdmiCecMessageValidator$PlayModeValidator;

    .line 9
    .line 10
    const/4 v1, 0x5

    .line 11
    invoke-direct {v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator$PlayModeValidator;-><init>(I)V

    .line 12
    .line 13
    .line 14
    const/16 v1, 0x82

    .line 15
    .line 16
    const v2, 0xffdf

    .line 17
    .line 18
    .line 19
    const v3, 0x8000

    .line 20
    .line 21
    .line 22
    invoke-static {v1, v0, v2, v3}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    .line 23
    .line 24
    .line 25
    const/16 v1, 0x9d

    .line 26
    .line 27
    const/16 v2, 0x7fff

    .line 28
    .line 29
    invoke-static {v1, v0, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    .line 30
    .line 31
    .line 32
    new-instance v1, Lcom/android/server/hdmi/HdmiCecMessageValidator$PlayModeValidator;

    .line 33
    .line 34
    const/4 v4, 0x7

    .line 35
    invoke-direct {v1, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator$PlayModeValidator;-><init>(I)V

    .line 36
    .line 37
    .line 38
    const/16 v4, 0x84

    .line 39
    .line 40
    const v5, 0xffff

    .line 41
    .line 42
    .line 43
    invoke-static {v4, v1, v5, v3}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    .line 44
    .line 45
    .line 46
    new-instance v1, Lcom/android/server/hdmi/HdmiCecMessageValidator$PlayModeValidator;

    .line 47
    .line 48
    const/16 v4, 0x8

    .line 49
    .line 50
    invoke-direct {v1, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator$PlayModeValidator;-><init>(I)V

    .line 51
    .line 52
    .line 53
    const/16 v4, 0x80

    .line 54
    .line 55
    invoke-static {v4, v1, v5, v3}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    .line 56
    .line 57
    .line 58
    const/16 v1, 0x81

    .line 59
    .line 60
    invoke-static {v1, v0, v5, v3}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    .line 61
    .line 62
    .line 63
    const/16 v1, 0x86

    .line 64
    .line 65
    invoke-static {v1, v0, v2, v3}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    .line 66
    .line 67
    .line 68
    new-instance v1, Lcom/android/server/hdmi/HdmiCecMessageValidator$SystemAudioModeRequestValidator;

    .line 69
    .line 70
    const/4 v4, 0x5

    .line 71
    invoke-direct {v1, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator$PlayModeValidator;-><init>(I)V

    .line 72
    .line 73
    .line 74
    const/16 v4, 0x70

    .line 75
    .line 76
    invoke-static {v4, v1, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    .line 77
    .line 78
    .line 79
    new-instance v1, Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;

    .line 80
    .line 81
    const/4 v4, 0x0

    .line 82
    const/4 v6, 0x0

    .line 83
    invoke-direct {v1, v4, v6}, Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;-><init>(II)V

    .line 84
    .line 85
    .line 86
    const/16 v6, 0xff

    .line 87
    .line 88
    invoke-static {v6, v1, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    .line 89
    .line 90
    .line 91
    const/16 v6, 0x9f

    .line 92
    .line 93
    invoke-static {v6, v1, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    .line 94
    .line 95
    .line 96
    const/16 v6, 0x91

    .line 97
    .line 98
    invoke-static {v6, v1, v5, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    .line 99
    .line 100
    .line 101
    const/16 v6, 0x71

    .line 102
    .line 103
    invoke-static {v6, v1, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    .line 104
    .line 105
    .line 106
    const/16 v6, 0x8f

    .line 107
    .line 108
    invoke-static {v6, v1, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    .line 109
    .line 110
    .line 111
    const/16 v6, 0x8c

    .line 112
    .line 113
    invoke-static {v6, v1, v5, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    .line 114
    .line 115
    .line 116
    const/16 v6, 0x46

    .line 117
    .line 118
    invoke-static {v6, v1, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    .line 119
    .line 120
    .line 121
    const/16 v6, 0x83

    .line 122
    .line 123
    invoke-static {v6, v1, v5, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    .line 124
    .line 125
    .line 126
    const/16 v6, 0x7d

    .line 127
    .line 128
    invoke-static {v6, v1, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    .line 129
    .line 130
    .line 131
    const/4 v6, 0x4

    .line 132
    invoke-static {v6, v1, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    .line 133
    .line 134
    .line 135
    const/16 v7, 0xc0

    .line 136
    .line 137
    invoke-static {v7, v1, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    .line 138
    .line 139
    .line 140
    const/16 v7, 0xb

    .line 141
    .line 142
    invoke-static {v7, v1, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    .line 143
    .line 144
    .line 145
    const/16 v7, 0xf

    .line 146
    .line 147
    invoke-static {v7, v1, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    .line 148
    .line 149
    .line 150
    const/16 v7, 0xc1

    .line 151
    .line 152
    invoke-static {v7, v1, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    .line 153
    .line 154
    .line 155
    const/16 v7, 0xc2

    .line 156
    .line 157
    invoke-static {v7, v1, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    .line 158
    .line 159
    .line 160
    const/16 v7, 0xc3

    .line 161
    .line 162
    invoke-static {v7, v1, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    .line 163
    .line 164
    .line 165
    const/16 v7, 0xc4

    .line 166
    .line 167
    invoke-static {v7, v1, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    .line 168
    .line 169
    .line 170
    const/16 v7, 0x85

    .line 171
    .line 172
    invoke-static {v7, v1, v5, v3}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    .line 173
    .line 174
    .line 175
    const/16 v7, 0x36

    .line 176
    .line 177
    invoke-static {v7, v1, v5, v5}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    .line 178
    .line 179
    .line 180
    const/16 v7, 0xc5

    .line 181
    .line 182
    invoke-static {v7, v1, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    .line 183
    .line 184
    .line 185
    const/16 v7, 0xd

    .line 186
    .line 187
    invoke-static {v7, v1, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    .line 188
    .line 189
    .line 190
    const/4 v7, 0x6

    .line 191
    invoke-static {v7, v1, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    .line 192
    .line 193
    .line 194
    const/4 v8, 0x5

    .line 195
    invoke-static {v8, v1, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    .line 196
    .line 197
    .line 198
    const/16 v8, 0x45

    .line 199
    .line 200
    invoke-static {v8, v1, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    .line 201
    .line 202
    .line 203
    const/16 v8, 0x8b

    .line 204
    .line 205
    invoke-static {v8, v1, v2, v5}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    .line 206
    .line 207
    .line 208
    new-instance v8, Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;

    .line 209
    .line 210
    const/4 v9, 0x1

    .line 211
    const/4 v10, 0x1

    .line 212
    invoke-direct {v8, v9, v10}, Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;-><init>(II)V

    .line 213
    .line 214
    .line 215
    const/16 v10, 0x9

    .line 216
    .line 217
    invoke-static {v10, v8, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    .line 218
    .line 219
    .line 220
    new-instance v8, Lcom/android/server/hdmi/HdmiCecMessageValidator$PlayModeValidator;

    .line 221
    .line 222
    const/4 v10, 0x6

    .line 223
    invoke-direct {v8, v10}, Lcom/android/server/hdmi/HdmiCecMessageValidator$PlayModeValidator;-><init>(I)V

    .line 224
    .line 225
    .line 226
    const/16 v10, 0xa

    .line 227
    .line 228
    invoke-static {v10, v8, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    .line 229
    .line 230
    .line 231
    new-instance v8, Lcom/android/server/hdmi/HdmiCecMessageValidator$PlayModeValidator;

    .line 232
    .line 233
    const/4 v10, 0x1

    .line 234
    invoke-direct {v8, v10}, Lcom/android/server/hdmi/HdmiCecMessageValidator$PlayModeValidator;-><init>(I)V

    .line 235
    .line 236
    .line 237
    const/16 v10, 0x33

    .line 238
    .line 239
    invoke-static {v10, v8, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    .line 240
    .line 241
    .line 242
    new-instance v8, Lcom/android/server/hdmi/HdmiCecMessageValidator$PlayModeValidator;

    .line 243
    .line 244
    const/4 v10, 0x2

    .line 245
    invoke-direct {v8, v10}, Lcom/android/server/hdmi/HdmiCecMessageValidator$PlayModeValidator;-><init>(I)V

    .line 246
    .line 247
    .line 248
    const/16 v10, 0x99

    .line 249
    .line 250
    invoke-static {v10, v8, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    .line 251
    .line 252
    .line 253
    new-instance v8, Lcom/android/server/hdmi/HdmiCecMessageValidator$PlayModeValidator;

    .line 254
    .line 255
    const/4 v10, 0x3

    .line 256
    invoke-direct {v8, v10}, Lcom/android/server/hdmi/HdmiCecMessageValidator$PlayModeValidator;-><init>(I)V

    .line 257
    .line 258
    .line 259
    const/16 v10, 0xa1

    .line 260
    .line 261
    invoke-static {v10, v8, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    .line 262
    .line 263
    .line 264
    new-instance v8, Lcom/android/server/hdmi/HdmiCecMessageValidator$PlayModeValidator;

    .line 265
    .line 266
    const/4 v10, 0x1

    .line 267
    invoke-direct {v8, v10}, Lcom/android/server/hdmi/HdmiCecMessageValidator$PlayModeValidator;-><init>(I)V

    .line 268
    .line 269
    .line 270
    const/16 v10, 0x34

    .line 271
    .line 272
    invoke-static {v10, v8, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    .line 273
    .line 274
    .line 275
    new-instance v8, Lcom/android/server/hdmi/HdmiCecMessageValidator$PlayModeValidator;

    .line 276
    .line 277
    const/4 v10, 0x2

    .line 278
    invoke-direct {v8, v10}, Lcom/android/server/hdmi/HdmiCecMessageValidator$PlayModeValidator;-><init>(I)V

    .line 279
    .line 280
    .line 281
    const/16 v10, 0x97

    .line 282
    .line 283
    invoke-static {v10, v8, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    .line 284
    .line 285
    .line 286
    new-instance v8, Lcom/android/server/hdmi/HdmiCecMessageValidator$PlayModeValidator;

    .line 287
    .line 288
    const/4 v10, 0x3

    .line 289
    invoke-direct {v8, v10}, Lcom/android/server/hdmi/HdmiCecMessageValidator$PlayModeValidator;-><init>(I)V

    .line 290
    .line 291
    .line 292
    const/16 v10, 0xa2

    .line 293
    .line 294
    invoke-static {v10, v8, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    .line 295
    .line 296
    .line 297
    new-instance v8, Lcom/android/server/hdmi/HdmiCecMessageValidator$AsciiValidator;

    .line 298
    .line 299
    invoke-direct {v8, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator$AsciiValidator;-><init>(I)V

    .line 300
    .line 301
    .line 302
    const/16 v10, 0x67

    .line 303
    .line 304
    invoke-static {v10, v8, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    .line 305
    .line 306
    .line 307
    new-instance v8, Lcom/android/server/hdmi/HdmiCecMessageValidator$PlayModeValidator;

    .line 308
    .line 309
    const/16 v10, 0xc

    .line 310
    .line 311
    invoke-direct {v8, v10}, Lcom/android/server/hdmi/HdmiCecMessageValidator$PlayModeValidator;-><init>(I)V

    .line 312
    .line 313
    .line 314
    const/16 v10, 0x43

    .line 315
    .line 316
    invoke-static {v10, v8, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    .line 317
    .line 318
    .line 319
    new-instance v8, Lcom/android/server/hdmi/HdmiCecMessageValidator$PlayModeValidator;

    .line 320
    .line 321
    const/16 v10, 0xd

    .line 322
    .line 323
    invoke-direct {v8, v10}, Lcom/android/server/hdmi/HdmiCecMessageValidator$PlayModeValidator;-><init>(I)V

    .line 324
    .line 325
    .line 326
    const/16 v10, 0x35

    .line 327
    .line 328
    invoke-static {v10, v8, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    .line 329
    .line 330
    .line 331
    new-instance v8, Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;

    .line 332
    .line 333
    const/4 v10, 0x0

    .line 334
    invoke-direct {v8, v9, v10}, Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;-><init>(II)V

    .line 335
    .line 336
    .line 337
    const/16 v10, 0x9e

    .line 338
    .line 339
    invoke-static {v10, v8, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    .line 340
    .line 341
    .line 342
    new-instance v10, Lcom/android/server/hdmi/HdmiCecMessageValidator$AsciiValidator;

    .line 343
    .line 344
    invoke-direct {v10}, Lcom/android/server/hdmi/HdmiCecMessageValidator$AsciiValidator;-><init>()V

    .line 345
    .line 346
    .line 347
    const/16 v11, 0x32

    .line 348
    .line 349
    invoke-static {v11, v10, v9, v3}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    .line 350
    .line 351
    .line 352
    new-instance v10, Lcom/android/server/hdmi/HdmiCecMessageValidator$AsciiValidator;

    .line 353
    .line 354
    const/4 v11, 0x3

    .line 355
    invoke-direct {v10, v9, v11}, Lcom/android/server/hdmi/HdmiCecMessageValidator$AsciiValidator;-><init>(II)V

    .line 356
    .line 357
    .line 358
    new-instance v12, Lcom/android/server/hdmi/HdmiCecMessageValidator$AsciiValidator;

    .line 359
    .line 360
    invoke-direct {v12, v9, v6}, Lcom/android/server/hdmi/HdmiCecMessageValidator$AsciiValidator;-><init>(II)V

    .line 361
    .line 362
    .line 363
    const/16 v13, 0x42

    .line 364
    .line 365
    invoke-static {v13, v12, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    .line 366
    .line 367
    .line 368
    new-instance v12, Lcom/android/server/hdmi/HdmiCecMessageValidator$AsciiValidator;

    .line 369
    .line 370
    const/16 v13, 0x11

    .line 371
    .line 372
    const/16 v14, 0x1f

    .line 373
    .line 374
    invoke-direct {v12, v13, v14}, Lcom/android/server/hdmi/HdmiCecMessageValidator$AsciiValidator;-><init>(II)V

    .line 375
    .line 376
    .line 377
    const/16 v13, 0x1b

    .line 378
    .line 379
    invoke-static {v13, v12, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    .line 380
    .line 381
    .line 382
    const/16 v12, 0x1a

    .line 383
    .line 384
    invoke-static {v12, v10, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    .line 385
    .line 386
    .line 387
    new-instance v12, Lcom/android/server/hdmi/HdmiCecMessageValidator$PlayModeValidator;

    .line 388
    .line 389
    const/4 v13, 0x0

    .line 390
    invoke-direct {v12, v13}, Lcom/android/server/hdmi/HdmiCecMessageValidator$PlayModeValidator;-><init>(I)V

    .line 391
    .line 392
    .line 393
    const/16 v13, 0x41

    .line 394
    .line 395
    invoke-static {v13, v12, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    .line 396
    .line 397
    .line 398
    const/16 v12, 0x8

    .line 399
    .line 400
    invoke-static {v12, v10, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    .line 401
    .line 402
    .line 403
    new-instance v10, Lcom/android/server/hdmi/HdmiCecMessageValidator$PlayModeValidator;

    .line 404
    .line 405
    const/16 v12, 0x9

    .line 406
    .line 407
    invoke-direct {v10, v12}, Lcom/android/server/hdmi/HdmiCecMessageValidator$PlayModeValidator;-><init>(I)V

    .line 408
    .line 409
    .line 410
    const/16 v12, 0x92

    .line 411
    .line 412
    invoke-static {v12, v10, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    .line 413
    .line 414
    .line 415
    new-instance v10, Lcom/android/server/hdmi/HdmiCecMessageValidator$PlayModeValidator;

    .line 416
    .line 417
    const/16 v12, 0xa

    .line 418
    .line 419
    invoke-direct {v10, v12}, Lcom/android/server/hdmi/HdmiCecMessageValidator$PlayModeValidator;-><init>(I)V

    .line 420
    .line 421
    .line 422
    const/16 v12, 0x93

    .line 423
    .line 424
    invoke-static {v12, v10, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    .line 425
    .line 426
    .line 427
    new-instance v10, Lcom/android/server/hdmi/HdmiCecMessageValidator$PlayModeValidator;

    .line 428
    .line 429
    const/16 v12, 0xe

    .line 430
    .line 431
    invoke-direct {v10, v12}, Lcom/android/server/hdmi/HdmiCecMessageValidator$PlayModeValidator;-><init>(I)V

    .line 432
    .line 433
    .line 434
    const/4 v12, 0x7

    .line 435
    invoke-static {v12, v10, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    .line 436
    .line 437
    .line 438
    new-instance v10, Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;

    .line 439
    .line 440
    const/4 v12, 0x1

    .line 441
    invoke-direct {v10, v4, v12}, Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;-><init>(II)V

    .line 442
    .line 443
    .line 444
    new-instance v12, Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;

    .line 445
    .line 446
    const/4 v13, 0x0

    .line 447
    invoke-direct {v12, v11, v13}, Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;-><init>(II)V

    .line 448
    .line 449
    .line 450
    const/16 v13, 0x87

    .line 451
    .line 452
    invoke-static {v13, v12, v2, v3}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    .line 453
    .line 454
    .line 455
    new-instance v12, Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;

    .line 456
    .line 457
    const/4 v13, 0x1

    .line 458
    invoke-direct {v12, v9, v13}, Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;-><init>(II)V

    .line 459
    .line 460
    .line 461
    const/16 v13, 0x89

    .line 462
    .line 463
    invoke-static {v13, v12, v5, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    .line 464
    .line 465
    .line 466
    new-instance v12, Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;

    .line 467
    .line 468
    const/4 v13, 0x1

    .line 469
    invoke-direct {v12, v6, v13}, Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;-><init>(II)V

    .line 470
    .line 471
    .line 472
    const/16 v13, 0xa0

    .line 473
    .line 474
    invoke-static {v13, v12, v5, v5}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    .line 475
    .line 476
    .line 477
    const/16 v12, 0x8a

    .line 478
    .line 479
    invoke-static {v12, v10, v5, v5}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    .line 480
    .line 481
    .line 482
    new-instance v12, Lcom/android/server/hdmi/HdmiCecMessageValidator$PlayModeValidator;

    .line 483
    .line 484
    const/4 v13, 0x4

    .line 485
    invoke-direct {v12, v13}, Lcom/android/server/hdmi/HdmiCecMessageValidator$PlayModeValidator;-><init>(I)V

    .line 486
    .line 487
    .line 488
    const/16 v13, 0x64

    .line 489
    .line 490
    invoke-static {v13, v12, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    .line 491
    .line 492
    .line 493
    new-instance v12, Lcom/android/server/hdmi/HdmiCecMessageValidator$AsciiValidator;

    .line 494
    .line 495
    invoke-direct {v12, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator$AsciiValidator;-><init>(I)V

    .line 496
    .line 497
    .line 498
    const/16 v13, 0x47

    .line 499
    .line 500
    invoke-static {v13, v12, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    .line 501
    .line 502
    .line 503
    new-instance v12, Lcom/android/server/hdmi/HdmiCecMessageValidator$AsciiValidator;

    .line 504
    .line 505
    const/4 v13, 0x2

    .line 506
    invoke-direct {v12, v4, v13}, Lcom/android/server/hdmi/HdmiCecMessageValidator$AsciiValidator;-><init>(II)V

    .line 507
    .line 508
    .line 509
    const/16 v14, 0x8d

    .line 510
    .line 511
    invoke-static {v14, v12, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    .line 512
    .line 513
    .line 514
    new-instance v12, Lcom/android/server/hdmi/HdmiCecMessageValidator$AsciiValidator;

    .line 515
    .line 516
    invoke-direct {v12, v4, v9}, Lcom/android/server/hdmi/HdmiCecMessageValidator$AsciiValidator;-><init>(II)V

    .line 517
    .line 518
    .line 519
    const/16 v9, 0x8e

    .line 520
    .line 521
    invoke-static {v9, v12, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    .line 522
    .line 523
    .line 524
    new-instance v9, Lcom/android/server/hdmi/HdmiCecMessageValidator$PlayModeValidator;

    .line 525
    .line 526
    const/16 v12, 0xf

    .line 527
    .line 528
    invoke-direct {v9, v12}, Lcom/android/server/hdmi/HdmiCecMessageValidator$PlayModeValidator;-><init>(I)V

    .line 529
    .line 530
    .line 531
    const/16 v12, 0x44

    .line 532
    .line 533
    invoke-static {v12, v9, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    .line 534
    .line 535
    .line 536
    new-instance v9, Lcom/android/server/hdmi/HdmiCecMessageValidator$AsciiValidator;

    .line 537
    .line 538
    invoke-direct {v9, v4, v11}, Lcom/android/server/hdmi/HdmiCecMessageValidator$AsciiValidator;-><init>(II)V

    .line 539
    .line 540
    .line 541
    const/16 v12, 0x90

    .line 542
    .line 543
    invoke-static {v12, v9, v2, v5}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    .line 544
    .line 545
    .line 546
    new-instance v9, Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;

    .line 547
    .line 548
    const/4 v12, 0x0

    .line 549
    invoke-direct {v9, v13, v12}, Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;-><init>(II)V

    .line 550
    .line 551
    .line 552
    invoke-static {v4, v9, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    .line 553
    .line 554
    .line 555
    const/16 v9, 0x7a

    .line 556
    .line 557
    invoke-static {v9, v8, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    .line 558
    .line 559
    .line 560
    new-instance v9, Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;

    .line 561
    .line 562
    invoke-direct {v9, v11, v12}, Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;-><init>(II)V

    .line 563
    .line 564
    .line 565
    const/16 v11, 0xa3

    .line 566
    .line 567
    invoke-static {v11, v9, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    .line 568
    .line 569
    .line 570
    const/16 v9, 0xa4

    .line 571
    .line 572
    invoke-static {v9, v8, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    .line 573
    .line 574
    .line 575
    new-instance v8, Lcom/android/server/hdmi/HdmiCecMessageValidator$PlayModeValidator;

    .line 576
    .line 577
    const/16 v9, 0xb

    .line 578
    .line 579
    invoke-direct {v8, v9}, Lcom/android/server/hdmi/HdmiCecMessageValidator$PlayModeValidator;-><init>(I)V

    .line 580
    .line 581
    .line 582
    const/16 v9, 0x20

    .line 583
    .line 584
    const/16 v11, 0x72

    .line 585
    .line 586
    invoke-static {v11, v8, v9, v5}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    .line 587
    .line 588
    .line 589
    new-instance v8, Lcom/android/server/hdmi/HdmiCecMessageValidator$PlayModeValidator;

    .line 590
    .line 591
    const/16 v9, 0xb

    .line 592
    .line 593
    invoke-direct {v8, v9}, Lcom/android/server/hdmi/HdmiCecMessageValidator$PlayModeValidator;-><init>(I)V

    .line 594
    .line 595
    .line 596
    const/16 v9, 0x7e

    .line 597
    .line 598
    invoke-static {v9, v8, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    .line 599
    .line 600
    .line 601
    new-instance v8, Lcom/android/server/hdmi/HdmiCecMessageValidator$AsciiValidator;

    .line 602
    .line 603
    invoke-direct {v8, v4, v7}, Lcom/android/server/hdmi/HdmiCecMessageValidator$AsciiValidator;-><init>(II)V

    .line 604
    .line 605
    .line 606
    const/16 v4, 0x9a

    .line 607
    .line 608
    invoke-static {v4, v8, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    .line 609
    .line 610
    .line 611
    const/16 v4, 0xa5

    .line 612
    .line 613
    invoke-static {v4, v1, v5, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    .line 614
    .line 615
    .line 616
    const/16 v1, 0xa7

    .line 617
    .line 618
    invoke-static {v1, v0, v2, v3}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    .line 619
    .line 620
    .line 621
    new-instance v0, Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;

    .line 622
    .line 623
    const/4 v1, 0x1

    .line 624
    invoke-direct {v0, v6, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;-><init>(II)V

    .line 625
    .line 626
    .line 627
    const/16 v1, 0xa8

    .line 628
    .line 629
    invoke-static {v1, v0, v2, v3}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    .line 630
    .line 631
    .line 632
    const/16 v0, 0xf8

    .line 633
    .line 634
    invoke-static {v0, v10, v5, v3}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    .line 635
    .line 636
    .line 637
    return-void
.end method

.method public static addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/server/hdmi/HdmiCecMessageValidator;->sValidationInfo:Landroid/util/SparseArray;

    .line 2
    .line 3
    new-instance v1, Lcom/android/server/hdmi/HdmiCecMessageValidator$ValidationInfo;

    .line 4
    .line 5
    invoke-direct {v1, p1, p2, p3}, Lcom/android/server/hdmi/HdmiCecMessageValidator$ValidationInfo;-><init>(Lcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p0, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public static isValidAnalogueFrequency(I)Z
    .locals 1

    .line 1
    const v0, 0xffff

    .line 2
    .line 3
    .line 4
    and-int/2addr p0, v0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    if-eq p0, v0, :cond_0

    .line 8
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

    .line 2
    .line 3
    and-int/lit16 v0, v0, 0xfc

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x4

    .line 8
    if-ne v0, v3, :cond_1

    .line 9
    .line 10
    array-length p1, p1

    .line 11
    sub-int/2addr p1, p0

    .line 12
    const/4 p0, 0x3

    .line 13
    if-lt p1, p0, :cond_0

    .line 14
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

    .line 19
    .line 20
    if-ne v0, v4, :cond_3

    .line 21
    .line 22
    array-length p1, p1

    .line 23
    sub-int/2addr p1, p0

    .line 24
    if-lt p1, v3, :cond_2

    .line 25
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

    .line 2
    .line 3
    and-int/lit16 v1, v0, 0x80

    .line 4
    .line 5
    and-int/lit8 v0, v0, 0x7f

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    add-int/2addr p0, v2

    .line 9
    const/16 v3, 0x1b

    .line 10
    .line 11
    const/16 v4, 0x18

    .line 12
    .line 13
    const/4 v5, 0x2

    .line 14
    const/16 v6, 0x12

    .line 15
    .line 16
    const/16 v7, 0x10

    .line 17
    .line 18
    const/16 v8, 0xa

    .line 19
    .line 20
    const/16 v9, 0x8

    .line 21
    .line 22
    const/4 v10, 0x0

    .line 23
    if-nez v1, :cond_9

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    invoke-static {v0, v9, v8}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_0

    .line 32
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

    .line 39
    .line 40
    array-length p1, p1

    .line 41
    sub-int/2addr p1, p0

    .line 42
    if-lt p1, v8, :cond_2

    .line 43
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

    .line 48
    .line 49
    invoke-static {v0, v7, v6}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_4

    .line 54
    .line 55
    goto :goto_4

    .line 56
    :cond_4
    if-eq v0, v5, :cond_5

    .line 57
    .line 58
    invoke-static {v0, v4, v3}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_d

    .line 63
    .line 64
    :cond_5
    array-length p1, p1

    .line 65
    sub-int/2addr p1, p0

    .line 66
    if-lt p1, v8, :cond_6

    .line 67
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

    .line 75
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

    .line 80
    .line 81
    if-ne v1, v11, :cond_d

    .line 82
    .line 83
    if-eqz v0, :cond_c

    .line 84
    .line 85
    invoke-static {v0, v9, v8}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    if-eqz v1, :cond_a

    .line 90
    .line 91
    goto :goto_6

    .line 92
    :cond_a
    if-eq v0, v2, :cond_c

    .line 93
    .line 94
    invoke-static {v0, v7, v6}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    if-eqz v1, :cond_b

    .line 99
    .line 100
    goto :goto_6

    .line 101
    :cond_b
    if-eq v0, v5, :cond_c

    .line 102
    .line 103
    invoke-static {v0, v4, v3}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    if-eqz v0, :cond_d

    .line 108
    .line 109
    :cond_c
    :goto_6
    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidChannelIdentifier(I[B)Z

    .line 110
    .line 111
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

    .line 3
    .line 4
    invoke-static {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    return p0
.end method

.method public static isValidPhysicalAddress(I[B)Z
    .locals 1

    .line 1
    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiUtils;->twoBytesToInt(I[B)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    :cond_0
    if-eqz p0, :cond_1

    .line 6
    .line 7
    const p1, 0xf000

    .line 8
    .line 9
    .line 10
    and-int/2addr p1, p0

    .line 11
    shl-int/lit8 p0, p0, 0x4

    .line 12
    .line 13
    const v0, 0xffff

    .line 14
    .line 15
    .line 16
    and-int/2addr p0, v0

    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    if-eqz p0, :cond_0

    .line 20
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

    .line 2
    .line 3
    if-lt p0, p1, :cond_0

    .line 4
    .line 5
    if-gt p0, p2, :cond_0

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

.method public static validateAddress(IIII)I
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    shl-int p0, v0, p0

    .line 3
    .line 4
    and-int/2addr p0, p2

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    return v0

    .line 8
    :cond_0
    shl-int p0, v0, p1

    .line 9
    .line 10
    and-int/2addr p0, p3

    .line 11
    if-nez p0, :cond_1

    .line 12
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
