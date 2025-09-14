.class public Lcom/att/iqi/lib/metrics/sp/SPRX;
.super Lcom/att/iqi/lib/Metric;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field public static final ID:Lcom/att/iqi/lib/Metric$ID;


# instance fields
.field private m_dwCSeq:I

.field private m_dwTransId:I

.field private m_strMessage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/att/iqi/lib/Metric$ID;

    .line 2
    .line 3
    const-string v1, "SPRX"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/att/iqi/lib/Metric$ID;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/att/iqi/lib/metrics/sp/SPRX;->ID:Lcom/att/iqi/lib/Metric$ID;

    .line 9
    .line 10
    new-instance v0, Lcom/att/iqi/lib/metrics/sp/SPRX$1;

    .line 11
    .line 12
    invoke-direct {v0}, Lcom/att/iqi/lib/metrics/sp/SPRX$1;-><init>()V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lcom/att/iqi/lib/metrics/sp/SPRX;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/att/iqi/lib/Metric;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/att/iqi/lib/metrics/sp/SPRX;->reset()V

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

    iput v0, p0, Lcom/att/iqi/lib/metrics/sp/SPRX;->m_dwTransId:I

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/att/iqi/lib/metrics/sp/SPRX;->m_dwCSeq:I

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/att/iqi/lib/metrics/sp/SPRX;->m_strMessage:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public getCSeq()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/att/iqi/lib/metrics/sp/SPRX;->m_dwCSeq:I

    .line 2
    .line 3
    return p0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/att/iqi/lib/metrics/sp/SPRX;->m_strMessage:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getTransId()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/att/iqi/lib/metrics/sp/SPRX;->m_dwTransId:I

    .line 2
    .line 3
    return p0
.end method

.method public reset()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/att/iqi/lib/metrics/sp/SPRX;->m_dwTransId:I

    .line 3
    .line 4
    iput v0, p0, Lcom/att/iqi/lib/metrics/sp/SPRX;->m_dwCSeq:I

    .line 5
    .line 6
    const-string v0, ""

    .line 7
    .line 8
    iput-object v0, p0, Lcom/att/iqi/lib/metrics/sp/SPRX;->m_strMessage:Ljava/lang/String;

    .line 9
    .line 10
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
    iget v0, p0, Lcom/att/iqi/lib/metrics/sp/SPRX;->m_dwTransId:I

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 4
    .line 5
    .line 6
    iget v0, p0, Lcom/att/iqi/lib/metrics/sp/SPRX;->m_dwCSeq:I

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/att/iqi/lib/metrics/sp/SPRX;->m_strMessage:Ljava/lang/String;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    :goto_0
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 22
    .line 23
    .line 24
    if-lez v0, :cond_1

    .line 25
    .line 26
    iget-object p0, p0, Lcom/att/iqi/lib/metrics/sp/SPRX;->m_strMessage:Ljava/lang/String;

    .line 27
    .line 28
    sget-object v0, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    .line 29
    .line 30
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 35
    .line 36
    .line 37
    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    return p0
.end method

.method public setCSeq(I)Lcom/att/iqi/lib/metrics/sp/SPRX;
    .locals 0

    .line 1
    iput p1, p0, Lcom/att/iqi/lib/metrics/sp/SPRX;->m_dwCSeq:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setMessage(Ljava/lang/String;)Lcom/att/iqi/lib/metrics/sp/SPRX;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/att/iqi/lib/metrics/sp/SPRX;->m_strMessage:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setTransId(I)Lcom/att/iqi/lib/metrics/sp/SPRX;
    .locals 0

    .line 1
    iput p1, p0, Lcom/att/iqi/lib/metrics/sp/SPRX;->m_dwTransId:I

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
    iget p2, p0, Lcom/att/iqi/lib/metrics/sp/SPRX;->m_dwTransId:I

    .line 5
    .line 6
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    .line 8
    .line 9
    iget p2, p0, Lcom/att/iqi/lib/metrics/sp/SPRX;->m_dwCSeq:I

    .line 10
    .line 11
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12
    .line 13
    .line 14
    iget-object p0, p0, Lcom/att/iqi/lib/metrics/sp/SPRX;->m_strMessage:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
