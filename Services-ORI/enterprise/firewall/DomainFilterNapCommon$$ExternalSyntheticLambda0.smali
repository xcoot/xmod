.class public final synthetic Lcom/android/server/enterprise/firewall/DomainFilterNapCommon$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;

.field public final synthetic f$1:Landroid/net/ConnectivityManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;Landroid/net/ConnectivityManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon$$ExternalSyntheticLambda0;->f$1:Landroid/net/ConnectivityManager;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon$$ExternalSyntheticLambda0;->f$1:Landroid/net/ConnectivityManager;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->mConnectivityCallback:Lcom/android/server/enterprise/firewall/DomainFilterNapCommon$1;

    .line 6
    .line 7
    invoke-virtual {p0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 8
    .line 9
    .line 10
    const/4 p0, 0x0

    .line 11
    iput-boolean p0, v0, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->mCallbackRegistered:Z

    .line 12
    .line 13
    const-string p0, "DomainFilterNapCommon"

    .line 14
    .line 15
    const-string/jumbo v0, "callback unregistered"

    .line 16
    .line 17
    .line 18
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    return-void
.end method
