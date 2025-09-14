.class final Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final sIrqPattern:Ljava/util/regex/Pattern;


# instance fields
.field public mDevices:[Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup$IrqDevice;

.field public mElapsedMillis:J

.field public mResponsibleSubsystems:Landroid/util/SparseBooleanArray;

.field public mType:I

.field public mUptimeMillis:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "^(\\-?\\d+)\\s+(\\S+)"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;->sIrqPattern:Ljava/util/regex/Pattern;

    .line 8
    .line 9
    return-void
.end method

.method public static parseWakeup(Ljava/lang/String;JJLcom/android/server/power/stats/wakeups/IrqDeviceMap;)Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;
    .locals 17

    .line 1
    const/4 v3, 0x2

    .line 2
    const/4 v4, -0x1

    .line 3
    const/4 v5, 0x0

    .line 4
    const/4 v6, 0x1

    .line 5
    const-string v0, ":"

    .line 6
    .line 7
    move-object/from16 v7, p0

    .line 8
    .line 9
    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v7

    .line 13
    invoke-static {v7}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v8, 0x0

    .line 18
    if-nez v0, :cond_f

    .line 19
    .line 20
    aget-object v0, v7, v5

    .line 21
    .line 22
    const-string v9, "Abort"

    .line 23
    .line 24
    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    goto/16 :goto_6

    .line 31
    .line 32
    :cond_0
    array-length v0, v7

    .line 33
    new-array v9, v0, [Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup$IrqDevice;

    .line 34
    .line 35
    new-instance v10, Landroid/util/SparseBooleanArray;

    .line 36
    .line 37
    invoke-direct {v10}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 38
    .line 39
    .line 40
    array-length v11, v7

    .line 41
    move v12, v5

    .line 42
    move v13, v12

    .line 43
    move v14, v6

    .line 44
    :goto_0
    if-ge v12, v11, :cond_c

    .line 45
    .line 46
    aget-object v15, v7, v12

    .line 47
    .line 48
    sget-object v0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;->sIrqPattern:Ljava/util/regex/Pattern;

    .line 49
    .line 50
    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-eqz v1, :cond_b

    .line 63
    .line 64
    :try_start_0
    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    if-gez v1, :cond_1

    .line 77
    .line 78
    move v14, v3

    .line 79
    :cond_1
    add-int/lit8 v15, v13, 0x1

    .line 80
    .line 81
    new-instance v2, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup$IrqDevice;

    .line 82
    .line 83
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 84
    .line 85
    .line 86
    iput v1, v2, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup$IrqDevice;->mLine:I

    .line 87
    .line 88
    iput-object v0, v2, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup$IrqDevice;->mDevice:Ljava/lang/String;

    .line 89
    .line 90
    aput-object v2, v9, v13

    .line 91
    .line 92
    move-object/from16 v1, p5

    .line 93
    .line 94
    iget-object v2, v1, Lcom/android/server/power/stats/wakeups/IrqDeviceMap;->mSubsystemsForDevice:Landroid/util/ArrayMap;

    .line 95
    .line 96
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    check-cast v0, Ljava/util/List;

    .line 101
    .line 102
    if-eqz v0, :cond_8

    .line 103
    .line 104
    move v2, v5

    .line 105
    move v13, v2

    .line 106
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 107
    .line 108
    .line 109
    move-result v3

    .line 110
    if-ge v2, v3, :cond_9

    .line 111
    .line 112
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    check-cast v3, Ljava/lang/String;

    .line 117
    .line 118
    sget v16, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->$r8$clinit:I

    .line 119
    .line 120
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 124
    .line 125
    .line 126
    move-result v16

    .line 127
    sparse-switch v16, :sswitch_data_0

    .line 128
    .line 129
    .line 130
    :goto_2
    move v3, v4

    .line 131
    goto :goto_3

    .line 132
    :sswitch_0
    const-string v5, "Alarm"

    .line 133
    .line 134
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    move-result v3

    .line 138
    if-nez v3, :cond_2

    .line 139
    .line 140
    goto :goto_2

    .line 141
    :cond_2
    const/4 v3, 0x4

    .line 142
    goto :goto_3

    .line 143
    :sswitch_1
    const-string v5, "Wifi"

    .line 144
    .line 145
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result v3

    .line 149
    if-nez v3, :cond_3

    .line 150
    .line 151
    goto :goto_2

    .line 152
    :cond_3
    const/4 v3, 0x3

    .line 153
    goto :goto_3

    .line 154
    :sswitch_2
    const-string v5, "Sound_trigger"

    .line 155
    .line 156
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result v3

    .line 160
    if-nez v3, :cond_4

    .line 161
    .line 162
    goto :goto_2

    .line 163
    :cond_4
    const/4 v3, 0x2

    .line 164
    goto :goto_3

    .line 165
    :sswitch_3
    const-string v5, "Cellular_data"

    .line 166
    .line 167
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    move-result v3

    .line 171
    if-nez v3, :cond_5

    .line 172
    .line 173
    goto :goto_2

    .line 174
    :cond_5
    move v3, v6

    .line 175
    goto :goto_3

    .line 176
    :sswitch_4
    const-string v5, "Sensor"

    .line 177
    .line 178
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    move-result v3

    .line 182
    if-nez v3, :cond_6

    .line 183
    .line 184
    goto :goto_2

    .line 185
    :cond_6
    const/4 v3, 0x0

    .line 186
    :goto_3
    packed-switch v3, :pswitch_data_0

    .line 187
    .line 188
    .line 189
    move v3, v4

    .line 190
    goto :goto_4

    .line 191
    :pswitch_0
    move v3, v6

    .line 192
    goto :goto_4

    .line 193
    :pswitch_1
    const/4 v3, 0x2

    .line 194
    goto :goto_4

    .line 195
    :pswitch_2
    const/4 v3, 0x3

    .line 196
    goto :goto_4

    .line 197
    :pswitch_3
    const/4 v3, 0x5

    .line 198
    goto :goto_4

    .line 199
    :pswitch_4
    const/4 v3, 0x4

    .line 200
    :goto_4
    if-eq v3, v4, :cond_7

    .line 201
    .line 202
    invoke-virtual {v10, v3, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 203
    .line 204
    .line 205
    move v13, v6

    .line 206
    :cond_7
    add-int/2addr v2, v6

    .line 207
    const/4 v5, 0x0

    .line 208
    goto :goto_1

    .line 209
    :cond_8
    const/4 v13, 0x0

    .line 210
    :cond_9
    if-nez v13, :cond_a

    .line 211
    .line 212
    invoke-virtual {v10, v4, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 213
    .line 214
    .line 215
    :cond_a
    move v13, v15

    .line 216
    goto :goto_5

    .line 217
    :catch_0
    move-exception v0

    .line 218
    move-object/from16 v1, p5

    .line 219
    .line 220
    const-string v2, "Exception while parsing device names from part: "

    .line 221
    .line 222
    invoke-virtual {v2, v15}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v2

    .line 226
    const-string v3, "CpuWakeupStats.Wakeup"

    .line 227
    .line 228
    invoke-static {v3, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 229
    .line 230
    .line 231
    goto :goto_5

    .line 232
    :cond_b
    move-object/from16 v1, p5

    .line 233
    .line 234
    :goto_5
    add-int/2addr v12, v6

    .line 235
    const/4 v3, 0x2

    .line 236
    const/4 v5, 0x0

    .line 237
    goto/16 :goto_0

    .line 238
    .line 239
    :cond_c
    if-nez v13, :cond_d

    .line 240
    .line 241
    return-object v8

    .line 242
    :cond_d
    invoke-virtual {v10}, Landroid/util/SparseBooleanArray;->size()I

    .line 243
    .line 244
    .line 245
    move-result v0

    .line 246
    if-ne v0, v6, :cond_e

    .line 247
    .line 248
    const/4 v1, 0x0

    .line 249
    invoke-virtual {v10, v4, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    .line 250
    .line 251
    .line 252
    move-result v0

    .line 253
    if-eqz v0, :cond_e

    .line 254
    .line 255
    return-object v8

    .line 256
    :cond_e
    new-instance v0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;

    .line 257
    .line 258
    invoke-static {v9, v13}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    move-result-object v1

    .line 262
    check-cast v1, [Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup$IrqDevice;

    .line 263
    .line 264
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 265
    .line 266
    .line 267
    iput v14, v0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;->mType:I

    .line 268
    .line 269
    iput-object v1, v0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;->mDevices:[Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup$IrqDevice;

    .line 270
    .line 271
    move-wide/from16 v1, p1

    .line 272
    .line 273
    iput-wide v1, v0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;->mElapsedMillis:J

    .line 274
    .line 275
    move-wide/from16 v1, p3

    .line 276
    .line 277
    iput-wide v1, v0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;->mUptimeMillis:J

    .line 278
    .line 279
    iput-object v10, v0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;->mResponsibleSubsystems:Landroid/util/SparseBooleanArray;

    .line 280
    .line 281
    return-object v0

    .line 282
    :cond_f
    :goto_6
    return-object v8

    .line 283
    :sswitch_data_0
    .sparse-switch
        -0x6c9ac026 -> :sswitch_4
        -0x41b3aec1 -> :sswitch_3
        -0x194b8998 -> :sswitch_2
        0x292335 -> :sswitch_1
        0x3c68a31 -> :sswitch_0
    .end sparse-switch

    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Wakeup{mType="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;->mType:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", mElapsedMillis="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-wide v1, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;->mElapsedMillis:J

    .line 19
    .line 20
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", mUptimeMillis="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-wide v1, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;->mUptimeMillis:J

    .line 29
    .line 30
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", mDevices="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;->mDevices:[Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup$IrqDevice;

    .line 39
    .line 40
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v1, ", mResponsibleSubsystems="

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    iget-object p0, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;->mResponsibleSubsystems:Landroid/util/SparseBooleanArray;

    .line 53
    .line 54
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const/16 p0, 0x7d

    .line 58
    .line 59
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    return-object p0
.end method
