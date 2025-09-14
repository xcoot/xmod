.class public Landroid/net/shared/Layer2Information;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mBssid:Landroid/net/MacAddress;

.field public final mCluster:Ljava/lang/String;

.field public final mL2Key:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/MacAddress;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/net/shared/Layer2Information;->mL2Key:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Landroid/net/shared/Layer2Information;->mCluster:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Landroid/net/shared/Layer2Information;->mBssid:Landroid/net/MacAddress;

    .line 9
    .line 10
    return-void
.end method

.method public static fromStableParcelable(Landroid/net/Layer2InformationParcelable;)Landroid/net/shared/Layer2Information;
    .locals 3

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    new-instance v0, Landroid/net/shared/Layer2Information;

    .line 6
    .line 7
    iget-object v1, p0, Landroid/net/Layer2InformationParcelable;->l2Key:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v2, p0, Landroid/net/Layer2InformationParcelable;->cluster:Ljava/lang/String;

    .line 10
    .line 11
    iget-object p0, p0, Landroid/net/Layer2InformationParcelable;->bssid:Landroid/net/MacAddress;

    .line 12
    .line 13
    invoke-direct {v0, v1, v2, p0}, Landroid/net/shared/Layer2Information;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/MacAddress;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Landroid/net/shared/Layer2Information;

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
    check-cast p1, Landroid/net/shared/Layer2Information;

    .line 8
    .line 9
    iget-object v0, p0, Landroid/net/shared/Layer2Information;->mL2Key:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v2, p1, Landroid/net/shared/Layer2Information;->mL2Key:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Landroid/net/shared/Layer2Information;->mCluster:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v2, p1, Landroid/net/shared/Layer2Information;->mCluster:Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    iget-object p0, p0, Landroid/net/shared/Layer2Information;->mBssid:Landroid/net/MacAddress;

    .line 30
    .line 31
    iget-object p1, p1, Landroid/net/shared/Layer2Information;->mBssid:Landroid/net/MacAddress;

    .line 32
    .line 33
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    if-eqz p0, :cond_1

    .line 38
    .line 39
    const/4 v1, 0x1

    .line 40
    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/net/shared/Layer2Information;->mL2Key:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Landroid/net/shared/Layer2Information;->mCluster:Ljava/lang/String;

    .line 4
    .line 5
    iget-object p0, p0, Landroid/net/shared/Layer2Information;->mBssid:Landroid/net/MacAddress;

    .line 6
    .line 7
    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method public toStableParcelable()Landroid/net/Layer2InformationParcelable;
    .locals 2

    .line 1
    new-instance v0, Landroid/net/Layer2InformationParcelable;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/net/Layer2InformationParcelable;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Landroid/net/shared/Layer2Information;->mL2Key:Ljava/lang/String;

    .line 7
    .line 8
    iput-object v1, v0, Landroid/net/Layer2InformationParcelable;->l2Key:Ljava/lang/String;

    .line 9
    .line 10
    iget-object v1, p0, Landroid/net/shared/Layer2Information;->mCluster:Ljava/lang/String;

    .line 11
    .line 12
    iput-object v1, v0, Landroid/net/Layer2InformationParcelable;->cluster:Ljava/lang/String;

    .line 13
    .line 14
    iget-object p0, p0, Landroid/net/shared/Layer2Information;->mBssid:Landroid/net/MacAddress;

    .line 15
    .line 16
    iput-object p0, v0, Landroid/net/Layer2InformationParcelable;->bssid:Landroid/net/MacAddress;

    .line 17
    .line 18
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 2
    .line 3
    const-string v1, "L2Key: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Landroid/net/shared/Layer2Information;->mL2Key:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 11
    .line 12
    .line 13
    const-string v1, ", Cluster: "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Landroid/net/shared/Layer2Information;->mCluster:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 21
    .line 22
    .line 23
    const-string v1, ", bssid: "

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 26
    .line 27
    .line 28
    iget-object p0, p0, Landroid/net/shared/Layer2Information;->mBssid:Landroid/net/MacAddress;

    .line 29
    .line 30
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0
.end method
