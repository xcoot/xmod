.class public final synthetic Lcom/android/server/statusbar/StatusBarManagerService$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/statusbar/StatusBarManagerService;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/os/IBinder;

.field public final synthetic f$3:I

.field public final synthetic f$4:I

.field public final synthetic f$5:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/statusbar/StatusBarManagerService;ILandroid/os/IBinder;IIZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/statusbar/StatusBarManagerService$$ExternalSyntheticLambda4;->f$1:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/statusbar/StatusBarManagerService$$ExternalSyntheticLambda4;->f$2:Landroid/os/IBinder;

    .line 9
    .line 10
    iput p4, p0, Lcom/android/server/statusbar/StatusBarManagerService$$ExternalSyntheticLambda4;->f$3:I

    .line 11
    .line 12
    iput p5, p0, Lcom/android/server/statusbar/StatusBarManagerService$$ExternalSyntheticLambda4;->f$4:I

    .line 13
    .line 14
    iput-boolean p6, p0, Lcom/android/server/statusbar/StatusBarManagerService$$ExternalSyntheticLambda4;->f$5:Z

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 2
    .line 3
    iget v2, p0, Lcom/android/server/statusbar/StatusBarManagerService$$ExternalSyntheticLambda4;->f$1:I

    .line 4
    .line 5
    iget-object v3, p0, Lcom/android/server/statusbar/StatusBarManagerService$$ExternalSyntheticLambda4;->f$2:Landroid/os/IBinder;

    .line 6
    .line 7
    iget v4, p0, Lcom/android/server/statusbar/StatusBarManagerService$$ExternalSyntheticLambda4;->f$3:I

    .line 8
    .line 9
    iget v5, p0, Lcom/android/server/statusbar/StatusBarManagerService$$ExternalSyntheticLambda4;->f$4:I

    .line 10
    .line 11
    iget-boolean v6, p0, Lcom/android/server/statusbar/StatusBarManagerService$$ExternalSyntheticLambda4;->f$5:Z

    .line 12
    .line 13
    iget-object p0, v0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 14
    .line 15
    if-nez p0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    :try_start_0
    iget-object v1, v0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 19
    .line 20
    invoke-interface/range {v1 .. v6}, Lcom/android/internal/statusbar/IStatusBar;->setImeWindowStatus(ILandroid/os/IBinder;IIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    .line 23
    :catch_0
    :goto_0
    return-void
.end method
