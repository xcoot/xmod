.class public final Landroid/hardware/broadcastradio/ProgramInfo$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 6

    .line 1
    new-instance p0, Landroid/hardware/broadcastradio/ProgramInfo;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/4 v0, 0x0

    .line 7
    iput v0, p0, Landroid/hardware/broadcastradio/ProgramInfo;->infoFlags:I

    .line 9
    iput v0, p0, Landroid/hardware/broadcastradio/ProgramInfo;->signalQuality:I

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 14
    move-result v0

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 18
    move-result v1

    .line 19
    const/4 v2, 0x4

    .line 20
    const-string v3, "Overflow in the size of parcelable"

    .line 22
    const v4, 0x7fffffff

    .line 25
    if-lt v1, v2, :cond_11

    .line 27
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 30
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    sub-int/2addr v2, v0

    .line 32
    if-lt v2, v1, :cond_1

    .line 34
    sub-int/2addr v4, v1

    .line 35
    if-gt v0, v4, :cond_0

    .line 37
    :goto_0
    add-int/2addr v0, v1

    .line 38
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 41
    goto/16 :goto_1

    .line 43
    :cond_0
    new-instance p0, Landroid/os/BadParcelableException;

    .line 45
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 48
    throw p0

    .line 49
    :cond_1
    :try_start_1
    sget-object v2, Landroid/hardware/broadcastradio/ProgramSelector;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 51
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 54
    move-result-object v2

    .line 55
    check-cast v2, Landroid/hardware/broadcastradio/ProgramSelector;

    .line 57
    iput-object v2, p0, Landroid/hardware/broadcastradio/ProgramInfo;->selector:Landroid/hardware/broadcastradio/ProgramSelector;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 62
    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    sub-int/2addr v2, v0

    .line 64
    if-lt v2, v1, :cond_3

    .line 66
    sub-int/2addr v4, v1

    .line 67
    if-gt v0, v4, :cond_2

    .line 69
    goto :goto_0

    .line 70
    :cond_2
    new-instance p0, Landroid/os/BadParcelableException;

    .line 72
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 75
    throw p0

    .line 76
    :cond_3
    :try_start_2
    sget-object v2, Landroid/hardware/broadcastradio/ProgramIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 78
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 81
    move-result-object v5

    .line 82
    check-cast v5, Landroid/hardware/broadcastradio/ProgramIdentifier;

    .line 84
    iput-object v5, p0, Landroid/hardware/broadcastradio/ProgramInfo;->logicallyTunedTo:Landroid/hardware/broadcastradio/ProgramIdentifier;

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 89
    move-result v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 90
    sub-int/2addr v5, v0

    .line 91
    if-lt v5, v1, :cond_5

    .line 93
    sub-int/2addr v4, v1

    .line 94
    if-gt v0, v4, :cond_4

    .line 96
    goto :goto_0

    .line 97
    :cond_4
    new-instance p0, Landroid/os/BadParcelableException;

    .line 99
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 102
    throw p0

    .line 103
    :cond_5
    :try_start_3
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 106
    move-result-object v5

    .line 107
    check-cast v5, Landroid/hardware/broadcastradio/ProgramIdentifier;

    .line 109
    iput-object v5, p0, Landroid/hardware/broadcastradio/ProgramInfo;->physicallyTunedTo:Landroid/hardware/broadcastradio/ProgramIdentifier;

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 114
    move-result v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 115
    sub-int/2addr v5, v0

    .line 116
    if-lt v5, v1, :cond_7

    .line 118
    sub-int/2addr v4, v1

    .line 119
    if-gt v0, v4, :cond_6

    .line 121
    goto :goto_0

    .line 122
    :cond_6
    new-instance p0, Landroid/os/BadParcelableException;

    .line 124
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 127
    throw p0

    .line 128
    :cond_7
    :try_start_4
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 131
    move-result-object v2

    .line 132
    check-cast v2, [Landroid/hardware/broadcastradio/ProgramIdentifier;

    .line 134
    iput-object v2, p0, Landroid/hardware/broadcastradio/ProgramInfo;->relatedContent:[Landroid/hardware/broadcastradio/ProgramIdentifier;

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 139
    move-result v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 140
    sub-int/2addr v2, v0

    .line 141
    if-lt v2, v1, :cond_9

    .line 143
    sub-int/2addr v4, v1

    .line 144
    if-gt v0, v4, :cond_8

    .line 146
    goto :goto_0

    .line 147
    :cond_8
    new-instance p0, Landroid/os/BadParcelableException;

    .line 149
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 152
    throw p0

    .line 153
    :cond_9
    :try_start_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 156
    move-result v2

    .line 157
    iput v2, p0, Landroid/hardware/broadcastradio/ProgramInfo;->infoFlags:I

    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 162
    move-result v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 163
    sub-int/2addr v2, v0

    .line 164
    if-lt v2, v1, :cond_b

    .line 166
    sub-int/2addr v4, v1

    .line 167
    if-gt v0, v4, :cond_a

    .line 169
    goto/16 :goto_0

    .line 171
    :cond_a
    new-instance p0, Landroid/os/BadParcelableException;

    .line 173
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 176
    throw p0

    .line 177
    :cond_b
    :try_start_6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 180
    move-result v2

    .line 181
    iput v2, p0, Landroid/hardware/broadcastradio/ProgramInfo;->signalQuality:I

    .line 183
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 186
    move-result v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 187
    sub-int/2addr v2, v0

    .line 188
    if-lt v2, v1, :cond_d

    .line 190
    sub-int/2addr v4, v1

    .line 191
    if-gt v0, v4, :cond_c

    .line 193
    goto/16 :goto_0

    .line 195
    :cond_c
    new-instance p0, Landroid/os/BadParcelableException;

    .line 197
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 200
    throw p0

    .line 201
    :cond_d
    :try_start_7
    sget-object v2, Landroid/hardware/broadcastradio/Metadata;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 203
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 206
    move-result-object v2

    .line 207
    check-cast v2, [Landroid/hardware/broadcastradio/Metadata;

    .line 209
    iput-object v2, p0, Landroid/hardware/broadcastradio/ProgramInfo;->metadata:[Landroid/hardware/broadcastradio/Metadata;

    .line 211
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 214
    move-result v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 215
    sub-int/2addr v2, v0

    .line 216
    if-lt v2, v1, :cond_f

    .line 218
    sub-int/2addr v4, v1

    .line 219
    if-gt v0, v4, :cond_e

    .line 221
    goto/16 :goto_0

    .line 223
    :cond_e
    new-instance p0, Landroid/os/BadParcelableException;

    .line 225
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 228
    throw p0

    .line 229
    :cond_f
    :try_start_8
    sget-object v2, Landroid/hardware/broadcastradio/VendorKeyValue;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 231
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 234
    move-result-object v2

    .line 235
    check-cast v2, [Landroid/hardware/broadcastradio/VendorKeyValue;

    .line 237
    iput-object v2, p0, Landroid/hardware/broadcastradio/ProgramInfo;->vendorInfo:[Landroid/hardware/broadcastradio/VendorKeyValue;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 239
    sub-int/2addr v4, v1

    .line 240
    if-gt v0, v4, :cond_10

    .line 242
    goto/16 :goto_0

    .line 244
    :goto_1
    return-object p0

    .line 245
    :cond_10
    new-instance p0, Landroid/os/BadParcelableException;

    .line 247
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 250
    throw p0

    .line 251
    :catchall_0
    move-exception p0

    .line 252
    goto :goto_2

    .line 253
    :cond_11
    :try_start_9
    new-instance p0, Landroid/os/BadParcelableException;

    .line 255
    const-string v2, "Parcelable too small"

    .line 257
    invoke-direct {p0, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 260
    throw p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 261
    :goto_2
    sub-int/2addr v4, v1

    .line 262
    if-le v0, v4, :cond_12

    .line 264
    new-instance p0, Landroid/os/BadParcelableException;

    .line 266
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 269
    throw p0

    .line 270
    :cond_12
    add-int/2addr v0, v1

    .line 271
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 274
    throw p0
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    new-array p0, p1, [Landroid/hardware/broadcastradio/ProgramInfo;

    .line 3
    return-object p0
.end method
