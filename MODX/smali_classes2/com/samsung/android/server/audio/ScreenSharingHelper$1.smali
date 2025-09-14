.class public final Lcom/samsung/android/server/audio/ScreenSharingHelper$1;
.super Lcom/samsung/android/server/audio/FrequentWorker;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/server/audio/ScreenSharingHelper;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/audio/ScreenSharingHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper$1;->this$0:Lcom/samsung/android/server/audio/ScreenSharingHelper;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/samsung/android/server/audio/FrequentWorker;-><init>()V

    .line 4
    .line 5
    .line 6
    const/16 p1, 0x3e8

    .line 7
    .line 8
    iput p1, p0, Lcom/samsung/android/server/audio/FrequentWorker;->mPeriodMs:I

    .line 9
    .line 10
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 11
    .line 12
    iput-object p1, p0, Lcom/samsung/android/server/audio/FrequentWorker;->mCachedValue:Ljava/lang/Object;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final func()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper$1;->this$0:Lcom/samsung/android/server/audio/ScreenSharingHelper;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 8
    .line 9
    invoke-virtual {v2}, Landroid/hardware/display/DisplayManager;->semGetActiveDlnaDevice()Landroid/hardware/display/SemDlnaDevice;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    invoke-virtual {v2}, Landroid/hardware/display/SemDlnaDevice;->getDlnaType()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    goto :goto_2

    .line 22
    :cond_0
    const/4 v2, -0x1

    .line 23
    :goto_0
    iget-boolean p0, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mIsDLNAEnabled:Z

    .line 24
    .line 25
    if-eqz p0, :cond_2

    .line 26
    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    const/4 p0, 0x2

    .line 30
    if-eq v2, p0, :cond_1

    .line 31
    .line 32
    const/4 p0, 0x3

    .line 33
    if-ne v2, p0, :cond_2

    .line 34
    .line 35
    :cond_1
    const/4 p0, 0x1

    .line 36
    goto :goto_1

    .line 37
    :cond_2
    const/4 p0, 0x0

    .line 38
    :goto_1
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 39
    .line 40
    .line 41
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 43
    .line 44
    .line 45
    return-object p0

    .line 46
    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 47
    .line 48
    .line 49
    throw p0
.end method
