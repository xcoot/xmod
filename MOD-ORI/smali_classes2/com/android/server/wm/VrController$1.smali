.class public final Lcom/android/server/wm/VrController$1;
.super Landroid/service/vr/IPersistentVrStateCallbacks$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/VrController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/VrController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/wm/VrController$1;->this$0:Lcom/android/server/wm/VrController;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/service/vr/IPersistentVrStateCallbacks$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onPersistentVrStateChanged(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/VrController$1;->this$0:Lcom/android/server/wm/VrController;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/VrController;->mGlobalAmLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    const/4 v1, 0x1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    :try_start_0
    iget-object p1, p0, Lcom/android/server/wm/VrController$1;->this$0:Lcom/android/server/wm/VrController;

    .line 11
    .line 12
    const/4 v3, 0x3

    .line 13
    invoke-virtual {p1, v2, v3, v1}, Lcom/android/server/wm/VrController;->setVrRenderThreadLocked(IIZ)I

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/server/wm/VrController$1;->this$0:Lcom/android/server/wm/VrController;

    .line 17
    .line 18
    iget p1, p0, Lcom/android/server/wm/VrController;->mVrState:I

    .line 19
    .line 20
    or-int/lit8 p1, p1, 0x2

    .line 21
    .line 22
    iput p1, p0, Lcom/android/server/wm/VrController;->mVrState:I

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    iget-object p1, p0, Lcom/android/server/wm/VrController$1;->this$0:Lcom/android/server/wm/VrController;

    .line 28
    .line 29
    iget v3, p1, Lcom/android/server/wm/VrController;->mVrState:I

    .line 30
    .line 31
    and-int/lit8 v3, v3, 0x2

    .line 32
    .line 33
    if-eqz v3, :cond_1

    .line 34
    .line 35
    invoke-virtual {p1, v2, v1}, Lcom/android/server/wm/VrController;->updateVrRenderThreadLocked(IZ)I

    .line 36
    .line 37
    .line 38
    :cond_1
    iget-object p0, p0, Lcom/android/server/wm/VrController$1;->this$0:Lcom/android/server/wm/VrController;

    .line 39
    .line 40
    iget p1, p0, Lcom/android/server/wm/VrController;->mVrState:I

    .line 41
    .line 42
    and-int/lit8 p1, p1, -0x3

    .line 43
    .line 44
    iput p1, p0, Lcom/android/server/wm/VrController;->mVrState:I

    .line 45
    .line 46
    :goto_0
    monitor-exit v0

    .line 47
    return-void

    .line 48
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    throw p0
.end method
