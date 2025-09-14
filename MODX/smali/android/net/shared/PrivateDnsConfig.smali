.class public Landroid/net/shared/PrivateDnsConfig;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final dohIps:[Ljava/net/InetAddress;

.field public final dohName:Ljava/lang/String;

.field public final dohPath:Ljava/lang/String;

.field public final dohPort:I

.field public final hostname:Ljava/lang/String;

.field public final ips:[Ljava/net/InetAddress;

.field public final mode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Landroid/net/shared/PrivateDnsConfig;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;[Ljava/net/InetAddress;Ljava/lang/String;[Ljava/net/InetAddress;Ljava/lang/String;I)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput p1, p0, Landroid/net/shared/PrivateDnsConfig;->mode:I

    .line 6
    const-string p1, ""

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, p1

    :goto_0
    iput-object p2, p0, Landroid/net/shared/PrivateDnsConfig;->hostname:Ljava/lang/String;

    const/4 p2, 0x0

    if-eqz p3, :cond_1

    .line 7
    invoke-virtual {p3}, [Ljava/net/InetAddress;->clone()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Ljava/net/InetAddress;

    goto :goto_1

    :cond_1
    new-array p3, p2, [Ljava/net/InetAddress;

    :goto_1
    iput-object p3, p0, Landroid/net/shared/PrivateDnsConfig;->ips:[Ljava/net/InetAddress;

    if-eqz p4, :cond_2

    goto :goto_2

    :cond_2
    move-object p4, p1

    .line 8
    :goto_2
    iput-object p4, p0, Landroid/net/shared/PrivateDnsConfig;->dohName:Ljava/lang/String;

    if-eqz p5, :cond_3

    .line 9
    invoke-virtual {p5}, [Ljava/net/InetAddress;->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/net/InetAddress;

    goto :goto_3

    :cond_3
    new-array p2, p2, [Ljava/net/InetAddress;

    :goto_3
    iput-object p2, p0, Landroid/net/shared/PrivateDnsConfig;->dohIps:[Ljava/net/InetAddress;

    if-eqz p6, :cond_4

    goto :goto_4

    :cond_4
    move-object p6, p1

    .line 10
    :goto_4
    iput-object p6, p0, Landroid/net/shared/PrivateDnsConfig;->dohPath:Ljava/lang/String;

    .line 11
    iput p7, p0, Landroid/net/shared/PrivateDnsConfig;->dohPort:I

    return-void
.end method

.method public constructor <init>(Landroid/net/shared/PrivateDnsConfig;)V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iget v0, p1, Landroid/net/shared/PrivateDnsConfig;->mode:I

    iput v0, p0, Landroid/net/shared/PrivateDnsConfig;->mode:I

    .line 14
    iget-object v0, p1, Landroid/net/shared/PrivateDnsConfig;->hostname:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/shared/PrivateDnsConfig;->hostname:Ljava/lang/String;

    .line 15
    iget-object v0, p1, Landroid/net/shared/PrivateDnsConfig;->ips:[Ljava/net/InetAddress;

    iput-object v0, p0, Landroid/net/shared/PrivateDnsConfig;->ips:[Ljava/net/InetAddress;

    .line 16
    iget-object v0, p1, Landroid/net/shared/PrivateDnsConfig;->dohName:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/shared/PrivateDnsConfig;->dohName:Ljava/lang/String;

    .line 17
    iget-object v0, p1, Landroid/net/shared/PrivateDnsConfig;->dohIps:[Ljava/net/InetAddress;

    iput-object v0, p0, Landroid/net/shared/PrivateDnsConfig;->dohIps:[Ljava/net/InetAddress;

    .line 18
    iget-object v0, p1, Landroid/net/shared/PrivateDnsConfig;->dohPath:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/shared/PrivateDnsConfig;->dohPath:Ljava/lang/String;

    .line 19
    iget p1, p1, Landroid/net/shared/PrivateDnsConfig;->dohPort:I

    iput p1, p0, Landroid/net/shared/PrivateDnsConfig;->dohPort:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/net/InetAddress;)V
    .locals 9

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    move v2, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x3

    goto :goto_0

    :goto_1
    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v8}, Landroid/net/shared/PrivateDnsConfig;-><init>(ILjava/lang/String;[Ljava/net/InetAddress;Ljava/lang/String;[Ljava/net/InetAddress;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 8

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    :goto_0
    move v1, p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :goto_1
    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    .line 2
    invoke-direct/range {v0 .. v7}, Landroid/net/shared/PrivateDnsConfig;-><init>(ILjava/lang/String;[Ljava/net/InetAddress;Ljava/lang/String;[Ljava/net/InetAddress;Ljava/lang/String;I)V

    return-void
.end method

.method public static fromParcel(Landroid/net/PrivateDnsConfigParcel;)Landroid/net/shared/PrivateDnsConfig;
    .locals 9

    .line 1
    iget-object v0, p0, Landroid/net/PrivateDnsConfigParcel;->ips:[Ljava/lang/String;

    .line 3
    array-length v1, v0

    .line 4
    new-array v1, v1, [Ljava/net/InetAddress;

    .line 6
    new-instance v2, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticLambda9;

    .line 8
    const/4 v3, 0x0

    .line 9
    invoke-direct {v2, v3}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticLambda9;-><init>(I)V

    .line 12
    invoke-static {v0, v2}, Landroid/net/shared/ParcelableUtil;->fromParcelableArray([Ljava/lang/Object;Ljava/util/function/Function;)Ljava/util/ArrayList;

    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 19
    move-result-object v0

    .line 20
    move-object v4, v0

    .line 21
    check-cast v4, [Ljava/net/InetAddress;

    .line 23
    iget v0, p0, Landroid/net/PrivateDnsConfigParcel;->privateDnsMode:I

    .line 25
    const/4 v1, -0x1

    .line 26
    if-ne v0, v1, :cond_0

    .line 28
    new-instance v0, Landroid/net/shared/PrivateDnsConfig;

    .line 30
    iget-object p0, p0, Landroid/net/PrivateDnsConfigParcel;->hostname:Ljava/lang/String;

    .line 32
    invoke-direct {v0, p0, v4}, Landroid/net/shared/PrivateDnsConfig;-><init>(Ljava/lang/String;[Ljava/net/InetAddress;)V

    .line 35
    return-object v0

    .line 36
    :cond_0
    iget-object v0, p0, Landroid/net/PrivateDnsConfigParcel;->dohIps:[Ljava/lang/String;

    .line 38
    array-length v1, v0

    .line 39
    new-array v1, v1, [Ljava/net/InetAddress;

    .line 41
    new-instance v2, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticLambda9;

    .line 43
    const/4 v3, 0x0

    .line 44
    invoke-direct {v2, v3}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticLambda9;-><init>(I)V

    .line 47
    invoke-static {v0, v2}, Landroid/net/shared/ParcelableUtil;->fromParcelableArray([Ljava/lang/Object;Ljava/util/function/Function;)Ljava/util/ArrayList;

    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 54
    move-result-object v0

    .line 55
    move-object v6, v0

    .line 56
    check-cast v6, [Ljava/net/InetAddress;

    .line 58
    new-instance v0, Landroid/net/shared/PrivateDnsConfig;

    .line 60
    iget v2, p0, Landroid/net/PrivateDnsConfigParcel;->privateDnsMode:I

    .line 62
    iget-object v3, p0, Landroid/net/PrivateDnsConfigParcel;->hostname:Ljava/lang/String;

    .line 64
    iget-object v5, p0, Landroid/net/PrivateDnsConfigParcel;->dohName:Ljava/lang/String;

    .line 66
    iget-object v7, p0, Landroid/net/PrivateDnsConfigParcel;->dohPath:Ljava/lang/String;

    .line 68
    iget v8, p0, Landroid/net/PrivateDnsConfigParcel;->dohPort:I

    .line 70
    move-object v1, v0

    .line 71
    invoke-direct/range {v1 .. v8}, Landroid/net/shared/PrivateDnsConfig;-><init>(ILjava/lang/String;[Ljava/net/InetAddress;Ljava/lang/String;[Ljava/net/InetAddress;Ljava/lang/String;I)V

    .line 74
    return-object v0
.end method

.method private static modeAsString(I)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p0, v0, :cond_2

    .line 4
    const/4 v0, 0x2

    .line 5
    if-eq p0, v0, :cond_1

    .line 7
    const/4 v0, 0x3

    .line 8
    if-eq p0, v0, :cond_0

    .line 10
    const-string/jumbo p0, "unknown"

    .line 13
    return-object p0

    .line 14
    :cond_0
    const-string/jumbo p0, "strict"

    .line 17
    return-object p0

    .line 18
    :cond_1
    const-string/jumbo p0, "opportunistic"

    .line 21
    return-object p0

    .line 22
    :cond_2
    const-string/jumbo p0, "off"

    .line 25
    return-object p0
.end method


# virtual methods
.method public inOpportunisticMode()Z
    .locals 1

    .line 1
    iget p0, p0, Landroid/net/shared/PrivateDnsConfig;->mode:I

    .line 3
    const/4 v0, 0x2

    .line 4
    if-ne p0, v0, :cond_0

    .line 6
    const/4 p0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    :goto_0
    return p0
.end method

.method public inStrictMode()Z
    .locals 1

    .line 1
    iget p0, p0, Landroid/net/shared/PrivateDnsConfig;->mode:I

    .line 3
    const/4 v0, 0x3

    .line 4
    if-ne p0, v0, :cond_0

    .line 6
    const/4 p0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    :goto_0
    return p0
.end method

.method public toParcel()Landroid/net/PrivateDnsConfigParcel;
    .locals 5

    .line 1
    new-instance v0, Landroid/net/PrivateDnsConfigParcel;

    .line 3
    invoke-direct {v0}, Landroid/net/PrivateDnsConfigParcel;-><init>()V

    .line 6
    iget-object v1, p0, Landroid/net/shared/PrivateDnsConfig;->hostname:Ljava/lang/String;

    .line 8
    iput-object v1, v0, Landroid/net/PrivateDnsConfigParcel;->hostname:Ljava/lang/String;

    .line 10
    iget-object v1, p0, Landroid/net/shared/PrivateDnsConfig;->ips:[Ljava/net/InetAddress;

    .line 12
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 15
    move-result-object v1

    .line 16
    new-instance v2, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticLambda9;

    .line 18
    const/4 v3, 0x1

    .line 19
    invoke-direct {v2, v3}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticLambda9;-><init>(I)V

    .line 22
    const-class v3, Ljava/lang/String;

    .line 24
    invoke-static {v1, v2, v3}, Landroid/net/shared/ParcelableUtil;->toParcelableArray(Ljava/util/Collection;Ljava/util/function/Function;Ljava/lang/Class;)[Ljava/lang/Object;

    .line 27
    move-result-object v1

    .line 28
    check-cast v1, [Ljava/lang/String;

    .line 30
    iput-object v1, v0, Landroid/net/PrivateDnsConfigParcel;->ips:[Ljava/lang/String;

    .line 32
    iget v1, p0, Landroid/net/shared/PrivateDnsConfig;->mode:I

    .line 34
    iput v1, v0, Landroid/net/PrivateDnsConfigParcel;->privateDnsMode:I

    .line 36
    iget-object v1, p0, Landroid/net/shared/PrivateDnsConfig;->dohName:Ljava/lang/String;

    .line 38
    iput-object v1, v0, Landroid/net/PrivateDnsConfigParcel;->dohName:Ljava/lang/String;

    .line 40
    iget-object v1, p0, Landroid/net/shared/PrivateDnsConfig;->dohIps:[Ljava/net/InetAddress;

    .line 42
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 45
    move-result-object v1

    .line 46
    new-instance v2, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticLambda9;

    .line 48
    const/4 v4, 0x1

    .line 49
    invoke-direct {v2, v4}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticLambda9;-><init>(I)V

    .line 52
    invoke-static {v1, v2, v3}, Landroid/net/shared/ParcelableUtil;->toParcelableArray(Ljava/util/Collection;Ljava/util/function/Function;Ljava/lang/Class;)[Ljava/lang/Object;

    .line 55
    move-result-object v1

    .line 56
    check-cast v1, [Ljava/lang/String;

    .line 58
    iput-object v1, v0, Landroid/net/PrivateDnsConfigParcel;->dohIps:[Ljava/lang/String;

    .line 60
    iget-object v1, p0, Landroid/net/shared/PrivateDnsConfig;->dohPath:Ljava/lang/String;

    .line 62
    iput-object v1, v0, Landroid/net/PrivateDnsConfigParcel;->dohPath:Ljava/lang/String;

    .line 64
    iget p0, p0, Landroid/net/shared/PrivateDnsConfig;->dohPort:I

    .line 66
    iput p0, v0, Landroid/net/PrivateDnsConfigParcel;->dohPort:I

    .line 68
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "PrivateDnsConfig{"

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    iget v1, p0, Landroid/net/shared/PrivateDnsConfig;->mode:I

    .line 10
    invoke-static {v1}, Landroid/net/shared/PrivateDnsConfig;->modeAsString(I)Ljava/lang/String;

    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    const-string v1, ":"

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    iget-object v1, p0, Landroid/net/shared/PrivateDnsConfig;->hostname:Ljava/lang/String;

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    const-string v1, "/"

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    iget-object v1, p0, Landroid/net/shared/PrivateDnsConfig;->ips:[Ljava/net/InetAddress;

    .line 34
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    const-string v1, ", dohName="

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    iget-object v1, p0, Landroid/net/shared/PrivateDnsConfig;->dohName:Ljava/lang/String;

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    const-string v1, ", dohIps="

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    iget-object v1, p0, Landroid/net/shared/PrivateDnsConfig;->dohIps:[Ljava/net/InetAddress;

    .line 58
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    const-string v1, ", dohPath="

    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    iget-object v1, p0, Landroid/net/shared/PrivateDnsConfig;->dohPath:Ljava/lang/String;

    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    const-string v1, ", dohPort="

    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    iget p0, p0, Landroid/net/shared/PrivateDnsConfig;->dohPort:I

    .line 82
    const-string/jumbo v1, "}"

    .line 85
    invoke-static {p0, v0, v1}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 88
    move-result-object p0

    .line 89
    return-object p0
.end method
