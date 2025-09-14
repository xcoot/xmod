.class public final Landroid/hardware/power/stats/PowerEntity$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 5

    .line 1
    new-instance p0, Landroid/hardware/power/stats/PowerEntity;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/4 v0, 0x0

    .line 7
    iput v0, p0, Landroid/hardware/power/stats/PowerEntity;->id:I

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 12
    move-result v0

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 16
    move-result v1

    .line 17
    const/4 v2, 0x4

    .line 18
    const-string v3, "Overflow in the size of parcelable"

    .line 20
    const v4, 0x7fffffff

    .line 23
    if-lt v1, v2, :cond_7

    .line 25
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 28
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    sub-int/2addr v2, v0

    .line 30
    if-lt v2, v1, :cond_1

    .line 32
    sub-int/2addr v4, v1

    .line 33
    if-gt v0, v4, :cond_0

    .line 35
    :goto_0
    add-int/2addr v0, v1

    .line 36
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 39
    goto :goto_1

    .line 40
    :cond_0
    new-instance p0, Landroid/os/BadParcelableException;

    .line 42
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 45
    throw p0

    .line 46
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 49
    move-result v2

    .line 50
    iput v2, p0, Landroid/hardware/power/stats/PowerEntity;->id:I

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 55
    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    sub-int/2addr v2, v0

    .line 57
    if-lt v2, v1, :cond_3

    .line 59
    sub-int/2addr v4, v1

    .line 60
    if-gt v0, v4, :cond_2

    .line 62
    goto :goto_0

    .line 63
    :cond_2
    new-instance p0, Landroid/os/BadParcelableException;

    .line 65
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 68
    throw p0

    .line 69
    :cond_3
    :try_start_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 72
    move-result-object v2

    .line 73
    iput-object v2, p0, Landroid/hardware/power/stats/PowerEntity;->name:Ljava/lang/String;

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 78
    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 79
    sub-int/2addr v2, v0

    .line 80
    if-lt v2, v1, :cond_5

    .line 82
    sub-int/2addr v4, v1

    .line 83
    if-gt v0, v4, :cond_4

    .line 85
    goto :goto_0

    .line 86
    :cond_4
    new-instance p0, Landroid/os/BadParcelableException;

    .line 88
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 91
    throw p0

    .line 92
    :cond_5
    :try_start_3
    sget-object v2, Landroid/hardware/power/stats/State;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 94
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 97
    move-result-object v2

    .line 98
    check-cast v2, [Landroid/hardware/power/stats/State;

    .line 100
    iput-object v2, p0, Landroid/hardware/power/stats/PowerEntity;->states:[Landroid/hardware/power/stats/State;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 102
    sub-int/2addr v4, v1

    .line 103
    if-gt v0, v4, :cond_6

    .line 105
    goto :goto_0

    .line 106
    :goto_1
    return-object p0

    .line 107
    :cond_6
    new-instance p0, Landroid/os/BadParcelableException;

    .line 109
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 112
    throw p0

    .line 113
    :catchall_0
    move-exception p0

    .line 114
    goto :goto_2

    .line 115
    :cond_7
    :try_start_4
    new-instance p0, Landroid/os/BadParcelableException;

    .line 117
    const-string v2, "Parcelable too small"

    .line 119
    invoke-direct {p0, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 122
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 123
    :goto_2
    sub-int/2addr v4, v1

    .line 124
    if-le v0, v4, :cond_8

    .line 126
    new-instance p0, Landroid/os/BadParcelableException;

    .line 128
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 131
    throw p0

    .line 132
    :cond_8
    add-int/2addr v0, v1

    .line 133
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 136
    throw p0
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    new-array p0, p1, [Landroid/hardware/power/stats/PowerEntity;

    .line 3
    return-object p0
.end method
