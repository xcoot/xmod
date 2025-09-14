.class public final Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final MANUFACTURER_OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_LENGTH:I

.field public final mDeviceId:[B

.field public final mManufacturerRawData:[B

.field public final mManufacturerType:I


# direct methods
.method public constructor <init>([B)V
    .locals 13

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x8

    .line 5
    .line 6
    iput v0, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_LENGTH:I

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    iput v1, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->mManufacturerType:I

    .line 10
    .line 11
    const/4 v2, 0x2

    .line 12
    new-array v3, v2, [B

    .line 13
    .line 14
    iput-object v3, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->mDeviceId:[B

    .line 15
    .line 16
    iput-object p1, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->mManufacturerRawData:[B

    .line 17
    .line 18
    const/4 v3, 0x7

    .line 19
    const/4 v4, 0x1

    .line 20
    const/16 v5, 0x10

    .line 21
    .line 22
    const/4 v6, 0x3

    .line 23
    if-eqz p1, :cond_9

    .line 24
    .line 25
    array-length v7, p1

    .line 26
    const/16 v8, 0x9

    .line 27
    .line 28
    if-ge v7, v8, :cond_0

    .line 29
    .line 30
    goto :goto_2

    .line 31
    :cond_0
    const/4 v7, 0x5

    .line 32
    aget-byte v9, p1, v7

    .line 33
    .line 34
    if-nez v9, :cond_1

    .line 35
    .line 36
    const/4 v10, 0x6

    .line 37
    aget-byte v10, p1, v10

    .line 38
    .line 39
    if-ne v10, v2, :cond_1

    .line 40
    .line 41
    iput v4, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->mManufacturerType:I

    .line 42
    .line 43
    goto :goto_3

    .line 44
    :cond_1
    if-ne v9, v8, :cond_2

    .line 45
    .line 46
    aget-byte v10, p1, v3

    .line 47
    .line 48
    if-nez v10, :cond_2

    .line 49
    .line 50
    iput v2, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->mManufacturerType:I

    .line 51
    .line 52
    goto :goto_3

    .line 53
    :cond_2
    if-ne v9, v8, :cond_8

    .line 54
    .line 55
    aget-byte v9, p1, v3

    .line 56
    .line 57
    if-ne v9, v2, :cond_8

    .line 58
    .line 59
    iput v6, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->mManufacturerType:I

    .line 60
    .line 61
    aget-byte v9, p1, v0

    .line 62
    .line 63
    move v10, v1

    .line 64
    :goto_0
    if-ge v10, v7, :cond_a

    .line 65
    .line 66
    shl-int v11, v4, v10

    .line 67
    .line 68
    int-to-byte v11, v11

    .line 69
    and-int/2addr v11, v9

    .line 70
    int-to-byte v11, v11

    .line 71
    if-eq v11, v4, :cond_7

    .line 72
    .line 73
    if-eq v11, v2, :cond_6

    .line 74
    .line 75
    const/4 v12, 0x4

    .line 76
    if-eq v11, v12, :cond_5

    .line 77
    .line 78
    if-eq v11, v0, :cond_4

    .line 79
    .line 80
    if-eq v11, v5, :cond_3

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_3
    iput v8, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_LENGTH:I

    .line 84
    .line 85
    aget-byte v11, p1, v8

    .line 86
    .line 87
    add-int/2addr v11, v4

    .line 88
    add-int/2addr v11, v8

    .line 89
    move v8, v11

    .line 90
    goto :goto_1

    .line 91
    :cond_4
    add-int/lit8 v8, v8, 0x12

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_5
    add-int/lit8 v8, v8, 0x6

    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_6
    add-int/lit8 v8, v8, 0x2

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_7
    add-int/lit8 v8, v8, 0x1

    .line 101
    .line 102
    :goto_1
    add-int/lit8 v10, v10, 0x1

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_8
    iput v1, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->mManufacturerType:I

    .line 106
    .line 107
    goto :goto_3

    .line 108
    :cond_9
    :goto_2
    iput v1, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->mManufacturerType:I

    .line 109
    .line 110
    :cond_a
    :goto_3
    const-string v7, "BluetoothDeviceBatteryManager"

    .line 111
    .line 112
    :try_start_0
    iget v8, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->mManufacturerType:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    .line 114
    const/16 v9, 0xff

    .line 115
    .line 116
    if-eq v8, v4, :cond_e

    .line 117
    .line 118
    if-eq v8, v2, :cond_d

    .line 119
    .line 120
    if-eq v8, v6, :cond_b

    .line 121
    .line 122
    goto :goto_5

    .line 123
    :cond_b
    if-eq v8, v6, :cond_c

    .line 124
    .line 125
    goto :goto_5

    .line 126
    :cond_c
    :try_start_1
    iget-object v3, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->mManufacturerRawData:[B

    .line 127
    .line 128
    if-eqz v3, :cond_10

    .line 129
    .line 130
    aget-byte v0, v3, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 131
    .line 132
    and-int/2addr v0, v5

    .line 133
    if-ne v0, v5, :cond_10

    .line 134
    .line 135
    :try_start_2
    iget v0, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_LENGTH:I

    .line 136
    .line 137
    add-int/2addr v0, v4

    .line 138
    iget-object p0, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->mDeviceId:[B

    .line 139
    .line 140
    invoke-static {p1, v0, p0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 141
    .line 142
    .line 143
    goto :goto_5

    .line 144
    :catch_0
    move-exception p0

    .line 145
    goto :goto_4

    .line 146
    :catch_1
    move-exception p0

    .line 147
    new-instance p1, Ljava/lang/StringBuilder;

    .line 148
    .line 149
    const-string v0, "isSupportFeature exception: "

    .line 150
    .line 151
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object p0

    .line 161
    invoke-static {v7, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    .line 163
    .line 164
    goto :goto_5

    .line 165
    :cond_d
    const/16 v0, 0x1f

    .line 166
    .line 167
    aget-byte v3, p1, v0

    .line 168
    .line 169
    and-int/2addr v3, v9

    .line 170
    if-lez v3, :cond_10

    .line 171
    .line 172
    array-length v4, p1

    .line 173
    add-int/2addr v0, v3

    .line 174
    if-le v4, v0, :cond_10

    .line 175
    .line 176
    iget-object p0, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->mDeviceId:[B

    .line 177
    .line 178
    const/16 v0, 0x20

    .line 179
    .line 180
    invoke-static {p1, v0, p0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 181
    .line 182
    .line 183
    goto :goto_5

    .line 184
    :cond_e
    array-length v0, p1

    .line 185
    const/16 v4, 0xf

    .line 186
    .line 187
    if-lt v0, v4, :cond_f

    .line 188
    .line 189
    const/16 v0, 0xa

    .line 190
    .line 191
    aget-byte v0, p1, v0

    .line 192
    .line 193
    and-int/2addr v0, v9

    .line 194
    if-ne v0, v9, :cond_f

    .line 195
    .line 196
    iget-object p0, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->mDeviceId:[B

    .line 197
    .line 198
    const/16 v0, 0xd

    .line 199
    .line 200
    invoke-static {p1, v0, p0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 201
    .line 202
    .line 203
    goto :goto_5

    .line 204
    :cond_f
    iget-object p0, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->mDeviceId:[B

    .line 205
    .line 206
    invoke-static {p1, v3, p0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 207
    .line 208
    .line 209
    goto :goto_5

    .line 210
    :goto_4
    const-string/jumbo p1, "setDeviceId exception: "

    .line 211
    .line 212
    .line 213
    invoke-static {p0, p1, v7}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    :cond_10
    :goto_5
    return-void
.end method
