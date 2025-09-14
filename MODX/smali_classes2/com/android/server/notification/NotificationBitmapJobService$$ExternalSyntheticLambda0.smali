.class public final synthetic Lcom/android/server/notification/NotificationBitmapJobService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/notification/NotificationBitmapJobService;

.field public final synthetic f$1:Landroid/app/job/JobParameters;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/notification/NotificationBitmapJobService;Landroid/app/job/JobParameters;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/notification/NotificationBitmapJobService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/notification/NotificationBitmapJobService;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/notification/NotificationBitmapJobService$$ExternalSyntheticLambda0;->f$1:Landroid/app/job/JobParameters;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/NotificationBitmapJobService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/notification/NotificationBitmapJobService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/notification/NotificationBitmapJobService$$ExternalSyntheticLambda0;->f$1:Landroid/app/job/JobParameters;

    .line 4
    .line 5
    sget v1, Lcom/android/server/notification/NotificationBitmapJobService;->$r8$clinit:I

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const-class v1, Lcom/android/server/notification/NotificationManagerInternal;

    .line 11
    .line 12
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Lcom/android/server/notification/NotificationManagerInternal;

    .line 17
    .line 18
    check-cast v1, Lcom/android/server/notification/NotificationManagerService$18;

    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationManagerService$18;->removeBitmaps()V

    .line 21
    .line 22
    .line 23
    invoke-static {v0}, Lcom/android/server/notification/NotificationBitmapJobService;->scheduleJob(Landroid/content/Context;)V

    .line 24
    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-virtual {v0, p0, v1}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 28
    .line 29
    .line 30
    return-void
.end method
