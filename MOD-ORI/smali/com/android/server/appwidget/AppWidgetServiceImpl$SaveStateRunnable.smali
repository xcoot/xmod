.class public final Lcom/android/server/appwidget/AppWidgetServiceImpl$SaveStateRunnable;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final mUserId:I

.field public final synthetic this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$SaveStateRunnable;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$SaveStateRunnable;->mUserId:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$SaveStateRunnable;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    const-string/jumbo v1, "convert_state_and_io"

    .line 7
    .line 8
    .line 9
    const-wide/16 v2, 0x40

    .line 10
    .line 11
    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$SaveStateRunnable;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .line 15
    .line 16
    iget v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$SaveStateRunnable;->mUserId:I

    .line 17
    .line 18
    const/4 v5, 0x0

    .line 19
    invoke-virtual {v1, v4, v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(IZ)V

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$SaveStateRunnable;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .line 23
    .line 24
    iget p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$SaveStateRunnable;->mUserId:I

    .line 25
    .line 26
    invoke-static {v1, p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-$$Nest$msaveStateLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl;I)V

    .line 27
    .line 28
    .line 29
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 30
    .line 31
    .line 32
    monitor-exit v0

    .line 33
    return-void

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    throw p0
.end method
