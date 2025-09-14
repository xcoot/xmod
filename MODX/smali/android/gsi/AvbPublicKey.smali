.class public Landroid/gsi/AvbPublicKey;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public bytes:[B

.field public sha1:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/gsi/AvbPublicKey$1;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    sput-object v0, Landroid/gsi/AvbPublicKey;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
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
    if-lt v1, v2, :cond_5

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
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    .line 41
    move-result-object v2

    .line 42
    iput-object v2, p0, Landroid/gsi/AvbPublicKey;->bytes:[B

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
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    .line 64
    move-result-object v2

    .line 65
    iput-object v2, p0, Landroid/gsi/AvbPublicKey;->sha1:[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 67
    sub-int/2addr v4, v1

    .line 68
    if-gt v0, v4, :cond_4

    .line 70
    add-int/2addr v0, v1

    .line 71
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 74
    return-void

    .line 75
    :cond_4
    new-instance p0, Landroid/os/BadParcelableException;

    .line 77
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 80
    throw p0

    .line 81
    :catchall_0
    move-exception p0

    .line 82
    goto :goto_1

    .line 83
    :cond_5
    :try_start_3
    new-instance p0, Landroid/os/BadParcelableException;

    .line 85
    const-string v2, "Parcelable too small"

    .line 87
    invoke-direct {p0, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 90
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 91
    :goto_1
    sub-int/2addr v4, v1

    .line 92
    if-le v0, v4, :cond_6

    .line 94
    new-instance p0, Landroid/os/BadParcelableException;

    .line 96
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 99
    throw p0

    .line 100
    :cond_6
    add-int/2addr v0, v1

    .line 101
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 104
    throw p0
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
    iget-object v0, p0, Landroid/gsi/AvbPublicKey;->bytes:[B

    .line 11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 14
    iget-object p0, p0, Landroid/gsi/AvbPublicKey;->sha1:[B

    .line 16
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 22
    move-result p0

    .line 23
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 26
    invoke-static {p0, p2, p1, p0}, Landroid/companion/virtualcamera/SupportedStreamConfiguration$$ExternalSyntheticOutline0;->m(IILandroid/os/Parcel;I)V

    .line 29
    return-void
.end method
