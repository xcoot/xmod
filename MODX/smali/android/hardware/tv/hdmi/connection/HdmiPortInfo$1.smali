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

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/4 v0, 0x0

    .line 7
    iput v0, p0, Landroid/hardware/tv/hdmi/connection/HdmiPortInfo;->portId:I

    .line 9
    iput-boolean v0, p0, Landroid/hardware/tv/hdmi/connection/HdmiPortInfo;->cecSupported:Z

    .line 11
    iput-boolean v0, p0, Landroid/hardware/tv/hdmi/connection/HdmiPortInfo;->arcSupported:Z

    .line 13
    iput-boolean v0, p0, Landroid/hardware/tv/hdmi/connection/HdmiPortInfo;->eArcSupported:Z

    .line 15
    iput v0, p0, Landroid/hardware/tv/hdmi/connection/HdmiPortInfo;->physicalAddress:I

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 20
    move-result v0

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 24
    move-result v1

    .line 25
    const/4 v2, 0x4

    .line 26
    const-string v3, "Overflow in the size of parcelable"

    .line 28
    const v4, 0x7fffffff

    .line 31
    if-lt v1, v2, :cond_d

    .line 33
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 36
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    sub-int/2addr v2, v0

    .line 38
    if-lt v2, v1, :cond_1

    .line 40
    sub-int/2addr v4, v1

    .line 41
    if-gt v0, v4, :cond_0

    .line 43
    :goto_0
    add-int/2addr v0, v1

    .line 44
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 47
    goto/16 :goto_1

    .line 49
    :cond_0
    new-instance p0, Landroid/os/BadParcelableException;

    .line 51
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 54
    throw p0

    .line 55
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    .line 58
    move-result v2

    .line 59
    iput-byte v2, p0, Landroid/hardware/tv/hdmi/connection/HdmiPortInfo;->type:B

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 64
    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    sub-int/2addr v2, v0

    .line 66
    if-lt v2, v1, :cond_3

    .line 68
    sub-int/2addr v4, v1

    .line 69
    if-gt v0, v4, :cond_2

    .line 71
    goto :goto_0

    .line 72
    :cond_2
    new-instance p0, Landroid/os/BadParcelableException;

    .line 74
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 77
    throw p0

    .line 78
    :cond_3
    :try_start_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 81
    move-result v2

    .line 82
    iput v2, p0, Landroid/hardware/tv/hdmi/connection/HdmiPortInfo;->portId:I

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 87
    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 88
    sub-int/2addr v2, v0

    .line 89
    if-lt v2, v1, :cond_5

    .line 91
    sub-int/2addr v4, v1

    .line 92
    if-gt v0, v4, :cond_4

    .line 94
    goto :goto_0

    .line 95
    :cond_4
    new-instance p0, Landroid/os/BadParcelableException;

    .line 97
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 100
    throw p0

    .line 101
    :cond_5
    :try_start_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    .line 104
    move-result v2

    .line 105
    iput-boolean v2, p0, Landroid/hardware/tv/hdmi/connection/HdmiPortInfo;->cecSupported:Z

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 110
    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 111
    sub-int/2addr v2, v0

    .line 112
    if-lt v2, v1, :cond_7

    .line 114
    sub-int/2addr v4, v1

    .line 115
    if-gt v0, v4, :cond_6

    .line 117
    goto :goto_0

    .line 118
    :cond_6
    new-instance p0, Landroid/os/BadParcelableException;

    .line 120
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 123
    throw p0

    .line 124
    :cond_7
    :try_start_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    .line 127
    move-result v2

    .line 128
    iput-boolean v2, p0, Landroid/hardware/tv/hdmi/connection/HdmiPortInfo;->arcSupported:Z

    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 133
    move-result v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 134
    sub-int/2addr v2, v0

    .line 135
    if-lt v2, v1, :cond_9

    .line 137
    sub-int/2addr v4, v1

    .line 138
    if-gt v0, v4, :cond_8

    .line 140
    goto :goto_0

    .line 141
    :cond_8
    new-instance p0, Landroid/os/BadParcelableException;

    .line 143
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 146
    throw p0

    .line 147
    :cond_9
    :try_start_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    .line 150
    move-result v2

    .line 151
    iput-boolean v2, p0, Landroid/hardware/tv/hdmi/connection/HdmiPortInfo;->eArcSupported:Z

    .line 153
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 156
    move-result v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 157
    sub-int/2addr v2, v0

    .line 158
    if-lt v2, v1, :cond_b

    .line 160
    sub-int/2addr v4, v1

    .line 161
    if-gt v0, v4, :cond_a

    .line 163
    goto :goto_0

    .line 164
    :cond_a
    new-instance p0, Landroid/os/BadParcelableException;

    .line 166
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 169
    throw p0

    .line 170
    :cond_b
    :try_start_6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 173
    move-result v2

    .line 174
    iput v2, p0, Landroid/hardware/tv/hdmi/connection/HdmiPortInfo;->physicalAddress:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 176
    sub-int/2addr v4, v1

    .line 177
    if-gt v0, v4, :cond_c

    .line 179
    goto/16 :goto_0

    .line 181
    :goto_1
    return-object p0

    .line 182
    :cond_c
    new-instance p0, Landroid/os/BadParcelableException;

    .line 184
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

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

    .line 192
    const-string v2, "Parcelable too small"

    .line 194
    invoke-direct {p0, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 197
    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 198
    :goto_2
    sub-int/2addr v4, v1

    .line 199
    if-le v0, v4, :cond_e

    .line 201
    new-instance p0, Landroid/os/BadParcelableException;

    .line 203
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 206
    throw p0

    .line 207
    :cond_e
    add-int/2addr v0, v1

    .line 208
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 211
    throw p0
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    new-array p0, p1, [Landroid/hardware/tv/hdmi/connection/HdmiPortInfo;

    .line 3
    return-object p0
.end method
