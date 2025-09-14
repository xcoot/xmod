.class public final synthetic Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/wm/WindowManagerService;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/WindowManagerService;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda8;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/wm/WindowManagerService;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda8;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p3, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda8;->f$2:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda8;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/wm/WindowManagerService;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda8;->f$1:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v1, Lcom/android/server/wm/InputTarget;

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda8;->f$2:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast p0, Lcom/android/server/wm/InputTarget;

    .line 15
    .line 16
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 17
    .line 18
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 19
    .line 20
    .line 21
    monitor-enter v2

    .line 22
    :try_start_0
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mFocusedInputTarget:Lcom/android/server/wm/InputTarget;

    .line 23
    .line 24
    if-eq v1, v0, :cond_0

    .line 25
    .line 26
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    goto :goto_1

    .line 33
    :cond_0
    if-eqz v1, :cond_1

    .line 34
    .line 35
    if-eq v1, p0, :cond_1

    .line 36
    .line 37
    :try_start_1
    invoke-interface {v1}, Lcom/android/server/wm/InputTarget;->handleTapOutsideFocusOutsideSelf()V

    .line 38
    .line 39
    .line 40
    :cond_1
    invoke-interface {p0}, Lcom/android/server/wm/InputTarget;->handleTapOutsideFocusInsideSelf()V

    .line 41
    .line 42
    .line 43
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 45
    .line 46
    .line 47
    :goto_0
    return-void

    .line 48
    :goto_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 49
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 50
    .line 51
    .line 52
    throw p0

    .line 53
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/wm/WindowManagerService;

    .line 54
    .line 55
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda8;->f$1:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast v1, Landroid/app/PendingIntent;

    .line 58
    .line 59
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda8;->f$2:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast p0, Landroid/content/Intent;

    .line 62
    .line 63
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    .line 64
    .line 65
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerServiceExt;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 66
    .line 67
    invoke-virtual {v0, v1, p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->setPendingIntentAfterUnlock(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
