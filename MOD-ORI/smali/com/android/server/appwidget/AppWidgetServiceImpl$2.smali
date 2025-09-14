.class public final Lcom/android/server/appwidget/AppWidgetServiceImpl$2;
.super Landroid/os/ContainerStateReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$2;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/ContainerStateReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onContainerAdminLocked(Landroid/content/Context;ILandroid/os/Bundle;)V
    .locals 0

    .line 1
    const-string p1, "AppWidgetServiceImpl"

    .line 2
    .line 3
    const-string/jumbo p3, "onContainerAdminLocked is triggered: "

    .line 4
    .line 5
    .line 6
    invoke-static {p2, p3, p1}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$2;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .line 10
    .line 11
    iget-object p1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter p1

    .line 14
    :try_start_0
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$2;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .line 15
    .line 16
    invoke-virtual {p0, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->reloadWidgetsMaskedState(I)V

    .line 17
    .line 18
    .line 19
    monitor-exit p1

    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw p0
.end method

.method public final onContainerAdminUnlocked(Landroid/content/Context;ILandroid/os/Bundle;)V
    .locals 0

    .line 1
    const-string p1, "AppWidgetServiceImpl"

    .line 2
    .line 3
    const-string/jumbo p3, "onContainerAdminUnlocked is triggered: "

    .line 4
    .line 5
    .line 6
    invoke-static {p2, p3, p1}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$2;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .line 10
    .line 11
    iget-object p1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter p1

    .line 14
    :try_start_0
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$2;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .line 15
    .line 16
    invoke-virtual {p0, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->reloadWidgetsMaskedState(I)V

    .line 17
    .line 18
    .line 19
    monitor-exit p1

    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw p0
.end method
