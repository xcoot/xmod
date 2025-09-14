.class public final Landroid/hardware/usb/AltModeData$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/hardware/usb/AltModeData$1;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 5

    .line 1
    iget p0, p0, Landroid/hardware/usb/AltModeData$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance p0, Landroid/hardware/usb/AltModeData$DisplayPortAltModeData;

    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput v0, p0, Landroid/hardware/usb/AltModeData$DisplayPortAltModeData;->partnerSinkStatus:I

    .line 13
    .line 14
    iput v0, p0, Landroid/hardware/usb/AltModeData$DisplayPortAltModeData;->cableStatus:I

    .line 15
    .line 16
    iput v0, p0, Landroid/hardware/usb/AltModeData$DisplayPortAltModeData;->pinAssignment:I

    .line 17
    .line 18
    iput-boolean v0, p0, Landroid/hardware/usb/AltModeData$DisplayPortAltModeData;->hpd:Z

    .line 19
    .line 20
    iput v0, p0, Landroid/hardware/usb/AltModeData$DisplayPortAltModeData;->linkTrainingStatus:I

    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    const/4 v2, 0x4

    .line 31
    const-string v3, "Overflow in the size of parcelable"

    .line 32
    .line 33
    const v4, 0x7fffffff

    .line 34
    .line 35
    .line 36
    if-lt v1, v2, :cond_b

    .line 37
    .line 38
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 39
    .line 40
    .line 41
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    sub-int/2addr v2, v0

    .line 43
    if-lt v2, v1, :cond_1

    .line 44
    .line 45
    sub-int/2addr v4, v1

    .line 46
    if-gt v0, v4, :cond_0

    .line 47
    .line 48
    :goto_0
    add-int/2addr v0, v1

    .line 49
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 50
    .line 51
    .line 52
    goto/16 :goto_1

    .line 53
    .line 54
    :cond_0
    new-instance p0, Landroid/os/BadParcelableException;

    .line 55
    .line 56
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw p0

    .line 60
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    iput v2, p0, Landroid/hardware/usb/AltModeData$DisplayPortAltModeData;->partnerSinkStatus:I

    .line 65
    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 67
    .line 68
    .line 69
    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    sub-int/2addr v2, v0

    .line 71
    if-lt v2, v1, :cond_3

    .line 72
    .line 73
    sub-int/2addr v4, v1

    .line 74
    if-gt v0, v4, :cond_2

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_2
    new-instance p0, Landroid/os/BadParcelableException;

    .line 78
    .line 79
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw p0

    .line 83
    :cond_3
    :try_start_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    iput v2, p0, Landroid/hardware/usb/AltModeData$DisplayPortAltModeData;->cableStatus:I

    .line 88
    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 90
    .line 91
    .line 92
    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 93
    sub-int/2addr v2, v0

    .line 94
    if-lt v2, v1, :cond_5

    .line 95
    .line 96
    sub-int/2addr v4, v1

    .line 97
    if-gt v0, v4, :cond_4

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_4
    new-instance p0, Landroid/os/BadParcelableException;

    .line 101
    .line 102
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    throw p0

    .line 106
    :cond_5
    :try_start_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    iput v2, p0, Landroid/hardware/usb/AltModeData$DisplayPortAltModeData;->pinAssignment:I

    .line 111
    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 113
    .line 114
    .line 115
    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 116
    sub-int/2addr v2, v0

    .line 117
    if-lt v2, v1, :cond_7

    .line 118
    .line 119
    sub-int/2addr v4, v1

    .line 120
    if-gt v0, v4, :cond_6

    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_6
    new-instance p0, Landroid/os/BadParcelableException;

    .line 124
    .line 125
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    throw p0

    .line 129
    :cond_7
    :try_start_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    .line 130
    .line 131
    .line 132
    move-result v2

    .line 133
    iput-boolean v2, p0, Landroid/hardware/usb/AltModeData$DisplayPortAltModeData;->hpd:Z

    .line 134
    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 136
    .line 137
    .line 138
    move-result v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 139
    sub-int/2addr v2, v0

    .line 140
    if-lt v2, v1, :cond_9

    .line 141
    .line 142
    sub-int/2addr v4, v1

    .line 143
    if-gt v0, v4, :cond_8

    .line 144
    .line 145
    goto :goto_0

    .line 146
    :cond_8
    new-instance p0, Landroid/os/BadParcelableException;

    .line 147
    .line 148
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    throw p0

    .line 152
    :cond_9
    :try_start_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 153
    .line 154
    .line 155
    move-result v2

    .line 156
    iput v2, p0, Landroid/hardware/usb/AltModeData$DisplayPortAltModeData;->linkTrainingStatus:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 157
    .line 158
    sub-int/2addr v4, v1

    .line 159
    if-gt v0, v4, :cond_a

    .line 160
    .line 161
    goto :goto_0

    .line 162
    :goto_1
    return-object p0

    .line 163
    :cond_a
    new-instance p0, Landroid/os/BadParcelableException;

    .line 164
    .line 165
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    throw p0

    .line 169
    :catchall_0
    move-exception p0

    .line 170
    goto :goto_2

    .line 171
    :cond_b
    :try_start_6
    new-instance p0, Landroid/os/BadParcelableException;

    .line 172
    .line 173
    const-string v2, "Parcelable too small"

    .line 174
    .line 175
    invoke-direct {p0, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 179
    :goto_2
    sub-int/2addr v4, v1

    .line 180
    if-le v0, v4, :cond_c

    .line 181
    .line 182
    new-instance p0, Landroid/os/BadParcelableException;

    .line 183
    .line 184
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    throw p0

    .line 188
    :cond_c
    add-int/2addr v0, v1

    .line 189
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 190
    .line 191
    .line 192
    throw p0

    .line 193
    :pswitch_0
    new-instance p0, Landroid/hardware/usb/AltModeData;

    .line 194
    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    .line 197
    .line 198
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 199
    .line 200
    .line 201
    move-result v0

    .line 202
    if-nez v0, :cond_d

    .line 203
    .line 204
    sget-object v1, Landroid/hardware/usb/AltModeData$DisplayPortAltModeData;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 205
    .line 206
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    check-cast p1, Landroid/hardware/usb/AltModeData$DisplayPortAltModeData;

    .line 211
    .line 212
    iput v0, p0, Landroid/hardware/usb/AltModeData;->_tag:I

    .line 213
    .line 214
    iput-object p1, p0, Landroid/hardware/usb/AltModeData;->_value:Ljava/lang/Object;

    .line 215
    .line 216
    return-object p0

    .line 217
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 218
    .line 219
    const-string/jumbo p1, "union: unknown tag: "

    .line 220
    .line 221
    .line 222
    invoke-static {v0, p1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object p1

    .line 226
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    throw p0

    .line 230
    nop

    .line 231
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    iget p0, p0, Landroid/hardware/usb/AltModeData$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-array p0, p1, [Landroid/hardware/usb/AltModeData$DisplayPortAltModeData;

    .line 7
    .line 8
    return-object p0

    .line 9
    :pswitch_0
    new-array p0, p1, [Landroid/hardware/usb/AltModeData;

    .line 10
    .line 11
    return-object p0

    .line 12
    nop

    .line 13
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
