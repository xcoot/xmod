.class public final Lcom/android/server/enterprise/firewall/DomainFilterNapCommon$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon$1;->this$0:Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;

    .line 3
    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onAvailable(Landroid/net/Network;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string/jumbo v1, "onAvailable : "

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1}, Landroid/net/Network;->getNetId()I

    .line 12
    move-result v1

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    const-string v1, "DomainFilterNapCommon"

    .line 22
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;)V

    .line 28
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon$1;->this$0:Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;

    .line 30
    iget-boolean v1, v0, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->mNapEnabled:Z

    .line 32
    if-nez v1, :cond_0

    .line 34
    iget-boolean v0, v0, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->mDomainFilterEnabled:Z

    .line 36
    if-eqz v0, :cond_1

    .line 38
    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon$1;->this$0:Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;

    .line 40
    invoke-virtual {p1}, Landroid/net/Network;->getNetId()I

    .line 43
    move-result p1

    .line 44
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    invoke-static {}, Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter;->getInstance()Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter;

    .line 50
    move-result-object p0

    .line 51
    const-string v0, "DnsResolverAdapter"

    .line 53
    const-string/jumbo v1, "updateEnforceDnsUidForNetwork - entered"

    .line 56
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    new-instance v1, Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter$$ExternalSyntheticLambda0;

    .line 61
    const/4 v2, 0x1

    .line 62
    invoke-direct {v1, p1, v2}, Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter$$ExternalSyntheticLambda0;-><init>(IZ)V

    .line 65
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter;->runWithExceptionHandling(Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter$CheckedRemoteRequest;)V

    .line 68
    const-string/jumbo p0, "updateEnforceDnsUidForNetwork - exited"

    .line 71
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :cond_1
    return-void
.end method
