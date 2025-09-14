.class public final synthetic Lcom/android/server/appwidget/AppWidgetServiceImpl$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

.field public final synthetic f$1:Landroid/app/PendingIntent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;Landroid/app/PendingIntent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .line 6
    iput-object p2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$$ExternalSyntheticLambda3;->f$1:Landroid/app/PendingIntent;

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .line 3
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$$ExternalSyntheticLambda3;->f$1:Landroid/app/PendingIntent;

    .line 5
    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mAlarmManager:Landroid/app/AlarmManager;

    .line 7
    invoke-virtual {v0, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 10
    invoke-virtual {p0}, Landroid/app/PendingIntent;->cancel()V

    .line 13
    return-void
.end method
