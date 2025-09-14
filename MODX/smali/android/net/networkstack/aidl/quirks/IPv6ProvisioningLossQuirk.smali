.class public final Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirk;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mDetectionCount:I

.field public final mQuirkExpiry:J


# direct methods
.method public constructor <init>(IJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirk;->mDetectionCount:I

    .line 6
    iput-wide p2, p0, Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirk;->mQuirkExpiry:J

    .line 8
    return-void
.end method

.method public static fromStableParcelable(Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirkParcelable;)Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirk;
    .locals 4

    .line 1
    if-nez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    new-instance v0, Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirk;

    .line 7
    iget v1, p0, Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirkParcelable;->detectionCount:I

    .line 9
    iget-wide v2, p0, Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirkParcelable;->quirkExpiry:J

    .line 11
    invoke-direct {v0, v1, v2, v3}, Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirk;-><init>(IJ)V

    .line 14
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    move-result-object v1

    .line 8
    const-class v2, Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirk;

    .line 10
    if-eq v2, v1, :cond_0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    check-cast p1, Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirk;

    .line 15
    iget v1, p0, Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirk;->mDetectionCount:I

    .line 17
    iget v2, p1, Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirk;->mDetectionCount:I

    .line 19
    if-ne v1, v2, :cond_1

    .line 21
    iget-wide v1, p0, Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirk;->mQuirkExpiry:J

    .line 23
    iget-wide p0, p1, Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirk;->mQuirkExpiry:J

    .line 25
    cmp-long p0, v1, p0

    .line 27
    if-nez p0, :cond_1

    .line 29
    const/4 v0, 0x1

    .line 30
    :cond_1
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirk;->mDetectionCount:I

    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object v0

    .line 7
    iget-wide v1, p0, Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirk;->mQuirkExpiry:J

    .line 9
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 12
    move-result-object p0

    .line 13
    filled-new-array {v0, p0}, [Ljava/lang/Object;

    .line 16
    move-result-object p0

    .line 17
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 20
    move-result p0

    .line 21
    return p0
.end method

.method public toStableParcelable()Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirkParcelable;
    .locals 3

    .line 1
    new-instance v0, Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirkParcelable;

    .line 3
    invoke-direct {v0}, Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirkParcelable;-><init>()V

    .line 6
    iget v1, p0, Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirk;->mDetectionCount:I

    .line 8
    iput v1, v0, Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirkParcelable;->detectionCount:I

    .line 10
    iget-wide v1, p0, Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirk;->mQuirkExpiry:J

    .line 12
    iput-wide v1, v0, Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirkParcelable;->quirkExpiry:J

    .line 14
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 3
    const-string/jumbo v1, "detection count: "

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 9
    iget v1, p0, Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirk;->mDetectionCount:I

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 14
    const-string v1, ", quirk expiry: "

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 19
    iget-wide v1, p0, Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirk;->mQuirkExpiry:J

    .line 21
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 27
    move-result-object p0

    .line 28
    return-object p0
.end method
