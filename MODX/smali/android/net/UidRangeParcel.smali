.class public Landroid/net/UidRangeParcel;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final start:I

.field public final stop:I


# direct methods
.method public static bridge synthetic -$$Nest$sminternalCreateFromParcel(Landroid/os/Parcel;)Landroid/net/UidRangeParcel;
    .locals 0

    .line 1
    invoke-static {p0}, Landroid/net/UidRangeParcel;->internalCreateFromParcel(Landroid/os/Parcel;)Landroid/net/UidRangeParcel;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/net/UidRangeParcel$1;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    sput-object v0, Landroid/net/UidRangeParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Landroid/net/UidRangeParcel;->start:I

    .line 6
    iput p2, p0, Landroid/net/UidRangeParcel;->stop:I

    .line 8
    return-void
.end method

.method private static internalCreateFromParcel(Landroid/os/Parcel;)Landroid/net/UidRangeParcel;
    .locals 7

    .line 1
    new-instance v0, Landroid/net/UidRangeParcel$Builder;

    .line 3
    invoke-direct {v0}, Landroid/net/UidRangeParcel$Builder;-><init>()V

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
    if-lt v2, v3, :cond_5

    .line 22
    :try_start_0
    invoke-virtual {v0}, Landroid/net/UidRangeParcel$Builder;->build()Landroid/net/UidRangeParcel;

    .line 25
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    .line 28
    move-result v3

    .line 29
    sub-int/2addr v3, v1

    .line 30
    if-lt v3, v2, :cond_1

    .line 32
    invoke-virtual {v0}, Landroid/net/UidRangeParcel$Builder;->build()Landroid/net/UidRangeParcel;
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
    invoke-virtual {v0}, Landroid/net/UidRangeParcel$Builder;->build()Landroid/net/UidRangeParcel;

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
    invoke-virtual {v0, v3}, Landroid/net/UidRangeParcel$Builder;->setStart(I)Landroid/net/UidRangeParcel$Builder;

    .line 60
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    .line 63
    move-result v3

    .line 64
    sub-int/2addr v3, v1

    .line 65
    if-lt v3, v2, :cond_3

    .line 67
    invoke-virtual {v0}, Landroid/net/UidRangeParcel$Builder;->build()Landroid/net/UidRangeParcel;
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
    invoke-virtual {v0, v3}, Landroid/net/UidRangeParcel$Builder;->setStop(I)Landroid/net/UidRangeParcel$Builder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 87
    sub-int/2addr v5, v2

    .line 88
    if-gt v1, v5, :cond_4

    .line 90
    goto :goto_0

    .line 91
    :cond_4
    new-instance p0, Landroid/os/BadParcelableException;

    .line 93
    invoke-direct {p0, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 96
    throw p0

    .line 97
    :cond_5
    :try_start_3
    new-instance v3, Landroid/os/BadParcelableException;

    .line 99
    const-string v6, "Parcelable too small"

    .line 101
    invoke-direct {v3, v6}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 104
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 105
    :catchall_0
    sub-int/2addr v5, v2

    .line 106
    if-gt v1, v5, :cond_6

    .line 108
    goto :goto_0

    .line 109
    :cond_6
    new-instance p0, Landroid/os/BadParcelableException;

    .line 111
    invoke-direct {p0, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 114
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
    instance-of v2, p1, Landroid/net/UidRangeParcel;

    .line 11
    if-nez v2, :cond_2

    .line 13
    return v1

    .line 14
    :cond_2
    check-cast p1, Landroid/net/UidRangeParcel;

    .line 16
    iget v2, p0, Landroid/net/UidRangeParcel;->start:I

    .line 18
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    move-result-object v2

    .line 22
    iget v3, p1, Landroid/net/UidRangeParcel;->start:I

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
    iget p0, p0, Landroid/net/UidRangeParcel;->stop:I

    .line 37
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    move-result-object p0

    .line 41
    iget p1, p1, Landroid/net/UidRangeParcel;->stop:I

    .line 43
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    move-result-object p1

    .line 47
    invoke-static {p0, p1}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 50
    move-result p0

    .line 51
    if-nez p0, :cond_4

    .line 53
    return v1

    .line 54
    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/net/UidRangeParcel;->start:I

    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object v0

    .line 7
    iget p0, p0, Landroid/net/UidRangeParcel;->stop:I

    .line 9
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    move-result-object p0

    .line 13
    filled-new-array {v0, p0}, [Ljava/lang/Integer;

    .line 16
    move-result-object p0

    .line 17
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 20
    move-result-object p0

    .line 21
    invoke-interface {p0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    .line 24
    move-result-object p0

    .line 25
    invoke-static {p0}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    .line 28
    move-result p0

    .line 29
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
    const-string/jumbo v2, "start: "

    .line 19
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    iget v2, p0, Landroid/net/UidRangeParcel;->start:I

    .line 24
    const-string/jumbo v3, "stop: "

    .line 27
    invoke-static {v1, v2, v0, v3}, Landroid/hardware/broadcastradio/AmFmBandRange$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/util/StringJoiner;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    move-result-object v1

    .line 31
    iget p0, p0, Landroid/net/UidRangeParcel;->stop:I

    .line 33
    const-string v2, "UidRangeParcel"

    .line 35
    invoke-static {v1, p0, v0, v2}, Landroid/hardware/broadcastradio/AmFmBandRange$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/util/StringJoiner;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    move-result-object p0

    .line 39
    invoke-static {v0, p0}, Landroid/hardware/broadcastradio/AmFmBandRange$$ExternalSyntheticOutline0;->m(Ljava/util/StringJoiner;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 42
    move-result-object p0

    .line 43
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
    iget v0, p0, Landroid/net/UidRangeParcel;->start:I

    .line 11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    iget p0, p0, Landroid/net/UidRangeParcel;->stop:I

    .line 16
    invoke-static {p1, p0, p2}, Landroid/companion/virtualcamera/SupportedStreamConfiguration$$ExternalSyntheticOutline0;->m(Landroid/os/Parcel;II)I

    .line 19
    move-result p0

    .line 20
    invoke-static {p0, p2, p1, p0}, Landroid/companion/virtualcamera/SupportedStreamConfiguration$$ExternalSyntheticOutline0;->m(IILandroid/os/Parcel;I)V

    .line 23
    return-void
.end method
