.class public final Lcom/android/server/UiModeManagerService$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mNightModeValue:I


# virtual methods
.method public final set(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/UiModeManagerService$1;->mNightModeValue:I

    .line 2
    .line 3
    invoke-static {}, Landroid/app/Flags;->enableNightModeBinderCache()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Landroid/app/UiModeManager;->invalidateNightModeCache()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method
