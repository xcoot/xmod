.class public final Landroid/hardware/security/keymint/RpcHardwareInfo$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 5

    .line 1
    new-instance p0, Landroid/hardware/security/keymint/RpcHardwareInfo;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput v0, p0, Landroid/hardware/security/keymint/RpcHardwareInfo;->versionNumber:I

    .line 8
    .line 9
    iput v0, p0, Landroid/hardware/security/keymint/RpcHardwareInfo;->supportedEekCurve:I

    .line 10
    .line 11
    const/4 v0, 0x4

    .line 12
    iput v0, p0, Landroid/hardware/security/keymint/RpcHardwareInfo;->supportedNumKeysInCsr:I

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    const-string v3, "Overflow in the size of parcelable"

    .line 23
    .line 24
    const v4, 0x7fffffff

    .line 25
    .line 26
    .line 27
    if-lt v2, v0, :cond_b

    .line 28
    .line 29
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 30
    .line 31
    .line 32
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    sub-int/2addr v0, v1

    .line 34
    if-lt v0, v2, :cond_1

    .line 35
    .line 36
    sub-int/2addr v4, v2

    .line 37
    if-gt v1, v4, :cond_0

    .line 38
    .line 39
    :goto_0
    add-int/2addr v1, v2

    .line 40
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 41
    .line 42
    .line 43
    goto/16 :goto_1

    .line 44
    .line 45
    :cond_0
    new-instance p0, Landroid/os/BadParcelableException;

    .line 46
    .line 47
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw p0

    .line 51
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    iput v0, p0, Landroid/hardware/security/keymint/RpcHardwareInfo;->versionNumber:I

    .line 56
    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 58
    .line 59
    .line 60
    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    sub-int/2addr v0, v1

    .line 62
    if-lt v0, v2, :cond_3

    .line 63
    .line 64
    sub-int/2addr v4, v2

    .line 65
    if-gt v1, v4, :cond_2

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_2
    new-instance p0, Landroid/os/BadParcelableException;

    .line 69
    .line 70
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    throw p0

    .line 74
    :cond_3
    :try_start_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    iput-object v0, p0, Landroid/hardware/security/keymint/RpcHardwareInfo;->rpcAuthorName:Ljava/lang/String;

    .line 79
    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 81
    .line 82
    .line 83
    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 84
    sub-int/2addr v0, v1

    .line 85
    if-lt v0, v2, :cond_5

    .line 86
    .line 87
    sub-int/2addr v4, v2

    .line 88
    if-gt v1, v4, :cond_4

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_4
    new-instance p0, Landroid/os/BadParcelableException;

    .line 92
    .line 93
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    throw p0

    .line 97
    :cond_5
    :try_start_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    iput v0, p0, Landroid/hardware/security/keymint/RpcHardwareInfo;->supportedEekCurve:I

    .line 102
    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 104
    .line 105
    .line 106
    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 107
    sub-int/2addr v0, v1

    .line 108
    if-lt v0, v2, :cond_7

    .line 109
    .line 110
    sub-int/2addr v4, v2

    .line 111
    if-gt v1, v4, :cond_6

    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_6
    new-instance p0, Landroid/os/BadParcelableException;

    .line 115
    .line 116
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    throw p0

    .line 120
    :cond_7
    :try_start_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    iput-object v0, p0, Landroid/hardware/security/keymint/RpcHardwareInfo;->uniqueId:Ljava/lang/String;

    .line 125
    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 127
    .line 128
    .line 129
    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 130
    sub-int/2addr v0, v1

    .line 131
    if-lt v0, v2, :cond_9

    .line 132
    .line 133
    sub-int/2addr v4, v2

    .line 134
    if-gt v1, v4, :cond_8

    .line 135
    .line 136
    goto :goto_0

    .line 137
    :cond_8
    new-instance p0, Landroid/os/BadParcelableException;

    .line 138
    .line 139
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    throw p0

    .line 143
    :cond_9
    :try_start_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    iput v0, p0, Landroid/hardware/security/keymint/RpcHardwareInfo;->supportedNumKeysInCsr:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 148
    .line 149
    sub-int/2addr v4, v2

    .line 150
    if-gt v1, v4, :cond_a

    .line 151
    .line 152
    goto :goto_0

    .line 153
    :goto_1
    return-object p0

    .line 154
    :cond_a
    new-instance p0, Landroid/os/BadParcelableException;

    .line 155
    .line 156
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    throw p0

    .line 160
    :catchall_0
    move-exception p0

    .line 161
    goto :goto_2

    .line 162
    :cond_b
    :try_start_6
    new-instance p0, Landroid/os/BadParcelableException;

    .line 163
    .line 164
    const-string v0, "Parcelable too small"

    .line 165
    .line 166
    invoke-direct {p0, v0}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 170
    :goto_2
    sub-int/2addr v4, v2

    .line 171
    if-le v1, v4, :cond_c

    .line 172
    .line 173
    new-instance p0, Landroid/os/BadParcelableException;

    .line 174
    .line 175
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    throw p0

    .line 179
    :cond_c
    add-int/2addr v1, v2

    .line 180
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 181
    .line 182
    .line 183
    throw p0
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    new-array p0, p1, [Landroid/hardware/security/keymint/RpcHardwareInfo;

    .line 2
    .line 3
    return-object p0
.end method
