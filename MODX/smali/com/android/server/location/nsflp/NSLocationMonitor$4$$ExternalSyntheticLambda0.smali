.class public final synthetic Lcom/android/server/location/nsflp/NSLocationMonitor$4$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/location/nsflp/NSLocationMonitor$4;

.field public final synthetic f$1:Landroid/service/notification/StatusBarNotification;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/nsflp/NSLocationMonitor$4;Landroid/service/notification/StatusBarNotification;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$4$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$4$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/location/nsflp/NSLocationMonitor$4;

    .line 5
    iput-object p2, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$4$$ExternalSyntheticLambda0;->f$1:Landroid/service/notification/StatusBarNotification;

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    const-string/jumbo v0, "packageName"

    .line 4
    iget v1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$4$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 6
    packed-switch v1, :pswitch_data_0

    .line 9
    iget-object v1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$4$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/location/nsflp/NSLocationMonitor$4;

    .line 11
    iget-object p0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$4$$ExternalSyntheticLambda0;->f$1:Landroid/service/notification/StatusBarNotification;

    .line 13
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    if-eqz p0, :cond_0

    .line 18
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 21
    move-result-object v2

    .line 22
    if-eqz v2, :cond_0

    .line 24
    iget-object v3, v1, Lcom/android/server/location/nsflp/NSLocationMonitor$4;->this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    .line 26
    sget-object v4, Lcom/android/server/location/nsflp/NSLocationMonitor;->MONITOR_SERVICE_LOCK:Ljava/lang/Object;

    .line 28
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    iget v2, v2, Landroid/app/Notification;->flags:I

    .line 33
    and-int/lit8 v2, v2, 0x40

    .line 35
    if-eqz v2, :cond_0

    .line 37
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 44
    move-result-object p0

    .line 45
    iget-object v3, v1, Lcom/android/server/location/nsflp/NSLocationMonitor$4;->this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    .line 47
    iget-object v3, v3, Lcom/android/server/location/nsflp/NSLocationMonitor;->mForegroundNotificationList:Ljava/util/Map;

    .line 49
    new-instance v4, Lcom/android/server/location/nsflp/NSLocationMonitor$$ExternalSyntheticLambda3;

    .line 51
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 54
    check-cast v3, Ljava/util/HashMap;

    .line 56
    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    .line 59
    move-result-object v3

    .line 60
    check-cast v3, Ljava/util/Set;

    .line 62
    invoke-interface {v3, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 65
    move-result p0

    .line 66
    if-eqz p0, :cond_0

    .line 68
    invoke-interface {v3}, Ljava/util/Set;->size()I

    .line 71
    move-result p0

    .line 72
    const/4 v3, 0x1

    .line 73
    if-ne p0, v3, :cond_0

    .line 75
    invoke-static {v0, v2}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    .line 78
    move-result-object p0

    .line 79
    iget-object v0, v1, Lcom/android/server/location/nsflp/NSLocationMonitor$4;->this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    .line 81
    iget-object v0, v0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mNSConnectionHelper:Lcom/android/server/location/nsflp/NSConnectionHelper;

    .line 83
    sget-object v1, Landroid/location/LocationConstants$STATE_TYPE;->NOTIFICATION_POSTED:Landroid/location/LocationConstants$STATE_TYPE;

    .line 85
    invoke-virtual {v0, v1, p0}, Lcom/android/server/location/nsflp/NSConnectionHelper;->onStateUpdated(Landroid/location/LocationConstants$STATE_TYPE;Landroid/os/Bundle;)V

    .line 88
    :cond_0
    return-void

    .line 89
    :pswitch_0
    iget-object v1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$4$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/location/nsflp/NSLocationMonitor$4;

    .line 91
    iget-object p0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$4$$ExternalSyntheticLambda0;->f$1:Landroid/service/notification/StatusBarNotification;

    .line 93
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    if-eqz p0, :cond_1

    .line 98
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 101
    move-result-object v2

    .line 102
    if-eqz v2, :cond_1

    .line 104
    iget-object v3, v1, Lcom/android/server/location/nsflp/NSLocationMonitor$4;->this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    .line 106
    sget-object v4, Lcom/android/server/location/nsflp/NSLocationMonitor;->MONITOR_SERVICE_LOCK:Ljava/lang/Object;

    .line 108
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 111
    iget v2, v2, Landroid/app/Notification;->flags:I

    .line 113
    and-int/lit8 v2, v2, 0x40

    .line 115
    if-eqz v2, :cond_1

    .line 117
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 120
    move-result-object v2

    .line 121
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 124
    move-result-object p0

    .line 125
    iget-object v3, v1, Lcom/android/server/location/nsflp/NSLocationMonitor$4;->this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    .line 127
    iget-object v3, v3, Lcom/android/server/location/nsflp/NSLocationMonitor;->mForegroundNotificationList:Ljava/util/Map;

    .line 129
    check-cast v3, Ljava/util/HashMap;

    .line 131
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    move-result-object v3

    .line 135
    check-cast v3, Ljava/util/Set;

    .line 137
    if-eqz v3, :cond_1

    .line 139
    invoke-interface {v3, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 142
    move-result p0

    .line 143
    if-eqz p0, :cond_1

    .line 145
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    .line 148
    move-result p0

    .line 149
    if-eqz p0, :cond_1

    .line 151
    invoke-static {v0, v2}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    .line 154
    move-result-object p0

    .line 155
    iget-object v0, v1, Lcom/android/server/location/nsflp/NSLocationMonitor$4;->this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    .line 157
    iget-object v0, v0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mNSConnectionHelper:Lcom/android/server/location/nsflp/NSConnectionHelper;

    .line 159
    sget-object v1, Landroid/location/LocationConstants$STATE_TYPE;->NOTIFICATION_REMOVED:Landroid/location/LocationConstants$STATE_TYPE;

    .line 161
    invoke-virtual {v0, v1, p0}, Lcom/android/server/location/nsflp/NSConnectionHelper;->onStateUpdated(Landroid/location/LocationConstants$STATE_TYPE;Landroid/os/Bundle;)V

    .line 164
    :cond_1
    return-void

    .line 165
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
