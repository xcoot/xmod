.class public Landroid/net/IpSecMigrateInfoParcel;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final direction:I

.field public final interfaceId:I

.field public final newDestinationAddress:Ljava/lang/String;

.field public final newSourceAddress:Ljava/lang/String;

.field public final oldDestinationAddress:Ljava/lang/String;

.field public final oldSourceAddress:Ljava/lang/String;

.field public final requestId:I

.field public final selAddrFamily:I


# direct methods
.method public static bridge synthetic -$$Nest$sminternalCreateFromParcel(Landroid/os/Parcel;)Landroid/net/IpSecMigrateInfoParcel;
    .locals 0

    .line 1
    invoke-static {p0}, Landroid/net/IpSecMigrateInfoParcel;->internalCreateFromParcel(Landroid/os/Parcel;)Landroid/net/IpSecMigrateInfoParcel;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/net/IpSecMigrateInfoParcel$1;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    sput-object v0, Landroid/net/IpSecMigrateInfoParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Landroid/net/IpSecMigrateInfoParcel;->requestId:I

    .line 6
    iput p2, p0, Landroid/net/IpSecMigrateInfoParcel;->selAddrFamily:I

    .line 8
    iput p3, p0, Landroid/net/IpSecMigrateInfoParcel;->direction:I

    .line 10
    iput-object p4, p0, Landroid/net/IpSecMigrateInfoParcel;->oldSourceAddress:Ljava/lang/String;

    .line 12
    iput-object p5, p0, Landroid/net/IpSecMigrateInfoParcel;->oldDestinationAddress:Ljava/lang/String;

    .line 14
    iput-object p6, p0, Landroid/net/IpSecMigrateInfoParcel;->newSourceAddress:Ljava/lang/String;

    .line 16
    iput-object p7, p0, Landroid/net/IpSecMigrateInfoParcel;->newDestinationAddress:Ljava/lang/String;

    .line 18
    iput p8, p0, Landroid/net/IpSecMigrateInfoParcel;->interfaceId:I

    .line 20
    return-void
.end method

