.class public final synthetic Lcom/android/server/enterprise/firewall/DomainFilter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/enterprise/firewall/DomainFilter;

.field public final synthetic f$1:Landroid/net/Network;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/enterprise/firewall/DomainFilter;Landroid/net/Network;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/enterprise/firewall/DomainFilter$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    .line 6
    iput-object p2, p0, Lcom/android/server/enterprise/firewall/DomainFilter$$ExternalSyntheticLambda0;->f$1:Landroid/net/Network;

    .line 8
    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    .line 3
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/DomainFilter$$ExternalSyntheticLambda0;->f$1:Landroid/net/Network;

    .line 5
    iget-object v0, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDnsResolverAdapter:Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter;

    .line 7
    invoke-virtual {p0}, Landroid/net/Network;->getNetId()I

    .line 10
    move-result p0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    const-string/jumbo v1, "flushNetworkCache - entered"

    .line 17
    const-string v2, "DnsResolverAdapter"

    .line 19
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    new-instance v1, Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter$$ExternalSyntheticLambda2;

    .line 24
    const/4 v3, 0x1

    .line 25
    invoke-direct {v1, p0, v3}, Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter$$ExternalSyntheticLambda2;-><init>(II)V

    .line 28
    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter;->runWithExceptionHandling(Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter$CheckedRemoteRequest;)V

    .line 31
    const-string/jumbo p0, "flushNetworkCache - exited"

    .line 34
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    return-void
.end method
