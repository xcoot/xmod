.class public final Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$ProxyAgentBindingChecker;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mCheckerLock:Ljava/lang/Object;

.field public final mHandler:Landroid/os/Handler;

.field public final synthetic this$0:Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;


# direct methods
.method public constructor <init>(Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$ProxyAgentBindingChecker;->this$0:Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;

    .line 5
    .line 6
    new-instance p1, Ljava/lang/Object;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$ProxyAgentBindingChecker;->mCheckerLock:Ljava/lang/Object;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$ProxyAgentBindingChecker;->mHandler:Landroid/os/Handler;

    .line 14
    .line 15
    return-void
.end method
