.class public final synthetic Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(IZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda16;->f$0:I

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda16;->f$1:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda16;->f$0:I

    .line 2
    .line 3
    iget-boolean p0, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda16;->f$1:Z

    .line 4
    .line 5
    check-cast p1, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 6
    .line 7
    check-cast p1, Lcom/android/server/statusbar/StatusBarManagerService$2;

    .line 8
    .line 9
    iget-object v1, p1, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 10
    .line 11
    iget-object v1, v1, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    sget-boolean v1, Landroid/view/ViewRootImpl;->CLIENT_TRANSIENT:Z

    .line 17
    .line 18
    if-nez v1, :cond_1

    .line 19
    .line 20
    :try_start_0
    iget-object p1, p1, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 21
    .line 22
    iget-object p1, p1, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 23
    .line 24
    invoke-interface {p1, v0, p0}, Lcom/android/internal/statusbar/IStatusBar;->immersiveModeChanged(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    .line 27
    :catch_0
    :cond_1
    :goto_0
    return-void
.end method
