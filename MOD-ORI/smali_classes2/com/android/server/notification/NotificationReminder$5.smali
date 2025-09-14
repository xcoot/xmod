.class public final Lcom/android/server/notification/NotificationReminder$5;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/notification/NotificationReminder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/notification/NotificationReminder;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/notification/NotificationReminder$5;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/notification/NotificationReminder$5;->this$0:Lcom/android/server/notification/NotificationReminder;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/notification/NotificationReminder$5;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/android/server/notification/NotificationReminder$UpdateEnablePackageTask;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/notification/NotificationReminder$5;->this$0:Lcom/android/server/notification/NotificationReminder;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationReminder$UpdateEnablePackageTask;-><init>(Lcom/android/server/notification/NotificationReminder;)V

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    new-array p0, p0, [Ljava/lang/Void;

    .line 15
    .line 16
    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :pswitch_0
    new-instance v0, Lcom/android/server/notification/NotificationReminder$UpdateEnablePackageTask;

    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/server/notification/NotificationReminder$5;->this$0:Lcom/android/server/notification/NotificationReminder;

    .line 23
    .line 24
    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationReminder$UpdateEnablePackageTask;-><init>(Lcom/android/server/notification/NotificationReminder;)V

    .line 25
    .line 26
    .line 27
    const/4 p0, 0x0

    .line 28
    new-array p0, p0, [Ljava/lang/Void;

    .line 29
    .line 30
    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    nop

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