.method private static internalCreateFromParcel(Landroid/os/Parcel;)Landroid/net/IpSecMigrateInfoParcel;
    .locals 7

    .line 1
    new-instance v0, Landroid/net/IpSecMigrateInfoParcel$Builder;

    .line 3
    invoke-direct {v0}, Landroid/net/IpSecMigrateInfoParcel$Builder;-><init>()V

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
    if-lt v2, v3, :cond_11

    .line 22
    :try_start_0
    invoke-virtual {v0}, Landroid/net/IpSecMigrateInfoParcel$Builder;->build()Landroid/net/IpSecMigrateInfoParcel;

    .line 25
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    .line 28
    move-result v3

    .line 29
    sub-int/2addr v3, v1

    .line 30
    if-lt v3, v2, :cond_1

    .line 32
    invoke-virtual {v0}, Landroid/net/IpSecMigrateInfoParcel$Builder;->build()Landroid/net/IpSecMigrateInfoParcel;
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
    invoke-virtual {v0}, Landroid/net/IpSecMigrateInfoParcel$Builder;->build()Landroid/net/IpSecMigrateInfoParcel;

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
    invoke-virtual {v0, v3}, Landroid/net/IpSecMigrateInfoParcel$Builder;->setRequestId(I)Landroid/net/IpSecMigrateInfoParcel$Builder;

    .line 60
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    .line 63
    move-result v3

    .line 64
    sub-int/2addr v3, v1

    .line 65
    if-lt v3, v2, :cond_3

    .line 67
    invoke-virtual {v0}, Landroid/net/IpSecMigrateInfoParcel$Builder;->build()Landroid/net/IpSecMigrateInfoParcel;
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
    invoke-virtual {v0, v3}, Landroid/net/IpSecMigrateInfoParcel$Builder;->setSelAddrFamily(I)Landroid/net/IpSecMigrateInfoParcel$Builder;

    .line 87
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    .line 90
    move-result v3

    .line 91
    sub-int/2addr v3, v1

    .line 92
    if-lt v3, v2, :cond_5

    .line 94
    invoke-virtual {v0}, Landroid/net/IpSecMigrateInfoParcel$Builder;->build()Landroid/net/IpSecMigrateInfoParcel;
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
    invoke-virtual {v0, v3}, Landroid/net/IpSecMigrateInfoParcel$Builder;->setDirection(I)Landroid/net/IpSecMigrateInfoParcel$Builder;

    .line 114
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    .line 117
    move-result v3

    .line 118
    sub-int/2addr v3, v1

    .line 119
    if-lt v3, v2, :cond_7

    .line 121
    invoke-virtual {v0}, Landroid/net/IpSecMigrateInfoParcel$Builder;->build()Landroid/net/IpSecMigrateInfoParcel;
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
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 137
    move-result-object v3

    .line 138
    invoke-virtual {v0, v3}, Landroid/net/IpSecMigrateInfoParcel$Builder;->setOldSourceAddress(Ljava/lang/String;)Landroid/net/IpSecMigrateInfoParcel$Builder;

    .line 141
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    .line 144
    move-result v3

    .line 145
    sub-int/2addr v3, v1

    .line 146
    if-lt v3, v2, :cond_9

    .line 148
    invoke-virtual {v0}, Landroid/net/IpSecMigrateInfoParcel$Builder;->build()Landroid/net/IpSecMigrateInfoParcel;
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
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 164
    move-result-object v3

    .line 165
    invoke-virtual {v0, v3}, Landroid/net/IpSecMigrateInfoParcel$Builder;->setOldDestinationAddress(Ljava/lang/String;)Landroid/net/IpSecMigrateInfoParcel$Builder;

    .line 168
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    .line 171
    move-result v3

    .line 172
    sub-int/2addr v3, v1

    .line 173
    if-lt v3, v2, :cond_b

    .line 175
    invoke-virtual {v0}, Landroid/net/IpSecMigrateInfoParcel$Builder;->build()Landroid/net/IpSecMigrateInfoParcel;
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
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 192
    move-result-object v3

    .line 193
    invoke-virtual {v0, v3}, Landroid/net/IpSecMigrateInfoParcel$Builder;->setNewSourceAddress(Ljava/lang/String;)Landroid/net/IpSecMigrateInfoParcel$Builder;

    .line 196
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    .line 199
    move-result v3

    .line 200
    sub-int/2addr v3, v1

    .line 201
    if-lt v3, v2, :cond_d

    .line 203
    invoke-virtual {v0}, Landroid/net/IpSecMigrateInfoParcel$Builder;->build()Landroid/net/IpSecMigrateInfoParcel;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 206
    sub-int/2addr v5, v2

    .line 207
    if-gt v1, v5, :cond_c

    .line 209
    goto/16 :goto_0

    .line 211
    :cond_c
    new-instance p0, Landroid/os/BadParcelableException;

    .line 213
    invoke-direct {p0, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 216
    throw p0

    .line 217
    :cond_d
    :try_start_7
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 220
    move-result-object v3

    .line 221
    invoke-virtual {v0, v3}, Landroid/net/IpSecMigrateInfoParcel$Builder;->setNewDestinationAddress(Ljava/lang/String;)Landroid/net/IpSecMigrateInfoParcel$Builder;

    .line 224
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    .line 227
    move-result v3

    .line 228
    sub-int/2addr v3, v1

    .line 229
    if-lt v3, v2, :cond_f

    .line 231
    invoke-virtual {v0}, Landroid/net/IpSecMigrateInfoParcel$Builder;->build()Landroid/net/IpSecMigrateInfoParcel;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 234
    sub-int/2addr v5, v2

    .line 235
    if-gt v1, v5, :cond_e

    .line 237
    goto/16 :goto_0

    .line 239
    :cond_e
    new-instance p0, Landroid/os/BadParcelableException;

    .line 241
    invoke-direct {p0, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 244
    throw p0

    .line 245
    :cond_f
    :try_start_8
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 248
    move-result v3

    .line 249
    invoke-virtual {v0, v3}, Landroid/net/IpSecMigrateInfoParcel$Builder;->setInterfaceId(I)Landroid/net/IpSecMigrateInfoParcel$Builder;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 252
    sub-int/2addr v5, v2

    .line 253
    if-gt v1, v5, :cond_10

    .line 255
    goto/16 :goto_0

    .line 257
    :cond_10
    new-instance p0, Landroid/os/BadParcelableException;

    .line 259
    invoke-direct {p0, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 262
    throw p0

    .line 263
    :cond_11
    :try_start_9
    new-instance v3, Landroid/os/BadParcelableException;

    .line 265
    const-string v6, "Parcelable too small"

    .line 267
    invoke-direct {v3, v6}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 270
    throw v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 271
    :catchall_0
    sub-int/2addr v5, v2

    .line 272
    if-gt v1, v5, :cond_12

    .line 274
    goto/16 :goto_0

    .line 276
    :cond_12
    new-instance p0, Landroid/os/BadParcelableException;

    .line 278
    invoke-direct {p0, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 281
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
    iget v0, p0, Landroid/net/IpSecMigrateInfoParcel;->requestId:I

    .line 11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    iget v0, p0, Landroid/net/IpSecMigrateInfoParcel;->selAddrFamily:I

    .line 16
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    iget v0, p0, Landroid/net/IpSecMigrateInfoParcel;->direction:I

    .line 21
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 24
    iget-object v0, p0, Landroid/net/IpSecMigrateInfoParcel;->oldSourceAddress:Ljava/lang/String;

    .line 26
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Landroid/net/IpSecMigrateInfoParcel;->oldDestinationAddress:Ljava/lang/String;

    .line 31
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Landroid/net/IpSecMigrateInfoParcel;->newSourceAddress:Ljava/lang/String;

    .line 36
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Landroid/net/IpSecMigrateInfoParcel;->newDestinationAddress:Ljava/lang/String;

    .line 41
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    iget p0, p0, Landroid/net/IpSecMigrateInfoParcel;->interfaceId:I

    .line 46
    invoke-static {p1, p0, p2}, Landroid/companion/virtualcamera/SupportedStreamConfiguration$$ExternalSyntheticOutline0;->m(Landroid/os/Parcel;II)I

    .line 49
    move-result p0

    .line 50
    invoke-static {p0, p2, p1, p0}, Landroid/companion/virtualcamera/SupportedStreamConfiguration$$ExternalSyntheticOutline0;->m(IILandroid/os/Parcel;I)V

    .line 53
    return-void
.end method
