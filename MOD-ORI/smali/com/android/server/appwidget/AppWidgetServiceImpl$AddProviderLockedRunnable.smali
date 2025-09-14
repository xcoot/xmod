.class public final Lcom/android/server/appwidget/AppWidgetServiceImpl$AddProviderLockedRunnable;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final mIndex:I

.field public final mLatch:Ljava/util/concurrent/CountDownLatch;

.field public final mReceiversCheckArray:[Z

.field public final mRi:Landroid/content/pm/ResolveInfo;

.field public final synthetic this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;Ljava/util/concurrent/CountDownLatch;Landroid/content/pm/ResolveInfo;I[Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$AddProviderLockedRunnable;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$AddProviderLockedRunnable;->mLatch:Ljava/util/concurrent/CountDownLatch;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$AddProviderLockedRunnable;->mRi:Landroid/content/pm/ResolveInfo;

    .line 9
    .line 10
    iput p4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$AddProviderLockedRunnable;->mIndex:I

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$AddProviderLockedRunnable;->mReceiversCheckArray:[Z

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    const-string v0, "addProviderLocked failed "

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    :try_start_0
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$AddProviderLockedRunnable;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .line 5
    .line 6
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$AddProviderLockedRunnable;->mRi:Landroid/content/pm/ResolveInfo;

    .line 7
    .line 8
    invoke-virtual {v2, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->addProviderLocked(Landroid/content/pm/ResolveInfo;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$AddProviderLockedRunnable;->mReceiversCheckArray:[Z

    .line 12
    .line 13
    iget v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$AddProviderLockedRunnable;->mIndex:I

    .line 14
    .line 15
    aput-boolean v1, v0, v2

    .line 16
    .line 17
    :goto_0
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$AddProviderLockedRunnable;->mLatch:Ljava/util/concurrent/CountDownLatch;

    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 20
    .line 21
    .line 22
    goto :goto_1

    .line 23
    :catchall_0
    move-exception v0

    .line 24
    goto :goto_2

    .line 25
    :catch_0
    move-exception v2

    .line 26
    :try_start_1
    const-string v3, "AppWidgetServiceImpl"

    .line 27
    .line 28
    new-instance v4, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$AddProviderLockedRunnable;->mRi:Landroid/content/pm/ResolveInfo;

    .line 34
    .line 35
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$AddProviderLockedRunnable;->mReceiversCheckArray:[Z

    .line 49
    .line 50
    iget v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$AddProviderLockedRunnable;->mIndex:I

    .line 51
    .line 52
    aput-boolean v1, v0, v2

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :goto_1
    return-void

    .line 56
    :goto_2
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$AddProviderLockedRunnable;->mReceiversCheckArray:[Z

    .line 57
    .line 58
    iget v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$AddProviderLockedRunnable;->mIndex:I

    .line 59
    .line 60
    aput-boolean v1, v2, v3

    .line 61
    .line 62
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$AddProviderLockedRunnable;->mLatch:Ljava/util/concurrent/CountDownLatch;

    .line 63
    .line 64
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 65
    .line 66
    .line 67
    throw v0
.end method
