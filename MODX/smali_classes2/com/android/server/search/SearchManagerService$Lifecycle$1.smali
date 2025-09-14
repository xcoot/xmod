.class public final Lcom/android/server/search/SearchManagerService$Lifecycle$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/search/SearchManagerService$Lifecycle;


# direct methods
.method public constructor <init>(Lcom/android/server/search/SearchManagerService$Lifecycle;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/search/SearchManagerService$Lifecycle$1;->this$0:Lcom/android/server/search/SearchManagerService$Lifecycle;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance v0, Lcom/android/server/search/SearchManagerService$Lifecycle$1$1;

    .line 6
    .line 7
    invoke-direct {v0, p0, p2}, Lcom/android/server/search/SearchManagerService$Lifecycle$1$1;-><init>(Lcom/android/server/search/SearchManagerService$Lifecycle$1;Landroid/content/Intent;)V

    .line 8
    .line 9
    .line 10
    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 14
    .line 15
    .line 16
    return-void
.end method
