.class public Lcom/android/server/am/mars/EventRecorder$RemoveOutdatedJobService;
.super Landroid/app/job/JobService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public volatile isJobCancelled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/server/am/mars/EventRecorder$RemoveOutdatedJobService;->isJobCancelled:Z

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/android/server/am/mars/EventRecorder$RemoveOutdatedJobService$$ExternalSyntheticLambda0;

    .line 6
    .line 7
    invoke-direct {v1, p0, p1}, Lcom/android/server/am/mars/EventRecorder$RemoveOutdatedJobService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/mars/EventRecorder$RemoveOutdatedJobService;Landroid/app/job/JobParameters;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    return p0
.end method

.method public final onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 1

    .line 1
    const-string p1, "RemoveOutdatedJobService"

    .line 2
    .line 3
    const-string/jumbo v0, "onStopJob is called"

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Lcom/android/server/am/mars/EventRecorder$RemoveOutdatedJobService;->isJobCancelled:Z

    .line 11
    .line 12
    return p1
.end method
