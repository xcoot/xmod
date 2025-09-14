.class public Landroid/net/NativeNetworkConfig;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final excludeLocalRoutes:Z

.field public final netId:I

.field public final networkType:I

.field public final permission:I

.field public final secure:Z

.field public final vpnType:I


# direct methods
.method public static bridge synthetic -$$Nest$sminternalCreateFromParcel(Landroid/os/Parcel;)Landroid/net/NativeNetworkConfig;
    .locals 0

    .line 1
    invoke-static {p0}, Landroid/net/NativeNetworkConfig;->internalCreateFromParcel(Landroid/os/Parcel;)Landroid/net/NativeNetworkConfig;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/net/NativeNetworkConfig$1;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    sput-object v0, Landroid/net/NativeNetworkConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    return-void
.end method

.method public constructor <init>(IIIZIZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Landroid/net/NativeNetworkConfig;->netId:I

    .line 6
    iput p2, p0, Landroid/net/NativeNetworkConfig;->networkType:I

    .line 8
    iput p3, p0, Landroid/net/NativeNetworkConfig;->permission:I

    .line 10
    iput-boolean p4, p0, Landroid/net/NativeNetworkConfig;->secure:Z

    .line 12
    iput p5, p0, Landroid/net/NativeNetworkConfig;->vpnType:I

    .line 14
    iput-boolean p6, p0, Landroid/net/NativeNetworkConfig;->excludeLocalRoutes:Z

    .line 16
    return-void
.end method

.method private static internalCreateFromParcel(Landroid/os/Parcel;)Landroid/net/NativeNetworkConfig;
    .locals 7

    .line 1
    new-instance v0, Landroid/net/NativeNetworkConfig$Builder;

    .line 3
    invoke-direct {v0}, Landroid/net/NativeNetworkConfig$Builder;-><init>()V

    .line 6
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    .line 9
    move-result v1

    .line 10
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 13
    move-result v2

    .line 14
    const/4 v3, 0x4

    .line 15
    const-string v4, "Overflow in the size of parcelable"

    .line 17
    const v5, 0x7fffffff

    .line 20
    if-lt v2, v3, :cond_d

    .line 22
    :try_start_0
    invoke-virtual {v0}, Landroid/net/NativeNetworkConfig$Builder;->build()Landroid/net/NativeNetworkConfig;

    .line 25
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    .line 28
    move-result v3

    .line 29
    sub-int/2addr v3, v1

    .line 30
    if-lt v3, v2, :cond_1

    .line 32
    invoke-virtual {v0}, Landroid/net/NativeNetworkConfig$Builder;->build()Landroid/net/NativeNetworkConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    sub-int/2addr v5, v2

    .line 36
    if-gt v1, v5, :cond_0

    .line 38
    :goto_0
    add-int/2addr v1, v2

    .line 39
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 42
    invoke-virtual {v0}, Landroid/net/NativeNetworkConfig$Builder;->build()Landroid/net/NativeNetworkConfig;

    .line 45
    move-result-object p0

    .line 46
    return-object p0

    .line 47
    :cond_0
    new-instance p0, Landroid/os/BadParcelableException;

    .line 49
    invoke-direct {p0, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 52
    throw p0

    .line 53
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 56
    move-result v3

    .line 57
    invoke-virtual {v0, v3}, Landroid/net/NativeNetworkConfig$Builder;->setNetId(I)Landroid/net/NativeNetworkConfig$Builder;

    .line 60
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    .line 63
    move-result v3

    .line 64
    sub-int/2addr v3, v1

    .line 65
    if-lt v3, v2, :cond_3

    .line 67
    invoke-virtual {v0}, Landroid/net/NativeNetworkConfig$Builder;->build()Landroid/net/NativeNetworkConfig;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    sub-int/2addr v5, v2

    .line 71
    if-gt v1, v5, :cond_2

    .line 73
    goto :goto_0

    .line 74
    :cond_2
    new-instance p0, Landroid/os/BadParcelableException;

    .line 76
    invoke-direct {p0, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 79
    throw p0

    .line 80
    :cond_3
    :try_start_2
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 83
    move-result v3

    .line 84
    invoke-virtual {v0, v3}, Landroid/net/NativeNetworkConfig$Builder;->setNetworkType(I)Landroid/net/NativeNetworkConfig$Builder;

    .line 87
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    .line 90
    move-result v3

    .line 91
    sub-int/2addr v3, v1

    .line 92
    if-lt v3, v2, :cond_5

    .line 94
    invoke-virtual {v0}, Landroid/net/NativeNetworkConfig$Builder;->build()Landroid/net/NativeNetworkConfig;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 97
    sub-int/2addr v5, v2

    .line 98
    if-gt v1, v5, :cond_4

    .line 100
    goto :goto_0

    .line 101
    :cond_4
    new-instance p0, Landroid/os/BadParcelableException;

    .line 103
    invoke-direct {p0, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 106
    throw p0

    .line 107
    :cond_5
    :try_start_3
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 110
    move-result v3

    .line 111
    invoke-virtual {v0, v3}, Landroid/net/NativeNetworkConfig$Builder;->setPermission(I)Landroid/net/NativeNetworkConfig$Builder;

    .line 114
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    .line 117
    move-result v3

    .line 118
    sub-int/2addr v3, v1

    .line 119
    if-lt v3, v2, :cond_7

    .line 121
    invoke-virtual {v0}, Landroid/net/NativeNetworkConfig$Builder;->build()Landroid/net/NativeNetworkConfig;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 124
    sub-int/2addr v5, v2

    .line 125
    if-gt v1, v5, :cond_6

    .line 127
    goto :goto_0

    .line 128
    :cond_6
    new-instance p0, Landroid/os/BadParcelableException;

    .line 130
    invoke-direct {p0, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 133
    throw p0

    .line 134
    :cond_7
    :try_start_4
    invoke-virtual {p0}, Landroid/os/Parcel;->readBoolean()Z

    .line 137
    move-result v3

    .line 138
    invoke-virtual {v0, v3}, Landroid/net/NativeNetworkConfig$Builder;->setSecure(Z)Landroid/net/NativeNetworkConfig$Builder;

    .line 141
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    .line 144
    move-result v3

    .line 145
    sub-int/2addr v3, v1

    .line 146
    if-lt v3, v2, :cond_9

    .line 148
    invoke-virtual {v0}, Landroid/net/NativeNetworkConfig$Builder;->build()Landroid/net/NativeNetworkConfig;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 151
    sub-int/2addr v5, v2

    .line 152
    if-gt v1, v5, :cond_8

    .line 154
    goto :goto_0

    .line 155
    :cond_8
    new-instance p0, Landroid/os/BadParcelableException;

    .line 157
    invoke-direct {p0, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 160
    throw p0

    .line 161
    :cond_9
    :try_start_5
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 164
    move-result v3

    .line 165
    invoke-virtual {v0, v3}, Landroid/net/NativeNetworkConfig$Builder;->setVpnType(I)Landroid/net/NativeNetworkConfig$Builder;

    .line 168
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    .line 171
    move-result v3

    .line 172
    sub-int/2addr v3, v1

    .line 173
    if-lt v3, v2, :cond_b

    .line 175
    invoke-virtual {v0}, Landroid/net/NativeNetworkConfig$Builder;->build()Landroid/net/NativeNetworkConfig;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 178
    sub-int/2addr v5, v2

    .line 179
    if-gt v1, v5, :cond_a

    .line 181
    goto/16 :goto_0

    .line 183
    :cond_a
    new-instance p0, Landroid/os/BadParcelableException;

    .line 185
    invoke-direct {p0, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 188
    throw p0

    .line 189
    :cond_b
    :try_start_6
    invoke-virtual {p0}, Landroid/os/Parcel;->readBoolean()Z

    .line 192
    move-result v3

    .line 193
    invoke-virtual {v0, v3}, Landroid/net/NativeNetworkConfig$Builder;->setExcludeLocalRoutes(Z)Landroid/net/NativeNetworkConfig$Builder;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 196
    sub-int/2addr v5, v2

    .line 197
    if-gt v1, v5, :cond_c

    .line 199
    goto/16 :goto_0

    .line 201
    :cond_c
    new-instance p0, Landroid/os/BadParcelableException;

    .line 203
    invoke-direct {p0, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 206
    throw p0

    .line 207
    :cond_d
    :try_start_7
    new-instance v3, Landroid/os/BadParcelableException;

    .line 209
    const-string v6, "Parcelable too small"

    .line 211
    invoke-direct {v3, v6}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 214
    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 215
    :catchall_0
    sub-int/2addr v5, v2

    .line 216
    if-gt v1, v5, :cond_e

    .line 218
    goto/16 :goto_0

    .line 220
    :cond_e
    new-instance p0, Landroid/os/BadParcelableException;

    .line 222
    invoke-direct {p0, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 225
    throw p0
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-nez p1, :cond_1

    .line 8
    return v1

    .line 9
    :cond_1
    instance-of v2, p1, Landroid/net/NativeNetworkConfig;

    .line 11
    if-nez v2, :cond_2

    .line 13
    return v1

    .line 14
    :cond_2
    check-cast p1, Landroid/net/NativeNetworkConfig;

    .line 16
    iget v2, p0, Landroid/net/NativeNetworkConfig;->netId:I

    .line 18
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    move-result-object v2

    .line 22
    iget v3, p1, Landroid/net/NativeNetworkConfig;->netId:I

    .line 24
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    move-result-object v3

    .line 28
    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 31
    move-result v2

    .line 32
    if-nez v2, :cond_3

    .line 34
    return v1

    .line 35
    :cond_3
    iget v2, p0, Landroid/net/NativeNetworkConfig;->networkType:I

    .line 37
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    move-result-object v2

    .line 41
    iget v3, p1, Landroid/net/NativeNetworkConfig;->networkType:I

    .line 43
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    move-result-object v3

    .line 47
    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 50
    move-result v2

    .line 51
    if-nez v2, :cond_4

    .line 53
    return v1

    .line 54
    :cond_4
    iget v2, p0, Landroid/net/NativeNetworkConfig;->permission:I

    .line 56
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    move-result-object v2

    .line 60
    iget v3, p1, Landroid/net/NativeNetworkConfig;->permission:I

    .line 62
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    move-result-object v3

    .line 66
    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 69
    move-result v2

    .line 70
    if-nez v2, :cond_5

    .line 72
    return v1

    .line 73
    :cond_5
    iget-boolean v2, p0, Landroid/net/NativeNetworkConfig;->secure:Z

    .line 75
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 78
    move-result-object v2

    .line 79
    iget-boolean v3, p1, Landroid/net/NativeNetworkConfig;->secure:Z

    .line 81
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 84
    move-result-object v3

    .line 85
    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 88
    move-result v2

    .line 89
    if-nez v2, :cond_6

    .line 91
    return v1

    .line 92
    :cond_6
    iget v2, p0, Landroid/net/NativeNetworkConfig;->vpnType:I

    .line 94
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 97
    move-result-object v2

    .line 98
    iget v3, p1, Landroid/net/NativeNetworkConfig;->vpnType:I

    .line 100
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 103
    move-result-object v3

    .line 104
    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 107
    move-result v2

    .line 108
    if-nez v2, :cond_7

    .line 110
    return v1

    .line 111
    :cond_7
    iget-boolean p0, p0, Landroid/net/NativeNetworkConfig;->excludeLocalRoutes:Z

    .line 113
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 116
    move-result-object p0

    .line 117
    iget-boolean p1, p1, Landroid/net/NativeNetworkConfig;->excludeLocalRoutes:Z

    .line 119
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 122
    move-result-object p1

    .line 123
    invoke-static {p0, p1}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 126
    move-result p0

    .line 127
    if-nez p0, :cond_8

    .line 129
    return v1

    .line 130
    :cond_8
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    const/4 v0, 0x6

    .line 2
    new-array v0, v0, [Ljava/io/Serializable;

    .line 4
    iget v1, p0, Landroid/net/NativeNetworkConfig;->netId:I

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    aput-object v1, v0, v2

    .line 13
    iget v1, p0, Landroid/net/NativeNetworkConfig;->networkType:I

    .line 15
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    move-result-object v1

    .line 19
    const/4 v2, 0x1

    .line 20
    aput-object v1, v0, v2

    .line 22
    iget v1, p0, Landroid/net/NativeNetworkConfig;->permission:I

    .line 24
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    move-result-object v1

    .line 28
    const/4 v2, 0x2

    .line 29
    aput-object v1, v0, v2

    .line 31
    iget-boolean v1, p0, Landroid/net/NativeNetworkConfig;->secure:Z

    .line 33
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 36
    move-result-object v1

    .line 37
    const/4 v2, 0x3

    .line 38
    aput-object v1, v0, v2

    .line 40
    iget v1, p0, Landroid/net/NativeNetworkConfig;->vpnType:I

    .line 42
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    move-result-object v1

    .line 46
    const/4 v2, 0x4

    .line 47
    aput-object v1, v0, v2

    .line 49
    iget-boolean p0, p0, Landroid/net/NativeNetworkConfig;->excludeLocalRoutes:Z

    .line 51
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 54
    move-result-object p0

    .line 55
    const/4 v1, 0x5

    .line 56
    aput-object p0, v0, v1

    .line 58
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 61
    move-result-object p0

    .line 62
    invoke-interface {p0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    .line 65
    move-result-object p0

    .line 66
    invoke-static {p0}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    .line 69
    move-result p0

    .line 70
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/StringJoiner;

    .line 3
    const-string/jumbo v1, "{"

    .line 6
    const-string/jumbo v2, "}"

    .line 9
    const-string v3, ", "

    .line 11
    invoke-direct {v0, v3, v1, v2}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    const-string/jumbo v2, "netId: "

    .line 19
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    iget v2, p0, Landroid/net/NativeNetworkConfig;->netId:I

    .line 24
    const-string/jumbo v3, "networkType: "

    .line 27
    invoke-static {v1, v2, v0, v3}, Landroid/hardware/broadcastradio/AmFmBandRange$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/util/StringJoiner;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    move-result-object v1

    .line 31
    iget v2, p0, Landroid/net/NativeNetworkConfig;->networkType:I

    .line 33
    const-string/jumbo v3, "permission: "

    .line 36
    invoke-static {v1, v2, v0, v3}, Landroid/hardware/broadcastradio/AmFmBandRange$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/util/StringJoiner;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    move-result-object v1

    .line 40
    iget v2, p0, Landroid/net/NativeNetworkConfig;->permission:I

    .line 42
    const-string/jumbo v3, "secure: "

    .line 45
    invoke-static {v1, v2, v0, v3}, Landroid/hardware/broadcastradio/AmFmBandRange$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/util/StringJoiner;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    move-result-object v1

    .line 49
    iget-boolean v2, p0, Landroid/net/NativeNetworkConfig;->secure:Z

    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    .line 63
    const-string/jumbo v2, "vpnType: "

    .line 66
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    iget v2, p0, Landroid/net/NativeNetworkConfig;->vpnType:I

    .line 71
    const-string/jumbo v3, "excludeLocalRoutes: "

    .line 74
    invoke-static {v1, v2, v0, v3}, Landroid/hardware/broadcastradio/AmFmBandRange$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/util/StringJoiner;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    move-result-object v1

    .line 78
    iget-boolean p0, p0, Landroid/net/NativeNetworkConfig;->excludeLocalRoutes:Z

    .line 80
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    move-result-object p0

    .line 87
    invoke-virtual {v0, p0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 90
    new-instance p0, Ljava/lang/StringBuilder;

    .line 92
    const-string v1, "NativeNetworkConfig"

    .line 94
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    invoke-static {v0, p0}, Landroid/hardware/broadcastradio/AmFmBandRange$$ExternalSyntheticOutline0;->m(Ljava/util/StringJoiner;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 100
    move-result-object p0

    .line 101
    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 4
    move-result p2

    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    iget v0, p0, Landroid/net/NativeNetworkConfig;->netId:I

    .line 11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    iget v0, p0, Landroid/net/NativeNetworkConfig;->networkType:I

    .line 16
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    iget v0, p0, Landroid/net/NativeNetworkConfig;->permission:I

    .line 21
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 24
    iget-boolean v0, p0, Landroid/net/NativeNetworkConfig;->secure:Z

    .line 26
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 29
    iget v0, p0, Landroid/net/NativeNetworkConfig;->vpnType:I

    .line 31
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 34
    iget-boolean p0, p0, Landroid/net/NativeNetworkConfig;->excludeLocalRoutes:Z

    .line 36
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 42
    move-result p0

    .line 43
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 46
    invoke-static {p0, p2, p1, p0}, Landroid/companion/virtualcamera/SupportedStreamConfiguration$$ExternalSyntheticOutline0;->m(IILandroid/os/Parcel;I)V

    .line 49
    return-void
.end method
