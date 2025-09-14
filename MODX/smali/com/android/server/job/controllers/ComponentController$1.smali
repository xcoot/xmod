.class public final Lcom/android/server/job/controllers/ComponentController$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/job/controllers/ComponentController;


# direct methods
.method public constructor <init>(Lcom/android/server/job/controllers/ComponentController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/job/controllers/ComponentController$1;->this$0:Lcom/android/server/job/controllers/ComponentController;

    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 1
    const/4 p1, 0x0

    .line 2
    const/4 v0, -0x1

    .line 3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 6
    move-result-object v1

    .line 7
    if-nez v1, :cond_0

    .line 9
    const-string p0, "JobScheduler.Component"

    .line 11
    const-string p1, "Intent action was null"

    .line 13
    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    return-void

    .line 17
    :cond_0
    const/4 v2, 0x0

    .line 18
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 21
    move-result v3

    .line 22
    sparse-switch v3, :sswitch_data_0

    .line 25
    :goto_0
    move v1, v0

    .line 26
    goto :goto_1

    .line 27
    :sswitch_0
    const-string v3, "android.intent.action.PACKAGE_ADDED"

    .line 29
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    move-result v1

    .line 33
    if-nez v1, :cond_1

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 v1, 0x3

    .line 37
    goto :goto_1

    .line 38
    :sswitch_1
    const-string v3, "android.intent.action.USER_UNLOCKED"

    .line 40
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    move-result v1

    .line 44
    if-nez v1, :cond_2

    .line 46
    goto :goto_0

    .line 47
    :cond_2
    const/4 v1, 0x2

    .line 48
    goto :goto_1

    .line 49
    :sswitch_2
    const-string v3, "android.intent.action.PACKAGE_CHANGED"

    .line 51
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    move-result v1

    .line 55
    if-nez v1, :cond_3

    .line 57
    goto :goto_0

    .line 58
    :cond_3
    const/4 v1, 0x1

    .line 59
    goto :goto_1

    .line 60
    :sswitch_3
    const-string v3, "android.intent.action.USER_STOPPED"

    .line 62
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    move-result v1

    .line 66
    if-nez v1, :cond_4

    .line 68
    goto :goto_0

    .line 69
    :cond_4
    move v1, p1

    .line 70
    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 73
    goto :goto_2

    .line 74
    :pswitch_0
    const-string v1, "android.intent.extra.REPLACING"

    .line 76
    invoke-virtual {p2, v1, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 79
    move-result p1

    .line 80
    if-eqz p1, :cond_7

    .line 82
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 85
    move-result-object p1

    .line 86
    if-eqz p1, :cond_5

    .line 88
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 91
    move-result-object v2

    .line 92
    :cond_5
    if-eqz v2, :cond_7

    .line 94
    const-string p1, "android.intent.extra.UID"

    .line 96
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 99
    move-result p1

    .line 100
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 103
    move-result p1

    .line 104
    iget-object p0, p0, Lcom/android/server/job/controllers/ComponentController$1;->this$0:Lcom/android/server/job/controllers/ComponentController;

    .line 106
    invoke-static {p0, p1, v2}, Lcom/android/server/job/controllers/ComponentController;->-$$Nest$mupdateComponentStateForPackage(Lcom/android/server/job/controllers/ComponentController;ILjava/lang/String;)V

    .line 109
    goto :goto_2

    .line 110
    :pswitch_1
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 113
    move-result-object p1

    .line 114
    if-eqz p1, :cond_6

    .line 116
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 119
    move-result-object v2

    .line 120
    :cond_6
    const-string p1, "android.intent.extra.changed_component_name_list"

    .line 122
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    .line 125
    move-result-object p1

    .line 126
    if-eqz v2, :cond_7

    .line 128
    if-eqz p1, :cond_7

    .line 130
    array-length p1, p1

    .line 131
    if-lez p1, :cond_7

    .line 133
    const-string p1, "android.intent.extra.UID"

    .line 135
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 138
    move-result p1

    .line 139
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 142
    move-result p1

    .line 143
    iget-object p0, p0, Lcom/android/server/job/controllers/ComponentController$1;->this$0:Lcom/android/server/job/controllers/ComponentController;

    .line 145
    invoke-static {p0, p1, v2}, Lcom/android/server/job/controllers/ComponentController;->-$$Nest$mupdateComponentStateForPackage(Lcom/android/server/job/controllers/ComponentController;ILjava/lang/String;)V

    .line 148
    goto :goto_2

    .line 149
    :pswitch_2
    const-string v0, "android.intent.extra.user_handle"

    .line 151
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 154
    move-result p1

    .line 155
    iget-object p0, p0, Lcom/android/server/job/controllers/ComponentController$1;->this$0:Lcom/android/server/job/controllers/ComponentController;

    .line 157
    iget-object p2, p0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    .line 159
    monitor-enter p2

    .line 160
    :try_start_0
    iget-object v0, p0, Lcom/android/server/job/controllers/ComponentController;->mServiceProcessCache:Landroid/util/SparseArrayMap;

    .line 162
    invoke-virtual {v0, p1}, Landroid/util/SparseArrayMap;->delete(I)V

    .line 165
    new-instance v0, Lcom/android/server/job/controllers/ComponentController$$ExternalSyntheticLambda1;

    .line 167
    invoke-direct {v0, p1}, Lcom/android/server/job/controllers/ComponentController$$ExternalSyntheticLambda1;-><init>(I)V

    .line 170
    invoke-virtual {p0, v0}, Lcom/android/server/job/controllers/ComponentController;->updateComponentStatesLocked(Ljava/util/function/Predicate;)V

    .line 173
    monitor-exit p2

    .line 174
    :cond_7
    :goto_2
    return-void

    .line 175
    :catchall_0
    move-exception p0

    .line 176
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    throw p0

    .line 178
    nop

    .line 179
    :sswitch_data_0
    .sparse-switch
        -0x2c3dc982 -> :sswitch_3
        0xa480416 -> :sswitch_2
        0x31af1c32 -> :sswitch_1
        0x5c1076e2 -> :sswitch_0
    .end sparse-switch

    .line 197
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
