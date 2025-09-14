.class public final synthetic Lcom/android/server/dreams/DreamManagerService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/dreams/DreamManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/dreams/DreamManagerService;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/dreams/DreamManagerService$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/dreams/DreamManagerService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/dreams/DreamManagerService;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/dreams/DreamManagerService$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/dreams/DreamManagerService;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->notifyActiveDreamChanged(Landroid/content/ComponentName;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/server/dreams/DreamManagerService;->writePulseGestureEnabled()V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mLock:Ljava/lang/Object;

    .line 19
    .line 20
    monitor-enter v0

    .line 21
    :try_start_0
    const-string/jumbo v1, "user switched"

    .line 22
    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    invoke-virtual {p0, v1, v2}, Lcom/android/server/dreams/DreamManagerService;->stopDreamLocked(Ljava/lang/String;Z)V

    .line 26
    .line 27
    .line 28
    monitor-exit v0

    .line 29
    return-void

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    throw p0

    .line 33
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
