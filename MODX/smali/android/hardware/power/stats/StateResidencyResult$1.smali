.class public final Landroid/hardware/power/stats/StateResidencyResult$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 5

    .line 1
    new-instance p0, Landroid/hardware/power/stats/StateResidencyResult;

    .line 3
    invoke-direct {p0}, Landroid/hardware/power/stats/StateResidencyResult;-><init>()V

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 9
    move-result v0

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x4

    .line 15
    const-string v3, "Overflow in the size of parcelable"

    .line 17
    const v4, 0x7fffffff

    .line 20
    if-lt v1, v2, :cond_5

    .line 22
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 25
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    sub-int/2addr v2, v0

    .line 27
    if-lt v2, v1, :cond_1

    .line 29
    sub-int/2addr v4, v1

    .line 30
    if-gt v0, v4, :cond_0

    .line 32
    :goto_0
    add-int/2addr v0, v1

    .line 33
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 36
    goto :goto_1

    .line 37
    :cond_0
    new-instance p0, Landroid/os/BadParcelableException;

    .line 39
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 42
    throw p0

    .line 43
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 46
    move-result v2

    .line 47
    iput v2, p0, Landroid/hardware/power/stats/StateResidencyResult;->id:I

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 52
    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    sub-int/2addr v2, v0

    .line 54
    if-lt v2, v1, :cond_3

    .line 56
    sub-int/2addr v4, v1

    .line 57
    if-gt v0, v4, :cond_2

    .line 59
    goto :goto_0

    .line 60
    :cond_2
    new-instance p0, Landroid/os/BadParcelableException;

    .line 62
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 65
    throw p0

    .line 66
    :cond_3
    :try_start_2
    sget-object v2, Landroid/hardware/power/stats/StateResidency;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 68
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 71
    move-result-object v2

    .line 72
    check-cast v2, [Landroid/hardware/power/stats/StateResidency;

    .line 74
    iput-object v2, p0, Landroid/hardware/power/stats/StateResidencyResult;->stateResidencyData:[Landroid/hardware/power/stats/StateResidency;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 76
    sub-int/2addr v4, v1

    .line 77
    if-gt v0, v4, :cond_4

    .line 79
    goto :goto_0

    .line 80
    :goto_1
    return-object p0

    .line 81
    :cond_4
    new-instance p0, Landroid/os/BadParcelableException;

    .line 83
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 86
    throw p0

    .line 87
    :catchall_0
    move-exception p0

    .line 88
    goto :goto_2

    .line 89
    :cond_5
    :try_start_3
    new-instance p0, Landroid/os/BadParcelableException;

    .line 91
    const-string v2, "Parcelable too small"

    .line 93
    invoke-direct {p0, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 96
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 97
    :goto_2
    sub-int/2addr v4, v1

    .line 98
    if-le v0, v4, :cond_6

    .line 100
    new-instance p0, Landroid/os/BadParcelableException;

    .line 102
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 105
    throw p0

    .line 106
    :cond_6
    add-int/2addr v0, v1

    .line 107
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 110
    throw p0
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    new-array p0, p1, [Landroid/hardware/power/stats/StateResidencyResult;

    .line 3
    return-object p0
.end method
