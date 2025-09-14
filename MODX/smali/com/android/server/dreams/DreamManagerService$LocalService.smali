.class public final Lcom/android/server/dreams/DreamManagerService$LocalService;
.super Landroid/service/dreams/DreamManagerInternal;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/dreams/DreamManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/dreams/DreamManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/dreams/DreamManagerService$LocalService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    .line 3
    invoke-direct {p0}, Landroid/service/dreams/DreamManagerInternal;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final canStartDreaming(Z)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService$LocalService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    .line 3
    invoke-static {p0, p1}, Lcom/android/server/dreams/DreamManagerService;->-$$Nest$mcanStartDreamingInternal(Lcom/android/server/dreams/DreamManagerService;Z)Z

    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isDreaming()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService$LocalService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    .line 3
    invoke-virtual {p0}, Lcom/android/server/dreams/DreamManagerService;->isDreamingInternal()Z

    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final registerDreamManagerStateListener(Landroid/service/dreams/DreamManagerInternal$DreamManagerStateListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService$LocalService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    .line 3
    iget-object v0, v0, Lcom/android/server/dreams/DreamManagerService;->mDreamManagerStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 5
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService$LocalService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    .line 10
    iget-boolean v0, p0, Lcom/android/server/dreams/DreamManagerService;->mKeepDreamingWhenUnpluggingDefault:Z

    .line 12
    if-eqz v0, :cond_0

    .line 14
    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService;->mSystemDreamComponent:Landroid/content/ComponentName;

    .line 16
    if-nez p0, :cond_0

    .line 18
    const/4 p0, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p0, 0x0

    .line 21
    :goto_0
    invoke-interface {p1, p0}, Landroid/service/dreams/DreamManagerInternal$DreamManagerStateListener;->onKeepDreamingWhenUnpluggingChanged(Z)V

    .line 24
    return-void
.end method

.method public final requestDream()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService$LocalService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    .line 3
    invoke-virtual {p0}, Lcom/android/server/dreams/DreamManagerService;->requestDreamInternal()V

    .line 6
    return-void
.end method

.method public final startDream(ZLjava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService$LocalService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    .line 3
    invoke-virtual {p0, p2, p1}, Lcom/android/server/dreams/DreamManagerService;->startDreamInternal(Ljava/lang/String;Z)V

    .line 6
    return-void
.end method

.method public final stopDream(ZLjava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService$LocalService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    .line 3
    invoke-virtual {p0, p2, p1}, Lcom/android/server/dreams/DreamManagerService;->stopDreamInternal(Ljava/lang/String;Z)V

    .line 6
    return-void
.end method

.method public final unregisterDreamManagerStateListener(Landroid/service/dreams/DreamManagerInternal$DreamManagerStateListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService$LocalService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    .line 3
    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService;->mDreamManagerStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 5
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 8
    return-void
.end method
