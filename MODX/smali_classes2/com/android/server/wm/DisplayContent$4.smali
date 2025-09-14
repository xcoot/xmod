.class public final Lcom/android/server/wm/DisplayContent$4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/DisplayContent;

.field public final synthetic val$focusMonitorIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DisplayContent;Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$4;->this$0:Lcom/android/server/wm/DisplayContent;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/DisplayContent$4;->val$focusMonitorIntent:Landroid/content/Intent;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$4;->this$0:Lcom/android/server/wm/DisplayContent;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent$4;->val$focusMonitorIntent:Landroid/content/Intent;

    .line 8
    .line 9
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 10
    .line 11
    const-string v2, "com.samsung.android.knox.permission.KNOX_APP_MGMT"

    .line 12
    .line 13
    invoke-virtual {v0, p0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
