.class public final Lcom/android/server/vcn/VcnGatewayConnection$EventDataStallSuspectedInfo;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/vcn/VcnGatewayConnection$EventInfo;


# instance fields
.field public final network:Landroid/net/Network;


# direct methods
.method public constructor <init>(Landroid/net/Network;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection$EventDataStallSuspectedInfo;->network:Landroid/net/Network;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/android/server/vcn/VcnGatewayConnection$EventDataStallSuspectedInfo;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return p0

    .line 7
    :cond_0
    check-cast p1, Lcom/android/server/vcn/VcnGatewayConnection$EventDataStallSuspectedInfo;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection$EventDataStallSuspectedInfo;->network:Landroid/net/Network;

    .line 10
    .line 11
    iget-object p1, p1, Lcom/android/server/vcn/VcnGatewayConnection$EventDataStallSuspectedInfo;->network:Landroid/net/Network;

    .line 12
    .line 13
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection$EventDataStallSuspectedInfo;->network:Landroid/net/Network;

    .line 2
    .line 3
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method
