.class public final Landroid/hardware/light/HwLightState$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 5

    .line 1
    new-instance p0, Landroid/hardware/light/HwLightState;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/hardware/light/HwLightState;-><init>()V

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
    if-lt v1, v2, :cond_b

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
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    iput v2, p0, Landroid/hardware/light/HwLightState;->color:I

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
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    iput-byte v2, p0, Landroid/hardware/light/HwLightState;->flashMode:B

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
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    iput v2, p0, Landroid/hardware/light/HwLightState;->flashOnMs:I

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
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 114
    .line 115
    .line 116
    move-result v2

    .line 117
    iput v2, p0, Landroid/hardware/light/HwLightState;->flashOffMs:I

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
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    .line 137
    .line 138
    .line 139
    move-result v2

    .line 140
    iput-byte v2, p0, Landroid/hardware/light/HwLightState;->brightnessMode:B
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 141
    .line 142
    sub-int/2addr v4, v1

    .line 143
    if-gt v0, v4, :cond_a

    .line 144
    .line 145
    goto :goto_0

    .line 146
    :goto_1
    return-object p0

    .line 147
    :cond_a
    new-instance p0, Landroid/os/BadParcelableException;

    .line 148
    .line 149
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    throw p0

    .line 153
    :catchall_0
    move-exception p0

    .line 154
    goto :goto_2

    .line 155
    :cond_b
    :try_start_6
    new-instance p0, Landroid/os/BadParcelableException;

    .line 156
    .line 157
    const-string v2, "Parcelable too small"

    .line 158
    .line 159
    invoke-direct {p0, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 163
    :goto_2
    sub-int/2addr v4, v1

    .line 164
    if-le v0, v4, :cond_c

    .line 165
    .line 166
    new-instance p0, Landroid/os/BadParcelableException;

    .line 167
    .line 168
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    throw p0

    .line 172
    :cond_c
    add-int/2addr v0, v1

    .line 173
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 174
    .line 175
    .line 176
    throw p0
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    new-array p0, p1, [Landroid/hardware/light/HwLightState;

    .line 2
    .line 3
    return-object p0
.end method
