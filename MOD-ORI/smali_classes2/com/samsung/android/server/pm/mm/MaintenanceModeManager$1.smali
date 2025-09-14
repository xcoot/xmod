.class public final Lcom/samsung/android/server/pm/mm/MaintenanceModeManager$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager$1;->this$0:Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;

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
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string/jumbo p2, "onReceive: "

    .line 6
    .line 7
    .line 8
    const-string v0, "MaintenanceMode"

    .line 9
    .line 10
    invoke-static {p2, p1, v0}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    if-eqz p1, :cond_2

    .line 14
    .line 15
    const-string p2, "com.samsung.android.intent.action.HIDE_MAINTENANCE_MODE_MARK"

    .line 16
    .line 17
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    if-nez p2, :cond_1

    .line 22
    .line 23
    const-string p2, "com.samsung.android.intent.action.SHOW_MAINTENANCE_MODE_MARK"

    .line 24
    .line 25
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-nez p1, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager$1;->this$0:Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;

    .line 33
    .line 34
    const/4 p1, 0x1

    .line 35
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->setOverlayVisibility(Z)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager$1;->this$0:Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;

    .line 40
    .line 41
    const/4 p1, 0x0

    .line 42
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->setOverlayVisibility(Z)V

    .line 43
    .line 44
    .line 45
    :cond_2
    :goto_0
    return-void
.end method
