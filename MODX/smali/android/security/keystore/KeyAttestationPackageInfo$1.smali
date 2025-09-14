.class public final Landroid/security/keystore/KeyAttestationPackageInfo$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 7

    .line 1
    new-instance p0, Landroid/security/keystore/KeyAttestationPackageInfo;

    .line 3
    invoke-direct {p0}, Landroid/security/keystore/KeyAttestationPackageInfo;-><init>()V

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
    if-lt v1, v2, :cond_7

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
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 46
    move-result-object v2

    .line 47
    iput-object v2, p0, Landroid/security/keystore/KeyAttestationPackageInfo;->packageName:Ljava/lang/String;

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
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    .line 69
    move-result-wide v5

    .line 70
    iput-wide v5, p0, Landroid/security/keystore/KeyAttestationPackageInfo;->versionCode:J

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 75
    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 76
    sub-int/2addr v2, v0

    .line 77
    if-lt v2, v1, :cond_5

    .line 79
    sub-int/2addr v4, v1

    .line 80
    if-gt v0, v4, :cond_4

    .line 82
    goto :goto_0

    .line 83
    :cond_4
    new-instance p0, Landroid/os/BadParcelableException;

    .line 85
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 88
    throw p0

    .line 89
    :cond_5
    :try_start_3
    sget-object v2, Landroid/security/keystore/Signature;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 91
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 94
    move-result-object v2

    .line 95
    check-cast v2, [Landroid/security/keystore/Signature;

    .line 97
    iput-object v2, p0, Landroid/security/keystore/KeyAttestationPackageInfo;->signatures:[Landroid/security/keystore/Signature;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 99
    sub-int/2addr v4, v1

    .line 100
    if-gt v0, v4, :cond_6

    .line 102
    goto :goto_0

    .line 103
    :goto_1
    return-object p0

    .line 104
    :cond_6
    new-instance p0, Landroid/os/BadParcelableException;

    .line 106
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 109
    throw p0

    .line 110
    :catchall_0
    move-exception p0

    .line 111
    goto :goto_2

    .line 112
    :cond_7
    :try_start_4
    new-instance p0, Landroid/os/BadParcelableException;

    .line 114
    const-string v2, "Parcelable too small"

    .line 116
    invoke-direct {p0, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 119
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 120
    :goto_2
    sub-int/2addr v4, v1

    .line 121
    if-le v0, v4, :cond_8

    .line 123
    new-instance p0, Landroid/os/BadParcelableException;

    .line 125
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 128
    throw p0

    .line 129
    :cond_8
    add-int/2addr v0, v1

    .line 130
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 133
    throw p0
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    new-array p0, p1, [Landroid/security/keystore/KeyAttestationPackageInfo;

    .line 3
    return-object p0
.end method
