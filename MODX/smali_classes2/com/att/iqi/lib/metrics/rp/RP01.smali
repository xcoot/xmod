.class public Lcom/att/iqi/lib/metrics/rp/RP01;
.super Lcom/att/iqi/lib/Metric;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field public static final ID:Lcom/att/iqi/lib/Metric$ID;


# instance fields
.field private m_dwSourceId:I

.field private m_dwTimestamp:I

.field private m_ucFlags:B

.field private m_ucPayloadType:B

.field private m_wByteCount:S

.field private m_wDstPort:S

.field private m_wSequenceNum:S


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/att/iqi/lib/Metric$ID;

    .line 2
    .line 3
    const-string v1, "RP01"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/att/iqi/lib/Metric$ID;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/att/iqi/lib/metrics/rp/RP01;->ID:Lcom/att/iqi/lib/Metric$ID;

    .line 9
    .line 10
    new-instance v0, Lcom/att/iqi/lib/metrics/rp/RP01$1;

    .line 11
    .line 12
    invoke-direct {v0}, Lcom/att/iqi/lib/metrics/rp/RP01$1;-><init>()V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lcom/att/iqi/lib/metrics/rp/RP01;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/att/iqi/lib/Metric;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/att/iqi/lib/metrics/rp/RP01;->reset()V

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

    int-to-short v0, v0

    iput-short v0, p0, Lcom/att/iqi/lib/metrics/rp/RP01;->m_wByteCount:S

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/att/iqi/lib/metrics/rp/RP01;->m_wDstPort:S

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/att/iqi/lib/metrics/rp/RP01;->m_ucFlags:B

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/att/iqi/lib/metrics/rp/RP01;->m_ucPayloadType:B

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/att/iqi/lib/metrics/rp/RP01;->m_wSequenceNum:S

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/att/iqi/lib/metrics/rp/RP01;->m_dwTimestamp:I

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/att/iqi/lib/metrics/rp/RP01;->m_dwSourceId:I

    :cond_0
    return-void
.end method


# virtual methods
.method public getByteCount()S
    .locals 0

    .line 1
    iget-short p0, p0, Lcom/att/iqi/lib/metrics/rp/RP01;->m_wByteCount:S

    .line 2
    .line 3
    return p0
.end method

.method public getDstPort()S
    .locals 0

    .line 1
    iget-short p0, p0, Lcom/att/iqi/lib/metrics/rp/RP01;->m_wDstPort:S

    .line 2
    .line 3
    return p0
.end method

.method public getFlags()B
    .locals 0

    .line 1
    iget-byte p0, p0, Lcom/att/iqi/lib/metrics/rp/RP01;->m_ucFlags:B

    .line 2
    .line 3
    return p0
.end method

.method public getPayloadType()B
    .locals 0

    .line 1
    iget-byte p0, p0, Lcom/att/iqi/lib/metrics/rp/RP01;->m_ucPayloadType:B

    .line 2
    .line 3
    return p0
.end method

.method public getSequenceNum()S
    .locals 0

    .line 1
    iget-short p0, p0, Lcom/att/iqi/lib/metrics/rp/RP01;->m_wSequenceNum:S

    .line 2
    .line 3
    return p0
.end method

.method public getSourceId()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/att/iqi/lib/metrics/rp/RP01;->m_dwSourceId:I

    .line 2
    .line 3
    return p0
.end method

.method public getTimestamp()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/att/iqi/lib/metrics/rp/RP01;->m_dwTimestamp:I

    .line 2
    .line 3
    return p0
.end method

