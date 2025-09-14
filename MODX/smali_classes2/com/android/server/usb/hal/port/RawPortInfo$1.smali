.class public final Lcom/android/server/usb/hal/port/RawPortInfo$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 25

    .line 1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v1

    .line 5
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readByte()B

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/4 v5, 0x1

    .line 22
    const/4 v6, 0x0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    move v7, v5

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move v7, v6

    .line 28
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 29
    .line 30
    .line 31
    move-result v8

    .line 32
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readByte()B

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    move v9, v5

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    move v9, v6

    .line 41
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 42
    .line 43
    .line 44
    move-result v10

    .line 45
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readByte()B

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_2

    .line 50
    .line 51
    move v11, v5

    .line 52
    goto :goto_2

    .line 53
    :cond_2
    move v11, v6

    .line 54
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    .line 55
    .line 56
    .line 57
    move-result v12

    .line 58
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 59
    .line 60
    .line 61
    move-result v13

    .line 62
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    .line 63
    .line 64
    .line 65
    move-result v14

    .line 66
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 67
    .line 68
    .line 69
    move-result v15

    .line 70
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 71
    .line 72
    .line 73
    move-result v16

    .line 74
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    .line 75
    .line 76
    .line 77
    move-result v17

    .line 78
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 79
    .line 80
    .line 81
    move-result v18

    .line 82
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    .line 83
    .line 84
    .line 85
    move-result v19

    .line 86
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createIntArray()[I

    .line 87
    .line 88
    .line 89
    move-result-object v20

    .line 90
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 91
    .line 92
    .line 93
    move-result v21

    .line 94
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 95
    .line 96
    .line 97
    move-result v22

    .line 98
    and-int/lit8 v0, v22, 0x1

    .line 99
    .line 100
    if-eqz v0, :cond_3

    .line 101
    .line 102
    sget-object v0, Landroid/hardware/usb/DisplayPortAltModeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 103
    .line 104
    move-object/from16 v5, p1

    .line 105
    .line 106
    invoke-interface {v0, v5}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    check-cast v0, Landroid/hardware/usb/DisplayPortAltModeInfo;

    .line 111
    .line 112
    :goto_3
    move-object/from16 v23, v0

    .line 113
    .line 114
    goto :goto_4

    .line 115
    :cond_3
    const/4 v0, 0x0

    .line 116
    goto :goto_3

    .line 117
    :goto_4
    new-instance v24, Lcom/android/server/usb/hal/port/RawPortInfo;

    .line 118
    .line 119
    move-object/from16 v0, v24

    .line 120
    .line 121
    move v5, v7

    .line 122
    move v6, v8

    .line 123
    move v7, v9

    .line 124
    move v8, v10

    .line 125
    move v9, v11

    .line 126
    move v10, v12

    .line 127
    move v11, v13

    .line 128
    move v12, v14

    .line 129
    move v13, v15

    .line 130
    move/from16 v14, v16

    .line 131
    .line 132
    move/from16 v15, v17

    .line 133
    .line 134
    move/from16 v16, v18

    .line 135
    .line 136
    move/from16 v17, v19

    .line 137
    .line 138
    move-object/from16 v18, v20

    .line 139
    .line 140
    move/from16 v19, v21

    .line 141
    .line 142
    move/from16 v20, v22

    .line 143
    .line 144
    move-object/from16 v21, v23

    .line 145
    .line 146
    invoke-direct/range {v0 .. v21}, Lcom/android/server/usb/hal/port/RawPortInfo;-><init>(Ljava/lang/String;IIIZIZIZZIZIIZIZ[IIILandroid/hardware/usb/DisplayPortAltModeInfo;)V

    .line 147
    .line 148
    .line 149
    return-object v24
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    new-array p0, p1, [Lcom/android/server/usb/hal/port/RawPortInfo;

    .line 2
    .line 3
    return-object p0
.end method
