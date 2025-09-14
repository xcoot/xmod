.class public final Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$CapabilityMatchCriteria;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final capability:I

.field public final matchCriteria:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$CapabilityMatchCriteria;->capability:I

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$CapabilityMatchCriteria;->matchCriteria:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$CapabilityMatchCriteria;

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
    check-cast p1, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$CapabilityMatchCriteria;

    .line 8
    .line 9
    iget v0, p1, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$CapabilityMatchCriteria;->capability:I

    .line 10
    .line 11
    iget v2, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$CapabilityMatchCriteria;->capability:I

    .line 12
    .line 13
    if-ne v2, v0, :cond_1

    .line 14
    .line 15
    iget p0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$CapabilityMatchCriteria;->matchCriteria:I

    .line 16
    .line 17
    iget p1, p1, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$CapabilityMatchCriteria;->matchCriteria:I

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
    iget v0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$CapabilityMatchCriteria;->capability:I

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget p0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$CapabilityMatchCriteria;->matchCriteria:I

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
