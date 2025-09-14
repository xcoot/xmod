.class public final Lcom/android/server/os/NativeTombstoneManager$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/os/NativeTombstoneManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/os/NativeTombstoneManager;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/os/NativeTombstoneManager$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/os/NativeTombstoneManager$1;->this$0:Lcom/android/server/os/NativeTombstoneManager;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    iget p1, p0, Lcom/android/server/os/NativeTombstoneManager$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const-string p1, "android.intent.extra.user_handle"

    .line 7
    .line 8
    const/4 v0, -0x1

    .line 9
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    const/4 p2, 0x1

    .line 14
    if-ge p1, p2, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object p0, p0, Lcom/android/server/os/NativeTombstoneManager$1;->this$0:Lcom/android/server/os/NativeTombstoneManager;

    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    new-instance v0, Lcom/android/server/os/NativeTombstoneManager$$ExternalSyntheticLambda2;

    .line 35
    .line 36
    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/os/NativeTombstoneManager$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/os/NativeTombstoneManager;Ljava/util/Optional;Ljava/util/Optional;)V

    .line 37
    .line 38
    .line 39
    iget-object p0, p0, Lcom/android/server/os/NativeTombstoneManager;->mHandler:Landroid/os/Handler;

    .line 40
    .line 41
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 42
    .line 43
    .line 44
    :goto_0
    return-void

    .line 45
    :pswitch_0
    const-string p1, "android.intent.extra.UID"

    .line 46
    .line 47
    const/16 v0, -0x2710

    .line 48
    .line 49
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    if-ne p1, v0, :cond_1

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_1
    const-string v0, "android.intent.extra.REMOVED_FOR_ALL_USERS"

    .line 57
    .line 58
    const/4 v1, 0x0

    .line 59
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 60
    .line 61
    .line 62
    move-result p2

    .line 63
    iget-object p0, p0, Lcom/android/server/os/NativeTombstoneManager$1;->this$0:Lcom/android/server/os/NativeTombstoneManager;

    .line 64
    .line 65
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-eqz p2, :cond_2

    .line 73
    .line 74
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    goto :goto_1

    .line 79
    :cond_2
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 92
    .line 93
    .line 94
    move-result-object p2

    .line 95
    invoke-static {p2}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    .line 96
    .line 97
    .line 98
    move-result-object p2

    .line 99
    new-instance v0, Lcom/android/server/os/NativeTombstoneManager$$ExternalSyntheticLambda2;

    .line 100
    .line 101
    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/os/NativeTombstoneManager$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/os/NativeTombstoneManager;Ljava/util/Optional;Ljava/util/Optional;)V

    .line 102
    .line 103
    .line 104
    iget-object p0, p0, Lcom/android/server/os/NativeTombstoneManager;->mHandler:Landroid/os/Handler;

    .line 105
    .line 106
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 107
    .line 108
    .line 109
    :goto_2
    return-void

    .line 110
    nop

    .line 111
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
