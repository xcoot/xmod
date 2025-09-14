.class public Lcom/att/iqi/lib/metrics/rp/RP12;
.super Lcom/att/iqi/lib/Metric;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field public static final ID:Lcom/att/iqi/lib/Metric$ID;


# instance fields
.field private m_dwByteCount:I

.field private m_dwDuration:I

.field private m_dwPktCount:I

.field private m_dwPktLoss:I

.field private m_dwSsrc:I

.field private m_strIpSrcAddr:[B

.field private m_ucIpVersion:B

.field private m_ucMediaType:B

.field private m_wCumAvgPktSize:S

.field private m_wDstPort:S

.field private m_wMaxDelta:S

.field private m_wMaxJitter:S

.field private m_wMeanJitter:S


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/att/iqi/lib/Metric$ID;

    .line 2
    .line 3
    const-string v1, "RP12"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/att/iqi/lib/Metric$ID;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/att/iqi/lib/metrics/rp/RP12;->ID:Lcom/att/iqi/lib/Metric$ID;

    .line 9
    .line 10
    new-instance v0, Lcom/att/iqi/lib/metrics/rp/RP12$1;

    .line 11
    .line 12
    invoke-direct {v0}, Lcom/att/iqi/lib/metrics/rp/RP12$1;-><init>()V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lcom/att/iqi/lib/metrics/rp/RP12;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/att/iqi/lib/Metric;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/att/iqi/lib/metrics/rp/RP12;->reset()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 3
    invoke-direct {p0, p1}, Lcom/att/iqi/lib/Metric;-><init>(Landroid/os/Parcel;)V

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_dwSsrc:I

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_dwDuration:I

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_dwPktCount:I

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_dwPktLoss:I

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_dwByteCount:I

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_wDstPort:S

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_wMeanJitter:S

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_wMaxJitter:S

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_wMaxDelta:S

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_wCumAvgPktSize:S

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_ucMediaType:B

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_ucIpVersion:B

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_0

    .line 18
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_strIpSrcAddr:[B

    .line 19
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getByteCount()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_dwByteCount:I

    .line 2
    .line 3
    return p0
.end method

.method public getCumAvgPktSize()S
    .locals 0

    .line 1
    iget-short p0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_wCumAvgPktSize:S

    .line 2
    .line 3
    return p0
.end method

.method public getDstPort()S
    .locals 0

    .line 1
    iget-short p0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_wDstPort:S

    .line 2
    .line 3
    return p0
.end method

.method public getDuration()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_dwDuration:I

    .line 2
    .line 3
    return p0
.end method

.method public getIpSrcAddr()[B
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_strIpSrcAddr:[B

    .line 2
    .line 3
    return-object p0
.end method

.method public getIpVersion()B
    .locals 0

    .line 1
    iget-byte p0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_ucIpVersion:B

    .line 2
    .line 3
    return p0
.end method

.method public getMaxDelta()S
    .locals 0

    .line 1
    iget-short p0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_wMaxDelta:S

    .line 2
    .line 3
    return p0
.end method

.method public getMaxJitter()S
    .locals 0

    .line 1
    iget-short p0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_wMaxJitter:S

    .line 2
    .line 3
    return p0
.end method

.method public getMeanJitter()S
    .locals 0

    .line 1
    iget-short p0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_wMeanJitter:S

    .line 2
    .line 3
    return p0
.end method

.method public getMediaType()B
    .locals 0

    .line 1
    iget-byte p0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_ucMediaType:B

    .line 2
    .line 3
    return p0
.end method

.method public getPktCount()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_dwPktCount:I

    .line 2
    .line 3
    return p0
.end method

.method public getPktLoss()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_dwPktLoss:I

    .line 2
    .line 3
    return p0
.end method

.method public getSsrc()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_dwSsrc:I

    .line 2
    .line 3
    return p0
.end method

.method public reset()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_dwSsrc:I

    .line 3
    .line 4
    iput v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_dwDuration:I

    .line 5
    .line 6
    iput v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_dwPktCount:I

    .line 7
    .line 8
    iput v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_dwPktLoss:I

    .line 9
    .line 10
    iput v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_dwByteCount:I

    .line 11
    .line 12
    iput-short v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_wDstPort:S

    .line 13
    .line 14
    iput-short v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_wMeanJitter:S

    .line 15
    .line 16
    iput-short v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_wMaxJitter:S

    .line 17
    .line 18
    iput-short v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_wMaxDelta:S

    .line 19
    .line 20
    iput-short v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_wCumAvgPktSize:S

    .line 21
    .line 22
    iput-byte v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_ucMediaType:B

    .line 23
    .line 24
    iput-byte v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_ucIpVersion:B

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_strIpSrcAddr:[B

    .line 28
    .line 29
    return-void
.end method

.method public serialize(Ljava/nio/ByteBuffer;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferOverflowException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_dwSsrc:I

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 4
    .line 5
    .line 6
    iget v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_dwDuration:I

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 9
    .line 10
    .line 11
    iget v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_dwPktCount:I

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 14
    .line 15
    .line 16
    iget v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_dwPktLoss:I

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 19
    .line 20
    .line 21
    iget v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_dwByteCount:I

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 24
    .line 25
    .line 26
    iget-short v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_wDstPort:S

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 29
    .line 30
    .line 31
    iget-short v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_wMeanJitter:S

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 34
    .line 35
    .line 36
    iget-short v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_wMaxJitter:S

    .line 37
    .line 38
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 39
    .line 40
    .line 41
    iget-short v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_wMaxDelta:S

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 44
    .line 45
    .line 46
    iget-short v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_wCumAvgPktSize:S

    .line 47
    .line 48
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 49
    .line 50
    .line 51
    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_ucMediaType:B

    .line 52
    .line 53
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 54
    .line 55
    .line 56
    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_ucIpVersion:B

    .line 57
    .line 58
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 59
    .line 60
    .line 61
    iget-object p0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_strIpSrcAddr:[B

    .line 62
    .line 63
    if-eqz p0, :cond_0

    .line 64
    .line 65
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 66
    .line 67
    .line 68
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    .line 69
    .line 70
    .line 71
    move-result p0

    .line 72
    return p0
.end method

.method public setByteCount(I)Lcom/att/iqi/lib/metrics/rp/RP12;
    .locals 0

    .line 1
    iput p1, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_dwByteCount:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setCumAvgPktSize(S)Lcom/att/iqi/lib/metrics/rp/RP12;
    .locals 0

    .line 1
    iput-short p1, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_wCumAvgPktSize:S

    .line 2
    .line 3
    return-object p0
.end method

.method public setDstPort(S)Lcom/att/iqi/lib/metrics/rp/RP12;
    .locals 0

    .line 1
    iput-short p1, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_wDstPort:S

    .line 2
    .line 3
    return-object p0
.end method

.method public setDuration(I)Lcom/att/iqi/lib/metrics/rp/RP12;
    .locals 0

    .line 1
    iput p1, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_dwDuration:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setIpSrcAddr([B)Lcom/att/iqi/lib/metrics/rp/RP12;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_strIpSrcAddr:[B

    .line 2
    .line 3
    return-object p0
.end method

.method public setIpVersion(B)Lcom/att/iqi/lib/metrics/rp/RP12;
    .locals 0

    .line 1
    iput-byte p1, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_ucIpVersion:B

    .line 2
    .line 3
    return-object p0
.end method

.method public setMaxDelta(S)Lcom/att/iqi/lib/metrics/rp/RP12;
    .locals 0

    .line 1
    iput-short p1, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_wMaxDelta:S

    .line 2
    .line 3
    return-object p0
.end method

.method public setMaxJitter(S)Lcom/att/iqi/lib/metrics/rp/RP12;
    .locals 0

    .line 1
    iput-short p1, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_wMaxJitter:S

    .line 2
    .line 3
    return-object p0
.end method

.method public setMeanJitter(S)Lcom/att/iqi/lib/metrics/rp/RP12;
    .locals 0

    .line 1
    iput-short p1, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_wMeanJitter:S

    .line 2
    .line 3
    return-object p0
.end method

.method public setMediaType(B)Lcom/att/iqi/lib/metrics/rp/RP12;
    .locals 0

    .line 1
    iput-byte p1, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_ucMediaType:B

    .line 2
    .line 3
    return-object p0
.end method

.method public setPktCount(I)Lcom/att/iqi/lib/metrics/rp/RP12;
    .locals 0

    .line 1
    iput p1, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_dwPktCount:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setPktLoss(I)Lcom/att/iqi/lib/metrics/rp/RP12;
    .locals 0

    .line 1
    iput p1, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_dwPktLoss:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setSsrc(I)Lcom/att/iqi/lib/metrics/rp/RP12;
    .locals 0

    .line 1
    iput p1, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_dwSsrc:I

    .line 2
    .line 3
    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lcom/att/iqi/lib/Metric;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2
    .line 3
    .line 4
    iget p2, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_dwSsrc:I

    .line 5
    .line 6
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    .line 8
    .line 9
    iget p2, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_dwDuration:I

    .line 10
    .line 11
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12
    .line 13
    .line 14
    iget p2, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_dwPktCount:I

    .line 15
    .line 16
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 17
    .line 18
    .line 19
    iget p2, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_dwPktLoss:I

    .line 20
    .line 21
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 22
    .line 23
    .line 24
    iget p2, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_dwByteCount:I

    .line 25
    .line 26
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 27
    .line 28
    .line 29
    iget-short p2, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_wDstPort:S

    .line 30
    .line 31
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 32
    .line 33
    .line 34
    iget-short p2, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_wMeanJitter:S

    .line 35
    .line 36
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 37
    .line 38
    .line 39
    iget-short p2, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_wMaxJitter:S

    .line 40
    .line 41
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 42
    .line 43
    .line 44
    iget-short p2, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_wMaxDelta:S

    .line 45
    .line 46
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 47
    .line 48
    .line 49
    iget-short p2, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_wCumAvgPktSize:S

    .line 50
    .line 51
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    .line 53
    .line 54
    iget-byte p2, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_ucMediaType:B

    .line 55
    .line 56
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 57
    .line 58
    .line 59
    iget-byte p2, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_ucIpVersion:B

    .line 60
    .line 61
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 62
    .line 63
    .line 64
    iget-object p2, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_strIpSrcAddr:[B

    .line 65
    .line 66
    const/4 v0, 0x0

    .line 67
    if-eqz p2, :cond_0

    .line 68
    .line 69
    array-length p2, p2

    .line 70
    goto :goto_0

    .line 71
    :cond_0
    move p2, v0

    .line 72
    :goto_0
    if-lez p2, :cond_1

    .line 73
    .line 74
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 75
    .line 76
    .line 77
    iget-object p0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m_strIpSrcAddr:[B

    .line 78
    .line 79
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    .line 85
    .line 86
    :goto_1
    return-void
.end method
