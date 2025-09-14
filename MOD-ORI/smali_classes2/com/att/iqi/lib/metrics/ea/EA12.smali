.class public Lcom/att/iqi/lib/metrics/ea/EA12;
.super Lcom/att/iqi/lib/Metric;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field private static final FLAG_CMAS:B = 0x2t

.field private static final FLAG_ETWS:B = 0x1t

.field private static final FLAG_HAS_GEO:B = -0x80t

.field public static final ID:Lcom/att/iqi/lib/Metric$ID;


# instance fields
.field private final lCid:I

.field private lCmasCategory:I

.field private lCmasCertainty:I

.field private lCmasMessageClass:I

.field private lCmasResponseType:I

.field private lCmasSeverity:I

.field private lCmasUrgency:I

.field private lEtwsWarningType:I

.field private final lGeographicalScope:I

.field private final lLac:I

.field private final lSerialNumber:I

.field private final lServiceCategory:I

.field private llReceivedTimeMillis:J

.field private final szGeometries:Ljava/lang/String;

.field private final szLanguage:Ljava/lang/String;

.field private final szPlmn:Ljava/lang/String;

.field private final ucFlags:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/att/iqi/lib/Metric$ID;

    .line 2
    .line 3
    const-string v1, "EA12"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/att/iqi/lib/Metric$ID;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/att/iqi/lib/metrics/ea/EA12;->ID:Lcom/att/iqi/lib/Metric$ID;

    .line 9
    .line 10
    new-instance v0, Lcom/att/iqi/lib/metrics/ea/EA12$1;

    .line 11
    .line 12
    invoke-direct {v0}, Lcom/att/iqi/lib/metrics/ea/EA12$1;-><init>()V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lcom/att/iqi/lib/metrics/ea/EA12;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/att/iqi/lib/Metric;-><init>(Landroid/os/Parcel;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/att/iqi/lib/metrics/ea/EA12;->lGeographicalScope:I

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/att/iqi/lib/metrics/ea/EA12;->lSerialNumber:I

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/att/iqi/lib/metrics/ea/EA12;->lServiceCategory:I

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/att/iqi/lib/metrics/ea/EA12;->lLac:I

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/att/iqi/lib/metrics/ea/EA12;->lCid:I

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/att/iqi/lib/metrics/ea/EA12;->ucFlags:B

    .line 9
    invoke-direct {p0}, Lcom/att/iqi/lib/metrics/ea/EA12;->flagsWithoutGeo()B

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/att/iqi/lib/metrics/ea/EA12;->lCmasMessageClass:I

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/att/iqi/lib/metrics/ea/EA12;->lCmasCategory:I

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/att/iqi/lib/metrics/ea/EA12;->lCmasResponseType:I

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/att/iqi/lib/metrics/ea/EA12;->lCmasSeverity:I

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/att/iqi/lib/metrics/ea/EA12;->lCmasUrgency:I

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/att/iqi/lib/metrics/ea/EA12;->lCmasCertainty:I

    goto :goto_0

    .line 16
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/att/iqi/lib/metrics/ea/EA12;->lEtwsWarningType:I

    .line 17
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/att/iqi/lib/metrics/ea/EA12;->szPlmn:Ljava/lang/String;

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/att/iqi/lib/metrics/ea/EA12;->szLanguage:Ljava/lang/String;

    .line 19
    invoke-direct {p0}, Lcom/att/iqi/lib/metrics/ea/EA12;->hasGeo()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/att/iqi/lib/metrics/ea/EA12;->llReceivedTimeMillis:J

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/att/iqi/lib/metrics/ea/EA12;->szGeometries:Ljava/lang/String;

    goto :goto_1

    .line 22
    :cond_2
    const-string p1, ""

    iput-object p1, p0, Lcom/att/iqi/lib/metrics/ea/EA12;->szGeometries:Ljava/lang/String;

    :goto_1
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 6

    .line 23
    invoke-direct {p0}, Lcom/att/iqi/lib/Metric;-><init>()V

    .line 24
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    .line 25
    invoke-interface {p1, v0, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    .line 26
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 27
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 28
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/att/iqi/lib/metrics/ea/EA12;->lGeographicalScope:I

    .line 29
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/att/iqi/lib/metrics/ea/EA12;->lSerialNumber:I

    .line 30
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/att/iqi/lib/metrics/ea/EA12;->szPlmn:Ljava/lang/String;

    .line 31
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/att/iqi/lib/metrics/ea/EA12;->lLac:I

    .line 32
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/att/iqi/lib/metrics/ea/EA12;->lCid:I

    .line 33
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/att/iqi/lib/metrics/ea/EA12;->lServiceCategory:I

    .line 34
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/att/iqi/lib/metrics/ea/EA12;->szLanguage:Ljava/lang/String;

    .line 35
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 36
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 37
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 38
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/16 v2, 0x43

    if-eq p1, v2, :cond_1

    const/16 v2, 0x45

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 39
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/att/iqi/lib/metrics/ea/EA12;->lEtwsWarningType:I

    .line 40
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 41
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 42
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 43
    invoke-virtual {v0}, Landroid/os/Parcel;->createByteArray()[B

    const/4 v1, 0x1

    goto :goto_0

    .line 44
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/att/iqi/lib/metrics/ea/EA12;->lCmasMessageClass:I

    .line 45
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/att/iqi/lib/metrics/ea/EA12;->lCmasCategory:I

    .line 46
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/att/iqi/lib/metrics/ea/EA12;->lCmasResponseType:I

    .line 47
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/att/iqi/lib/metrics/ea/EA12;->lCmasSeverity:I

    .line 48
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/att/iqi/lib/metrics/ea/EA12;->lCmasUrgency:I

    .line 49
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/att/iqi/lib/metrics/ea/EA12;->lCmasCertainty:I

    const/4 v1, 0x2

    .line 50
    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 51
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_2

    if-eqz p1, :cond_2

    or-int/lit8 v1, v1, -0x80

    int-to-byte v1, v1

    .line 52
    iput-wide v2, p0, Lcom/att/iqi/lib/metrics/ea/EA12;->llReceivedTimeMillis:J

    .line 53
    iput-object p1, p0, Lcom/att/iqi/lib/metrics/ea/EA12;->szGeometries:Ljava/lang/String;

    goto :goto_1

    .line 54
    :cond_2
    const-string p1, ""

    iput-object p1, p0, Lcom/att/iqi/lib/metrics/ea/EA12;->szGeometries:Ljava/lang/String;

    .line 55
    :goto_1
    iput-byte v1, p0, Lcom/att/iqi/lib/metrics/ea/EA12;->ucFlags:B

    .line 56
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void
.end method

.method private flagsWithoutGeo()B
    .locals 0

    .line 1
    iget-byte p0, p0, Lcom/att/iqi/lib/metrics/ea/EA12;->ucFlags:B

    .line 2
    .line 3
    and-int/lit16 p0, p0, -0x81

    .line 4
    .line 5
    int-to-byte p0, p0

    .line 6
    return p0
.end method

.method private hasGeo()Z
    .locals 0

    .line 1
    iget-byte p0, p0, Lcom/att/iqi/lib/metrics/ea/EA12;->ucFlags:B

    .line 2
    .line 3
    and-int/lit8 p0, p0, -0x80

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    :goto_0
    return p0
.end method


# virtual methods
.method public serialize(Ljava/nio/ByteBuffer;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferOverflowException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/att/iqi/lib/metrics/ea/EA12;->lServiceCategory:I

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 4
    .line 5
    .line 6
    iget v0, p0, Lcom/att/iqi/lib/metrics/ea/EA12;->lSerialNumber:I

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 9
    .line 10
    .line 11
    iget v0, p0, Lcom/att/iqi/lib/metrics/ea/EA12;->lGeographicalScope:I

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 14
    .line 15
    .line 16
    iget v0, p0, Lcom/att/iqi/lib/metrics/ea/EA12;->lLac:I

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 19
    .line 20
    .line 21
    iget v0, p0, Lcom/att/iqi/lib/metrics/ea/EA12;->lCid:I

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 24
    .line 25
    .line 26
    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/ea/EA12;->ucFlags:B

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 29
    .line 30
    .line 31
    invoke-direct {p0}, Lcom/att/iqi/lib/metrics/ea/EA12;->flagsWithoutGeo()B

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    const/4 v1, 0x1

    .line 36
    if-eq v0, v1, :cond_1

    .line 37
    .line 38
    const/4 v1, 0x2

    .line 39
    if-eq v0, v1, :cond_0

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    iget v0, p0, Lcom/att/iqi/lib/metrics/ea/EA12;->lCmasMessageClass:I

    .line 43
    .line 44
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 45
    .line 46
    .line 47
    iget v0, p0, Lcom/att/iqi/lib/metrics/ea/EA12;->lCmasCategory:I

    .line 48
    .line 49
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 50
    .line 51
    .line 52
    iget v0, p0, Lcom/att/iqi/lib/metrics/ea/EA12;->lCmasResponseType:I

    .line 53
    .line 54
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 55
    .line 56
    .line 57
    iget v0, p0, Lcom/att/iqi/lib/metrics/ea/EA12;->lCmasSeverity:I

    .line 58
    .line 59
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 60
    .line 61
    .line 62
    iget v0, p0, Lcom/att/iqi/lib/metrics/ea/EA12;->lCmasUrgency:I

    .line 63
    .line 64
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 65
    .line 66
    .line 67
    iget v0, p0, Lcom/att/iqi/lib/metrics/ea/EA12;->lCmasCertainty:I

    .line 68
    .line 69
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_1
    iget v0, p0, Lcom/att/iqi/lib/metrics/ea/EA12;->lEtwsWarningType:I

    .line 74
    .line 75
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 76
    .line 77
    .line 78
    :goto_0
    iget-object v0, p0, Lcom/att/iqi/lib/metrics/ea/EA12;->szPlmn:Ljava/lang/String;

    .line 79
    .line 80
    invoke-virtual {p0, p1, v0}, Lcom/att/iqi/lib/Metric;->stringOut(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    iget-object v0, p0, Lcom/att/iqi/lib/metrics/ea/EA12;->szLanguage:Ljava/lang/String;

    .line 84
    .line 85
    invoke-virtual {p0, p1, v0}, Lcom/att/iqi/lib/Metric;->stringOut(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-direct {p0}, Lcom/att/iqi/lib/metrics/ea/EA12;->hasGeo()Z

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    if-eqz v0, :cond_2

    .line 93
    .line 94
    iget-wide v0, p0, Lcom/att/iqi/lib/metrics/ea/EA12;->llReceivedTimeMillis:J

    .line 95
    .line 96
    invoke-virtual {p1, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 97
    .line 98
    .line 99
    iget-object v0, p0, Lcom/att/iqi/lib/metrics/ea/EA12;->szGeometries:Ljava/lang/String;

    .line 100
    .line 101
    invoke-virtual {p0, p1, v0}, Lcom/att/iqi/lib/Metric;->stringOut(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    :cond_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    .line 105
    .line 106
    .line 107
    move-result p0

    .line 108
    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Lcom/att/iqi/lib/Metric;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2
    .line 3
    .line 4
    iget p2, p0, Lcom/att/iqi/lib/metrics/ea/EA12;->lGeographicalScope:I

    .line 5
    .line 6
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    .line 8
    .line 9
    iget p2, p0, Lcom/att/iqi/lib/metrics/ea/EA12;->lSerialNumber:I

    .line 10
    .line 11
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12
    .line 13
    .line 14
    iget p2, p0, Lcom/att/iqi/lib/metrics/ea/EA12;->lServiceCategory:I

    .line 15
    .line 16
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 17
    .line 18
    .line 19
    iget p2, p0, Lcom/att/iqi/lib/metrics/ea/EA12;->lLac:I

    .line 20
    .line 21
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 22
    .line 23
    .line 24
    iget p2, p0, Lcom/att/iqi/lib/metrics/ea/EA12;->lCid:I

    .line 25
    .line 26
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 27
    .line 28
    .line 29
    iget-byte p2, p0, Lcom/att/iqi/lib/metrics/ea/EA12;->ucFlags:B

    .line 30
    .line 31
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 32
    .line 33
    .line 34
    invoke-direct {p0}, Lcom/att/iqi/lib/metrics/ea/EA12;->flagsWithoutGeo()B

    .line 35
    .line 36
    .line 37
    move-result p2

    .line 38
    const/4 v0, 0x1

    .line 39
    if-eq p2, v0, :cond_1

    .line 40
    .line 41
    const/4 v0, 0x2

    .line 42
    if-eq p2, v0, :cond_0

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    iget p2, p0, Lcom/att/iqi/lib/metrics/ea/EA12;->lCmasMessageClass:I

    .line 46
    .line 47
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 48
    .line 49
    .line 50
    iget p2, p0, Lcom/att/iqi/lib/metrics/ea/EA12;->lCmasCategory:I

    .line 51
    .line 52
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 53
    .line 54
    .line 55
    iget p2, p0, Lcom/att/iqi/lib/metrics/ea/EA12;->lCmasResponseType:I

    .line 56
    .line 57
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    .line 59
    .line 60
    iget p2, p0, Lcom/att/iqi/lib/metrics/ea/EA12;->lCmasSeverity:I

    .line 61
    .line 62
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    .line 64
    .line 65
    iget p2, p0, Lcom/att/iqi/lib/metrics/ea/EA12;->lCmasUrgency:I

    .line 66
    .line 67
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    .line 69
    .line 70
    iget p2, p0, Lcom/att/iqi/lib/metrics/ea/EA12;->lCmasCertainty:I

    .line 71
    .line 72
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_1
    iget p2, p0, Lcom/att/iqi/lib/metrics/ea/EA12;->lEtwsWarningType:I

    .line 77
    .line 78
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    .line 80
    .line 81
    :goto_0
    iget-object p2, p0, Lcom/att/iqi/lib/metrics/ea/EA12;->szPlmn:Ljava/lang/String;

    .line 82
    .line 83
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    iget-object p2, p0, Lcom/att/iqi/lib/metrics/ea/EA12;->szLanguage:Ljava/lang/String;

    .line 87
    .line 88
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-direct {p0}, Lcom/att/iqi/lib/metrics/ea/EA12;->hasGeo()Z

    .line 92
    .line 93
    .line 94
    move-result p2

    .line 95
    if-eqz p2, :cond_2

    .line 96
    .line 97
    iget-wide v0, p0, Lcom/att/iqi/lib/metrics/ea/EA12;->llReceivedTimeMillis:J

    .line 98
    .line 99
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 100
    .line 101
    .line 102
    iget-object p0, p0, Lcom/att/iqi/lib/metrics/ea/EA12;->szGeometries:Ljava/lang/String;

    .line 103
    .line 104
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    :cond_2
    return-void
.end method
