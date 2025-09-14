.class public Lcom/android/server/ServiceThread;
.super Landroid/os/HandlerThread;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAllowIo:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-boolean p3, p0, Lcom/android/server/ServiceThread;->mAllowIo:Z

    .line 5
    .line 6
    return-void
.end method

.method public static makeSharedHandler(Landroid/os/Looper;)Landroid/os/Handler;
    .locals 4

    .line 1
    new-instance v0, Landroid/os/Handler;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    invoke-direct {v0, p0, v3, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;ZZ)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 3
    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/android/server/ServiceThread;->mAllowIo:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-static {v0}, Landroid/os/StrictMode;->initThreadDefaults(Landroid/content/pm/ApplicationInfo;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-super {p0}, Landroid/os/HandlerThread;->run()V

    .line 14
    .line 15
    .line 16
    return-void
.end method
