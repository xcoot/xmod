.class public final Landroid/hardware/broadcastradio/ProgramListChunk$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 5

    .line 1
    new-instance p0, Landroid/hardware/broadcastradio/ProgramListChunk;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Landroid/hardware/broadcastradio/ProgramListChunk;->purge:Z

    .line 9
    iput-boolean v0, p0, Landroid/hardware/broadcastradio/ProgramListChunk;->complete:Z

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
    if-lt v1, v2, :cond_9

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
    goto :goto_1

    .line 42
    :cond_0
    new-instance p0, Landroid/os/BadParcelableException;

    .line 44
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 47
    throw p0

    .line 48
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    .line 51
    move-result v2

    .line 52
    iput-boolean v2, p0, Landroid/hardware/broadcastradio/ProgramListChunk;->purge:Z

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 57
    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    sub-int/2addr v2, v0

    .line 59
    if-lt v2, v1, :cond_3

    .line 61
    sub-int/2addr v4, v1

    .line 62
    if-gt v0, v4, :cond_2

    .line 64
    goto :goto_0

    .line 65
    :cond_2
    new-instance p0, Landroid/os/BadParcelableException;

    .line 67
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 70
    throw p0

    .line 71
    :cond_3
    :try_start_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    .line 74
    move-result v2

    .line 75
    iput-boolean v2, p0, Landroid/hardware/broadcastradio/ProgramListChunk;->complete:Z

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 80
    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 81
    sub-int/2addr v2, v0

    .line 82
    if-lt v2, v1, :cond_5

    .line 84
    sub-int/2addr v4, v1

    .line 85
    if-gt v0, v4, :cond_4

    .line 87
    goto :goto_0

    .line 88
    :cond_4
    new-instance p0, Landroid/os/BadParcelableException;

    .line 90
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 93
    throw p0

    .line 94
    :cond_5
    :try_start_3
    sget-object v2, Landroid/hardware/broadcastradio/ProgramInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 96
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 99
    move-result-object v2

    .line 100
    check-cast v2, [Landroid/hardware/broadcastradio/ProgramInfo;

    .line 102
    iput-object v2, p0, Landroid/hardware/broadcastradio/ProgramListChunk;->modified:[Landroid/hardware/broadcastradio/ProgramInfo;

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 107
    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 108
    sub-int/2addr v2, v0

    .line 109
    if-lt v2, v1, :cond_7

    .line 111
    sub-int/2addr v4, v1

    .line 112
    if-gt v0, v4, :cond_6

    .line 114
    goto :goto_0

    .line 115
    :cond_6
    new-instance p0, Landroid/os/BadParcelableException;

    .line 117
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 120
    throw p0

    .line 121
    :cond_7
    :try_start_4
    sget-object v2, Landroid/hardware/broadcastradio/ProgramIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 123
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 126
    move-result-object v2

    .line 127
    check-cast v2, [Landroid/hardware/broadcastradio/ProgramIdentifier;

    .line 129
    iput-object v2, p0, Landroid/hardware/broadcastradio/ProgramListChunk;->removed:[Landroid/hardware/broadcastradio/ProgramIdentifier;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 131
    sub-int/2addr v4, v1

    .line 132
    if-gt v0, v4, :cond_8

    .line 134
    goto :goto_0

    .line 135
    :goto_1
    return-object p0

    .line 136
    :cond_8
    new-instance p0, Landroid/os/BadParcelableException;

    .line 138
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 141
    throw p0

    .line 142
    :catchall_0
    move-exception p0

    .line 143
    goto :goto_2

    .line 144
    :cond_9
    :try_start_5
    new-instance p0, Landroid/os/BadParcelableException;

    .line 146
    const-string v2, "Parcelable too small"

    .line 148
    invoke-direct {p0, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 151
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 152
    :goto_2
    sub-int/2addr v4, v1

    .line 153
    if-le v0, v4, :cond_a

    .line 155
    new-instance p0, Landroid/os/BadParcelableException;

    .line 157
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 160
    throw p0

    .line 161
    :cond_a
    add-int/2addr v0, v1

    .line 162
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 165
    throw p0
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    new-array p0, p1, [Landroid/hardware/broadcastradio/ProgramListChunk;

    .line 3
    return-object p0
.end method
