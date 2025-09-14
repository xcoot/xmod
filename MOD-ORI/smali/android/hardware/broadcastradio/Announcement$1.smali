.class public final Landroid/hardware/broadcastradio/Announcement$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 5

    .line 1
    new-instance p0, Landroid/hardware/broadcastradio/Announcement;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-byte v0, p0, Landroid/hardware/broadcastradio/Announcement;->type:B

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/4 v2, 0x4

    .line 18
    const-string v3, "Overflow in the size of parcelable"

    .line 19
    .line 20
    const v4, 0x7fffffff

    .line 21
    .line 22
    .line 23
    if-lt v1, v2, :cond_7

    .line 24
    .line 25
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 26
    .line 27
    .line 28
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    sub-int/2addr v2, v0

    .line 30
    if-lt v2, v1, :cond_1

    .line 31
    .line 32
    sub-int/2addr v4, v1

    .line 33
    if-gt v0, v4, :cond_0

    .line 34
    .line 35
    :goto_0
    add-int/2addr v0, v1

    .line 36
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_0
    new-instance p0, Landroid/os/BadParcelableException;

    .line 41
    .line 42
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw p0

    .line 46
    :cond_1
    :try_start_1
    sget-object v2, Landroid/hardware/broadcastradio/ProgramSelector;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 47
    .line 48
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    check-cast v2, Landroid/hardware/broadcastradio/ProgramSelector;

    .line 53
    .line 54
    iput-object v2, p0, Landroid/hardware/broadcastradio/Announcement;->selector:Landroid/hardware/broadcastradio/ProgramSelector;

    .line 55
    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 57
    .line 58
    .line 59
    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    sub-int/2addr v2, v0

    .line 61
    if-lt v2, v1, :cond_3

    .line 62
    .line 63
    sub-int/2addr v4, v1

    .line 64
    if-gt v0, v4, :cond_2

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_2
    new-instance p0, Landroid/os/BadParcelableException;

    .line 68
    .line 69
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    throw p0

    .line 73
    :cond_3
    :try_start_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    iput-byte v2, p0, Landroid/hardware/broadcastradio/Announcement;->type:B

    .line 78
    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 80
    .line 81
    .line 82
    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 83
    sub-int/2addr v2, v0

    .line 84
    if-lt v2, v1, :cond_5

    .line 85
    .line 86
    sub-int/2addr v4, v1

    .line 87
    if-gt v0, v4, :cond_4

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_4
    new-instance p0, Landroid/os/BadParcelableException;

    .line 91
    .line 92
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    throw p0

    .line 96
    :cond_5
    :try_start_3
    sget-object v2, Landroid/hardware/broadcastradio/VendorKeyValue;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 97
    .line 98
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    check-cast v2, [Landroid/hardware/broadcastradio/VendorKeyValue;

    .line 103
    .line 104
    iput-object v2, p0, Landroid/hardware/broadcastradio/Announcement;->vendorInfo:[Landroid/hardware/broadcastradio/VendorKeyValue;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 105
    .line 106
    sub-int/2addr v4, v1

    .line 107
    if-gt v0, v4, :cond_6

    .line 108
    .line 109
    goto :goto_0

    .line 110
    :goto_1
    return-object p0

    .line 111
    :cond_6
    new-instance p0, Landroid/os/BadParcelableException;

    .line 112
    .line 113
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    throw p0

    .line 117
    :catchall_0
    move-exception p0

    .line 118
    goto :goto_2

    .line 119
    :cond_7
    :try_start_4
    new-instance p0, Landroid/os/BadParcelableException;

    .line 120
    .line 121
    const-string v2, "Parcelable too small"

    .line 122
    .line 123
    invoke-direct {p0, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 127
    :goto_2
    sub-int/2addr v4, v1

    .line 128
    if-le v0, v4, :cond_8

    .line 129
    .line 130
    new-instance p0, Landroid/os/BadParcelableException;

    .line 131
    .line 132
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    throw p0

    .line 136
    :cond_8
    add-int/2addr v0, v1

    .line 137
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 138
    .line 139
    .line 140
    throw p0
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    new-array p0, p1, [Landroid/hardware/broadcastradio/Announcement;

    .line 2
    .line 3
    return-object p0
.end method
