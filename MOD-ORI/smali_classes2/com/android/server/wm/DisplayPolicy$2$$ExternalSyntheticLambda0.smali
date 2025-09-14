.class public final synthetic Lcom/android/server/wm/DisplayPolicy$2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/DisplayPolicy$2;

.field public final synthetic f$1:J

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/DisplayPolicy$2;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy$2$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/DisplayPolicy$2;

    .line 5
    .line 6
    iput-wide p2, p0, Lcom/android/server/wm/DisplayPolicy$2$$ExternalSyntheticLambda0;->f$1:J

    .line 7
    .line 8
    const-wide/16 p1, 0x78

    .line 9
    .line 10
    iput-wide p1, p0, Lcom/android/server/wm/DisplayPolicy$2$$ExternalSyntheticLambda0;->f$2:J

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$2$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/DisplayPolicy$2;

    .line 2
    .line 3
    iget-wide v3, p0, Lcom/android/server/wm/DisplayPolicy$2$$ExternalSyntheticLambda0;->f$1:J

    .line 4
    .line 5
    iget-wide v5, p0, Lcom/android/server/wm/DisplayPolicy$2$$ExternalSyntheticLambda0;->f$2:J

    .line 6
    .line 7
    iget-object p0, v0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/content/Context;->getDisplayId()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    check-cast p0, Lcom/android/server/statusbar/StatusBarManagerService$2;

    .line 24
    .line 25
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 26
    .line 27
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 28
    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    :try_start_0
    invoke-interface/range {v1 .. v6}, Lcom/android/internal/statusbar/IStatusBar;->appTransitionStarting(IJJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    .line 34
    :catch_0
    :cond_0
    return-void
.end method
