.class public final synthetic Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/notification/NotificationManagerService;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Landroid/app/Notification;

.field public final synthetic f$3:I

.field public final synthetic f$4:Ljava/lang/String;

.field public final synthetic f$5:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/notification/NotificationManagerService;ZLandroid/app/Notification;ILjava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/notification/NotificationManagerService;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda8;->f$1:Z

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda8;->f$2:Landroid/app/Notification;

    .line 9
    .line 10
    iput p4, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda8;->f$3:I

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda8;->f$4:Ljava/lang/String;

    .line 13
    .line 14
    iput p6, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda8;->f$5:I

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/notification/NotificationManagerService;

    .line 2
    .line 3
    iget-boolean v2, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda8;->f$1:Z

    .line 4
    .line 5
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda8;->f$2:Landroid/app/Notification;

    .line 6
    .line 7
    iget v4, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda8;->f$3:I

    .line 8
    .line 9
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda8;->f$4:Ljava/lang/String;

    .line 10
    .line 11
    iget v6, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda8;->f$5:I

    .line 12
    .line 13
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mAmi:Landroid/app/ActivityManagerInternal;

    .line 14
    .line 15
    invoke-virtual/range {v1 .. v6}, Landroid/app/ActivityManagerInternal;->onForegroundServiceNotificationUpdate(ZLandroid/app/Notification;ILjava/lang/String;I)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
