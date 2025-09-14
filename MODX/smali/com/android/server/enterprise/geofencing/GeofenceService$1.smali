.class public final Lcom/android/server/enterprise/geofencing/GeofenceService$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/enterprise/geofencing/GeofenceService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/enterprise/geofencing/GeofenceService;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/enterprise/geofencing/GeofenceService$1;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService$1;->this$0:Lcom/android/server/enterprise/geofencing/GeofenceService;

    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 1
    iget p1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService$1;->$r8$classId:I

    .line 3
    packed-switch p1, :pswitch_data_0

    .line 6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 9
    move-result-object p1

    .line 10
    if-eqz p1, :cond_0

    .line 12
    const-string v0, "android.intent.action.USER_REMOVED"

    .line 14
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 20
    iget-object p1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService$1;->this$0:Lcom/android/server/enterprise/geofencing/GeofenceService;

    .line 22
    iget-object p1, p1, Lcom/android/server/enterprise/geofencing/GeofenceService;->mHandler:Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;

    .line 24
    const/4 p2, 0x2

    .line 25
    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 28
    move-result-object p1

    .line 29
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    .line 32
    move-result p2

    .line 33
    iput p2, p1, Landroid/os/Message;->arg1:I

    .line 35
    iget-object p0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService$1;->this$0:Lcom/android/server/enterprise/geofencing/GeofenceService;

    .line 37
    iget-object p0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mHandler:Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;

    .line 39
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 42
    goto :goto_1

    .line 43
    :cond_0
    if-eqz p1, :cond_2

    .line 45
    const-string v0, "android.intent.action.USER_STOPPED"

    .line 47
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    move-result p1

    .line 51
    if-eqz p1, :cond_2

    .line 53
    const-string p1, "android.intent.extra.user_handle"

    .line 55
    const/4 v0, -0x1

    .line 56
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 59
    move-result p1

    .line 60
    const/4 p2, 0x1

    .line 61
    if-ge p1, p2, :cond_1

    .line 63
    goto :goto_1

    .line 64
    :cond_1
    iget-object p2, p0, Lcom/android/server/enterprise/geofencing/GeofenceService$1;->this$0:Lcom/android/server/enterprise/geofencing/GeofenceService;

    .line 66
    iget-object p2, p2, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 68
    const/4 v0, 0x0

    .line 69
    const-string v1, "ADMIN"

    .line 71
    const-string v2, "adminUid"

    .line 73
    invoke-virtual {p2, v0, p1, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getIntListAsUser(IILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 76
    move-result-object p1

    .line 77
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 80
    move-result-object p1

    .line 81
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 84
    move-result p2

    .line 85
    if-eqz p2, :cond_2

    .line 87
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 90
    move-result-object p2

    .line 91
    check-cast p2, Ljava/lang/Integer;

    .line 93
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 96
    move-result p2

    .line 97
    iget-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService$1;->this$0:Lcom/android/server/enterprise/geofencing/GeofenceService;

    .line 99
    invoke-virtual {v0, p2}, Lcom/android/server/enterprise/geofencing/GeofenceService;->deleteGeofenceActiveListByAdmin(I)V

    .line 102
    goto :goto_0

    .line 103
    :cond_2
    :goto_1
    return-void

    .line 104
    :pswitch_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 107
    move-result-object p1

    .line 108
    if-eqz p1, :cond_3

    .line 110
    const-string p2, "android.location.PROVIDERS_CHANGED"

    .line 112
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 115
    move-result p1

    .line 116
    if-eqz p1, :cond_3

    .line 118
    iget-object p1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService$1;->this$0:Lcom/android/server/enterprise/geofencing/GeofenceService;

    .line 120
    iget-object p1, p1, Lcom/android/server/enterprise/geofencing/GeofenceService;->mHandler:Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;

    .line 122
    const/4 p2, 0x3

    .line 123
    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 126
    move-result-object p1

    .line 127
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    .line 130
    move-result p2

    .line 131
    iput p2, p1, Landroid/os/Message;->arg1:I

    .line 133
    iget-object p0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService$1;->this$0:Lcom/android/server/enterprise/geofencing/GeofenceService;

    .line 135
    iget-object p0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mHandler:Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;

    .line 137
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 140
    :cond_3
    return-void

    .line 141
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
