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

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
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

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    const-string p0, "JobScheduler.Component"

    .line 10
    .line 11
    const-string p1, "Intent action was null"

    .line 12
    .line 13
    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    const/4 v2, 0x0

    .line 18
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    sparse-switch v3, :sswitch_data_0

    .line 23
    .line 24
    .line 25
    :goto_0
    move v1, v0

    .line 26
    goto :goto_1

    .line 27
    :sswitch_0
    const-string v3, "android.intent.action.PACKAGE_ADDED"

    .line 28
    .line 29
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-nez v1, :cond_1

    .line 34
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

    .line 39
    .line 40
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-nez v1, :cond_2

    .line 45
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

    .line 50
    .line 51
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-nez v1, :cond_3

    .line 56
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

    .line 61
    .line 62
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-nez v1, :cond_4

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_4
    move v1, p1

    .line 70
    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 71
    .line 72
    .line 73
    goto :goto_2

    .line 74
    :pswitch_0
    const-string v1, "android.intent.extra.REPLACING"

    .line 75
    .line 76
    invoke-virtual {p2, v1, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    if-eqz p1, :cond_7

    .line 81
    .line 82
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    if-eqz p1, :cond_5

    .line 87
    .line 88
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    :cond_5
    if-eqz v2, :cond_7

    .line 93
    .line 94
    const-string p1, "android.intent.extra.UID"

    .line 95
    .line 96
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    iget-object p0, p0, Lcom/android/server/job/controllers/ComponentController$1;->this$0:Lcom/android/server/job/controllers/ComponentController;

    .line 105
    .line 106
    invoke-static {p0, p1, v2}, Lcom/android/server/job/controllers/ComponentController;->-$$Nest$mupdateComponentStateForPackage(Lcom/android/server/job/controllers/ComponentController;ILjava/lang/String;)V

    .line 107
    .line 108
    .line 109
    goto :goto_2

    .line 110
    :pswitch_1
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    if-eqz p1, :cond_6

    .line 115
    .line 116
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    :cond_6
    const-string p1, "android.intent.extra.changed_component_name_list"

    .line 121
    .line 122
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    if-eqz v2, :cond_7

    .line 127
    .line 128
    if-eqz p1, :cond_7

    .line 129
    .line 130
    array-length p1, p1

    .line 131
    if-lez p1, :cond_7

    .line 132
    .line 133
    const-string p1, "android.intent.extra.UID"

    .line 134
    .line 135
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 136
    .line 137
    .line 138
    move-result p1

    .line 139
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 140
    .line 141
    .line 142
    move-result p1

    .line 143
    iget-object p0, p0, Lcom/android/server/job/controllers/ComponentController$1;->this$0:Lcom/android/server/job/controllers/ComponentController;

    .line 144
    .line 145
    invoke-static {p0, p1, v2}, Lcom/android/server/job/controllers/ComponentController;->-$$Nest$mupdateComponentStateForPackage(Lcom/android/server/job/controllers/ComponentController;ILjava/lang/String;)V

    .line 146
    .line 147
    .line 148
    goto :goto_2

    .line 149
    :pswitch_2
    const-string v0, "android.intent.extra.user_handle"

    .line 150
    .line 151
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 152
    .line 153
    .line 154
    move-result p1

    .line 155
    iget-object p0, p0, Lcom/android/server/job/controllers/ComponentController$1;->this$0:Lcom/android/server/job/controllers/ComponentController;

    .line 156
    .line 157
    iget-object p2, p0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    .line 158
    .line 159
    monitor-enter p2

    .line 160
    :try_start_0
    iget-object v0, p0, Lcom/android/server/job/controllers/ComponentController;->mServiceProcessCache:Landroid/util/SparseArrayMap;

    .line 161
    .line 162
    invoke-virtual {v0, p1}, Landroid/util/SparseArrayMap;->delete(I)V

    .line 163
    .line 164
    .line 165
    new-instance v0, Lcom/android/server/job/controllers/ComponentController$$ExternalSyntheticLambda1;

    .line 166
    .line 167
    invoke-direct {v0, p1}, Lcom/android/server/job/controllers/ComponentController$$ExternalSyntheticLambda1;-><init>(I)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {p0, v0}, Lcom/android/server/job/controllers/ComponentController;->updateComponentStatesLocked(Ljava/util/function/Predicate;)V

    .line 171
    .line 172
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

    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
