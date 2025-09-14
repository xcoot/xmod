.class public Landroid/net/resolv/aidl/Nat64PrefixEventParcel;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public netId:I

.field public prefixAddress:Ljava/lang/String;

.field public prefixLength:I

.field public prefixOperation:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/net/resolv/aidl/Nat64PrefixEventParcel$1;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    sput-object v0, Landroid/net/resolv/aidl/Nat64PrefixEventParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroid/net/resolv/aidl/Nat64PrefixEventParcel;->netId:I

    .line 7
    iput v0, p0, Landroid/net/resolv/aidl/Nat64PrefixEventParcel;->prefixOperation:I

    .line 9
    iput v0, p0, Landroid/net/resolv/aidl/Nat64PrefixEventParcel;->prefixLength:I

    .line 11
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

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x4

    .line 10
    const-string v3, "Overflow in the size of parcelable"

    .line 12
    const v4, 0x7fffffff

    .line 15
    if-lt v1, v2, :cond_9

    .line 17
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 20
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    sub-int/2addr v2, v0

    .line 22
    if-lt v2, v1, :cond_1

    .line 24
    sub-int/2addr v4, v1

    .line 25
    if-gt v0, v4, :cond_0

    .line 27
    :goto_0
    add-int/2addr v0, v1

    .line 28
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 31
    return-void

    .line 32
    :cond_0
    new-instance p0, Landroid/os/BadParcelableException;

    .line 34
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 37
    throw p0

    .line 38
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 41
    move-result v2

    .line 42
    iput v2, p0, Landroid/net/resolv/aidl/Nat64PrefixEventParcel;->netId:I

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 47
    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    sub-int/2addr v2, v0

    .line 49
    if-lt v2, v1, :cond_3

    .line 51
    sub-int/2addr v4, v1

    .line 52
    if-gt v0, v4, :cond_2

    .line 54
    goto :goto_0

    .line 55
    :cond_2
    new-instance p0, Landroid/os/BadParcelableException;

    .line 57
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 60
    throw p0

    .line 61
    :cond_3
    :try_start_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 64
    move-result v2

    .line 65
    iput v2, p0, Landroid/net/resolv/aidl/Nat64PrefixEventParcel;->prefixOperation:I

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 70
    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 71
    sub-int/2addr v2, v0

    .line 72
    if-lt v2, v1, :cond_5

    .line 74
    sub-int/2addr v4, v1

    .line 75
    if-gt v0, v4, :cond_4

    .line 77
    goto :goto_0

    .line 78
    :cond_4
    new-instance p0, Landroid/os/BadParcelableException;

    .line 80
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 83
    throw p0

    .line 84
    :cond_5
    :try_start_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 87
    move-result-object v2

    .line 88
    iput-object v2, p0, Landroid/net/resolv/aidl/Nat64PrefixEventParcel;->prefixAddress:Ljava/lang/String;

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 93
    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 94
    sub-int/2addr v2, v0

    .line 95
    if-lt v2, v1, :cond_7

    .line 97
    sub-int/2addr v4, v1

    .line 98
    if-gt v0, v4, :cond_6

    .line 100
    goto :goto_0

    .line 101
    :cond_6
    new-instance p0, Landroid/os/BadParcelableException;

    .line 103
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 106
    throw p0

    .line 107
    :cond_7
    :try_start_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 110
    move-result v2

    .line 111
    iput v2, p0, Landroid/net/resolv/aidl/Nat64PrefixEventParcel;->prefixLength:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 113
    sub-int/2addr v4, v1

    .line 114
    if-gt v0, v4, :cond_8

    .line 116
    add-int/2addr v0, v1

    .line 117
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 120
    return-void

    .line 121
    :cond_8
    new-instance p0, Landroid/os/BadParcelableException;

    .line 123
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 126
    throw p0

    .line 127
    :catchall_0
    move-exception p0

    .line 128
    goto :goto_1

    .line 129
    :cond_9
    :try_start_5
    new-instance p0, Landroid/os/BadParcelableException;

    .line 131
    const-string v2, "Parcelable too small"

    .line 133
    invoke-direct {p0, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 136
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 137
    :goto_1
    sub-int/2addr v4, v1

    .line 138
    if-le v0, v4, :cond_a

    .line 140
    new-instance p0, Landroid/os/BadParcelableException;

    .line 142
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 145
    throw p0

    .line 146
    :cond_a
    add-int/2addr v0, v1

    .line 147
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 150
    throw p0
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
    iget v2, p0, Landroid/net/resolv/aidl/Nat64PrefixEventParcel;->netId:I

    .line 24
    const-string/jumbo v3, "prefixOperation: "

    .line 27
    invoke-static {v1, v2, v0, v3}, Landroid/hardware/broadcastradio/AmFmBandRange$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/util/StringJoiner;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    move-result-object v1

    .line 31
    iget v2, p0, Landroid/net/resolv/aidl/Nat64PrefixEventParcel;->prefixOperation:I

    .line 33
    const-string/jumbo v3, "prefixAddress: "

    .line 36
    invoke-static {v1, v2, v0, v3}, Landroid/hardware/broadcastradio/AmFmBandRange$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/util/StringJoiner;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    move-result-object v1

    .line 40
    iget-object v2, p0, Landroid/net/resolv/aidl/Nat64PrefixEventParcel;->prefixAddress:Ljava/lang/String;

    .line 42
    const-string/jumbo v3, "prefixLength: "

    .line 45
    invoke-static {v2, v3, v1, v0}, Landroid/hardware/broadcastradio/DabTableEntry$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/StringJoiner;)Ljava/lang/StringBuilder;

    .line 48
    move-result-object v1

    .line 49
    iget p0, p0, Landroid/net/resolv/aidl/Nat64PrefixEventParcel;->prefixLength:I

    .line 51
    const-string v2, "Nat64PrefixEventParcel"

    .line 53
    invoke-static {v1, p0, v0, v2}, Landroid/hardware/broadcastradio/AmFmBandRange$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/util/StringJoiner;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    move-result-object p0

    .line 57
    invoke-static {v0, p0}, Landroid/hardware/broadcastradio/AmFmBandRange$$ExternalSyntheticOutline0;->m(Ljava/util/StringJoiner;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 60
    move-result-object p0

    .line 61
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
    iget v0, p0, Landroid/net/resolv/aidl/Nat64PrefixEventParcel;->netId:I

    .line 11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    iget v0, p0, Landroid/net/resolv/aidl/Nat64PrefixEventParcel;->prefixOperation:I

    .line 16
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    iget-object v0, p0, Landroid/net/resolv/aidl/Nat64PrefixEventParcel;->prefixAddress:Ljava/lang/String;

    .line 21
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 24
    iget p0, p0, Landroid/net/resolv/aidl/Nat64PrefixEventParcel;->prefixLength:I

    .line 26
    invoke-static {p1, p0, p2}, Landroid/companion/virtualcamera/SupportedStreamConfiguration$$ExternalSyntheticOutline0;->m(Landroid/os/Parcel;II)I

    .line 29
    move-result p0

    .line 30
    invoke-static {p0, p2, p1, p0}, Landroid/companion/virtualcamera/SupportedStreamConfiguration$$ExternalSyntheticOutline0;->m(IILandroid/os/Parcel;I)V

    .line 33
    return-void
.end method
