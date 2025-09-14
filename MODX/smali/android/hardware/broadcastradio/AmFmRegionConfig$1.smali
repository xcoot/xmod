.class public final Landroid/hardware/broadcastradio/AmFmRegionConfig$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 5

    .line 1
    new-instance p0, Landroid/hardware/broadcastradio/AmFmRegionConfig;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/4 v0, 0x0

    .line 7
    iput v0, p0, Landroid/hardware/broadcastradio/AmFmRegionConfig;->fmDeemphasis:I

    .line 9
    iput v0, p0, Landroid/hardware/broadcastradio/AmFmRegionConfig;->fmRds:I

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
    if-lt v1, v2, :cond_7

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
    sget-object v2, Landroid/hardware/broadcastradio/AmFmBandRange;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 50
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 53
    move-result-object v2

    .line 54
    check-cast v2, [Landroid/hardware/broadcastradio/AmFmBandRange;

    .line 56
    iput-object v2, p0, Landroid/hardware/broadcastradio/AmFmRegionConfig;->ranges:[Landroid/hardware/broadcastradio/AmFmBandRange;

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
    iput v2, p0, Landroid/hardware/broadcastradio/AmFmRegionConfig;->fmDeemphasis:I

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
    iput v2, p0, Landroid/hardware/broadcastradio/AmFmRegionConfig;->fmRds:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 104
    sub-int/2addr v4, v1

    .line 105
    if-gt v0, v4, :cond_6

    .line 107
    goto :goto_0

    .line 108
    :goto_1
    return-object p0

    .line 109
    :cond_6
    new-instance p0, Landroid/os/BadParcelableException;

    .line 111
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 114
    throw p0

    .line 115
    :catchall_0
    move-exception p0

    .line 116
    goto :goto_2

    .line 117
    :cond_7
    :try_start_4
    new-instance p0, Landroid/os/BadParcelableException;

    .line 119
    const-string v2, "Parcelable too small"

    .line 121
    invoke-direct {p0, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 124
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 125
    :goto_2
    sub-int/2addr v4, v1

    .line 126
    if-le v0, v4, :cond_8

    .line 128
    new-instance p0, Landroid/os/BadParcelableException;

    .line 130
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 133
    throw p0

    .line 134
    :cond_8
    add-int/2addr v0, v1

    .line 135
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 138
    throw p0
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    new-array p0, p1, [Landroid/hardware/broadcastradio/AmFmRegionConfig;

    .line 3
    return-object p0
.end method
