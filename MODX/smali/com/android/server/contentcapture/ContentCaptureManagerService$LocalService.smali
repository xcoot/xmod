.class public final Lcom/android/server/contentcapture/ContentCaptureManagerService$LocalService;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/contentcapture/ContentCaptureManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$LocalService;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 6
    return-void
.end method


# virtual methods
.method public final isContentCaptureServiceForUser(II)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$LocalService;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 3
    iget-object v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$LocalService;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 8
    invoke-virtual {v1, p2}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->isDisabledLocked(I)Z

    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x0

    .line 13
    if-eqz v1, :cond_1

    .line 15
    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$LocalService;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 17
    iget-boolean p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    .line 19
    if-eqz p0, :cond_0

    .line 21
    const-string p0, "ContentCaptureManagerService"

    .line 23
    const-string/jumbo p1, "isContentCaptureServiceForUser() disabled!"

    .line 26
    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    :goto_0
    monitor-exit v0

    .line 33
    return v2

    .line 34
    :cond_1
    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$LocalService;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 36
    invoke-virtual {p0, p2}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    .line 39
    move-result-object p0

    .line 40
    check-cast p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 42
    if-eqz p0, :cond_3

    .line 44
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServiceUidLocked()I

    .line 47
    move-result p0

    .line 48
    if-ne p1, p0, :cond_2

    .line 50
    const/4 v2, 0x1

    .line 51
    :cond_2
    monitor-exit v0

    .line 52
    return v2

    .line 53
    :cond_3
    monitor-exit v0

    .line 54
    return v2

    .line 55
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    throw p0
.end method

.method public final notifyActivityEvent(ILandroid/content/ComponentName;ILandroid/app/assist/ActivityId;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$LocalService;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 3
    iget-object v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$LocalService;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 8
    invoke-virtual {v1, p1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->isDisabledLocked(I)Z

    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_1

    .line 14
    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$LocalService;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 16
    iget-boolean p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    .line 18
    if-eqz p0, :cond_0

    .line 20
    const-string p0, "ContentCaptureManagerService"

    .line 22
    const-string/jumbo p1, "notifyActivityEvent() disabled!"

    .line 25
    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    :goto_0
    monitor-exit v0

    .line 32
    return-void

    .line 33
    :cond_1
    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$LocalService;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 35
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    .line 38
    move-result-object p0

    .line 39
    check-cast p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 41
    if-eqz p0, :cond_2

    .line 43
    invoke-virtual {p0, p4, p2, p3}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->onActivityEventLocked(Landroid/app/assist/ActivityId;Landroid/content/ComponentName;I)V

    .line 46
    :cond_2
    monitor-exit v0

    .line 47
    return-void

    .line 48
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    throw p0
.end method
