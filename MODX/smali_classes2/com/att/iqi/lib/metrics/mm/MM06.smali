.class public Lcom/att/iqi/lib/metrics/mm/MM06;
.super Lcom/att/iqi/lib/Metric;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field public static final ID:Lcom/att/iqi/lib/Metric$ID;

.field public static final IQ_SIP_ORIGINATED:B = 0x0t

.field public static final IQ_SIP_TERMINATED:B = 0x1t

.field private static final RESPONSE_CODE_MASK:S = 0x7fffs

.field private static final TERMINATION_DIRECTION_SHIFT:I = 0xf


# instance fields
.field private m_shResult:S

.field private m_szCallId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/att/iqi/lib/Metric$ID;

    .line 2
    .line 3
    const-string v1, "MM06"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/att/iqi/lib/Metric$ID;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/att/iqi/lib/metrics/mm/MM06;->ID:Lcom/att/iqi/lib/Metric$ID;

    .line 9
    .line 10
    new-instance v0, Lcom/att/iqi/lib/metrics/mm/MM06$1;

    .line 11
    .line 12
    invoke-direct {v0}, Lcom/att/iqi/lib/metrics/mm/MM06$1;-><init>()V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lcom/att/iqi/lib/metrics/mm/MM06;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/att/iqi/lib/Metric;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/att/iqi/lib/metrics/mm/MM06;->reset()V

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

    iput-short v0, p0, Lcom/att/iqi/lib/metrics/mm/MM06;->m_shResult:S

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/att/iqi/lib/metrics/mm/MM06;->m_szCallId:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public getCallId()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/att/iqi/lib/metrics/mm/MM06;->m_szCallId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getResponseCode()S
    .locals 0

    .line 1
    iget-short p0, p0, Lcom/att/iqi/lib/metrics/mm/MM06;->m_shResult:S

    .line 2
    .line 3
    and-int/lit16 p0, p0, 0x7fff

    .line 4
    .line 5
    int-to-short p0, p0

    .line 6
    return p0
.end method

.method public getTerminationDirection()B
    .locals 0

    .line 1
    iget-short p0, p0, Lcom/att/iqi/lib/metrics/mm/MM06;->m_shResult:S

    .line 2
    .line 3
    shr-int/lit8 p0, p0, 0xf

    .line 4
    .line 5
    int-to-byte p0, p0

    .line 6
    return p0
.end method

.method public reset()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-short v0, p0, Lcom/att/iqi/lib/metrics/mm/MM06;->m_shResult:S

    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/att/iqi/lib/metrics/mm/MM06;->m_szCallId:Ljava/lang/String;

    .line 7
    .line 8
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
    iget-short v0, p0, Lcom/att/iqi/lib/metrics/mm/MM06;->m_shResult:S

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/att/iqi/lib/metrics/mm/MM06;->m_szCallId:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {p0, p1, v0}, Lcom/att/iqi/lib/Metric;->stringOut(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method public setCallId(Ljava/lang/String;)Lcom/att/iqi/lib/metrics/mm/MM06;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/att/iqi/lib/metrics/mm/MM06;->m_szCallId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setResponseCode(S)Lcom/att/iqi/lib/metrics/mm/MM06;
    .locals 1

    .line 1
    iget-short v0, p0, Lcom/att/iqi/lib/metrics/mm/MM06;->m_shResult:S

    .line 2
    .line 3
    and-int/lit16 v0, v0, -0x8000

    .line 4
    .line 5
    and-int/lit16 p1, p1, 0x7fff

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    int-to-short p1, p1

    .line 9
    iput-short p1, p0, Lcom/att/iqi/lib/metrics/mm/MM06;->m_shResult:S

    .line 10
    .line 11
    return-object p0
.end method

.method public setTerminationDirection(B)Lcom/att/iqi/lib/metrics/mm/MM06;
    .locals 1

    .line 1
    iget-short v0, p0, Lcom/att/iqi/lib/metrics/mm/MM06;->m_shResult:S

    .line 2
    .line 3
    and-int/lit16 v0, v0, 0x7fff

    .line 4
    .line 5
    int-to-short p1, p1

    .line 6
    shl-int/lit8 p1, p1, 0xf

    .line 7
    .line 8
    or-int/2addr p1, v0

    .line 9
    int-to-short p1, p1

    .line 10
    iput-short p1, p0, Lcom/att/iqi/lib/metrics/mm/MM06;->m_shResult:S

    .line 11
    .line 12
    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/att/iqi/lib/Metric;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2
    .line 3
    .line 4
    iget-short p2, p0, Lcom/att/iqi/lib/metrics/mm/MM06;->m_shResult:S

    .line 5
    .line 6
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lcom/att/iqi/lib/metrics/mm/MM06;->m_szCallId:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
