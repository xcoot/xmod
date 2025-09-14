.class public final Lcom/android/server/vcn/VcnGatewayConnection$EventTransformCreatedInfo;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/vcn/VcnGatewayConnection$EventInfo;


# instance fields
.field public final direction:I

.field public final transform:Landroid/net/IpSecTransform;


# direct methods
.method public constructor <init>(Landroid/net/IpSecTransform;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lcom/android/server/vcn/VcnGatewayConnection$EventTransformCreatedInfo;->direction:I

    .line 5
    .line 6
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-object p2, p1

    .line 10
    check-cast p2, Landroid/net/IpSecTransform;

    .line 11
    .line 12
    iput-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection$EventTransformCreatedInfo;->transform:Landroid/net/IpSecTransform;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/android/server/vcn/VcnGatewayConnection$EventTransformCreatedInfo;

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
    check-cast p1, Lcom/android/server/vcn/VcnGatewayConnection$EventTransformCreatedInfo;

    .line 8
    .line 9
    iget v0, p1, Lcom/android/server/vcn/VcnGatewayConnection$EventTransformCreatedInfo;->direction:I

    .line 10
    .line 11
    iget v2, p0, Lcom/android/server/vcn/VcnGatewayConnection$EventTransformCreatedInfo;->direction:I

    .line 12
    .line 13
    if-ne v2, v0, :cond_1

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection$EventTransformCreatedInfo;->transform:Landroid/net/IpSecTransform;

    .line 16
    .line 17
    iget-object p1, p1, Lcom/android/server/vcn/VcnGatewayConnection$EventTransformCreatedInfo;->transform:Landroid/net/IpSecTransform;

    .line 18
    .line 19
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    if-eqz p0, :cond_1

    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$EventTransformCreatedInfo;->direction:I

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection$EventTransformCreatedInfo;->transform:Landroid/net/IpSecTransform;

    .line 8
    .line 9
    filled-new-array {v0, p0}, [Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0
.end method
