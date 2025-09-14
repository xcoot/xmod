.class public Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector$PacketLossCalculationResult;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mPacketLossRatePercent:I

.field public final mResultType:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector$PacketLossCalculationResult;->mResultType:I

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector$PacketLossCalculationResult;->mPacketLossRatePercent:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector$PacketLossCalculationResult;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    check-cast p1, Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector$PacketLossCalculationResult;

    .line 8
    .line 9
    iget v0, p1, Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector$PacketLossCalculationResult;->mResultType:I

    .line 10
    .line 11
    iget v2, p0, Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector$PacketLossCalculationResult;->mResultType:I

    .line 12
    .line 13
    if-ne v2, v0, :cond_1

    .line 14
    .line 15
    iget p0, p0, Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector$PacketLossCalculationResult;->mPacketLossRatePercent:I

    .line 16
    .line 17
    iget p1, p1, Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector$PacketLossCalculationResult;->mPacketLossRatePercent:I

    .line 18
    .line 19
    if-ne p0, p1, :cond_1

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector$PacketLossCalculationResult;->mResultType:I

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget p0, p0, Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector$PacketLossCalculationResult;->mPacketLossRatePercent:I

    .line 8
    .line 9
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    filled-new-array {v0, p0}, [Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "mResultType: "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget v1, p0, Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector$PacketLossCalculationResult;->mResultType:I

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, " | mPacketLossRatePercent: "

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    iget p0, p0, Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector$PacketLossCalculationResult;->mPacketLossRatePercent:I

    .line 20
    .line 21
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0
.end method
