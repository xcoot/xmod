.class public final synthetic Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda10;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda10;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda10;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda10;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda10;->f$0:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Landroid/os/UserManager;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda10;->f$1:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p0, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-virtual {v0, v1, v2}, Landroid/os/UserManager;->getProfileIds(IZ)[I

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    array-length v1, v0

    .line 24
    :goto_0
    if-ge v2, v1, :cond_0

    .line 25
    .line 26
    aget v3, v0, v2

    .line 27
    .line 28
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    add-int/lit8 v2, v2, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    return-void

    .line 39
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda10;->f$0:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v0, Lcom/android/server/notification/NotificationManagerService$17;

    .line 42
    .line 43
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda10;->f$1:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast p0, Ljava/util/ArrayList;

    .line 46
    .line 47
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService$17;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 48
    .line 49
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mUm:Landroid/os/UserManager;

    .line 50
    .line 51
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    const/4 v2, 0x0

    .line 56
    invoke-virtual {v0, v1, v2}, Landroid/os/UserManager;->getProfileIds(IZ)[I

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    array-length v1, v0

    .line 61
    :goto_1
    if-ge v2, v1, :cond_1

    .line 62
    .line 63
    aget v3, v0, v2

    .line 64
    .line 65
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    add-int/lit8 v2, v2, 0x1

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_1
    return-void

    .line 76
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda10;->f$0:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast v0, Lcom/android/server/notification/NotificationManagerService;

    .line 79
    .line 80
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda10;->f$1:Ljava/lang/Object;

    .line 81
    .line 82
    check-cast p0, Ljava/lang/CharSequence;

    .line 83
    .line 84
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    const-string/jumbo v2, "show_notification_channel_warnings"

    .line 93
    .line 94
    .line 95
    const/4 v3, 0x0

    .line 96
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    if-eqz v1, :cond_2

    .line 101
    .line 102
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    .line 107
    .line 108
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-static {v1, v0, p0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 117
    .line 118
    .line 119
    :cond_2
    return-void

    .line 120
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
