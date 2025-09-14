.class Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field private m_dwDuration:I

.field private m_dwPacketsDrop:I

.field private m_dwPacketsLate:I

.field private m_dwPacketsRcvd:I

.field private final m_ucFormat:B

.field private final m_ucMediaType:B


# direct methods
.method public static bridge synthetic -$$Nest$fgetm_dwDuration(Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->m_dwDuration:I

    .line 2
    .line 3
    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetm_dwPacketsDrop(Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->m_dwPacketsDrop:I

    .line 2
    .line 3
    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetm_dwPacketsLate(Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->m_dwPacketsLate:I

    .line 2
    .line 3
    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetm_dwPacketsRcvd(Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->m_dwPacketsRcvd:I

    .line 2
    .line 3
    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetm_ucFormat(Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;)B
    .locals 0

    .line 1
    iget-byte p0, p0, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->m_ucFormat:B

    .line 2
    .line 3
    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetm_ucMediaType(Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;)B
    .locals 0

    .line 1
    iget-byte p0, p0, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->m_ucMediaType:B

    .line 2
    .line 3
    return p0
.end method

.method public static bridge synthetic -$$Nest$fputm_dwDuration(Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->m_dwDuration:I

    .line 2
    .line 3
    return-void
.end method

.method public static bridge synthetic -$$Nest$fputm_dwPacketsDrop(Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->m_dwPacketsDrop:I

    .line 2
    .line 3
    return-void
.end method

.method public static bridge synthetic -$$Nest$fputm_dwPacketsLate(Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->m_dwPacketsLate:I

    .line 2
    .line 3
    return-void
.end method

.method public static bridge synthetic -$$Nest$fputm_dwPacketsRcvd(Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->m_dwPacketsRcvd:I

    .line 2
    .line 3
    return-void
.end method

.method public static bridge synthetic -$$Nest$mserialize(Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->serialize(Ljava/nio/ByteBuffer;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private constructor <init>(BB)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-byte p1, p0, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->m_ucMediaType:B

    .line 4
    iput-byte p2, p0, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->m_ucFormat:B

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->m_dwDuration:I

    .line 6
    iput p1, p0, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->m_dwPacketsRcvd:I

    .line 7
    iput p1, p0, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->m_dwPacketsDrop:I

    .line 8
    iput p1, p0, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->m_dwPacketsLate:I

    return-void
.end method

.method public synthetic constructor <init>(BBI)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;-><init>(BB)V

    return-void
.end method

.method private serialize(Ljava/nio/ByteBuffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferOverflowException;
        }
    .end annotation

    .line 1
    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->m_ucMediaType:B

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 4
    .line 5
    .line 6
    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->m_ucFormat:B

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 9
    .line 10
    .line 11
    iget v0, p0, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->m_dwDuration:I

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 14
    .line 15
    .line 16
    iget v0, p0, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->m_dwPacketsRcvd:I

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 19
    .line 20
    .line 21
    iget v0, p0, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->m_dwPacketsDrop:I

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 24
    .line 25
    .line 26
    iget p0, p0, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->m_dwPacketsLate:I

    .line 27
    .line 28
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 29
    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public set(IIII)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->m_dwDuration:I

    .line 2
    .line 3
    iput p2, p0, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->m_dwPacketsRcvd:I

    .line 4
    .line 5
    iput p3, p0, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->m_dwPacketsDrop:I

    .line 6
    .line 7
    iput p4, p0, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->m_dwPacketsLate:I

    .line 8
    .line 9
    return-void
.end method
