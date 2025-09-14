.class public final Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# virtual methods
.method public final run()V
    .locals 0

    .line 1
    const/4 p0, -0x4

    .line 2
    invoke-static {p0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 3
    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    invoke-static {p0}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
