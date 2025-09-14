.class public final Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl$NetworkInfo;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mInterfaceName:Ljava/lang/String;

.field public mNetwork:Landroid/net/Network;

.field public mNetworkCapabilities:Landroid/net/NetworkCapabilities;

.field public mNetworkIndex:I

.field public final synthetic this$0:Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl;Landroid/net/Network;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl$NetworkInfo;->this$0:Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p2, p0, Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl$NetworkInfo;->mNetwork:Landroid/net/Network;

    .line 8
    invoke-virtual {p1}, Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl;->getConnectivityManager()Landroid/net/ConnectivityManager;

    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0, p2}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    .line 15
    move-result-object v0

    .line 16
    if-nez v0, :cond_0

    .line 18
    const-string v0, ""

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {v0}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    :goto_0
    iput-object v0, p0, Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl$NetworkInfo;->mInterfaceName:Ljava/lang/String;

    .line 27
    invoke-virtual {p1}, Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl;->getConnectivityManager()Landroid/net/ConnectivityManager;

    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1, p2}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    .line 34
    move-result-object p1

    .line 35
    iput-object p1, p0, Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl$NetworkInfo;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 37
    :try_start_0
    iget-object p1, p0, Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl$NetworkInfo;->mInterfaceName:Ljava/lang/String;

    .line 39
    invoke-static {p1}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    .line 42
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    goto :goto_1

    .line 44
    :catch_0
    const/4 p1, 0x0

    .line 45
    :goto_1
    if-eqz p1, :cond_1

    .line 47
    invoke-virtual {p1}, Ljava/net/NetworkInterface;->getIndex()I

    .line 50
    move-result p1

    .line 51
    goto :goto_2

    .line 52
    :cond_1
    const/4 p1, -0x1

    .line 53
    :goto_2
    iput p1, p0, Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl$NetworkInfo;->mNetworkIndex:I

    .line 55
    return-void
.end method


# virtual methods
.method public final getInterfaceIndex()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl$NetworkInfo;->mNetworkIndex:I

    .line 3
    return p0
.end method

.method public final getInterfaceName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl$NetworkInfo;->mInterfaceName:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method public final hasEthernetHeader()Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl$NetworkInfo;->isCellularNetwork()Z

    .line 4
    move-result p0

    .line 5
    xor-int/lit8 p0, p0, 0x1

    .line 7
    return p0
.end method

.method public final isCellularNetwork()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl$NetworkInfo;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 3
    const/4 v0, 0x0

    .line 4
    if-nez p0, :cond_0

    .line 6
    return v0

    .line 7
    :cond_0
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/StringJoiner;

    .line 3
    const-string v1, "[ "

    .line 5
    const-string v2, " ]"

    .line 7
    const-string v3, ", "

    .line 9
    invoke-direct {v0, v3, v1, v2}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    const-string/jumbo v2, "id: "

    .line 17
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl$NetworkInfo;->mNetwork:Landroid/net/Network;

    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 32
    move-result-object v0

    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    .line 35
    const-string/jumbo v2, "name: "

    .line 38
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl$NetworkInfo;->mInterfaceName:Ljava/lang/String;

    .line 43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 53
    move-result-object v0

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    .line 56
    const-string/jumbo v2, "index: "

    .line 59
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    iget p0, p0, Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl$NetworkInfo;->mNetworkIndex:I

    .line 64
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    move-result-object p0

    .line 71
    invoke-virtual {v0, p0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 74
    move-result-object p0

    .line 75
    invoke-virtual {p0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    .line 78
    move-result-object p0

    .line 79
    return-object p0
.end method
