.class public final Landroid/frameworks/vibrator/ScaleParam$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 5

    .line 1
    new-instance p0, Landroid/frameworks/vibrator/ScaleParam;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/4 v0, 0x0

    .line 7
    iput v0, p0, Landroid/frameworks/vibrator/ScaleParam;->typesMask:I

    .line 9
    const/4 v0, 0x0

    .line 10
    iput v0, p0, Landroid/frameworks/vibrator/ScaleParam;->scale:F

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 15
    move-result v0

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 19
    move-result v1

    .line 20
    const/4 v2, 0x4

    .line 21
    const-string v3, "Overflow in the size of parcelable"

    .line 23
    const v4, 0x7fffffff

    .line 26
    if-lt v1, v2, :cond_5

    .line 28
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 31
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    sub-int/2addr v2, v0

    .line 33
    if-lt v2, v1, :cond_1

    .line 35
    sub-int/2addr v4, v1

    .line 36
    if-gt v0, v4, :cond_0

    .line 38
    :goto_0
    add-int/2addr v0, v1

    .line 39
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 42
    goto :goto_1

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
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 52
    move-result v2

    .line 53
    iput v2, p0, Landroid/frameworks/vibrator/ScaleParam;->typesMask:I

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 58
    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    sub-int/2addr v2, v0

    .line 60
    if-lt v2, v1, :cond_3

    .line 62
    sub-int/2addr v4, v1

    .line 63
    if-gt v0, v4, :cond_2

    .line 65
    goto :goto_0

    .line 66
    :cond_2
    new-instance p0, Landroid/os/BadParcelableException;

    .line 68
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 71
    throw p0

    .line 72
    :cond_3
    :try_start_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    .line 75
    move-result v2

    .line 76
    iput v2, p0, Landroid/frameworks/vibrator/ScaleParam;->scale:F
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 78
    sub-int/2addr v4, v1

    .line 79
    if-gt v0, v4, :cond_4

    .line 81
    goto :goto_0

    .line 82
    :goto_1
    return-object p0

    .line 83
    :cond_4
    new-instance p0, Landroid/os/BadParcelableException;

    .line 85
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 88
    throw p0

    .line 89
    :catchall_0
    move-exception p0

    .line 90
    goto :goto_2

    .line 91
    :cond_5
    :try_start_3
    new-instance p0, Landroid/os/BadParcelableException;

    .line 93
    const-string v2, "Parcelable too small"

    .line 95
    invoke-direct {p0, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 98
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 99
    :goto_2
    sub-int/2addr v4, v1

    .line 100
    if-le v0, v4, :cond_6

    .line 102
    new-instance p0, Landroid/os/BadParcelableException;

    .line 104
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 107
    throw p0

    .line 108
    :cond_6
    add-int/2addr v0, v1

    .line 109
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 112
    throw p0
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    new-array p0, p1, [Landroid/frameworks/vibrator/ScaleParam;

    .line 3
    return-object p0
.end method
