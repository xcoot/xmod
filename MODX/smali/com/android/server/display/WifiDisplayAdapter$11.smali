.class public final Lcom/android/server/display/WifiDisplayAdapter$11;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/WifiDisplayAdapter;

.field public final synthetic val$mode:Z


# direct methods
.method public constructor <init>(Lcom/android/server/display/WifiDisplayAdapter;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter$11;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    .line 6
    iput-boolean p2, p0, Lcom/android/server/display/WifiDisplayAdapter$11;->val$mode:Z

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 3
    const-string/jumbo v1, "com.samsung.intent.action.SET_SCREEN_RATIO_VALUE"

    .line 6
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 9
    const-string/jumbo v1, "screenratiovalue"

    .line 12
    iget-boolean v2, p0, Lcom/android/server/display/WifiDisplayAdapter$11;->val$mode:Z

    .line 14
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 17
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$11;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    .line 19
    iget-object v1, v1, Lcom/android/server/display/DisplayAdapter;->mContext:Landroid/content/Context;

    .line 21
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 23
    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 26
    iget-boolean p0, p0, Lcom/android/server/display/WifiDisplayAdapter$11;->val$mode:Z

    .line 28
    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 31
    move-result-object p0

    .line 32
    const-string/jumbo v0, "wlan.wfd.screenratiovalue"

    .line 35
    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    return-void
.end method
