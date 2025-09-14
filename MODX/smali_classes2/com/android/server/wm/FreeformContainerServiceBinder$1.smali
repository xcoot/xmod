.class public final Lcom/android/server/wm/FreeformContainerServiceBinder$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/FreeformContainerServiceBinder;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/FreeformContainerServiceBinder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/FreeformContainerServiceBinder$1;->this$0:Lcom/android/server/wm/FreeformContainerServiceBinder;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/server/wm/FreeformContainerServiceBinder$1;->this$0:Lcom/android/server/wm/FreeformContainerServiceBinder;

    .line 2
    .line 3
    iget-boolean v0, p1, Lcom/android/server/wm/FreeformContainerServiceBinder;->mIsServiceRunning:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string/jumbo v0, "service_disconnected"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Lcom/android/server/wm/FreeformContainerServiceBinder;->unbindServiceIfNeeded(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/wm/FreeformContainerServiceBinder$1;->this$0:Lcom/android/server/wm/FreeformContainerServiceBinder;

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Lcom/android/server/wm/FreeformContainerServiceBinder;->bindServiceIfNeeded(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
