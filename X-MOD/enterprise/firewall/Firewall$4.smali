.class public final Lcom/android/server/enterprise/firewall/Firewall$4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/firewall/Firewall;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/firewall/Firewall;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/enterprise/firewall/Firewall$4;->this$0:Lcom/android/server/enterprise/firewall/Firewall;

    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/android/server/enterprise/firewall/Firewall;->mHasIpv6FilterSupport:Z

    .line 3
    const-string v0, "Firewall"

    .line 5
    const-string/jumbo v1, "initializeIpTables() "

    .line 8
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/Firewall$4;->this$0:Lcom/android/server/enterprise/firewall/Firewall;

    .line 13
    iget-object v0, v0, Lcom/android/server/enterprise/firewall/Firewall;->mInitializingIpTablesRulesLock:Ljava/lang/Object;

    .line 15
    monitor-enter v0

    .line 16
    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/Firewall$4;->this$0:Lcom/android/server/enterprise/firewall/Firewall;

    .line 18
    iget-boolean v2, v1, Lcom/android/server/enterprise/firewall/Firewall;->mAreRulesReloaded:Z

    .line 20
    if-nez v2, :cond_1

    .line 22
    iget-boolean v2, v1, Lcom/android/server/enterprise/firewall/Firewall;->mIsChainsCreated:Z

    .line 24
    if-nez v2, :cond_0

    .line 26
    invoke-static {v1}, Lcom/android/server/enterprise/firewall/Firewall;->-$$Nest$mcreateChains(Lcom/android/server/enterprise/firewall/Firewall;)V

    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/Firewall$4;->this$0:Lcom/android/server/enterprise/firewall/Firewall;

    .line 34
    iget-object v1, v1, Lcom/android/server/enterprise/firewall/Firewall;->mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    .line 36
    const/4 v2, 0x0

    .line 37
    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->flushAllChains(Ljava/lang/Integer;)Z

    .line 40
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/Firewall$4;->this$0:Lcom/android/server/enterprise/firewall/Firewall;

    .line 42
    iget-object v1, v1, Lcom/android/server/enterprise/firewall/Firewall;->mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    .line 44
    invoke-virtual {v1}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->setRulesStatusAfterReboot()V

    .line 47
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/Firewall$4;->this$0:Lcom/android/server/enterprise/firewall/Firewall;

    .line 49
    const/4 v2, -0x1

    .line 50
    const/4 v3, 0x1

    .line 51
    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/firewall/Firewall;->blockOrUnblockAll(IZ)V

    .line 54
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/Firewall$4;->this$0:Lcom/android/server/enterprise/firewall/Firewall;

    .line 56
    iget-object v1, v1, Lcom/android/server/enterprise/firewall/Firewall;->mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    .line 58
    invoke-virtual {v1}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->reloadIptablesRules()V

    .line 61
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/Firewall$4;->this$0:Lcom/android/server/enterprise/firewall/Firewall;

    .line 63
    iget-object v1, v1, Lcom/android/server/enterprise/firewall/Firewall;->mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    .line 65
    invoke-virtual {v1}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->reloadDomainFilterOnIptablesRules()V

    .line 68
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/Firewall$4;->this$0:Lcom/android/server/enterprise/firewall/Firewall;

    .line 70
    iput-boolean v3, p0, Lcom/android/server/enterprise/firewall/Firewall;->mAreRulesReloaded:Z

    .line 72
    const/4 v1, 0x0

    .line 73
    invoke-virtual {p0, v2, v1}, Lcom/android/server/enterprise/firewall/Firewall;->blockOrUnblockAll(IZ)V

    .line 76
    const-string p0, "Firewall"

    .line 78
    const-string/jumbo v1, "initializeIpTables() - IP Tables initialization was done"

    .line 81
    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_1
    monitor-exit v0

    .line 85
    return-void

    .line 86
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    throw p0
.end method
