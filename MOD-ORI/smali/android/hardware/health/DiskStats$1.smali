.class public final Landroid/hardware/health/DiskStats$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 7

    .line 1
    new-instance p0, Landroid/hardware/health/DiskStats;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/hardware/health/DiskStats;-><init>()V

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
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    .line 45
    .line 46
    .line 47
    move-result-wide v5

    .line 48
    iput-wide v5, p0, Landroid/hardware/health/DiskStats;->reads:J

    .line 49
    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 51
    .line 52
    .line 53
    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    sub-int/2addr v2, v0

    .line 55
    if-lt v2, v1, :cond_3

    .line 56
    .line 57
    sub-int/2addr v4, v1

    .line 58
    if-gt v0, v4, :cond_2

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    new-instance p0, Landroid/os/BadParcelableException;

    .line 62
    .line 63
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw p0

    .line 67
    :cond_3
    :try_start_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    .line 68
    .line 69
    .line 70
    move-result-wide v5

    .line 71
    iput-wide v5, p0, Landroid/hardware/health/DiskStats;->readMerges:J

    .line 72
    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 74
    .line 75
    .line 76
    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 77
    sub-int/2addr v2, v0

    .line 78
    if-lt v2, v1, :cond_5

    .line 79
    .line 80
    sub-int/2addr v4, v1

    .line 81
    if-gt v0, v4, :cond_4

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_4
    new-instance p0, Landroid/os/BadParcelableException;

    .line 85
    .line 86
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    throw p0

    .line 90
    :cond_5
    :try_start_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    .line 91
    .line 92
    .line 93
    move-result-wide v5

    .line 94
    iput-wide v5, p0, Landroid/hardware/health/DiskStats;->readSectors:J

    .line 95
    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 97
    .line 98
    .line 99
    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 100
    sub-int/2addr v2, v0

    .line 101
    if-lt v2, v1, :cond_7

    .line 102
    .line 103
    sub-int/2addr v4, v1

    .line 104
    if-gt v0, v4, :cond_6

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_6
    new-instance p0, Landroid/os/BadParcelableException;

    .line 108
    .line 109
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    throw p0

    .line 113
    :cond_7
    :try_start_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    .line 114
    .line 115
    .line 116
    move-result-wide v5

    .line 117
    iput-wide v5, p0, Landroid/hardware/health/DiskStats;->readTicks:J

    .line 118
    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 120
    .line 121
    .line 122
    move-result v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 123
    sub-int/2addr v2, v0

    .line 124
    if-lt v2, v1, :cond_9

    .line 125
    .line 126
    sub-int/2addr v4, v1

    .line 127
    if-gt v0, v4, :cond_8

    .line 128
    .line 129
    goto :goto_0

    .line 130
    :cond_8
    new-instance p0, Landroid/os/BadParcelableException;

    .line 131
    .line 132
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    throw p0

    .line 136
    :cond_9
    :try_start_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    .line 137
    .line 138
    .line 139
    move-result-wide v5

    .line 140
    iput-wide v5, p0, Landroid/hardware/health/DiskStats;->writes:J

    .line 141
    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 143
    .line 144
    .line 145
    move-result v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 146
    sub-int/2addr v2, v0

    .line 147
    if-lt v2, v1, :cond_b

    .line 148
    .line 149
    sub-int/2addr v4, v1

    .line 150
    if-gt v0, v4, :cond_a

    .line 151
    .line 152
    goto :goto_0

    .line 153
    :cond_a
    new-instance p0, Landroid/os/BadParcelableException;

    .line 154
    .line 155
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    throw p0

    .line 159
    :cond_b
    :try_start_6
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    .line 160
    .line 161
    .line 162
    move-result-wide v5

    .line 163
    iput-wide v5, p0, Landroid/hardware/health/DiskStats;->writeMerges:J

    .line 164
    .line 165
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 166
    .line 167
    .line 168
    move-result v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 169
    sub-int/2addr v2, v0

    .line 170
    if-lt v2, v1, :cond_d

    .line 171
    .line 172
    sub-int/2addr v4, v1

    .line 173
    if-gt v0, v4, :cond_c

    .line 174
    .line 175
    goto/16 :goto_0

    .line 176
    .line 177
    :cond_c
    new-instance p0, Landroid/os/BadParcelableException;

    .line 178
    .line 179
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    throw p0

    .line 183
    :cond_d
    :try_start_7
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    .line 184
    .line 185
    .line 186
    move-result-wide v5

    .line 187
    iput-wide v5, p0, Landroid/hardware/health/DiskStats;->writeSectors:J

    .line 188
    .line 189
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 190
    .line 191
    .line 192
    move-result v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 193
    sub-int/2addr v2, v0

    .line 194
    if-lt v2, v1, :cond_f

    .line 195
    .line 196
    sub-int/2addr v4, v1

    .line 197
    if-gt v0, v4, :cond_e

    .line 198
    .line 199
    goto/16 :goto_0

    .line 200
    .line 201
    :cond_e
    new-instance p0, Landroid/os/BadParcelableException;

    .line 202
    .line 203
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    throw p0

    .line 207
    :cond_f
    :try_start_8
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    .line 208
    .line 209
    .line 210
    move-result-wide v5

    .line 211
    iput-wide v5, p0, Landroid/hardware/health/DiskStats;->writeTicks:J

    .line 212
    .line 213
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 214
    .line 215
    .line 216
    move-result v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 217
    sub-int/2addr v2, v0

    .line 218
    if-lt v2, v1, :cond_11

    .line 219
    .line 220
    sub-int/2addr v4, v1

    .line 221
    if-gt v0, v4, :cond_10

    .line 222
    .line 223
    goto/16 :goto_0

    .line 224
    .line 225
    :cond_10
    new-instance p0, Landroid/os/BadParcelableException;

    .line 226
    .line 227
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    throw p0

    .line 231
    :cond_11
    :try_start_9
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    .line 232
    .line 233
    .line 234
    move-result-wide v5

    .line 235
    iput-wide v5, p0, Landroid/hardware/health/DiskStats;->ioInFlight:J

    .line 236
    .line 237
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 238
    .line 239
    .line 240
    move-result v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 241
    sub-int/2addr v2, v0

    .line 242
    if-lt v2, v1, :cond_13

    .line 243
    .line 244
    sub-int/2addr v4, v1

    .line 245
    if-gt v0, v4, :cond_12

    .line 246
    .line 247
    goto/16 :goto_0

    .line 248
    .line 249
    :cond_12
    new-instance p0, Landroid/os/BadParcelableException;

    .line 250
    .line 251
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    throw p0

    .line 255
    :cond_13
    :try_start_a
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    .line 256
    .line 257
    .line 258
    move-result-wide v5

    .line 259
    iput-wide v5, p0, Landroid/hardware/health/DiskStats;->ioTicks:J

    .line 260
    .line 261
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 262
    .line 263
    .line 264
    move-result v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 265
    sub-int/2addr v2, v0

    .line 266
    if-lt v2, v1, :cond_15

    .line 267
    .line 268
    sub-int/2addr v4, v1

    .line 269
    if-gt v0, v4, :cond_14

    .line 270
    .line 271
    goto/16 :goto_0

    .line 272
    .line 273
    :cond_14
    new-instance p0, Landroid/os/BadParcelableException;

    .line 274
    .line 275
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    throw p0

    .line 279
    :cond_15
    :try_start_b
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    .line 280
    .line 281
    .line 282
    move-result-wide v5

    .line 283
    iput-wide v5, p0, Landroid/hardware/health/DiskStats;->ioInQueue:J
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 284
    .line 285
    sub-int/2addr v4, v1

    .line 286
    if-gt v0, v4, :cond_16

    .line 287
    .line 288
    goto/16 :goto_0

    .line 289
    .line 290
    :goto_1
    return-object p0

    .line 291
    :cond_16
    new-instance p0, Landroid/os/BadParcelableException;

    .line 292
    .line 293
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    throw p0

    .line 297
    :catchall_0
    move-exception p0

    .line 298
    goto :goto_2

    .line 299
    :cond_17
    :try_start_c
    new-instance p0, Landroid/os/BadParcelableException;

    .line 300
    .line 301
    const-string v2, "Parcelable too small"

    .line 302
    .line 303
    invoke-direct {p0, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    throw p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 307
    :goto_2
    sub-int/2addr v4, v1

    .line 308
    if-le v0, v4, :cond_18

    .line 309
    .line 310
    new-instance p0, Landroid/os/BadParcelableException;

    .line 311
    .line 312
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 313
    .line 314
    .line 315
    throw p0

    .line 316
    :cond_18
    add-int/2addr v0, v1

    .line 317
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 318
    .line 319
    .line 320
    throw p0
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    new-array p0, p1, [Landroid/hardware/health/DiskStats;

    .line 2
    .line 3
    return-object p0
.end method
