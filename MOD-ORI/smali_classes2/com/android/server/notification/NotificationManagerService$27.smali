.class public final Lcom/android/server/notification/NotificationManagerService$27;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/samsung/android/sepunion/SemGoodCatchManager$OnStateChangeListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/notification/NotificationManagerService;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/notification/NotificationManagerService$27;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$27;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onStart(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/notification/NotificationManagerService$27;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string/jumbo v1, "onStart(), "

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v1, "NotificationService"

    .line 22
    .line 23
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    const-string/jumbo v0, "noti_blocked"

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-eqz p1, :cond_0

    .line 34
    .line 35
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$27;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 36
    .line 37
    const/4 p1, 0x1

    .line 38
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationManagerService;->mGoodCatchNotiBlockedOn:Z

    .line 39
    .line 40
    :cond_0
    return-void

    .line 41
    :pswitch_0
    const-string/jumbo v0, "onStart(), "

    .line 42
    .line 43
    .line 44
    const-string v1, "NotificationService"

    .line 45
    .line 46
    invoke-static {v0, p1, v1}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$27;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 50
    .line 51
    const/4 p1, 0x1

    .line 52
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationManagerService;->mGoodCatchViToastOn:Z

    .line 53
    .line 54
    return-void

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onStop(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/notification/NotificationManagerService$27;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string/jumbo v1, "onStop(),"

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v1, "NotificationService"

    .line 22
    .line 23
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    const-string/jumbo v0, "noti_blocked"

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-eqz p1, :cond_0

    .line 34
    .line 35
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$27;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 36
    .line 37
    const/4 p1, 0x0

    .line 38
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationManagerService;->mGoodCatchNotiBlockedOn:Z

    .line 39
    .line 40
    :cond_0
    return-void

    .line 41
    :pswitch_0
    const-string/jumbo v0, "onStop(),"

    .line 42
    .line 43
    .line 44
    const-string v1, "NotificationService"

    .line 45
    .line 46
    invoke-static {v0, p1, v1}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$27;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 50
    .line 51
    const/4 p1, 0x0

    .line 52
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationManagerService;->mGoodCatchViToastOn:Z

    .line 53
    .line 54
    return-void

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
