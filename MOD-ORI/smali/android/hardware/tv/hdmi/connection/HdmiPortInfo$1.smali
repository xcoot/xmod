.class public final Landroid/hardware/tv/hdmi/connection/HdmiPortInfo$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 5

    .line 1
    new-instance p0, Landroid/hardware/tv/hdmi/connection/HdmiPortInfo;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput v0, p0, Landroid/hardware/tv/hdmi/connection/HdmiPortInfo;->portId:I

    .line 8
    .line 9
    iput-boolean v0, p0, Landroid/hardware/tv/hdmi/connection/HdmiPortInfo;->cecSupported:Z

    .line 10
    .line 11
    iput-boolean v0, p0, Landroid/hardware/tv/hdmi/connection/HdmiPortInfo;->arcSupported:Z

    .line 12
    .line 13
    iput-boolean v0, p0, Landroid/hardware/tv/hdmi/connection/HdmiPortInfo;->eArcSupported:Z

    .line 14
    .line 15
    iput v0, p0, Landroid/hardware/tv/hdmi/connection/HdmiPortInfo;->physicalAddress:I

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    const/4 v2, 0x4

    .line 26
    const-string v3, "Overflow in the size of parcelable"

    .line 27
    .line 28
    const v4, 0x7fffffff

    .line 29
    .line 30
    .line 31
    if-lt v1, v2, :cond_d

    .line 32
    .line 33
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 34
    .line 35
    .line 36
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    sub-int/2addr v2, v0

    .line 38
    if-lt v2, v1, :cond_1

    .line 39
    .line 40
    sub-int/2addr v4, v1

    .line 41
    if-gt v0, v4, :cond_0

    .line 42
    .line 43
    :goto_0
    add-int/2addr v0, v1

    .line 44
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 45
    .line 46
    .line 47
    goto/16 :goto_1

    .line 48
    .line 49
    :cond_0
    new-instance p0, Landroid/os/BadParcelableException;

    .line 50
    .line 51
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw p0

    .line 55
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    iput-byte v2, p0, Landroid/hardware/tv/hdmi/connection/HdmiPortInfo;->type:B

    .line 60
    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 62
    .line 63
    .line 64
    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    sub-int/2addr v2, v0

    .line 66
    if-lt v2, v1, :cond_3

    .line 67
    .line 68
    sub-int/2addr v4, v1

    .line 69
    if-gt v0, v4, :cond_2

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_2
    new-instance p0, Landroid/os/BadParcelableException;

    .line 73
    .line 74
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    throw p0

    .line 78
    :cond_3
    :try_start_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    iput v2, p0, Landroid/hardware/tv/hdmi/connection/HdmiPortInfo;->portId:I

    .line 83
    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 85
    .line 86
    .line 87
    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 88
    sub-int/2addr v2, v0

    .line 89
    if-lt v2, v1, :cond_5

    .line 90
    .line 91
    sub-int/2addr v4, v1

    .line 92
    if-gt v0, v4, :cond_4

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_4
    new-instance p0, Landroid/os/BadParcelableException;

    .line 96
    .line 97
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    throw p0

    .line 101
    :cond_5
    :try_start_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    iput-boolean v2, p0, Landroid/hardware/tv/hdmi/connection/HdmiPortInfo;->cecSupported:Z

    .line 106
    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 108
    .line 109
    .line 110
    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 111
    sub-int/2addr v2, v0

    .line 112
    if-lt v2, v1, :cond_7

    .line 113
    .line 114
    sub-int/2addr v4, v1

    .line 115
    if-gt v0, v4, :cond_6

    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_6
    new-instance p0, Landroid/os/BadParcelableException;

    .line 119
    .line 120
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    throw p0

    .line 124
    :cond_7
    :try_start_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    iput-boolean v2, p0, Landroid/hardware/tv/hdmi/connection/HdmiPortInfo;->arcSupported:Z

    .line 129
    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 131
    .line 132
    .line 133
    move-result v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 134
    sub-int/2addr v2, v0

    .line 135
    if-lt v2, v1, :cond_9

    .line 136
    .line 137
    sub-int/2addr v4, v1

    .line 138
    if-gt v0, v4, :cond_8

    .line 139
    .line 140
    goto :goto_0

    .line 141
    :cond_8
    new-instance p0, Landroid/os/BadParcelableException;

    .line 142
    .line 143
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    throw p0

    .line 147
    :cond_9
    :try_start_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    .line 148
    .line 149
    .line 150
    move-result v2

    .line 151
    iput-boolean v2, p0, Landroid/hardware/tv/hdmi/connection/HdmiPortInfo;->eArcSupported:Z

    .line 152
    .line 153
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 154
    .line 155
    .line 156
    move-result v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 157
    sub-int/2addr v2, v0

    .line 158
    if-lt v2, v1, :cond_b

    .line 159
    .line 160
    sub-int/2addr v4, v1

    .line 161
    if-gt v0, v4, :cond_a

    .line 162
    .line 163
    goto :goto_0

    .line 164
    :cond_a
    new-instance p0, Landroid/os/BadParcelableException;

    .line 165
    .line 166
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    throw p0

    .line 170
    :cond_b
    :try_start_6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 171
    .line 172
    .line 173
    move-result v2

    .line 174
    iput v2, p0, Landroid/hardware/tv/hdmi/connection/HdmiPortInfo;->physicalAddress:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

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
    :goto_1
    return-object p0

    .line 182
    :cond_c
    new-instance p0, Landroid/os/BadParcelableException;

    .line 183
    .line 184
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    throw p0

    .line 188
    :catchall_0
    move-exception p0

    .line 189
    goto :goto_2

    .line 190
    :cond_d
    :try_start_7
    new-instance p0, Landroid/os/BadParcelableException;

    .line 191
    .line 192
    const-string v2, "Parcelable too small"

    .line 193
    .line 194
    invoke-direct {p0, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 198
    :goto_2
    sub-int/2addr v4, v1

    .line 199
    if-le v0, v4, :cond_e

    .line 200
    .line 201
    new-instance p0, Landroid/os/BadParcelableException;

    .line 202
    .line 203
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    throw p0

    .line 207
    :cond_e
    add-int/2addr v0, v1

    .line 208
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 209
    .line 210
    .line 211
    throw p0
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    new-array p0, p1, [Landroid/hardware/tv/hdmi/connection/HdmiPortInfo;

    .line 2
    .line 3
    return-object p0
.end method
