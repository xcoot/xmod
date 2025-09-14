.class public final Landroid/hardware/power/stats/State$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 5

    .line 1
    new-instance p0, Landroid/hardware/power/stats/State;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/4 v0, 0x0

    .line 7
    iput v0, p0, Landroid/hardware/power/stats/State;->id:I

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
    if-lt v1, v2, :cond_5

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
    iput v2, p0, Landroid/hardware/power/stats/State;->id:I

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
    iput-object v2, p0, Landroid/hardware/power/stats/State;->name:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 75
    sub-int/2addr v4, v1

    .line 76
    if-gt v0, v4, :cond_4

    .line 78
    goto :goto_0

    .line 79
    :goto_1
    return-object p0

    .line 80
    :cond_4
    new-instance p0, Landroid/os/BadParcelableException;

    .line 82
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 85
    throw p0

    .line 86
    :catchall_0
    move-exception p0

    .line 87
    goto :goto_2

    .line 88
    :cond_5
    :try_start_3
    new-instance p0, Landroid/os/BadParcelableException;

    .line 90
    const-string v2, "Parcelable too small"

    .line 92
    invoke-direct {p0, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 95
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 96
    :goto_2
    sub-int/2addr v4, v1

    .line 97
    if-le v0, v4, :cond_6

    .line 99
    new-instance p0, Landroid/os/BadParcelableException;

    .line 101
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 104
    throw p0

    .line 105
    :cond_6
    add-int/2addr v0, v1

    .line 106
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 109
    throw p0
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    new-array p0, p1, [Landroid/hardware/power/stats/State;

    .line 3
    return-object p0
.end method
