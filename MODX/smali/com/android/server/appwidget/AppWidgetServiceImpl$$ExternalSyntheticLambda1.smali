.class public final synthetic Lcom/android/server/appwidget/AppWidgetServiceImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .line 6
    return-void
.end method


# virtual methods
.method public final onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    .line 9
    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    .line 12
    monitor-enter v1

    .line 13
    :try_start_0
    const-string/jumbo v2, "generated_preview_api_reset_interval_ms"

    .line 16
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_0

    .line 22
    const-string/jumbo v2, "generated_preview_api_reset_interval_ms"

    .line 25
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mGeneratedPreviewsApiCounter:Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter;

    .line 27
    iget-wide v3, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter;->mResetIntervalMs:J

    .line 29
    invoke-virtual {p1, v2, v3, v4}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    .line 32
    move-result-wide v2

    .line 33
    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mGeneratedPreviewsApiCounter:Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter;

    .line 35
    iput-wide v2, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter;->mResetIntervalMs:J

    .line 37
    goto :goto_0

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    goto :goto_1

    .line 40
    :cond_0
    :goto_0
    const-string/jumbo v2, "generated_preview_api_max_calls_per_interval"

    .line 43
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_1

    .line 49
    const-string/jumbo v0, "generated_preview_api_max_calls_per_interval"

    .line 52
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mGeneratedPreviewsApiCounter:Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter;

    .line 54
    iget v2, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter;->mMaxCallsPerInterval:I

    .line 56
    invoke-virtual {p1, v0, v2}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    .line 59
    move-result p1

    .line 60
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mGeneratedPreviewsApiCounter:Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter;

    .line 62
    iput p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter;->mMaxCallsPerInterval:I

    .line 64
    :cond_1
    monitor-exit v1

    .line 65
    return-void

    .line 66
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    throw p0
.end method
