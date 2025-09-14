.class public final Lcom/android/server/wm/BlurController$3;
.super Landroid/database/ContentObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/BlurController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/BlurController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/wm/BlurController$3;->this$0:Lcom/android/server/wm/BlurController;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/android/server/wm/BlurController$3;->this$0:Lcom/android/server/wm/BlurController;

    .line 5
    .line 6
    iget-object v0, p1, Lcom/android/server/wm/BlurController;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "disable_window_blurs"

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v1, 0x1

    .line 20
    if-ne v0, v1, :cond_0

    .line 21
    .line 22
    move v2, v1

    .line 23
    :cond_0
    iput-boolean v2, p1, Lcom/android/server/wm/BlurController;->mBlurDisabledSetting:Z

    .line 24
    .line 25
    iget-object p0, p0, Lcom/android/server/wm/BlurController$3;->this$0:Lcom/android/server/wm/BlurController;

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/android/server/wm/BlurController;->updateBlurEnabled()V

    .line 28
    .line 29
    .line 30
    return-void
.end method
