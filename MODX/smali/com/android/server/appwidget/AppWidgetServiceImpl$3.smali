.class public final Lcom/android/server/appwidget/AppWidgetServiceImpl$3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

.field public final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$3;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .line 6
    iput-object p2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$3;->val$intent:Landroid/content/Intent;

    .line 8
    return-void
.end method


# virtual methods
.method public final onNullBinding(Landroid/content/ComponentName;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$3;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .line 3
    iget-object p1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    .line 5
    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 8
    return-void
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 1
    invoke-static {p2}, Lcom/android/internal/widget/IRemoteViewsFactory$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/IRemoteViewsFactory;

    .line 4
    move-result-object p1

    .line 5
    :try_start_0
    iget-object p2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$3;->val$intent:Landroid/content/Intent;

    .line 7
    invoke-interface {p1, p2}, Lcom/android/internal/widget/IRemoteViewsFactory;->onDestroy(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    goto :goto_0

    .line 11
    :catch_0
    move-exception p1

    .line 12
    const-string p2, "AppWidgetServiceImpl"

    .line 14
    const-string v0, "Error calling remove view factory"

    .line 16
    invoke-static {p2, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 19
    :goto_0
    iget-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$3;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .line 21
    iget-object p1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    .line 23
    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 26
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .line 1
    return-void
.end method
