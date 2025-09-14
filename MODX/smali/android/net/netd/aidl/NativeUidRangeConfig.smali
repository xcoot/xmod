.class public Landroid/net/netd/aidl/NativeUidRangeConfig;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final netId:I

.field public final subPriority:I

.field public final uidRanges:[Landroid/net/UidRangeParcel;


# direct methods
.method public static bridge synthetic -$$Nest$sminternalCreateFromParcel(Landroid/os/Parcel;)Landroid/net/netd/aidl/NativeUidRangeConfig;
    .locals 0

    .line 1
    invoke-static {p0}, Landroid/net/netd/aidl/NativeUidRangeConfig;->internalCreateFromParcel(Landroid/os/Parcel;)Landroid/net/netd/aidl/NativeUidRangeConfig;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/net/netd/aidl/NativeUidRangeConfig$1;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    sput-object v0, Landroid/net/netd/aidl/NativeUidRangeConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    return-void
.end method

.method public constructor <init>(I[Landroid/net/UidRangeParcel;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Landroid/net/netd/aidl/NativeUidRangeConfig;->netId:I

    .line 6
    iput-object p2, p0, Landroid/net/netd/aidl/NativeUidRangeConfig;->uidRanges:[Landroid/net/UidRangeParcel;

    .line 8
    iput p3, p0, Landroid/net/netd/aidl/NativeUidRangeConfig;->subPriority:I

    .line 10
    return-void
.end method

.method private describeContents(Ljava/lang/Object;)I
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 2
    :cond_0
    instance-of v1, p1, [Ljava/lang/Object;

    if-eqz v1, :cond_2

    .line 3
    check-cast p1, [Ljava/lang/Object;

    array-length v1, p1

    move v2, v0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v3, p1, v0

    .line 4
    invoke-direct {p0, v3}, Landroid/net/netd/aidl/NativeUidRangeConfig;->describeContents(Ljava/lang/Object;)I

    move-result v3

    or-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v2

    .line 5
    :cond_2
    instance-of p0, p1, Landroid/os/Parcelable;

    if-eqz p0, :cond_3

    .line 6
    check-cast p1, Landroid/os/Parcelable;

    invoke-interface {p1}, Landroid/os/Parcelable;->describeContents()I

    move-result p0

    return p0

    :cond_3
    return v0
.end method

.method private static internalCreateFromParcel(Landroid/os/Parcel;)Landroid/net/netd/aidl/NativeUidRangeConfig;
    .locals 7

    .line 1
    new-instance v0, Landroid/net/netd/aidl/NativeUidRangeConfig$Builder;

    .line 3
    invoke-direct {v0}, Landroid/net/netd/aidl/NativeUidRangeConfig$Builder;-><init>()V

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
    if-lt v2, v3, :cond_7

    .line 22
    :try_start_0
    invoke-virtual {v0}, Landroid/net/netd/aidl/NativeUidRangeConfig$Builder;->build()Landroid/net/netd/aidl/NativeUidRangeConfig;

    .line 25
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    .line 28
    move-result v3

    .line 29
    sub-int/2addr v3, v1

    .line 30
    if-lt v3, v2, :cond_1

    .line 32
    invoke-virtual {v0}, Landroid/net/netd/aidl/NativeUidRangeConfig$Builder;->build()Landroid/net/netd/aidl/NativeUidRangeConfig;
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
    invoke-virtual {v0}, Landroid/net/netd/aidl/NativeUidRangeConfig$Builder;->build()Landroid/net/netd/aidl/NativeUidRangeConfig;

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
    invoke-virtual {v0, v3}, Landroid/net/netd/aidl/NativeUidRangeConfig$Builder;->setNetId(I)Landroid/net/netd/aidl/NativeUidRangeConfig$Builder;

    .line 60
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    .line 63
    move-result v3

    .line 64
    sub-int/2addr v3, v1

    .line 65
    if-lt v3, v2, :cond_3

    .line 67
    invoke-virtual {v0}, Landroid/net/netd/aidl/NativeUidRangeConfig$Builder;->build()Landroid/net/netd/aidl/NativeUidRangeConfig;
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
    sget-object v3, Landroid/net/UidRangeParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 82
    invoke-virtual {p0, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 85
    move-result-object v3

    .line 86
    check-cast v3, [Landroid/net/UidRangeParcel;

    .line 88
    invoke-virtual {v0, v3}, Landroid/net/netd/aidl/NativeUidRangeConfig$Builder;->setUidRanges([Landroid/net/UidRangeParcel;)Landroid/net/netd/aidl/NativeUidRangeConfig$Builder;

    .line 91
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    .line 94
    move-result v3

    .line 95
    sub-int/2addr v3, v1

    .line 96
    if-lt v3, v2, :cond_5

    .line 98
    invoke-virtual {v0}, Landroid/net/netd/aidl/NativeUidRangeConfig$Builder;->build()Landroid/net/netd/aidl/NativeUidRangeConfig;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 101
    sub-int/2addr v5, v2

    .line 102
    if-gt v1, v5, :cond_4

    .line 104
    goto :goto_0

    .line 105
    :cond_4
    new-instance p0, Landroid/os/BadParcelableException;

    .line 107
    invoke-direct {p0, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 110
    throw p0

    .line 111
    :cond_5
    :try_start_3
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 114
    move-result v3

    .line 115
    invoke-virtual {v0, v3}, Landroid/net/netd/aidl/NativeUidRangeConfig$Builder;->setSubPriority(I)Landroid/net/netd/aidl/NativeUidRangeConfig$Builder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 118
    sub-int/2addr v5, v2

    .line 119
    if-gt v1, v5, :cond_6

    .line 121
    goto :goto_0

    .line 122
    :cond_6
    new-instance p0, Landroid/os/BadParcelableException;

    .line 124
    invoke-direct {p0, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 127
    throw p0

    .line 128
    :cond_7
    :try_start_4
    new-instance v3, Landroid/os/BadParcelableException;

    .line 130
    const-string v6, "Parcelable too small"

    .line 132
    invoke-direct {v3, v6}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 135
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 136
    :catchall_0
    sub-int/2addr v5, v2

    .line 137
    if-gt v1, v5, :cond_8

    .line 139
    goto :goto_0

    .line 140
    :cond_8
    new-instance p0, Landroid/os/BadParcelableException;

    .line 142
    invoke-direct {p0, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 145
    throw p0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/net/netd/aidl/NativeUidRangeConfig;->uidRanges:[Landroid/net/UidRangeParcel;

    invoke-direct {p0, v0}, Landroid/net/netd/aidl/NativeUidRangeConfig;->describeContents(Ljava/lang/Object;)I

    move-result p0

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
    instance-of v2, p1, Landroid/net/netd/aidl/NativeUidRangeConfig;

    .line 11
    if-nez v2, :cond_2

    .line 13
    return v1

    .line 14
    :cond_2
    check-cast p1, Landroid/net/netd/aidl/NativeUidRangeConfig;

    .line 16
    iget v2, p0, Landroid/net/netd/aidl/NativeUidRangeConfig;->netId:I

    .line 18
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    move-result-object v2

    .line 22
    iget v3, p1, Landroid/net/netd/aidl/NativeUidRangeConfig;->netId:I

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
    iget-object v2, p0, Landroid/net/netd/aidl/NativeUidRangeConfig;->uidRanges:[Landroid/net/UidRangeParcel;

    .line 37
    iget-object v3, p1, Landroid/net/netd/aidl/NativeUidRangeConfig;->uidRanges:[Landroid/net/UidRangeParcel;

    .line 39
    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 42
    move-result v2

    .line 43
    if-nez v2, :cond_4

    .line 45
    return v1

    .line 46
    :cond_4
    iget p0, p0, Landroid/net/netd/aidl/NativeUidRangeConfig;->subPriority:I

    .line 48
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    move-result-object p0

    .line 52
    iget p1, p1, Landroid/net/netd/aidl/NativeUidRangeConfig;->subPriority:I

    .line 54
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    move-result-object p1

    .line 58
    invoke-static {p0, p1}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 61
    move-result p0

    .line 62
    if-nez p0, :cond_5

    .line 64
    return v1

    .line 65
    :cond_5
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [Ljava/io/Serializable;

    .line 4
    iget v1, p0, Landroid/net/netd/aidl/NativeUidRangeConfig;->netId:I

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    aput-object v1, v0, v2

    .line 13
    const/4 v1, 0x1

    .line 14
    iget-object v2, p0, Landroid/net/netd/aidl/NativeUidRangeConfig;->uidRanges:[Landroid/net/UidRangeParcel;

    .line 16
    aput-object v2, v0, v1

    .line 18
    iget p0, p0, Landroid/net/netd/aidl/NativeUidRangeConfig;->subPriority:I

    .line 20
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    move-result-object p0

    .line 24
    const/4 v1, 0x2

    .line 25
    aput-object p0, v0, v1

    .line 27
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 30
    move-result-object p0

    .line 31
    invoke-interface {p0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    .line 34
    move-result-object p0

    .line 35
    invoke-static {p0}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    .line 38
    move-result p0

    .line 39
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
    iget v2, p0, Landroid/net/netd/aidl/NativeUidRangeConfig;->netId:I

    .line 24
    const-string/jumbo v3, "uidRanges: "

    .line 27
    invoke-static {v1, v2, v0, v3}, Landroid/hardware/broadcastradio/AmFmBandRange$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/util/StringJoiner;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    move-result-object v1

    .line 31
    iget-object v2, p0, Landroid/net/netd/aidl/NativeUidRangeConfig;->uidRanges:[Landroid/net/UidRangeParcel;

    .line 33
    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 36
    move-result-object v2

    .line 37
    const-string/jumbo v3, "subPriority: "

    .line 40
    invoke-static {v2, v3, v1, v0}, Landroid/hardware/broadcastradio/AmFmRegionConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/StringJoiner;)Ljava/lang/StringBuilder;

    .line 43
    move-result-object v1

    .line 44
    iget p0, p0, Landroid/net/netd/aidl/NativeUidRangeConfig;->subPriority:I

    .line 46
    const-string v2, "NativeUidRangeConfig"

    .line 48
    invoke-static {v1, p0, v0, v2}, Landroid/hardware/broadcastradio/AmFmBandRange$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/util/StringJoiner;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    move-result-object p0

    .line 52
    invoke-static {v0, p0}, Landroid/hardware/broadcastradio/AmFmBandRange$$ExternalSyntheticOutline0;->m(Ljava/util/StringJoiner;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 55
    move-result-object p0

    .line 56
    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    iget v1, p0, Landroid/net/netd/aidl/NativeUidRangeConfig;->netId:I

    .line 11
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    iget-object v1, p0, Landroid/net/netd/aidl/NativeUidRangeConfig;->uidRanges:[Landroid/net/UidRangeParcel;

    .line 16
    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 19
    iget p0, p0, Landroid/net/netd/aidl/NativeUidRangeConfig;->subPriority:I

    .line 21
    invoke-static {p1, p0, v0}, Landroid/companion/virtualcamera/SupportedStreamConfiguration$$ExternalSyntheticOutline0;->m(Landroid/os/Parcel;II)I

    .line 24
    move-result p0

    .line 25
    invoke-static {p0, v0, p1, p0}, Landroid/companion/virtualcamera/SupportedStreamConfiguration$$ExternalSyntheticOutline0;->m(IILandroid/os/Parcel;I)V

    .line 28
    return-void
.end method
