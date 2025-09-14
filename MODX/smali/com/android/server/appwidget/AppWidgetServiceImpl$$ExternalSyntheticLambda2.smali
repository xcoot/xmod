.class public final synthetic Lcom/android/server/appwidget/AppWidgetServiceImpl$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

.field public final synthetic f$1:J

.field public final synthetic f$2:Landroid/app/PendingIntent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;JLandroid/app/PendingIntent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .line 6
    iput-wide p2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$$ExternalSyntheticLambda2;->f$1:J

    .line 8
    iput-object p4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$$ExternalSyntheticLambda2;->f$2:Landroid/app/PendingIntent;

    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .line 3
    iget-wide v5, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$$ExternalSyntheticLambda2;->f$1:J

    .line 5
    iget-object v7, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$$ExternalSyntheticLambda2;->f$2:Landroid/app/PendingIntent;

    .line 7
    iget-object v1, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mAlarmManager:Landroid/app/AlarmManager;

    .line 9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 12
    move-result-wide v2

    .line 13
    add-long v3, v2, v5

    .line 15
    const/4 v2, 0x2

    .line 16
    invoke-virtual/range {v1 .. v7}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    .line 19
    return-void
.end method
