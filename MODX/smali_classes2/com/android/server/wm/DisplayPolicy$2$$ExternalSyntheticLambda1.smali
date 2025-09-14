.class public final synthetic Lcom/android/server/wm/DisplayPolicy$2$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/wm/DisplayPolicy$2;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/DisplayPolicy$2;II)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/wm/DisplayPolicy$2$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy$2$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/DisplayPolicy$2;

    .line 4
    .line 5
    iput p2, p0, Lcom/android/server/wm/DisplayPolicy$2$$ExternalSyntheticLambda1;->f$1:I

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/wm/DisplayPolicy$2$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$2$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/DisplayPolicy$2;

    .line 7
    .line 8
    iget p0, p0, Lcom/android/server/wm/DisplayPolicy$2$$ExternalSyntheticLambda1;->f$1:I

    .line 9
    .line 10
    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerService$2;

    .line 19
    .line 20
    iget-object v1, v0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 23
    .line 24
    .line 25
    iget-object v0, v0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 26
    .line 27
    iget-object v0, v0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    :try_start_0
    invoke-interface {v0, p0}, Lcom/android/internal/statusbar/IStatusBar;->appTransitionFinished(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    .line 34
    :catch_0
    :cond_0
    return-void

    .line 35
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$2$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/DisplayPolicy$2;

    .line 36
    .line 37
    iget p0, p0, Lcom/android/server/wm/DisplayPolicy$2$$ExternalSyntheticLambda1;->f$1:I

    .line 38
    .line 39
    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    if-eqz v0, :cond_1

    .line 46
    .line 47
    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerService$2;

    .line 48
    .line 49
    iget-object v0, v0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 50
    .line 51
    iget-object v0, v0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 52
    .line 53
    if-eqz v0, :cond_1

    .line 54
    .line 55
    :try_start_1
    invoke-interface {v0, p0}, Lcom/android/internal/statusbar/IStatusBar;->appTransitionCancelled(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 56
    .line 57
    .line 58
    :catch_1
    :cond_1
    return-void

    .line 59
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$2$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/DisplayPolicy$2;

    .line 60
    .line 61
    iget p0, p0, Lcom/android/server/wm/DisplayPolicy$2$$ExternalSyntheticLambda1;->f$1:I

    .line 62
    .line 63
    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    .line 64
    .line 65
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    if-eqz v0, :cond_2

    .line 70
    .line 71
    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerService$2;

    .line 72
    .line 73
    iget-object v0, v0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 74
    .line 75
    iget-object v0, v0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 76
    .line 77
    if-eqz v0, :cond_2

    .line 78
    .line 79
    :try_start_2
    invoke-interface {v0, p0}, Lcom/android/internal/statusbar/IStatusBar;->appTransitionPending(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 80
    .line 81
    .line 82
    :catch_2
    :cond_2
    return-void

    .line 83
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
