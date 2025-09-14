.class public final Landroid/hardware/broadcastradio/Metadata$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance p0, Landroid/hardware/broadcastradio/Metadata;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 9
    move-result v0

    .line 10
    packed-switch v0, :pswitch_data_0

    .line 13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 15
    const-string/jumbo p1, "union: unknown tag: "

    .line 18
    invoke-static {v0, p1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 21
    move-result-object p1

    .line 22
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 25
    throw p0

    .line 26
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 29
    move-result p1

    .line 30
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    move-result-object p1

    .line 34
    iput v0, p0, Landroid/hardware/broadcastradio/Metadata;->_tag:I

    .line 36
    iput-object p1, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    .line 38
    goto/16 :goto_0

    .line 40
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 43
    move-result-object p1

    .line 44
    iput v0, p0, Landroid/hardware/broadcastradio/Metadata;->_tag:I

    .line 46
    iput-object p1, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    .line 48
    goto/16 :goto_0

    .line 50
    :pswitch_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 53
    move-result-object p1

    .line 54
    iput v0, p0, Landroid/hardware/broadcastradio/Metadata;->_tag:I

    .line 56
    iput-object p1, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    .line 58
    goto/16 :goto_0

    .line 60
    :pswitch_3
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    .line 63
    move-result-object p1

    .line 64
    iput v0, p0, Landroid/hardware/broadcastradio/Metadata;->_tag:I

    .line 66
    iput-object p1, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    .line 68
    goto/16 :goto_0

    .line 70
    :pswitch_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 73
    move-result-object p1

    .line 74
    iput v0, p0, Landroid/hardware/broadcastradio/Metadata;->_tag:I

    .line 76
    iput-object p1, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    .line 78
    goto/16 :goto_0

    .line 80
    :pswitch_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 83
    move-result-object p1

    .line 84
    iput v0, p0, Landroid/hardware/broadcastradio/Metadata;->_tag:I

    .line 86
    iput-object p1, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    .line 88
    goto/16 :goto_0

    .line 90
    :pswitch_6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 93
    move-result-object p1

    .line 94
    iput v0, p0, Landroid/hardware/broadcastradio/Metadata;->_tag:I

    .line 96
    iput-object p1, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    .line 98
    goto/16 :goto_0

    .line 100
    :pswitch_7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 103
    move-result-object p1

    .line 104
    iput v0, p0, Landroid/hardware/broadcastradio/Metadata;->_tag:I

    .line 106
    iput-object p1, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    .line 108
    goto/16 :goto_0

    .line 110
    :pswitch_8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 113
    move-result-object p1

    .line 114
    iput v0, p0, Landroid/hardware/broadcastradio/Metadata;->_tag:I

    .line 116
    iput-object p1, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    .line 118
    goto/16 :goto_0

    .line 120
    :pswitch_9
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 123
    move-result-object p1

    .line 124
    iput v0, p0, Landroid/hardware/broadcastradio/Metadata;->_tag:I

    .line 126
    iput-object p1, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    .line 128
    goto/16 :goto_0

    .line 130
    :pswitch_a
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 133
    move-result-object p1

    .line 134
    iput v0, p0, Landroid/hardware/broadcastradio/Metadata;->_tag:I

    .line 136
    iput-object p1, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    .line 138
    goto/16 :goto_0

    .line 140
    :pswitch_b
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 143
    move-result-object p1

    .line 144
    iput v0, p0, Landroid/hardware/broadcastradio/Metadata;->_tag:I

    .line 146
    iput-object p1, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    .line 148
    goto/16 :goto_0

    .line 150
    :pswitch_c
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 153
    move-result-object p1

    .line 154
    iput v0, p0, Landroid/hardware/broadcastradio/Metadata;->_tag:I

    .line 156
    iput-object p1, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    .line 158
    goto/16 :goto_0

    .line 160
    :pswitch_d
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 163
    move-result-object p1

    .line 164
    iput v0, p0, Landroid/hardware/broadcastradio/Metadata;->_tag:I

    .line 166
    iput-object p1, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    .line 168
    goto :goto_0

    .line 169
    :pswitch_e
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 172
    move-result-object p1

    .line 173
    iput v0, p0, Landroid/hardware/broadcastradio/Metadata;->_tag:I

    .line 175
    iput-object p1, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    .line 177
    goto :goto_0

    .line 178
    :pswitch_f
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 181
    move-result p1

    .line 182
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 185
    move-result-object p1

    .line 186
    iput v0, p0, Landroid/hardware/broadcastradio/Metadata;->_tag:I

    .line 188
    iput-object p1, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    .line 190
    goto :goto_0

    .line 191
    :pswitch_10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 194
    move-result p1

    .line 195
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 198
    move-result-object p1

    .line 199
    iput v0, p0, Landroid/hardware/broadcastradio/Metadata;->_tag:I

    .line 201
    iput-object p1, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    .line 203
    goto :goto_0

    .line 204
    :pswitch_11
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 207
    move-result-object p1

    .line 208
    iput v0, p0, Landroid/hardware/broadcastradio/Metadata;->_tag:I

    .line 210
    iput-object p1, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    .line 212
    goto :goto_0

    .line 213
    :pswitch_12
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 216
    move-result-object p1

    .line 217
    iput v0, p0, Landroid/hardware/broadcastradio/Metadata;->_tag:I

    .line 219
    iput-object p1, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    .line 221
    goto :goto_0

    .line 222
    :pswitch_13
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 225
    move-result-object p1

    .line 226
    iput v0, p0, Landroid/hardware/broadcastradio/Metadata;->_tag:I

    .line 228
    iput-object p1, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    .line 230
    goto :goto_0

    .line 231
    :pswitch_14
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 234
    move-result-object p1

    .line 235
    iput v0, p0, Landroid/hardware/broadcastradio/Metadata;->_tag:I

    .line 237
    iput-object p1, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    .line 239
    goto :goto_0

    .line 240
    :pswitch_15
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 243
    move-result p1

    .line 244
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 247
    move-result-object p1

    .line 248
    iput v0, p0, Landroid/hardware/broadcastradio/Metadata;->_tag:I

    .line 250
    iput-object p1, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    .line 252
    goto :goto_0

    .line 253
    :pswitch_16
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 256
    move-result p1

    .line 257
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 260
    move-result-object p1

    .line 261
    iput v0, p0, Landroid/hardware/broadcastradio/Metadata;->_tag:I

    .line 263
    iput-object p1, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    .line 265
    goto :goto_0

    .line 266
    :pswitch_17
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 269
    move-result-object p1

    .line 270
    iput v0, p0, Landroid/hardware/broadcastradio/Metadata;->_tag:I

    .line 272
    iput-object p1, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    .line 274
    :goto_0
    return-object p0

    .line 275
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    new-array p0, p1, [Landroid/hardware/broadcastradio/Metadata;

    .line 3
    return-object p0
.end method
