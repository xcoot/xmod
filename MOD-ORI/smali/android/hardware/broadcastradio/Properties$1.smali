.class public final Landroid/hardware/broadcastradio/Properties$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 5

    .line 1
    new-instance p0, Landroid/hardware/broadcastradio/Properties;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    if-lt v1, v2, :cond_d

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
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    iput-object v2, p0, Landroid/hardware/broadcastradio/Properties;->maker:Ljava/lang/String;

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
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    iput-object v2, p0, Landroid/hardware/broadcastradio/Properties;->product:Ljava/lang/String;

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
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    iput-object v2, p0, Landroid/hardware/broadcastradio/Properties;->version:Ljava/lang/String;

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
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    iput-object v2, p0, Landroid/hardware/broadcastradio/Properties;->serial:Ljava/lang/String;

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
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    iput-object v2, p0, Landroid/hardware/broadcastradio/Properties;->supportedIdentifierTypes:[I

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
    sget-object v2, Landroid/hardware/broadcastradio/VendorKeyValue;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 160
    .line 161
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v2

    .line 165
    check-cast v2, [Landroid/hardware/broadcastradio/VendorKeyValue;

    .line 166
    .line 167
    iput-object v2, p0, Landroid/hardware/broadcastradio/Properties;->vendorInfo:[Landroid/hardware/broadcastradio/VendorKeyValue;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 168
    .line 169
    sub-int/2addr v4, v1

    .line 170
    if-gt v0, v4, :cond_c

    .line 171
    .line 172
    goto/16 :goto_0

    .line 173
    .line 174
    :goto_1
    return-object p0

    .line 175
    :cond_c
    new-instance p0, Landroid/os/BadParcelableException;

    .line 176
    .line 177
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    throw p0

    .line 181
    :catchall_0
    move-exception p0

    .line 182
    goto :goto_2

    .line 183
    :cond_d
    :try_start_7
    new-instance p0, Landroid/os/BadParcelableException;

    .line 184
    .line 185
    const-string v2, "Parcelable too small"

    .line 186
    .line 187
    invoke-direct {p0, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 191
    :goto_2
    sub-int/2addr v4, v1

    .line 192
    if-le v0, v4, :cond_e

    .line 193
    .line 194
    new-instance p0, Landroid/os/BadParcelableException;

    .line 195
    .line 196
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    throw p0

    .line 200
    :cond_e
    add-int/2addr v0, v1

    .line 201
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 202
    .line 203
    .line 204
    throw p0
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    new-array p0, p1, [Landroid/hardware/broadcastradio/Properties;

    .line 2
    .line 3
    return-object p0
.end method
