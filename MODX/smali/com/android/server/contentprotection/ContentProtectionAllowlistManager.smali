.class public final Lcom/android/server/contentprotection/ContentProtectionAllowlistManager;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mAllowedPackages:Ljava/util/Set;

.field final mAllowlistCallback:Landroid/service/contentcapture/IContentProtectionAllowlistCallback;

.field public final mContentCaptureManagerService:Lcom/android/server/contentcapture/ContentCaptureManagerService;

.field public final mHandler:Landroid/os/Handler;

.field public final mHandlerToken:Ljava/lang/Object;

.field public final mLock:Ljava/lang/Object;

.field final mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field public mStarted:Z

.field public final mTimeoutMs:J

.field public mUpdatePendingUntil:Ljava/time/Instant;


# direct methods
.method public constructor <init>(Lcom/android/server/contentcapture/ContentCaptureManagerService;Landroid/os/Handler;J)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/contentprotection/ContentProtectionAllowlistManager;->mHandlerToken:Ljava/lang/Object;

    .line 11
    new-instance v0, Ljava/lang/Object;

    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/android/server/contentprotection/ContentProtectionAllowlistManager;->mLock:Ljava/lang/Object;

    .line 18
    invoke-static {}, Ljava/util/Set;->of()Ljava/util/Set;

    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Lcom/android/server/contentprotection/ContentProtectionAllowlistManager;->mAllowedPackages:Ljava/util/Set;

    .line 24
    iput-object p1, p0, Lcom/android/server/contentprotection/ContentProtectionAllowlistManager;->mContentCaptureManagerService:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 26
    iput-object p2, p0, Lcom/android/server/contentprotection/ContentProtectionAllowlistManager;->mHandler:Landroid/os/Handler;

    .line 28
    iput-wide p3, p0, Lcom/android/server/contentprotection/ContentProtectionAllowlistManager;->mTimeoutMs:J

    .line 30
    invoke-virtual {p0}, Lcom/android/server/contentprotection/ContentProtectionAllowlistManager;->createPackageMonitor()Lcom/android/internal/content/PackageMonitor;

    .line 33
    move-result-object p1

    .line 34
    iput-object p1, p0, Lcom/android/server/contentprotection/ContentProtectionAllowlistManager;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 36
    invoke-virtual {p0}, Lcom/android/server/contentprotection/ContentProtectionAllowlistManager;->createAllowlistCallback()Landroid/service/contentcapture/IContentProtectionAllowlistCallback;

    .line 39
    move-result-object p1

    .line 40
    iput-object p1, p0, Lcom/android/server/contentprotection/ContentProtectionAllowlistManager;->mAllowlistCallback:Landroid/service/contentcapture/IContentProtectionAllowlistCallback;

    .line 42
    return-void
.end method


# virtual methods
.method public createAllowlistCallback()Landroid/service/contentcapture/IContentProtectionAllowlistCallback;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/contentprotection/ContentProtectionAllowlistManager$ContentProtectionAllowlistCallback;

    .line 3
    invoke-direct {v0, p0}, Lcom/android/server/contentprotection/ContentProtectionAllowlistManager$ContentProtectionAllowlistCallback;-><init>(Lcom/android/server/contentprotection/ContentProtectionAllowlistManager;)V

    .line 6
    return-object v0
.end method

.method public createPackageMonitor()Lcom/android/internal/content/PackageMonitor;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/contentprotection/ContentProtectionAllowlistManager$ContentProtectionPackageMonitor;

    .line 3
    invoke-direct {v0, p0}, Lcom/android/server/contentprotection/ContentProtectionAllowlistManager$ContentProtectionPackageMonitor;-><init>(Lcom/android/server/contentprotection/ContentProtectionAllowlistManager;)V

    .line 6
    return-object v0
.end method

.method public final handlePackagesChanged()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/contentprotection/ContentProtectionAllowlistManager;->mUpdatePendingUntil:Ljava/time/Instant;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/android/server/contentprotection/ContentProtectionAllowlistManager;->mUpdatePendingUntil:Ljava/time/Instant;

    .line 11
    invoke-virtual {v0, v1}, Ljava/time/Instant;->isBefore(Ljava/time/Instant;)Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 17
    return-void

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/android/server/contentprotection/ContentProtectionAllowlistManager;->mContentCaptureManagerService:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 20
    invoke-virtual {v0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->createRemoteContentProtectionService()Lcom/android/server/contentprotection/RemoteContentProtectionService;

    .line 23
    move-result-object v0

    .line 24
    if-nez v0, :cond_1

    .line 26
    return-void

    .line 27
    :cond_1
    iget-object v1, p0, Lcom/android/server/contentprotection/ContentProtectionAllowlistManager;->mHandlerToken:Ljava/lang/Object;

    .line 29
    iget-object v2, p0, Lcom/android/server/contentprotection/ContentProtectionAllowlistManager;->mHandler:Landroid/os/Handler;

    .line 31
    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 34
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    .line 37
    move-result-object v1

    .line 38
    iget-wide v2, p0, Lcom/android/server/contentprotection/ContentProtectionAllowlistManager;->mTimeoutMs:J

    .line 40
    invoke-virtual {v1, v2, v3}, Ljava/time/Instant;->plusMillis(J)Ljava/time/Instant;

    .line 43
    move-result-object v1

    .line 44
    iput-object v1, p0, Lcom/android/server/contentprotection/ContentProtectionAllowlistManager;->mUpdatePendingUntil:Ljava/time/Instant;

    .line 46
    :try_start_0
    iget-object p0, p0, Lcom/android/server/contentprotection/ContentProtectionAllowlistManager;->mAllowlistCallback:Landroid/service/contentcapture/IContentProtectionAllowlistCallback;

    .line 48
    new-instance v1, Lcom/android/server/contentprotection/RemoteContentProtectionService$$ExternalSyntheticLambda1;

    .line 50
    const/4 v2, 0x0

    .line 51
    invoke-direct {v1, v2, p0}, Lcom/android/server/contentprotection/RemoteContentProtectionService$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 54
    invoke-virtual {v0, v1}, Lcom/android/internal/infra/ServiceConnector$Impl;->run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    goto :goto_0

    .line 58
    :catch_0
    move-exception p0

    .line 59
    const-string v0, "ContentProtectionAllowlistManager"

    .line 61
    const-string v1, "Failed to call remote service"

    .line 63
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 66
    :goto_0
    return-void
.end method

.method public final stop()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/contentprotection/ContentProtectionAllowlistManager;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 3
    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    :catch_0
    iget-object v0, p0, Lcom/android/server/contentprotection/ContentProtectionAllowlistManager;->mHandlerToken:Ljava/lang/Object;

    .line 8
    iget-object v1, p0, Lcom/android/server/contentprotection/ContentProtectionAllowlistManager;->mHandler:Landroid/os/Handler;

    .line 10
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 13
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/android/server/contentprotection/ContentProtectionAllowlistManager;->mUpdatePendingUntil:Ljava/time/Instant;

    .line 16
    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lcom/android/server/contentprotection/ContentProtectionAllowlistManager;->mStarted:Z

    .line 19
    return-void
.end method
