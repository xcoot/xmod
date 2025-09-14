.class public final Lcom/android/server/search/SearchManagerService$Lifecycle$1$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$1:Lcom/android/server/search/SearchManagerService$Lifecycle$1;

.field public final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Lcom/android/server/search/SearchManagerService$Lifecycle$1;Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/search/SearchManagerService$Lifecycle$1$1;->this$1:Lcom/android/server/search/SearchManagerService$Lifecycle$1;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/search/SearchManagerService$Lifecycle$1$1;->val$intent:Landroid/content/Intent;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/search/SearchManagerService$Lifecycle$1$1;->val$intent:Landroid/content/Intent;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string p0, "SearchManagerService"

    .line 6
    .line 7
    const-string/jumbo v0, "onReceive: null intent"

    .line 8
    .line 9
    .line 10
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    iget-object p0, p0, Lcom/android/server/search/SearchManagerService$Lifecycle$1$1;->this$1:Lcom/android/server/search/SearchManagerService$Lifecycle$1;

    .line 27
    .line 28
    iget-object p0, p0, Lcom/android/server/search/SearchManagerService$Lifecycle$1;->this$0:Lcom/android/server/search/SearchManagerService$Lifecycle;

    .line 29
    .line 30
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    new-instance v0, Landroid/content/Intent;

    .line 34
    .line 35
    const-string v1, "com.samsung.intent.action.SEARCH_MANAGER_READY"

    .line 36
    .line 37
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const/high16 v1, -0x77000000

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 50
    .line 51
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 52
    .line 53
    .line 54
    :cond_1
    return-void
.end method
