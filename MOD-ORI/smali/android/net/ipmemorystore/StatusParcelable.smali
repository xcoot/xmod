.class public Landroid/net/ipmemorystore/StatusParcelable;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public resultCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/net/ipmemorystore/StatusParcelable$1;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroid/net/ipmemorystore/StatusParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroid/net/ipmemorystore/StatusParcelable;->resultCode:I

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final readFromParcel(Landroid/os/Parcel;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x4

    .line 10
    const-string v3, "Overflow in the size of parcelable"

    .line 11
    .line 12
    const v4, 0x7fffffff

    .line 13
    .line 14
    .line 15
    if-lt v1, v2, :cond_3

    .line 16
    .line 17
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 18
    .line 19
    .line 20
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    sub-int/2addr v2, v0

    .line 22
    if-lt v2, v1, :cond_1

    .line 23
    .line 24
    sub-int/2addr v4, v1

    .line 25
    if-gt v0, v4, :cond_0

    .line 26
    .line 27
    add-int/2addr v0, v1

    .line 28
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    new-instance p0, Landroid/os/BadParcelableException;

    .line 33
    .line 34
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw p0

    .line 38
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    iput v2, p0, Landroid/net/ipmemorystore/StatusParcelable;->resultCode:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    .line 44
    sub-int/2addr v4, v1

    .line 45
    if-gt v0, v4, :cond_2

    .line 46
    .line 47
    add-int/2addr v0, v1

    .line 48
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_2
    new-instance p0, Landroid/os/BadParcelableException;

    .line 53
    .line 54
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw p0

    .line 58
    :catchall_0
    move-exception p0

    .line 59
    goto :goto_0

    .line 60
    :cond_3
    :try_start_2
    new-instance p0, Landroid/os/BadParcelableException;

    .line 61
    .line 62
    const-string v2, "Parcelable too small"

    .line 63
    .line 64
    invoke-direct {p0, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 68
    :goto_0
    sub-int/2addr v4, v1

    .line 69
    if-le v0, v4, :cond_4

    .line 70
    .line 71
    new-instance p0, Landroid/os/BadParcelableException;

    .line 72
    .line 73
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    throw p0

    .line 77
    :cond_4
    add-int/2addr v0, v1

    .line 78
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 79
    .line 80
    .line 81
    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/StringJoiner;

    .line 2
    .line 3
    const-string/jumbo v1, "{"

    .line 4
    .line 5
    .line 6
    const-string/jumbo v2, "}"

    .line 7
    .line 8
    .line 9
    const-string v3, ", "

    .line 10
    .line 11
    invoke-direct {v0, v3, v1, v2}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 12
    .line 13
    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string/jumbo v2, "resultCode: "

    .line 17
    .line 18
    .line 19
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget p0, p0, Landroid/net/ipmemorystore/StatusParcelable;->resultCode:I

    .line 23
    .line 24
    const-string v2, "StatusParcelable"

    .line 25
    .line 26
    invoke-static {v1, p0, v0, v2}, Landroid/hardware/broadcastradio/AmFmBandRange$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/util/StringJoiner;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-static {v0, p0}, Landroid/hardware/broadcastradio/AmFmBandRange$$ExternalSyntheticOutline0;->m(Ljava/util/StringJoiner;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    .line 8
    .line 9
    iget p0, p0, Landroid/net/ipmemorystore/StatusParcelable;->resultCode:I

    .line 10
    .line 11
    invoke-static {p1, p0, p2}, Landroid/companion/virtualcamera/SupportedStreamConfiguration$$ExternalSyntheticOutline0;->m(Landroid/os/Parcel;II)I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    invoke-static {p0, p2, p1, p0}, Landroid/companion/virtualcamera/SupportedStreamConfiguration$$ExternalSyntheticOutline0;->m(IILandroid/os/Parcel;I)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
