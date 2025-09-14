.class public final Lcom/android/server/wm/BlurController$1;
.super Landroid/view/TunnelModeEnabledListener;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/BlurController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/BlurController;Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/wm/BlurController$1;->this$0:Lcom/android/server/wm/BlurController;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/view/TunnelModeEnabledListener;-><init>(Ljava/util/concurrent/Executor;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onTunnelModeEnabledChanged(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/BlurController$1;->this$0:Lcom/android/server/wm/BlurController;

    .line 2
    .line 3
    iput-boolean p1, p0, Lcom/android/server/wm/BlurController;->mTunnelModeEnabled:Z

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/wm/BlurController;->updateBlurEnabled()V

    .line 6
    .line 7
    .line 8
    return-void
.end method
