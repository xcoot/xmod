.class public final Landroid/hardware/broadcastradio/AmFmBandRange$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 5

    .line 1
    new-instance p0, Landroid/hardware/broadcastradio/AmFmBandRange;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/4 v0, 0x0

    .line 7
    iput v0, p0, Landroid/hardware/broadcastradio/AmFmBandRange;->lowerBound:I

    .line 9
    iput v0, p0, Landroid/hardware/broadcastradio/AmFmBandRange;->upperBound:I

    .line 11
    iput v0, p0, Landroid/hardware/broadcastradio/AmFmBandRange;->spacing:I

    .line 13
    iput v0, p0, Landroid/hardware/broadcastradio/AmFmBandRange;->seekSpacing:I

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 18
    move-result v0

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 22
    move-result v1

    .line 23
    const/4 v2, 0x4

    .line 24
    const-string v3, "Overflow in the size of parcelable"

    .line 26
    const v4, 0x7fffffff

    .line 29
    if-lt v1, v2, :cond_9

    .line 31
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 34
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    sub-int/2addr v2, v0

    .line 36
    if-lt v2, v1, :cond_1

    .line 38
    sub-int/2addr v4, v1

    .line 39
    if-gt v0, v4, :cond_0

    .line 41
    :goto_0
    add-int/2addr v0, v1

    .line 42
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 45
    goto :goto_1

    .line 46
    :cond_0
    new-instance p0, Landroid/os/BadParcelableException;

    .line 48
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 51
    throw p0

    .line 52
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 55
    move-result v2

    .line 56
    iput v2, p0, Landroid/hardware/broadcastradio/AmFmBandRange;->lowerBound:I

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 61
    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    sub-int/2addr v2, v0

    .line 63
    if-lt v2, v1, :cond_3

    .line 65
    sub-int/2addr v4, v1

    .line 66
    if-gt v0, v4, :cond_2

    .line 68
    goto :goto_0

    .line 69
    :cond_2
    new-instance p0, Landroid/os/BadParcelableException;

    .line 71
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 74
    throw p0

    .line 75
    :cond_3
    :try_start_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 78
    move-result v2

    .line 79
    iput v2, p0, Landroid/hardware/broadcastradio/AmFmBandRange;->upperBound:I

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 84
    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 85
    sub-int/2addr v2, v0

    .line 86
    if-lt v2, v1, :cond_5

    .line 88
    sub-int/2addr v4, v1

    .line 89
    if-gt v0, v4, :cond_4

    .line 91
    goto :goto_0

    .line 92
    :cond_4
    new-instance p0, Landroid/os/BadParcelableException;

    .line 94
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 97
    throw p0

    .line 98
    :cond_5
    :try_start_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 101
    move-result v2

    .line 102
    iput v2, p0, Landroid/hardware/broadcastradio/AmFmBandRange;->spacing:I

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
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 124
    move-result v2

    .line 125
    iput v2, p0, Landroid/hardware/broadcastradio/AmFmBandRange;->seekSpacing:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 127
    sub-int/2addr v4, v1

    .line 128
    if-gt v0, v4, :cond_8

    .line 130
    goto :goto_0

    .line 131
    :goto_1
    return-object p0

    .line 132
    :cond_8
    new-instance p0, Landroid/os/BadParcelableException;

    .line 134
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 137
    throw p0

    .line 138
    :catchall_0
    move-exception p0

    .line 139
    goto :goto_2

    .line 140
    :cond_9
    :try_start_5
    new-instance p0, Landroid/os/BadParcelableException;

    .line 142
    const-string v2, "Parcelable too small"

    .line 144
    invoke-direct {p0, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 147
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 148
    :goto_2
    sub-int/2addr v4, v1

    .line 149
    if-le v0, v4, :cond_a

    .line 151
    new-instance p0, Landroid/os/BadParcelableException;

    .line 153
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 156
    throw p0

    .line 157
    :cond_a
    add-int/2addr v0, v1

    .line 158
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 161
    throw p0
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    new-array p0, p1, [Landroid/hardware/broadcastradio/AmFmBandRange;

    .line 3
    return-object p0
.end method
