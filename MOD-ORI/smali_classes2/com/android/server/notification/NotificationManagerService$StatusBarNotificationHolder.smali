.class public final Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;
.super Landroid/service/notification/IStatusBarNotificationHolder$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mValue:Landroid/service/notification/StatusBarNotification;


# direct methods
.method public constructor <init>(Landroid/service/notification/StatusBarNotification;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/service/notification/IStatusBarNotificationHolder$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;->mValue:Landroid/service/notification/StatusBarNotification;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final get()Landroid/service/notification/StatusBarNotification;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;->mValue:Landroid/service/notification/StatusBarNotification;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;->mValue:Landroid/service/notification/StatusBarNotification;

    .line 5
    .line 6
    return-object v0
.end method
