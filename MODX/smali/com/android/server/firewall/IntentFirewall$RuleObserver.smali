.class public final Lcom/android/server/firewall/IntentFirewall$RuleObserver;
.super Landroid/os/FileObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/firewall/IntentFirewall;


# direct methods
.method public constructor <init>(Lcom/android/server/firewall/IntentFirewall;Ljava/io/File;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/firewall/IntentFirewall$RuleObserver;->this$0:Lcom/android/server/firewall/IntentFirewall;

    .line 3
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    const/16 p2, 0x3c8

    .line 9
    invoke-direct {p0, p1, p2}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    .line 12
    return-void
.end method


# virtual methods
.method public final onEvent(ILjava/lang/String;)V
    .locals 2

    .line 1
    if-eqz p2, :cond_0

    .line 3
    const-string p1, ".xml"

    .line 5
    invoke-virtual {p2, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 11
    iget-object p1, p0, Lcom/android/server/firewall/IntentFirewall$RuleObserver;->this$0:Lcom/android/server/firewall/IntentFirewall;

    .line 13
    iget-object p1, p1, Lcom/android/server/firewall/IntentFirewall;->mHandler:Lcom/android/server/firewall/IntentFirewall$FirewallHandler;

    .line 15
    const/4 p2, 0x0

    .line 16
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 19
    iget-object p0, p0, Lcom/android/server/firewall/IntentFirewall$RuleObserver;->this$0:Lcom/android/server/firewall/IntentFirewall;

    .line 21
    iget-object p0, p0, Lcom/android/server/firewall/IntentFirewall;->mHandler:Lcom/android/server/firewall/IntentFirewall$FirewallHandler;

    .line 23
    const-wide/16 v0, 0xfa

    .line 25
    invoke-virtual {p0, p2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 28
    :cond_0
    return-void
.end method
