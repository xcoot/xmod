.class public Landroid/net/ResolverOptionsParcel;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public enforceDnsUid:Z

.field public hosts:[Landroid/net/ResolverHostsParcel;

.field public tcMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/net/ResolverOptionsParcel$1;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    sput-object v0, Landroid/net/ResolverOptionsParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    new-array v1, v0, [Landroid/net/ResolverHostsParcel;

    .line 7
    iput-object v1, p0, Landroid/net/ResolverOptionsParcel;->hosts:[Landroid/net/ResolverHostsParcel;

    .line 9
    iput v0, p0, Landroid/net/ResolverOptionsParcel;->tcMode:I

    .line 11
    iput-boolean v0, p0, Landroid/net/ResolverOptionsParcel;->enforceDnsUid:Z

    .line 13
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
    invoke-direct {p0, v3}, Landroid/net/ResolverOptionsParcel;->describeContents(Ljava/lang/Object;)I

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


# virtual methods
.method public describeContents()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/net/ResolverOptionsParcel;->hosts:[Landroid/net/ResolverHostsParcel;

    invoke-direct {p0, v0}, Landroid/net/ResolverOptionsParcel;->describeContents(Ljava/lang/Object;)I

    move-result p0

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
    if-lt v1, v2, :cond_7

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
    sget-object v2, Landroid/net/ResolverHostsParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 40
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 43
    move-result-object v2

    .line 44
    check-cast v2, [Landroid/net/ResolverHostsParcel;

    .line 46
    iput-object v2, p0, Landroid/net/ResolverOptionsParcel;->hosts:[Landroid/net/ResolverHostsParcel;

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 51
    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    sub-int/2addr v2, v0

    .line 53
    if-lt v2, v1, :cond_3

    .line 55
    sub-int/2addr v4, v1

    .line 56
    if-gt v0, v4, :cond_2

    .line 58
    goto :goto_0

    .line 59
    :cond_2
    new-instance p0, Landroid/os/BadParcelableException;

    .line 61
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 64
    throw p0

    .line 65
    :cond_3
    :try_start_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 68
    move-result v2

    .line 69
    iput v2, p0, Landroid/net/ResolverOptionsParcel;->tcMode:I

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 74
    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 75
    sub-int/2addr v2, v0

    .line 76
    if-lt v2, v1, :cond_5

    .line 78
    sub-int/2addr v4, v1

    .line 79
    if-gt v0, v4, :cond_4

    .line 81
    goto :goto_0

    .line 82
    :cond_4
    new-instance p0, Landroid/os/BadParcelableException;

    .line 84
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 87
    throw p0

    .line 88
    :cond_5
    :try_start_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    .line 91
    move-result v2

    .line 92
    iput-boolean v2, p0, Landroid/net/ResolverOptionsParcel;->enforceDnsUid:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 94
    sub-int/2addr v4, v1

    .line 95
    if-gt v0, v4, :cond_6

    .line 97
    add-int/2addr v0, v1

    .line 98
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 101
    return-void

    .line 102
    :cond_6
    new-instance p0, Landroid/os/BadParcelableException;

    .line 104
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 107
    throw p0

    .line 108
    :catchall_0
    move-exception p0

    .line 109
    goto :goto_1

    .line 110
    :cond_7
    :try_start_4
    new-instance p0, Landroid/os/BadParcelableException;

    .line 112
    const-string v2, "Parcelable too small"

    .line 114
    invoke-direct {p0, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 117
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 118
    :goto_1
    sub-int/2addr v4, v1

    .line 119
    if-le v0, v4, :cond_8

    .line 121
    new-instance p0, Landroid/os/BadParcelableException;

    .line 123
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 126
    throw p0

    .line 127
    :cond_8
    add-int/2addr v0, v1

    .line 128
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 131
    throw p0
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
    iget-object v1, p0, Landroid/net/ResolverOptionsParcel;->hosts:[Landroid/net/ResolverHostsParcel;

    .line 11
    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 14
    iget p2, p0, Landroid/net/ResolverOptionsParcel;->tcMode:I

    .line 16
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    iget-boolean p0, p0, Landroid/net/ResolverOptionsParcel;->enforceDnsUid:Z

    .line 21
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 27
    move-result p0

    .line 28
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 31
    invoke-static {p0, v0, p1, p0}, Landroid/companion/virtualcamera/SupportedStreamConfiguration$$ExternalSyntheticOutline0;->m(IILandroid/os/Parcel;I)V

    .line 34
    return-void
.end method
