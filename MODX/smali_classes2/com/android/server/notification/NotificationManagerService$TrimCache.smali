.class public final Lcom/android/server/notification/NotificationManagerService$TrimCache;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final heavy:Landroid/service/notification/StatusBarNotification;

.field public sbnClone:Landroid/service/notification/StatusBarNotification;

.field public sbnCloneLight:Landroid/service/notification/StatusBarNotification;

.field public final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationManagerService;Landroid/service/notification/StatusBarNotification;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$TrimCache;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/notification/NotificationManagerService$TrimCache;->heavy:Landroid/service/notification/StatusBarNotification;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final ForListener(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/StatusBarNotification;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$TrimCache;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mLightTrimListeners:Landroid/util/ArraySet;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    const/4 v0, 0x1

    .line 12
    if-ne p1, v0, :cond_1

    .line 13
    .line 14
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$TrimCache;->sbnCloneLight:Landroid/service/notification/StatusBarNotification;

    .line 15
    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$TrimCache;->heavy:Landroid/service/notification/StatusBarNotification;

    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->cloneLight()Landroid/service/notification/StatusBarNotification;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$TrimCache;->sbnCloneLight:Landroid/service/notification/StatusBarNotification;

    .line 25
    .line 26
    :cond_0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$TrimCache;->sbnCloneLight:Landroid/service/notification/StatusBarNotification;

    .line 27
    .line 28
    return-object p0

    .line 29
    :cond_1
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$TrimCache;->sbnClone:Landroid/service/notification/StatusBarNotification;

    .line 30
    .line 31
    if-nez p1, :cond_2

    .line 32
    .line 33
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$TrimCache;->heavy:Landroid/service/notification/StatusBarNotification;

    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->clone()Landroid/service/notification/StatusBarNotification;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$TrimCache;->sbnClone:Landroid/service/notification/StatusBarNotification;

    .line 40
    .line 41
    :cond_2
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$TrimCache;->sbnClone:Landroid/service/notification/StatusBarNotification;

    .line 42
    .line 43
    return-object p0
.end method
