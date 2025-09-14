.class public final Landroid/hardware/broadcastradio/ProgramFilter$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 5

    .line 1
    new-instance p0, Landroid/hardware/broadcastradio/ProgramFilter;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/hardware/broadcastradio/ProgramFilter;-><init>()V

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
    if-lt v1, v2, :cond_9

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
    goto :goto_1

    .line 37
    :cond_0
    new-instance p0, Landroid/os/BadParcelableException;

    .line 38
    .line 39
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw p0

    .line 43
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    iput-object v2, p0, Landroid/hardware/broadcastradio/ProgramFilter;->identifierTypes:[I

    .line 48
    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 50
    .line 51
    .line 52
    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    sub-int/2addr v2, v0

    .line 54
    if-lt v2, v1, :cond_3

    .line 55
    .line 56
    sub-int/2addr v4, v1

    .line 57
    if-gt v0, v4, :cond_2

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_2
    new-instance p0, Landroid/os/BadParcelableException;

    .line 61
    .line 62
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw p0

    .line 66
    :cond_3
    :try_start_2
    sget-object v2, Landroid/hardware/broadcastradio/ProgramIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 67
    .line 68
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    check-cast v2, [Landroid/hardware/broadcastradio/ProgramIdentifier;

    .line 73
    .line 74
    iput-object v2, p0, Landroid/hardware/broadcastradio/ProgramFilter;->identifiers:[Landroid/hardware/broadcastradio/ProgramIdentifier;

    .line 75
    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 77
    .line 78
    .line 79
    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 80
    sub-int/2addr v2, v0

    .line 81
    if-lt v2, v1, :cond_5

    .line 82
    .line 83
    sub-int/2addr v4, v1

    .line 84
    if-gt v0, v4, :cond_4

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_4
    new-instance p0, Landroid/os/BadParcelableException;

    .line 88
    .line 89
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    throw p0

    .line 93
    :cond_5
    :try_start_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    iput-boolean v2, p0, Landroid/hardware/broadcastradio/ProgramFilter;->includeCategories:Z

    .line 98
    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 100
    .line 101
    .line 102
    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 103
    sub-int/2addr v2, v0

    .line 104
    if-lt v2, v1, :cond_7

    .line 105
    .line 106
    sub-int/2addr v4, v1

    .line 107
    if-gt v0, v4, :cond_6

    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_6
    new-instance p0, Landroid/os/BadParcelableException;

    .line 111
    .line 112
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    throw p0

    .line 116
    :cond_7
    :try_start_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    .line 117
    .line 118
    .line 119
    move-result v2

    .line 120
    iput-boolean v2, p0, Landroid/hardware/broadcastradio/ProgramFilter;->excludeModifications:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 121
    .line 122
    sub-int/2addr v4, v1

    .line 123
    if-gt v0, v4, :cond_8

    .line 124
    .line 125
    goto :goto_0

    .line 126
    :goto_1
    return-object p0

    .line 127
    :cond_8
    new-instance p0, Landroid/os/BadParcelableException;

    .line 128
    .line 129
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    throw p0

    .line 133
    :catchall_0
    move-exception p0

    .line 134
    goto :goto_2

    .line 135
    :cond_9
    :try_start_5
    new-instance p0, Landroid/os/BadParcelableException;

    .line 136
    .line 137
    const-string v2, "Parcelable too small"

    .line 138
    .line 139
    invoke-direct {p0, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 143
    :goto_2
    sub-int/2addr v4, v1

    .line 144
    if-le v0, v4, :cond_a

    .line 145
    .line 146
    new-instance p0, Landroid/os/BadParcelableException;

    .line 147
    .line 148
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    throw p0

    .line 152
    :cond_a
    add-int/2addr v0, v1

    .line 153
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 154
    .line 155
    .line 156
    throw p0
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    new-array p0, p1, [Landroid/hardware/broadcastradio/ProgramFilter;

    .line 2
    .line 3
    return-object p0
.end method
