.class public final Lvendor/samsung/hardware/health/SehHealthInfo$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 5

    .line 1
    new-instance p0, Lvendor/samsung/hardware/health/SehHealthInfo;

    .line 2
    .line 3
    invoke-direct {p0}, Lvendor/samsung/hardware/health/SehHealthInfo;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x4

    .line 15
    const-string v3, "Overflow in the size of parcelable"

    .line 16
    .line 17
    const v4, 0x7fffffff

    .line 18
    .line 19
    .line 20
    if-lt v1, v2, :cond_17

    .line 21
    .line 22
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 23
    .line 24
    .line 25
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    sub-int/2addr v2, v0

    .line 27
    if-lt v2, v1, :cond_1

    .line 28
    .line 29
    sub-int/2addr v4, v1

    .line 30
    if-gt v0, v4, :cond_0

    .line 31
    .line 32
    :goto_0
    add-int/2addr v0, v1

    .line 33
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 34
    .line 35
    .line 36
    goto/16 :goto_1

    .line 37
    .line 38
    :cond_0
    new-instance p0, Landroid/os/BadParcelableException;

    .line 39
    .line 40
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw p0

    .line 44
    :cond_1
    :try_start_1
    sget-object v2, Landroid/hardware/health/HealthInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 45
    .line 46
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    check-cast v2, Landroid/hardware/health/HealthInfo;

    .line 51
    .line 52
    iput-object v2, p0, Lvendor/samsung/hardware/health/SehHealthInfo;->aospHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 53
    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 55
    .line 56
    .line 57
    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    sub-int/2addr v2, v0

    .line 59
    if-lt v2, v1, :cond_3

    .line 60
    .line 61
    sub-int/2addr v4, v1

    .line 62
    if-gt v0, v4, :cond_2

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    new-instance p0, Landroid/os/BadParcelableException;

    .line 66
    .line 67
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    throw p0

    .line 71
    :cond_3
    :try_start_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    iput v2, p0, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryCurrentNow:I

    .line 76
    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 78
    .line 79
    .line 80
    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 81
    sub-int/2addr v2, v0

    .line 82
    if-lt v2, v1, :cond_5

    .line 83
    .line 84
    sub-int/2addr v4, v1

    .line 85
    if-gt v0, v4, :cond_4

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_4
    new-instance p0, Landroid/os/BadParcelableException;

    .line 89
    .line 90
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    throw p0

    .line 94
    :cond_5
    :try_start_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    iput v2, p0, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryOnline:I

    .line 99
    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 101
    .line 102
    .line 103
    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 104
    sub-int/2addr v2, v0

    .line 105
    if-lt v2, v1, :cond_7

    .line 106
    .line 107
    sub-int/2addr v4, v1

    .line 108
    if-gt v0, v4, :cond_6

    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_6
    new-instance p0, Landroid/os/BadParcelableException;

    .line 112
    .line 113
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    throw p0

    .line 117
    :cond_7
    :try_start_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 118
    .line 119
    .line 120
    move-result v2

    .line 121
    iput v2, p0, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryChargeType:I

    .line 122
    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 124
    .line 125
    .line 126
    move-result v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 127
    sub-int/2addr v2, v0

    .line 128
    if-lt v2, v1, :cond_9

    .line 129
    .line 130
    sub-int/2addr v4, v1

    .line 131
    if-gt v0, v4, :cond_8

    .line 132
    .line 133
    goto :goto_0

    .line 134
    :cond_8
    new-instance p0, Landroid/os/BadParcelableException;

    .line 135
    .line 136
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    throw p0

    .line 140
    :cond_9
    :try_start_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    .line 141
    .line 142
    .line 143
    move-result v2

    .line 144
    iput-boolean v2, p0, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryPowerSharingOnline:Z

    .line 145
    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 147
    .line 148
    .line 149
    move-result v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 150
    sub-int/2addr v2, v0

    .line 151
    if-lt v2, v1, :cond_b

    .line 152
    .line 153
    sub-int/2addr v4, v1

    .line 154
    if-gt v0, v4, :cond_a

    .line 155
    .line 156
    goto :goto_0

    .line 157
    :cond_a
    new-instance p0, Landroid/os/BadParcelableException;

    .line 158
    .line 159
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    throw p0

    .line 163
    :cond_b
    :try_start_6
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    .line 164
    .line 165
    .line 166
    move-result v2

    .line 167
    iput-boolean v2, p0, Lvendor/samsung/hardware/health/SehHealthInfo;->chargerPogoOnline:Z

    .line 168
    .line 169
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 170
    .line 171
    .line 172
    move-result v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 173
    sub-int/2addr v2, v0

    .line 174
    if-lt v2, v1, :cond_d

    .line 175
    .line 176
    sub-int/2addr v4, v1

    .line 177
    if-gt v0, v4, :cond_c

    .line 178
    .line 179
    goto/16 :goto_0

    .line 180
    .line 181
    :cond_c
    new-instance p0, Landroid/os/BadParcelableException;

    .line 182
    .line 183
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    throw p0

    .line 187
    :cond_d
    :try_start_7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 188
    .line 189
    .line 190
    move-result v2

    .line 191
    iput v2, p0, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryHighVoltageCharger:I

    .line 192
    .line 193
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 194
    .line 195
    .line 196
    move-result v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 197
    sub-int/2addr v2, v0

    .line 198
    if-lt v2, v1, :cond_f

    .line 199
    .line 200
    sub-int/2addr v4, v1

    .line 201
    if-gt v0, v4, :cond_e

    .line 202
    .line 203
    goto/16 :goto_0

    .line 204
    .line 205
    :cond_e
    new-instance p0, Landroid/os/BadParcelableException;

    .line 206
    .line 207
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    throw p0

    .line 211
    :cond_f
    :try_start_8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 212
    .line 213
    .line 214
    move-result v2

    .line 215
    iput v2, p0, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryEvent:I

    .line 216
    .line 217
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 218
    .line 219
    .line 220
    move-result v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 221
    sub-int/2addr v2, v0

    .line 222
    if-lt v2, v1, :cond_11

    .line 223
    .line 224
    sub-int/2addr v4, v1

    .line 225
    if-gt v0, v4, :cond_10

    .line 226
    .line 227
    goto/16 :goto_0

    .line 228
    .line 229
    :cond_10
    new-instance p0, Landroid/os/BadParcelableException;

    .line 230
    .line 231
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    throw p0

    .line 235
    :cond_11
    :try_start_9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 236
    .line 237
    .line 238
    move-result v2

    .line 239
    iput v2, p0, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryCurrentEvent:I

    .line 240
    .line 241
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 242
    .line 243
    .line 244
    move-result v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 245
    sub-int/2addr v2, v0

    .line 246
    if-lt v2, v1, :cond_13

    .line 247
    .line 248
    sub-int/2addr v4, v1

    .line 249
    if-gt v0, v4, :cond_12

    .line 250
    .line 251
    goto/16 :goto_0

    .line 252
    .line 253
    :cond_12
    new-instance p0, Landroid/os/BadParcelableException;

    .line 254
    .line 255
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    throw p0

    .line 259
    :cond_13
    :try_start_a
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    .line 260
    .line 261
    .line 262
    move-result v2

    .line 263
    iput-boolean v2, p0, Lvendor/samsung/hardware/health/SehHealthInfo;->chargerOtgOnline:Z

    .line 264
    .line 265
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 266
    .line 267
    .line 268
    move-result v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 269
    sub-int/2addr v2, v0

    .line 270
    if-lt v2, v1, :cond_15

    .line 271
    .line 272
    sub-int/2addr v4, v1

    .line 273
    if-gt v0, v4, :cond_14

    .line 274
    .line 275
    goto/16 :goto_0

    .line 276
    .line 277
    :cond_14
    new-instance p0, Landroid/os/BadParcelableException;

    .line 278
    .line 279
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    throw p0

    .line 283
    :cond_15
    :try_start_b
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 284
    .line 285
    .line 286
    move-result v2

    .line 287
    iput v2, p0, Lvendor/samsung/hardware/health/SehHealthInfo;->wirelessPowerSharingTxEvent:I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 288
    .line 289
    sub-int/2addr v4, v1

    .line 290
    if-gt v0, v4, :cond_16

    .line 291
    .line 292
    goto/16 :goto_0

    .line 293
    .line 294
    :goto_1
    return-object p0

    .line 295
    :cond_16
    new-instance p0, Landroid/os/BadParcelableException;

    .line 296
    .line 297
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    throw p0

    .line 301
    :catchall_0
    move-exception p0

    .line 302
    goto :goto_2

    .line 303
    :cond_17
    :try_start_c
    new-instance p0, Landroid/os/BadParcelableException;

    .line 304
    .line 305
    const-string v2, "Parcelable too small"

    .line 306
    .line 307
    invoke-direct {p0, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    throw p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 311
    :goto_2
    sub-int/2addr v4, v1

    .line 312
    if-le v0, v4, :cond_18

    .line 313
    .line 314
    new-instance p0, Landroid/os/BadParcelableException;

    .line 315
    .line 316
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 317
    .line 318
    .line 319
    throw p0

    .line 320
    :cond_18
    add-int/2addr v0, v1

    .line 321
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 322
    .line 323
    .line 324
    throw p0
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    new-array p0, p1, [Lvendor/samsung/hardware/health/SehHealthInfo;

    .line 2
    .line 3
    return-object p0
.end method
