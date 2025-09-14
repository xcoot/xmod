.class public final Landroid/hardware/broadcastradio/Metadata;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public _tag:I

.field public _value:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/hardware/broadcastradio/Metadata$1;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroid/hardware/broadcastradio/Metadata;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method public static _tagString(I)Ljava/lang/String;
    .locals 2

    .line 1
    packed-switch p0, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 5
    .line 6
    const-string/jumbo v1, "unknown field: "

    .line 7
    .line 8
    .line 9
    invoke-static {p0, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    throw v0

    .line 17
    :pswitch_0
    const-string/jumbo p0, "hdSubChannelsAvailable"

    .line 18
    .line 19
    .line 20
    return-object p0

    .line 21
    :pswitch_1
    const-string/jumbo p0, "hdStationNameLong"

    .line 22
    .line 23
    .line 24
    return-object p0

    .line 25
    :pswitch_2
    const-string/jumbo p0, "hdStationNameShort"

    .line 26
    .line 27
    .line 28
    return-object p0

    .line 29
    :pswitch_3
    const-string/jumbo p0, "ufids"

    .line 30
    .line 31
    .line 32
    return-object p0

    .line 33
    :pswitch_4
    const-string/jumbo p0, "commercial"

    .line 34
    .line 35
    .line 36
    return-object p0

    .line 37
    :pswitch_5
    const-string/jumbo p0, "commentActualText"

    .line 38
    .line 39
    .line 40
    return-object p0

    .line 41
    :pswitch_6
    const-string/jumbo p0, "commentShortDescription"

    .line 42
    .line 43
    .line 44
    return-object p0

    .line 45
    :pswitch_7
    const-string/jumbo p0, "genre"

    .line 46
    .line 47
    .line 48
    return-object p0

    .line 49
    :pswitch_8
    const-string/jumbo p0, "dabComponentNameShort"

    .line 50
    .line 51
    .line 52
    return-object p0

    .line 53
    :pswitch_9
    const-string/jumbo p0, "dabComponentName"

    .line 54
    .line 55
    .line 56
    return-object p0

    .line 57
    :pswitch_a
    const-string/jumbo p0, "dabServiceNameShort"

    .line 58
    .line 59
    .line 60
    return-object p0

    .line 61
    :pswitch_b
    const-string/jumbo p0, "dabServiceName"

    .line 62
    .line 63
    .line 64
    return-object p0

    .line 65
    :pswitch_c
    const-string/jumbo p0, "dabEnsembleNameShort"

    .line 66
    .line 67
    .line 68
    return-object p0

    .line 69
    :pswitch_d
    const-string/jumbo p0, "dabEnsembleName"

    .line 70
    .line 71
    .line 72
    return-object p0

    .line 73
    :pswitch_e
    const-string/jumbo p0, "programName"

    .line 74
    .line 75
    .line 76
    return-object p0

    .line 77
    :pswitch_f
    const-string p0, "albumArt"

    .line 78
    .line 79
    return-object p0

    .line 80
    :pswitch_10
    const-string/jumbo p0, "stationIcon"

    .line 81
    .line 82
    .line 83
    return-object p0

    .line 84
    :pswitch_11
    const-string/jumbo p0, "songAlbum"

    .line 85
    .line 86
    .line 87
    return-object p0

    .line 88
    :pswitch_12
    const-string/jumbo p0, "songArtist"

    .line 89
    .line 90
    .line 91
    return-object p0

    .line 92
    :pswitch_13
    const-string/jumbo p0, "songTitle"

    .line 93
    .line 94
    .line 95
    return-object p0

    .line 96
    :pswitch_14
    const-string/jumbo p0, "rdsRt"

    .line 97
    .line 98
    .line 99
    return-object p0

    .line 100
    :pswitch_15
    const-string/jumbo p0, "rbdsPty"

    .line 101
    .line 102
    .line 103
    return-object p0

    .line 104
    :pswitch_16
    const-string/jumbo p0, "rdsPty"

    .line 105
    .line 106
    .line 107
    return-object p0

    .line 108
    :pswitch_17
    const-string/jumbo p0, "rdsPs"

    .line 109
    .line 110
    .line 111
    return-object p0

    .line 112
    nop

    .line 113
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


# virtual methods
.method public final _assertTag(I)V
    .locals 3

    .line 1
    iget v0, p0, Landroid/hardware/broadcastradio/Metadata;->_tag:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v2, "bad access: "

    .line 11
    .line 12
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-static {p1}, Landroid/hardware/broadcastradio/Metadata;->_tagString(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string p1, ", "

    .line 23
    .line 24
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    iget p0, p0, Landroid/hardware/broadcastradio/Metadata;->_tag:I

    .line 28
    .line 29
    invoke-static {p0}, Landroid/hardware/broadcastradio/Metadata;->_tagString(I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string p0, " is available."

    .line 37
    .line 38
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw v0
.end method

.method public final describeContents()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-nez p1, :cond_1

    .line 7
    .line 8
    return v1

    .line 9
    :cond_1
    instance-of v2, p1, Landroid/hardware/broadcastradio/Metadata;

    .line 10
    .line 11
    if-nez v2, :cond_2

    .line 12
    .line 13
    return v1

    .line 14
    :cond_2
    check-cast p1, Landroid/hardware/broadcastradio/Metadata;

    .line 15
    .line 16
    iget v2, p0, Landroid/hardware/broadcastradio/Metadata;->_tag:I

    .line 17
    .line 18
    iget v3, p1, Landroid/hardware/broadcastradio/Metadata;->_tag:I

    .line 19
    .line 20
    if-eq v2, v3, :cond_3

    .line 21
    .line 22
    return v1

    .line 23
    :cond_3
    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    .line 24
    .line 25
    iget-object p1, p1, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {p0, p1}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    if-nez p0, :cond_4

    .line 32
    .line 33
    return v1

    .line 34
    :cond_4
    return v0
.end method

.method public final getStability()I
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/hardware/broadcastradio/Metadata;->_tag:I

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    .line 8
    .line 9
    filled-new-array {v0, p0}, [Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-interface {p0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-static {p0}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Landroid/hardware/broadcastradio/Metadata;->_tag:I

    .line 2
    .line 3
    const-string v1, ")"

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 9
    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string/jumbo v2, "unknown field: "

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget p0, p0, Landroid/hardware/broadcastradio/Metadata;->_tag:I

    .line 19
    .line 20
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw v0

    .line 31
    :pswitch_0
    const-string v0, "Metadata.hdSubChannelsAvailable("

    .line 32
    .line 33
    const/16 v2, 0x17

    .line 34
    .line 35
    invoke-static {v0, p0, v2}, Landroid/hardware/broadcastradio/Metadata$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/hardware/broadcastradio/Metadata;I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast p0, Ljava/lang/Integer;

    .line 42
    .line 43
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    return-object p0

    .line 58
    :pswitch_1
    const-string v0, "Metadata.hdStationNameLong("

    .line 59
    .line 60
    const/16 v2, 0x16

    .line 61
    .line 62
    invoke-static {v0, p0, v2}, Landroid/hardware/broadcastradio/Metadata$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/hardware/broadcastradio/Metadata;I)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast p0, Ljava/lang/String;

    .line 69
    .line 70
    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    return-object p0

    .line 85
    :pswitch_2
    const-string v0, "Metadata.hdStationNameShort("

    .line 86
    .line 87
    const/16 v2, 0x15

    .line 88
    .line 89
    invoke-static {v0, p0, v2}, Landroid/hardware/broadcastradio/Metadata$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/hardware/broadcastradio/Metadata;I)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    .line 94
    .line 95
    check-cast p0, Ljava/lang/String;

    .line 96
    .line 97
    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    return-object p0

    .line 112
    :pswitch_3
    const-string v0, "Metadata.ufids("

    .line 113
    .line 114
    const/16 v2, 0x14

    .line 115
    .line 116
    invoke-static {v0, p0, v2}, Landroid/hardware/broadcastradio/Metadata$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/hardware/broadcastradio/Metadata;I)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    .line 121
    .line 122
    check-cast p0, [Ljava/lang/String;

    .line 123
    .line 124
    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    invoke-static {v0, p0, v1}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p0

    .line 132
    return-object p0

    .line 133
    :pswitch_4
    const-string v0, "Metadata.commercial("

    .line 134
    .line 135
    const/16 v2, 0x13

    .line 136
    .line 137
    invoke-static {v0, p0, v2}, Landroid/hardware/broadcastradio/Metadata$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/hardware/broadcastradio/Metadata;I)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    .line 142
    .line 143
    check-cast p0, Ljava/lang/String;

    .line 144
    .line 145
    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object p0

    .line 149
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object p0

    .line 159
    return-object p0

    .line 160
    :pswitch_5
    const-string v0, "Metadata.commentActualText("

    .line 161
    .line 162
    const/16 v2, 0x12

    .line 163
    .line 164
    invoke-static {v0, p0, v2}, Landroid/hardware/broadcastradio/Metadata$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/hardware/broadcastradio/Metadata;I)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    .line 169
    .line 170
    check-cast p0, Ljava/lang/String;

    .line 171
    .line 172
    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object p0

    .line 176
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object p0

    .line 186
    return-object p0

    .line 187
    :pswitch_6
    const-string v0, "Metadata.commentShortDescription("

    .line 188
    .line 189
    const/16 v2, 0x11

    .line 190
    .line 191
    invoke-static {v0, p0, v2}, Landroid/hardware/broadcastradio/Metadata$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/hardware/broadcastradio/Metadata;I)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    .line 196
    .line 197
    check-cast p0, Ljava/lang/String;

    .line 198
    .line 199
    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object p0

    .line 203
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object p0

    .line 213
    return-object p0

    .line 214
    :pswitch_7
    const-string v0, "Metadata.genre("

    .line 215
    .line 216
    const/16 v2, 0x10

    .line 217
    .line 218
    invoke-static {v0, p0, v2}, Landroid/hardware/broadcastradio/Metadata$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/hardware/broadcastradio/Metadata;I)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    .line 223
    .line 224
    check-cast p0, Ljava/lang/String;

    .line 225
    .line 226
    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object p0

    .line 230
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object p0

    .line 240
    return-object p0

    .line 241
    :pswitch_8
    const-string v0, "Metadata.dabComponentNameShort("

    .line 242
    .line 243
    const/16 v2, 0xf

    .line 244
    .line 245
    invoke-static {v0, p0, v2}, Landroid/hardware/broadcastradio/Metadata$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/hardware/broadcastradio/Metadata;I)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    .line 250
    .line 251
    check-cast p0, Ljava/lang/String;

    .line 252
    .line 253
    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object p0

    .line 257
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object p0

    .line 267
    return-object p0

    .line 268
    :pswitch_9
    const-string v0, "Metadata.dabComponentName("

    .line 269
    .line 270
    const/16 v2, 0xe

    .line 271
    .line 272
    invoke-static {v0, p0, v2}, Landroid/hardware/broadcastradio/Metadata$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/hardware/broadcastradio/Metadata;I)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    move-result-object v0

    .line 276
    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    .line 277
    .line 278
    check-cast p0, Ljava/lang/String;

    .line 279
    .line 280
    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object p0

    .line 284
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object p0

    .line 294
    return-object p0

    .line 295
    :pswitch_a
    const-string v0, "Metadata.dabServiceNameShort("

    .line 296
    .line 297
    const/16 v2, 0xd

    .line 298
    .line 299
    invoke-static {v0, p0, v2}, Landroid/hardware/broadcastradio/Metadata$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/hardware/broadcastradio/Metadata;I)Ljava/lang/StringBuilder;

    .line 300
    .line 301
    .line 302
    move-result-object v0

    .line 303
    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    .line 304
    .line 305
    check-cast p0, Ljava/lang/String;

    .line 306
    .line 307
    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object p0

    .line 311
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    .line 313
    .line 314
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    .line 316
    .line 317
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object p0

    .line 321
    return-object p0

    .line 322
    :pswitch_b
    const-string v0, "Metadata.dabServiceName("

    .line 323
    .line 324
    const/16 v2, 0xc

    .line 325
    .line 326
    invoke-static {v0, p0, v2}, Landroid/hardware/broadcastradio/Metadata$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/hardware/broadcastradio/Metadata;I)Ljava/lang/StringBuilder;

    .line 327
    .line 328
    .line 329
    move-result-object v0

    .line 330
    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    .line 331
    .line 332
    check-cast p0, Ljava/lang/String;

    .line 333
    .line 334
    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object p0

    .line 338
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    .line 340
    .line 341
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    .line 343
    .line 344
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object p0

    .line 348
    return-object p0

    .line 349
    :pswitch_c
    const-string v0, "Metadata.dabEnsembleNameShort("

    .line 350
    .line 351
    const/16 v2, 0xb

    .line 352
    .line 353
    invoke-static {v0, p0, v2}, Landroid/hardware/broadcastradio/Metadata$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/hardware/broadcastradio/Metadata;I)Ljava/lang/StringBuilder;

    .line 354
    .line 355
    .line 356
    move-result-object v0

    .line 357
    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    .line 358
    .line 359
    check-cast p0, Ljava/lang/String;

    .line 360
    .line 361
    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object p0

    .line 365
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    .line 367
    .line 368
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    .line 370
    .line 371
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object p0

    .line 375
    return-object p0

    .line 376
    :pswitch_d
    const-string v0, "Metadata.dabEnsembleName("

    .line 377
    .line 378
    const/16 v2, 0xa

    .line 379
    .line 380
    invoke-static {v0, p0, v2}, Landroid/hardware/broadcastradio/Metadata$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/hardware/broadcastradio/Metadata;I)Ljava/lang/StringBuilder;

    .line 381
    .line 382
    .line 383
    move-result-object v0

    .line 384
    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    .line 385
    .line 386
    check-cast p0, Ljava/lang/String;

    .line 387
    .line 388
    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 389
    .line 390
    .line 391
    move-result-object p0

    .line 392
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    .line 394
    .line 395
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    .line 397
    .line 398
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 399
    .line 400
    .line 401
    move-result-object p0

    .line 402
    return-object p0

    .line 403
    :pswitch_e
    const-string v0, "Metadata.programName("

    .line 404
    .line 405
    const/16 v2, 0x9

    .line 406
    .line 407
    invoke-static {v0, p0, v2}, Landroid/hardware/broadcastradio/Metadata$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/hardware/broadcastradio/Metadata;I)Ljava/lang/StringBuilder;

    .line 408
    .line 409
    .line 410
    move-result-object v0

    .line 411
    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    .line 412
    .line 413
    check-cast p0, Ljava/lang/String;

    .line 414
    .line 415
    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 416
    .line 417
    .line 418
    move-result-object p0

    .line 419
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    .line 421
    .line 422
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    .line 424
    .line 425
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 426
    .line 427
    .line 428
    move-result-object p0

    .line 429
    return-object p0

    .line 430
    :pswitch_f
    const-string v0, "Metadata.albumArt("

    .line 431
    .line 432
    const/16 v2, 0x8

    .line 433
    .line 434
    invoke-static {v0, p0, v2}, Landroid/hardware/broadcastradio/Metadata$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/hardware/broadcastradio/Metadata;I)Ljava/lang/StringBuilder;

    .line 435
    .line 436
    .line 437
    move-result-object v0

    .line 438
    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    .line 439
    .line 440
    check-cast p0, Ljava/lang/Integer;

    .line 441
    .line 442
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 443
    .line 444
    .line 445
    move-result p0

    .line 446
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 447
    .line 448
    .line 449
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    .line 451
    .line 452
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 453
    .line 454
    .line 455
    move-result-object p0

    .line 456
    return-object p0

    .line 457
    :pswitch_10
    const-string v0, "Metadata.stationIcon("

    .line 458
    .line 459
    const/4 v2, 0x7

    .line 460
    invoke-static {v0, p0, v2}, Landroid/hardware/broadcastradio/Metadata$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/hardware/broadcastradio/Metadata;I)Ljava/lang/StringBuilder;

    .line 461
    .line 462
    .line 463
    move-result-object v0

    .line 464
    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    .line 465
    .line 466
    check-cast p0, Ljava/lang/Integer;

    .line 467
    .line 468
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 469
    .line 470
    .line 471
    move-result p0

    .line 472
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 473
    .line 474
    .line 475
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    .line 477
    .line 478
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 479
    .line 480
    .line 481
    move-result-object p0

    .line 482
    return-object p0

    .line 483
    :pswitch_11
    const-string v0, "Metadata.songAlbum("

    .line 484
    .line 485
    const/4 v2, 0x6

    .line 486
    invoke-static {v0, p0, v2}, Landroid/hardware/broadcastradio/Metadata$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/hardware/broadcastradio/Metadata;I)Ljava/lang/StringBuilder;

    .line 487
    .line 488
    .line 489
    move-result-object v0

    .line 490
    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    .line 491
    .line 492
    check-cast p0, Ljava/lang/String;

    .line 493
    .line 494
    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 495
    .line 496
    .line 497
    move-result-object p0

    .line 498
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    .line 500
    .line 501
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    .line 503
    .line 504
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 505
    .line 506
    .line 507
    move-result-object p0

    .line 508
    return-object p0

    .line 509
    :pswitch_12
    const-string v0, "Metadata.songArtist("

    .line 510
    .line 511
    const/4 v2, 0x5

    .line 512
    invoke-static {v0, p0, v2}, Landroid/hardware/broadcastradio/Metadata$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/hardware/broadcastradio/Metadata;I)Ljava/lang/StringBuilder;

    .line 513
    .line 514
    .line 515
    move-result-object v0

    .line 516
    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    .line 517
    .line 518
    check-cast p0, Ljava/lang/String;

    .line 519
    .line 520
    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 521
    .line 522
    .line 523
    move-result-object p0

    .line 524
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    .line 526
    .line 527
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    .line 529
    .line 530
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 531
    .line 532
    .line 533
    move-result-object p0

    .line 534
    return-object p0

    .line 535
    :pswitch_13
    const-string v0, "Metadata.songTitle("

    .line 536
    .line 537
    const/4 v2, 0x4

    .line 538
    invoke-static {v0, p0, v2}, Landroid/hardware/broadcastradio/Metadata$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/hardware/broadcastradio/Metadata;I)Ljava/lang/StringBuilder;

    .line 539
    .line 540
    .line 541
    move-result-object v0

    .line 542
    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    .line 543
    .line 544
    check-cast p0, Ljava/lang/String;

    .line 545
    .line 546
    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 547
    .line 548
    .line 549
    move-result-object p0

    .line 550
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    .line 552
    .line 553
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    .line 555
    .line 556
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 557
    .line 558
    .line 559
    move-result-object p0

    .line 560
    return-object p0

    .line 561
    :pswitch_14
    const-string v0, "Metadata.rdsRt("

    .line 562
    .line 563
    const/4 v2, 0x3

    .line 564
    invoke-static {v0, p0, v2}, Landroid/hardware/broadcastradio/Metadata$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/hardware/broadcastradio/Metadata;I)Ljava/lang/StringBuilder;

    .line 565
    .line 566
    .line 567
    move-result-object v0

    .line 568
    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    .line 569
    .line 570
    check-cast p0, Ljava/lang/String;

    .line 571
    .line 572
    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 573
    .line 574
    .line 575
    move-result-object p0

    .line 576
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 577
    .line 578
    .line 579
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 580
    .line 581
    .line 582
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 583
    .line 584
    .line 585
    move-result-object p0

    .line 586
    return-object p0

    .line 587
    :pswitch_15
    const-string v0, "Metadata.rbdsPty("

    .line 588
    .line 589
    const/4 v2, 0x2

    .line 590
    invoke-static {v0, p0, v2}, Landroid/hardware/broadcastradio/Metadata$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/hardware/broadcastradio/Metadata;I)Ljava/lang/StringBuilder;

    .line 591
    .line 592
    .line 593
    move-result-object v0

    .line 594
    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    .line 595
    .line 596
    check-cast p0, Ljava/lang/Integer;

    .line 597
    .line 598
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 599
    .line 600
    .line 601
    move-result p0

    .line 602
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 603
    .line 604
    .line 605
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 606
    .line 607
    .line 608
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 609
    .line 610
    .line 611
    move-result-object p0

    .line 612
    return-object p0

    .line 613
    :pswitch_16
    const-string v0, "Metadata.rdsPty("

    .line 614
    .line 615
    const/4 v2, 0x1

    .line 616
    invoke-static {v0, p0, v2}, Landroid/hardware/broadcastradio/Metadata$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/hardware/broadcastradio/Metadata;I)Ljava/lang/StringBuilder;

    .line 617
    .line 618
    .line 619
    move-result-object v0

    .line 620
    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    .line 621
    .line 622
    check-cast p0, Ljava/lang/Integer;

    .line 623
    .line 624
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 625
    .line 626
    .line 627
    move-result p0

    .line 628
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 629
    .line 630
    .line 631
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 632
    .line 633
    .line 634
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 635
    .line 636
    .line 637
    move-result-object p0

    .line 638
    return-object p0

    .line 639
    :pswitch_17
    const-string v0, "Metadata.rdsPs("

    .line 640
    .line 641
    const/4 v2, 0x0

    .line 642
    invoke-static {v0, p0, v2}, Landroid/hardware/broadcastradio/Metadata$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/hardware/broadcastradio/Metadata;I)Ljava/lang/StringBuilder;

    .line 643
    .line 644
    .line 645
    move-result-object v0

    .line 646
    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    .line 647
    .line 648
    check-cast p0, Ljava/lang/String;

    .line 649
    .line 650
    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 651
    .line 652
    .line 653
    move-result-object p0

    .line 654
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 655
    .line 656
    .line 657
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 658
    .line 659
    .line 660
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 661
    .line 662
    .line 663
    move-result-object p0

    .line 664
    return-object p0

    .line 665
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

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget p2, p0, Landroid/hardware/broadcastradio/Metadata;->_tag:I

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    .line 5
    .line 6
    iget p2, p0, Landroid/hardware/broadcastradio/Metadata;->_tag:I

    .line 7
    .line 8
    packed-switch p2, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    goto/16 :goto_0

    .line 12
    .line 13
    :pswitch_0
    const/16 p2, 0x17

    .line 14
    .line 15
    invoke-virtual {p0, p2}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast p0, Ljava/lang/Integer;

    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 27
    .line 28
    .line 29
    goto/16 :goto_0

    .line 30
    .line 31
    :pswitch_1
    const/16 p2, 0x16

    .line 32
    .line 33
    invoke-virtual {p0, p2}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    .line 34
    .line 35
    .line 36
    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast p0, Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    goto/16 :goto_0

    .line 44
    .line 45
    :pswitch_2
    const/16 p2, 0x15

    .line 46
    .line 47
    invoke-virtual {p0, p2}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    .line 48
    .line 49
    .line 50
    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast p0, Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    goto/16 :goto_0

    .line 58
    .line 59
    :pswitch_3
    const/16 p2, 0x14

    .line 60
    .line 61
    invoke-virtual {p0, p2}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    .line 62
    .line 63
    .line 64
    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast p0, [Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    goto/16 :goto_0

    .line 72
    .line 73
    :pswitch_4
    const/16 p2, 0x13

    .line 74
    .line 75
    invoke-virtual {p0, p2}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    .line 76
    .line 77
    .line 78
    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    .line 79
    .line 80
    check-cast p0, Ljava/lang/String;

    .line 81
    .line 82
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    goto/16 :goto_0

    .line 86
    .line 87
    :pswitch_5
    const/16 p2, 0x12

    .line 88
    .line 89
    invoke-virtual {p0, p2}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    .line 90
    .line 91
    .line 92
    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast p0, Ljava/lang/String;

    .line 95
    .line 96
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    goto/16 :goto_0

    .line 100
    .line 101
    :pswitch_6
    const/16 p2, 0x11

    .line 102
    .line 103
    invoke-virtual {p0, p2}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    .line 104
    .line 105
    .line 106
    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    .line 107
    .line 108
    check-cast p0, Ljava/lang/String;

    .line 109
    .line 110
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    goto/16 :goto_0

    .line 114
    .line 115
    :pswitch_7
    const/16 p2, 0x10

    .line 116
    .line 117
    invoke-virtual {p0, p2}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    .line 118
    .line 119
    .line 120
    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    .line 121
    .line 122
    check-cast p0, Ljava/lang/String;

    .line 123
    .line 124
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    goto/16 :goto_0

    .line 128
    .line 129
    :pswitch_8
    const/16 p2, 0xf

    .line 130
    .line 131
    invoke-virtual {p0, p2}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    .line 132
    .line 133
    .line 134
    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    .line 135
    .line 136
    check-cast p0, Ljava/lang/String;

    .line 137
    .line 138
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    goto/16 :goto_0

    .line 142
    .line 143
    :pswitch_9
    const/16 p2, 0xe

    .line 144
    .line 145
    invoke-virtual {p0, p2}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    .line 146
    .line 147
    .line 148
    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    .line 149
    .line 150
    check-cast p0, Ljava/lang/String;

    .line 151
    .line 152
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    goto/16 :goto_0

    .line 156
    .line 157
    :pswitch_a
    const/16 p2, 0xd

    .line 158
    .line 159
    invoke-virtual {p0, p2}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    .line 160
    .line 161
    .line 162
    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    .line 163
    .line 164
    check-cast p0, Ljava/lang/String;

    .line 165
    .line 166
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    goto/16 :goto_0

    .line 170
    .line 171
    :pswitch_b
    const/16 p2, 0xc

    .line 172
    .line 173
    invoke-virtual {p0, p2}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    .line 174
    .line 175
    .line 176
    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    .line 177
    .line 178
    check-cast p0, Ljava/lang/String;

    .line 179
    .line 180
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    goto/16 :goto_0

    .line 184
    .line 185
    :pswitch_c
    const/16 p2, 0xb

    .line 186
    .line 187
    invoke-virtual {p0, p2}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    .line 188
    .line 189
    .line 190
    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    .line 191
    .line 192
    check-cast p0, Ljava/lang/String;

    .line 193
    .line 194
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    goto/16 :goto_0

    .line 198
    .line 199
    :pswitch_d
    const/16 p2, 0xa

    .line 200
    .line 201
    invoke-virtual {p0, p2}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    .line 202
    .line 203
    .line 204
    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    .line 205
    .line 206
    check-cast p0, Ljava/lang/String;

    .line 207
    .line 208
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    goto/16 :goto_0

    .line 212
    .line 213
    :pswitch_e
    const/16 p2, 0x9

    .line 214
    .line 215
    invoke-virtual {p0, p2}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    .line 216
    .line 217
    .line 218
    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    .line 219
    .line 220
    check-cast p0, Ljava/lang/String;

    .line 221
    .line 222
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    goto/16 :goto_0

    .line 226
    .line 227
    :pswitch_f
    const/16 p2, 0x8

    .line 228
    .line 229
    invoke-virtual {p0, p2}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    .line 230
    .line 231
    .line 232
    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    .line 233
    .line 234
    check-cast p0, Ljava/lang/Integer;

    .line 235
    .line 236
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 237
    .line 238
    .line 239
    move-result p0

    .line 240
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 241
    .line 242
    .line 243
    goto :goto_0

    .line 244
    :pswitch_10
    const/4 p2, 0x7

    .line 245
    invoke-virtual {p0, p2}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    .line 246
    .line 247
    .line 248
    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    .line 249
    .line 250
    check-cast p0, Ljava/lang/Integer;

    .line 251
    .line 252
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 253
    .line 254
    .line 255
    move-result p0

    .line 256
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 257
    .line 258
    .line 259
    goto :goto_0

    .line 260
    :pswitch_11
    const/4 p2, 0x6

    .line 261
    invoke-virtual {p0, p2}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    .line 262
    .line 263
    .line 264
    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    .line 265
    .line 266
    check-cast p0, Ljava/lang/String;

    .line 267
    .line 268
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    goto :goto_0

    .line 272
    :pswitch_12
    const/4 p2, 0x5

    .line 273
    invoke-virtual {p0, p2}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    .line 274
    .line 275
    .line 276
    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    .line 277
    .line 278
    check-cast p0, Ljava/lang/String;

    .line 279
    .line 280
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    goto :goto_0

    .line 284
    :pswitch_13
    const/4 p2, 0x4

    .line 285
    invoke-virtual {p0, p2}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    .line 286
    .line 287
    .line 288
    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    .line 289
    .line 290
    check-cast p0, Ljava/lang/String;

    .line 291
    .line 292
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    goto :goto_0

    .line 296
    :pswitch_14
    const/4 p2, 0x3

    .line 297
    invoke-virtual {p0, p2}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    .line 298
    .line 299
    .line 300
    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    .line 301
    .line 302
    check-cast p0, Ljava/lang/String;

    .line 303
    .line 304
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 305
    .line 306
    .line 307
    goto :goto_0

    .line 308
    :pswitch_15
    const/4 p2, 0x2

    .line 309
    invoke-virtual {p0, p2}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    .line 310
    .line 311
    .line 312
    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    .line 313
    .line 314
    check-cast p0, Ljava/lang/Integer;

    .line 315
    .line 316
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 317
    .line 318
    .line 319
    move-result p0

    .line 320
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 321
    .line 322
    .line 323
    goto :goto_0

    .line 324
    :pswitch_16
    const/4 p2, 0x1

    .line 325
    invoke-virtual {p0, p2}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    .line 326
    .line 327
    .line 328
    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    .line 329
    .line 330
    check-cast p0, Ljava/lang/Integer;

    .line 331
    .line 332
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 333
    .line 334
    .line 335
    move-result p0

    .line 336
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 337
    .line 338
    .line 339
    goto :goto_0

    .line 340
    :pswitch_17
    const/4 p2, 0x0

    .line 341
    invoke-virtual {p0, p2}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    .line 342
    .line 343
    .line 344
    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    .line 345
    .line 346
    check-cast p0, Ljava/lang/String;

    .line 347
    .line 348
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 349
    .line 350
    .line 351
    :goto_0
    return-void

    .line 352
    nop

    .line 353
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