.method public reset()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-short v0, p0, Lcom/att/iqi/lib/metrics/rp/RP01;->m_wByteCount:S

    .line 3
    .line 4
    iput-short v0, p0, Lcom/att/iqi/lib/metrics/rp/RP01;->m_wDstPort:S

    .line 5
    .line 6
    iput-byte v0, p0, Lcom/att/iqi/lib/metrics/rp/RP01;->m_ucFlags:B

    .line 7
    .line 8
    iput-byte v0, p0, Lcom/att/iqi/lib/metrics/rp/RP01;->m_ucPayloadType:B

    .line 9
    .line 10
    iput-short v0, p0, Lcom/att/iqi/lib/metrics/rp/RP01;->m_wSequenceNum:S

    .line 11
    .line 12
    iput v0, p0, Lcom/att/iqi/lib/metrics/rp/RP01;->m_dwTimestamp:I

    .line 13
    .line 14
    iput v0, p0, Lcom/att/iqi/lib/metrics/rp/RP01;->m_dwSourceId:I

    .line 15
    .line 16
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
    iget-short v0, p0, Lcom/att/iqi/lib/metrics/rp/RP01;->m_wByteCount:S

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 4
    .line 5
    .line 6
    iget-short v0, p0, Lcom/att/iqi/lib/metrics/rp/RP01;->m_wDstPort:S

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 9
    .line 10
    .line 11
    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/rp/RP01;->m_ucFlags:B

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 14
    .line 15
    .line 16
    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/rp/RP01;->m_ucPayloadType:B

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 19
    .line 20
    .line 21
    iget-short v0, p0, Lcom/att/iqi/lib/metrics/rp/RP01;->m_wSequenceNum:S

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 24
    .line 25
    .line 26
    iget v0, p0, Lcom/att/iqi/lib/metrics/rp/RP01;->m_dwTimestamp:I

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 29
    .line 30
    .line 31
    iget p0, p0, Lcom/att/iqi/lib/metrics/rp/RP01;->m_dwSourceId:I

    .line 32
    .line 33
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    return p0
.end method

.method public setByteCount(S)Lcom/att/iqi/lib/metrics/rp/RP01;
    .locals 0

    .line 1
    iput-short p1, p0, Lcom/att/iqi/lib/metrics/rp/RP01;->m_wByteCount:S

    .line 2
    .line 3
    return-object p0
.end method

.method public setDstPort(S)Lcom/att/iqi/lib/metrics/rp/RP01;
    .locals 0

    .line 1
    iput-short p1, p0, Lcom/att/iqi/lib/metrics/rp/RP01;->m_wDstPort:S

    .line 2
    .line 3
    return-object p0
.end method

.method public setFlags(B)Lcom/att/iqi/lib/metrics/rp/RP01;
    .locals 0

    .line 1
    iput-byte p1, p0, Lcom/att/iqi/lib/metrics/rp/RP01;->m_ucFlags:B

    .line 2
    .line 3
    return-object p0
.end method

.method public setPayloadType(B)Lcom/att/iqi/lib/metrics/rp/RP01;
    .locals 0

    .line 1
    iput-byte p1, p0, Lcom/att/iqi/lib/metrics/rp/RP01;->m_ucPayloadType:B

    .line 2
    .line 3
    return-object p0
.end method

.method public setSequenceNum(S)Lcom/att/iqi/lib/metrics/rp/RP01;
    .locals 0

    .line 1
    iput-short p1, p0, Lcom/att/iqi/lib/metrics/rp/RP01;->m_wSequenceNum:S

    .line 2
    .line 3
    return-object p0
.end method

.method public setSourceId(I)Lcom/att/iqi/lib/metrics/rp/RP01;
    .locals 0

    .line 1
    iput p1, p0, Lcom/att/iqi/lib/metrics/rp/RP01;->m_dwSourceId:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setTimestamp(I)Lcom/att/iqi/lib/metrics/rp/RP01;
    .locals 0

    .line 1
    iput p1, p0, Lcom/att/iqi/lib/metrics/rp/RP01;->m_dwTimestamp:I

    .line 2
    .line 3
    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/att/iqi/lib/Metric;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2
    .line 3
    .line 4
    iget-short p2, p0, Lcom/att/iqi/lib/metrics/rp/RP01;->m_wByteCount:S

    .line 5
    .line 6
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    .line 8
    .line 9
    iget-short p2, p0, Lcom/att/iqi/lib/metrics/rp/RP01;->m_wDstPort:S

    .line 10
    .line 11
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12
    .line 13
    .line 14
    iget-byte p2, p0, Lcom/att/iqi/lib/metrics/rp/RP01;->m_ucFlags:B

    .line 15
    .line 16
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 17
    .line 18
    .line 19
    iget-byte p2, p0, Lcom/att/iqi/lib/metrics/rp/RP01;->m_ucPayloadType:B

    .line 20
    .line 21
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 22
    .line 23
    .line 24
    iget-short p2, p0, Lcom/att/iqi/lib/metrics/rp/RP01;->m_wSequenceNum:S

    .line 25
    .line 26
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 27
    .line 28
    .line 29
    iget p2, p0, Lcom/att/iqi/lib/metrics/rp/RP01;->m_dwTimestamp:I

    .line 30
    .line 31
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 32
    .line 33
    .line 34
    iget p0, p0, Lcom/att/iqi/lib/metrics/rp/RP01;->m_dwSourceId:I

    .line 35
    .line 36
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 37
    .line 38
    .line 39
    return-void
.end method
