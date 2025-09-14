.class public final Lcom/samsung/android/server/pm/mm/MaintenanceModeManager$2;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;

.field public final synthetic val$actionResponse:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager$2;->this$0:Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager$2;->val$actionResponse:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager$2;->val$actionResponse:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    const-string p1, "android.intent.extra.PACKAGE_NAME"

    .line 14
    .line 15
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const-string/jumbo p2, "onReceive: "

    .line 20
    .line 21
    .line 22
    const-string v0, "MaintenanceMode"

    .line 23
    .line 24
    invoke-static {p2, p1, v0}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    iget-object p2, p0, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager$2;->this$0:Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;

    .line 30
    .line 31
    iget-object p2, p2, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->mRemainingPkgs:Ljava/util/Set;

    .line 32
    .line 33
    check-cast p2, Landroid/util/ArraySet;

    .line 34
    .line 35
    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager$2;->this$0:Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;

    .line 39
    .line 40
    iget-object p1, p1, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->mRemainingPkgs:Ljava/util/Set;

    .line 41
    .line 42
    check-cast p1, Landroid/util/ArraySet;

    .line 43
    .line 44
    invoke-virtual {p1}, Landroid/util/ArraySet;->isEmpty()Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    if-eqz p1, :cond_1

    .line 49
    .line 50
    iget-object p0, p0, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager$2;->this$0:Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;

    .line 51
    .line 52
    iget-object p0, p0, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->mLatch:Ljava/util/concurrent/CountDownLatch;

    .line 53
    .line 54
    if-eqz p0, :cond_1

    .line 55
    .line 56
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 57
    .line 58
    .line 59
    :cond_1
    return-void
.end method
