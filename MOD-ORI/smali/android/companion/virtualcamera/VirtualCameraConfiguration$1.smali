.class public final Landroid/companion/virtualcamera/VirtualCameraConfiguration$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 7

    .line 1
    new-instance p0, Landroid/companion/virtualcamera/VirtualCameraConfiguration;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/companion/virtualcamera/VirtualCameraConfiguration;-><init>()V

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
    if-lt v1, v2, :cond_b

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
    goto/16 :goto_2

    .line 37
    .line 38
    :cond_0
    new-instance p0, Landroid/os/BadParcelableException;

    .line 39
    .line 40
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw p0

    .line 44
    :cond_1
    :try_start_1
    sget-object v2, Landroid/companion/virtualcamera/SupportedStreamConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 45
    .line 46
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    check-cast v2, [Landroid/companion/virtualcamera/SupportedStreamConfiguration;

    .line 51
    .line 52
    iput-object v2, p0, Landroid/companion/virtualcamera/VirtualCameraConfiguration;->supportedStreamConfigs:[Landroid/companion/virtualcamera/SupportedStreamConfiguration;

    .line 53
    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 55
    .line 56
    .line 57
    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    sub-int/2addr v2, v0

    .line 59
    if-lt v2, v1, :cond_3

    .line 60
    .line 61
    sub-int/2addr v4, v1

    .line 62
    if-gt v0, v4, :cond_2

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    new-instance p0, Landroid/os/BadParcelableException;

    .line 66
    .line 67
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    throw p0

    .line 71
    :cond_3
    :try_start_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    sget v5, Lcom/android/server/companion/virtual/camera/VirtualCameraConversionUtil$1;->$r8$clinit:I

    .line 76
    .line 77
    if-nez v2, :cond_4

    .line 78
    .line 79
    const/4 v2, 0x0

    .line 80
    goto :goto_1

    .line 81
    :cond_4
    const-string v5, "android.companion.virtualcamera.IVirtualCameraCallback"

    .line 82
    .line 83
    invoke-interface {v2, v5}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    if-eqz v5, :cond_5

    .line 88
    .line 89
    instance-of v6, v5, Landroid/companion/virtualcamera/IVirtualCameraCallback;

    .line 90
    .line 91
    if-eqz v6, :cond_5

    .line 92
    .line 93
    move-object v2, v5

    .line 94
    check-cast v2, Landroid/companion/virtualcamera/IVirtualCameraCallback;

    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_5
    new-instance v5, Landroid/companion/virtualcamera/IVirtualCameraCallback$Stub$Proxy;

    .line 98
    .line 99
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 100
    .line 101
    .line 102
    iput-object v2, v5, Landroid/companion/virtualcamera/IVirtualCameraCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 103
    .line 104
    move-object v2, v5

    .line 105
    :goto_1
    iput-object v2, p0, Landroid/companion/virtualcamera/VirtualCameraConfiguration;->virtualCameraCallback:Landroid/companion/virtualcamera/IVirtualCameraCallback;

    .line 106
    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 108
    .line 109
    .line 110
    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 111
    sub-int/2addr v2, v0

    .line 112
    if-lt v2, v1, :cond_7

    .line 113
    .line 114
    sub-int/2addr v4, v1

    .line 115
    if-gt v0, v4, :cond_6

    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_6
    new-instance p0, Landroid/os/BadParcelableException;

    .line 119
    .line 120
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    throw p0

    .line 124
    :cond_7
    :try_start_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    iput v2, p0, Landroid/companion/virtualcamera/VirtualCameraConfiguration;->sensorOrientation:I

    .line 129
    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 131
    .line 132
    .line 133
    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 134
    sub-int/2addr v2, v0

    .line 135
    if-lt v2, v1, :cond_9

    .line 136
    .line 137
    sub-int/2addr v4, v1

    .line 138
    if-gt v0, v4, :cond_8

    .line 139
    .line 140
    goto :goto_0

    .line 141
    :cond_8
    new-instance p0, Landroid/os/BadParcelableException;

    .line 142
    .line 143
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    throw p0

    .line 147
    :cond_9
    :try_start_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 148
    .line 149
    .line 150
    move-result v2

    .line 151
    iput v2, p0, Landroid/companion/virtualcamera/VirtualCameraConfiguration;->lensFacing:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 152
    .line 153
    sub-int/2addr v4, v1

    .line 154
    if-gt v0, v4, :cond_a

    .line 155
    .line 156
    goto :goto_0

    .line 157
    :goto_2
    return-object p0

    .line 158
    :cond_a
    new-instance p0, Landroid/os/BadParcelableException;

    .line 159
    .line 160
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    throw p0

    .line 164
    :catchall_0
    move-exception p0

    .line 165
    goto :goto_3

    .line 166
    :cond_b
    :try_start_5
    new-instance p0, Landroid/os/BadParcelableException;

    .line 167
    .line 168
    const-string v2, "Parcelable too small"

    .line 169
    .line 170
    invoke-direct {p0, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 174
    :goto_3
    sub-int/2addr v4, v1

    .line 175
    if-le v0, v4, :cond_c

    .line 176
    .line 177
    new-instance p0, Landroid/os/BadParcelableException;

    .line 178
    .line 179
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    throw p0

    .line 183
    :cond_c
    add-int/2addr v0, v1

    .line 184
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 185
    .line 186
    .line 187
    throw p0
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    new-array p0, p1, [Landroid/companion/virtualcamera/VirtualCameraConfiguration;

    .line 2
    .line 3
    return-object p0
.end method
