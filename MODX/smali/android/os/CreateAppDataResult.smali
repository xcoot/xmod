.class public Landroid/os/CreateAppDataResult;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public ceDataInode:J

.field public deDataInode:J

.field public exceptionCode:I

.field public exceptionMessage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/os/CreateAppDataResult$1;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    sput-object v0, Landroid/os/CreateAppDataResult;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Landroid/os/CreateAppDataResult;->ceDataInode:J

    .line 8
    iput-wide v0, p0, Landroid/os/CreateAppDataResult;->deDataInode:J

    .line 10
    const/4 v0, 0x0

    .line 11
    iput v0, p0, Landroid/os/CreateAppDataResult;->exceptionCode:I

    .line 13
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
    .locals 7

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
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    .line 41
    move-result-wide v5

    .line 42
    iput-wide v5, p0, Landroid/os/CreateAppDataResult;->ceDataInode:J

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
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    .line 64
    move-result-wide v5

    .line 65
    iput-wide v5, p0, Landroid/os/CreateAppDataResult;->deDataInode:J

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
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 87
    move-result v2

    .line 88
    iput v2, p0, Landroid/os/CreateAppDataResult;->exceptionCode:I

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
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 110
    move-result-object v2

    .line 111
    iput-object v2, p0, Landroid/os/CreateAppDataResult;->exceptionMessage:Ljava/lang/String;
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

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 4
    move-result p2

    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    iget-wide v0, p0, Landroid/os/CreateAppDataResult;->ceDataInode:J

    .line 11
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 14
    iget-wide v0, p0, Landroid/os/CreateAppDataResult;->deDataInode:J

    .line 16
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 19
    iget v0, p0, Landroid/os/CreateAppDataResult;->exceptionCode:I

    .line 21
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 24
    iget-object p0, p0, Landroid/os/CreateAppDataResult;->exceptionMessage:Ljava/lang/String;

    .line 26
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 32
    move-result p0

    .line 33
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 36
    invoke-static {p0, p2, p1, p0}, Landroid/companion/virtualcamera/SupportedStreamConfiguration$$ExternalSyntheticOutline0;->m(IILandroid/os/Parcel;I)V

    .line 39
    return-void
.end method
