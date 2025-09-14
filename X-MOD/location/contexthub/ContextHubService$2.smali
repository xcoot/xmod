.class public final Lcom/android/server/location/contexthub/ContextHubService$2;
.super Landroid/database/ContentObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/location/contexthub/ContextHubService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/contexthub/ContextHubService;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/location/contexthub/ContextHubService$2;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubService$2;->this$0:Lcom/android/server/location/contexthub/ContextHubService;

    .line 5
    const/4 p1, 0x0

    .line 6
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 9
    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 0

    .line 1
    iget p1, p0, Lcom/android/server/location/contexthub/ContextHubService$2;->$r8$classId:I

    .line 3
    packed-switch p1, :pswitch_data_0

    .line 6
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService$2;->this$0:Lcom/android/server/location/contexthub/ContextHubService;

    .line 8
    const/4 p1, 0x0

    .line 9
    invoke-virtual {p0, p1}, Lcom/android/server/location/contexthub/ContextHubService;->sendBtSettingUpdate(Z)V

    .line 12
    return-void

    .line 13
    :pswitch_0
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService$2;->this$0:Lcom/android/server/location/contexthub/ContextHubService;

    .line 15
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubService;->sendAirplaneModeSettingUpdate()V

    .line 18
    return-void

    .line 19
    :pswitch_1
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService$2;->this$0:Lcom/android/server/location/contexthub/ContextHubService;

    .line 21
    const/4 p1, 0x0

    .line 22
    invoke-virtual {p0, p1}, Lcom/android/server/location/contexthub/ContextHubService;->sendWifiSettingUpdate(Z)V

    .line 25
    return-void

    .line 26
    :pswitch_2
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService$2;->this$0:Lcom/android/server/location/contexthub/ContextHubService;

    .line 28
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubService;->sendLocationSettingUpdate()V

    .line 31
    return-void

    .line 32
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
