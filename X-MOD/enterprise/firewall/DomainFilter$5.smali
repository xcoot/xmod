.class public final Lcom/android/server/enterprise/firewall/DomainFilter$5;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/firewall/DomainFilter;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/firewall/DomainFilter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/enterprise/firewall/DomainFilter$5;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    .line 3
    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onAvailable(Landroid/net/Network;)V
    .locals 3

    .line 1
    const-string v0, "DomainFilter"

    .line 3
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;)V

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter$5;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    .line 8
    invoke-virtual {v1}, Lcom/android/server/enterprise/firewall/DomainFilter;->getConnectivityService()Landroid/net/ConnectivityManager;

    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1, p1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    .line 15
    move-result-object v1

    .line 16
    if-eqz v1, :cond_0

    .line 18
    const/16 v2, 0x11

    .line 20
    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_0

    .line 26
    sget v1, Lcom/android/server/enterprise/firewall/DomainFilter;->MAX_LIST_SIZE_IN_BYTES:I

    .line 28
    const-string v1, "Captive portal detected"

    .line 30
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter$5;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    .line 35
    invoke-virtual {v1}, Lcom/android/server/enterprise/firewall/DomainFilter;->hasAnyRuleInDatabase()Z

    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_0

    .line 41
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/DomainFilter$5;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    .line 43
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    new-instance v1, Ljava/lang/Thread;

    .line 48
    new-instance v2, Lcom/android/server/enterprise/firewall/DomainFilter$6;

    .line 50
    invoke-direct {v2, p0, p1}, Lcom/android/server/enterprise/firewall/DomainFilter$6;-><init>(Lcom/android/server/enterprise/firewall/DomainFilter;Landroid/net/Network;)V

    .line 53
    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 56
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    goto :goto_0

    .line 60
    :catch_0
    move-exception p0

    .line 61
    sget p1, Lcom/android/server/enterprise/firewall/DomainFilter;->MAX_LIST_SIZE_IN_BYTES:I

    .line 63
    new-instance p1, Ljava/lang/StringBuilder;

    .line 65
    const-string v1, "Exception occured: "

    .line 67
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    .line 73
    move-result-object p0

    .line 74
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    move-result-object p0

    .line 81
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_0
    :goto_0
    return-void
.end method
