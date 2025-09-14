.class public final Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord$Builder;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mIsBlocked:Z

.field public mLinkProperties:Landroid/net/LinkProperties;

.field public final mNetwork:Landroid/net/Network;

.field public mNetworkCapabilities:Landroid/net/NetworkCapabilities;

.field public mWasIsBlockedSet:Z


# direct methods
.method public constructor <init>(Landroid/net/Network;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord$Builder;->mNetwork:Landroid/net/Network;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final build()Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord$Builder;->isValid()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord$Builder;->mNetwork:Landroid/net/Network;

    .line 10
    .line 11
    iget-object v2, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord$Builder;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 12
    .line 13
    iget-object v3, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord$Builder;->mLinkProperties:Landroid/net/LinkProperties;

    .line 14
    .line 15
    iget-boolean p0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord$Builder;->mIsBlocked:Z

    .line 16
    .line 17
    invoke-direct {v0, v1, v2, v3, p0}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;-><init>(Landroid/net/Network;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;Z)V

    .line 18
    .line 19
    .line 20
    return-object v0

    .line 21
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 22
    .line 23
    const-string v0, "Called build before UnderlyingNetworkRecord was valid"

    .line 24
    .line 25
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw p0
.end method

.method public final isValid()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord$Builder;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord$Builder;->mLinkProperties:Landroid/net/LinkProperties;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-boolean p0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord$Builder;->mWasIsBlockedSet:Z

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    :goto_0
    return p0
.end method
