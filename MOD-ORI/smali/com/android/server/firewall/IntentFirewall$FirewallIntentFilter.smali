.class public final Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;
.super Landroid/content/IntentFilter;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final rule:Lcom/android/server/firewall/IntentFirewall$Rule;


# direct methods
.method public constructor <init>(Lcom/android/server/firewall/IntentFirewall$Rule;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;->rule:Lcom/android/server/firewall/IntentFirewall$Rule;

    .line 5
    .line 6
    return-void
.end method
