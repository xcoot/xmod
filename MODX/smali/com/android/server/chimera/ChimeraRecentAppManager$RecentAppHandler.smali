.class public final Lcom/android/server/chimera/ChimeraRecentAppManager$RecentAppHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/chimera/ChimeraRecentAppManager;


# direct methods
.method public constructor <init>(Lcom/android/server/chimera/ChimeraRecentAppManager;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/chimera/ChimeraRecentAppManager$RecentAppHandler;->this$0:Lcom/android/server/chimera/ChimeraRecentAppManager;

    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3
    check-cast v0, Ljava/lang/Integer;

    .line 5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 8
    move-result v0

    .line 9
    iget p1, p1, Landroid/os/Message;->what:I

    .line 11
    const/4 v1, 0x1

    .line 12
    iget-object p0, p0, Lcom/android/server/chimera/ChimeraRecentAppManager$RecentAppHandler;->this$0:Lcom/android/server/chimera/ChimeraRecentAppManager;

    .line 14
    if-eq p1, v1, :cond_1

    .line 16
    const/4 v1, 0x2

    .line 17
    if-eq p1, v1, :cond_0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/server/chimera/ChimeraRecentAppManager;->checkAppUsageEnd(I)V

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/server/chimera/ChimeraRecentAppManager;->checkAppUsageStart(I)V

    .line 27
    :goto_0
    return-void
.end method
