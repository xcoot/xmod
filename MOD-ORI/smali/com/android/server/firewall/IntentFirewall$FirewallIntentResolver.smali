.class public final Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;
.super Lcom/android/server/IntentResolver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mRulesByComponent:Landroid/util/ArrayMap;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/server/IntentResolver;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/ArrayMap;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;->mRulesByComponent:Landroid/util/ArrayMap;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final allowFilterResult(Ljava/util/List;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p2, Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;

    .line 2
    .line 3
    iget-object p0, p2, Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;->rule:Lcom/android/server/firewall/IntentFirewall$Rule;

    .line 4
    .line 5
    check-cast p1, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    xor-int/lit8 p0, p0, 0x1

    .line 12
    .line 13
    return p0
.end method

.method public final getIntentFilter(Ljava/lang/Object;)Landroid/content/IntentFilter;
    .locals 0

    .line 1
    check-cast p1, Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;

    .line 2
    .line 3
    return-object p1
.end method

.method public final bridge synthetic isPackageForFilter(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p2, Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;

    .line 2
    .line 3
    const/4 p0, 0x1

    .line 4
    return p0
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    new-array p0, p1, [Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;

    .line 2
    .line 3
    return-object p0
.end method

.method public final newResult(Lcom/android/server/pm/Computer;Ljava/lang/Object;IIJ)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;

    .line 2
    .line 3
    iget-object p0, p2, Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;->rule:Lcom/android/server/firewall/IntentFirewall$Rule;

    .line 4
    .line 5
    return-object p0
.end method

.method public final sortResults(Ljava/util/List;)V
    .locals 0

    .line 1
    return-void
.end method
