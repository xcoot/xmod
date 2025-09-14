.class public final Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final isBlocked:Z

.field public final linkProperties:Landroid/net/LinkProperties;

.field public final network:Landroid/net/Network;

.field public final networkCapabilities:Landroid/net/NetworkCapabilities;


# direct methods
.method public constructor <init>(Landroid/net/Network;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->network:Landroid/net/Network;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->linkProperties:Landroid/net/LinkProperties;

    .line 9
    .line 10
    iput-boolean p4, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->isBlocked:Z

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->network:Landroid/net/Network;

    .line 14
    .line 15
    iget-object v3, p1, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->network:Landroid/net/Network;

    .line 16
    .line 17
    invoke-virtual {v1, v3}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    iget-object v1, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 24
    .line 25
    iget-object v3, p1, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 26
    .line 27
    invoke-virtual {v1, v3}, Landroid/net/NetworkCapabilities;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    iget-object v1, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->linkProperties:Landroid/net/LinkProperties;

    .line 34
    .line 35
    iget-object v3, p1, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->linkProperties:Landroid/net/LinkProperties;

    .line 36
    .line 37
    invoke-virtual {v1, v3}, Landroid/net/LinkProperties;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_2

    .line 42
    .line 43
    iget-boolean p0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->isBlocked:Z

    .line 44
    .line 45
    iget-boolean p1, p1, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->isBlocked:Z

    .line 46
    .line 47
    if-ne p0, p1, :cond_2

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    move v0, v2

    .line 51
    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->network:Landroid/net/Network;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->linkProperties:Landroid/net/LinkProperties;

    .line 6
    .line 7
    iget-boolean p0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->isBlocked:Z

    .line 8
    .line 9
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    filled-new-array {v0, v1, v2, p0}, [Ljava/lang/Object;

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
