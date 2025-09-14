.class public final Lcom/android/server/enterprise/firewall/Firewall$NetworkCallback;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/firewall/Firewall;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/firewall/Firewall;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/enterprise/firewall/Firewall$NetworkCallback;->this$0:Lcom/android/server/enterprise/firewall/Firewall;

    .line 3
    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onAvailable(Landroid/net/Network;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/Firewall$NetworkCallback;->this$0:Lcom/android/server/enterprise/firewall/Firewall;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    new-instance p1, Ljava/lang/Thread;

    .line 8
    new-instance v0, Lcom/android/server/enterprise/firewall/Firewall$4;

    .line 10
    invoke-direct {v0, p0}, Lcom/android/server/enterprise/firewall/Firewall$4;-><init>(Lcom/android/server/enterprise/firewall/Firewall;)V

    .line 13
    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 16
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 19
    return-void
.end method
