.class public final Lcom/android/server/location/injector/SystemPackageResetHelper$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/injector/SystemPackageResetHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/location/injector/SystemPackageResetHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/location/injector/SystemPackageResetHelper$Receiver;->this$0:Lcom/android/server/location/injector/SystemPackageResetHelper;

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
    .locals 6

    .line 1
    const/4 v0, -0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x1

    .line 4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v3

    .line 8
    if-nez v3, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    if-nez v4, :cond_1

    .line 16
    .line 17
    return-void

    .line 18
    :cond_1
    invoke-virtual {v4}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    if-nez v4, :cond_2

    .line 23
    .line 24
    return-void

    .line 25
    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    sparse-switch v5, :sswitch_data_0

    .line 30
    .line 31
    .line 32
    :goto_0
    move v3, v0

    .line 33
    goto :goto_1

    .line 34
    :sswitch_0
    const-string v5, "android.intent.action.PACKAGE_REMOVED"

    .line 35
    .line 36
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-nez v3, :cond_3

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_3
    const/4 v3, 0x3

    .line 44
    goto :goto_1

    .line 45
    :sswitch_1
    const-string v5, "android.intent.action.PACKAGE_CHANGED"

    .line 46
    .line 47
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-nez v3, :cond_4

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_4
    const/4 v3, 0x2

    .line 55
    goto :goto_1

    .line 56
    :sswitch_2
    const-string v5, "android.intent.action.PACKAGE_RESTARTED"

    .line 57
    .line 58
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    if-nez v3, :cond_5

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_5
    move v3, v2

    .line 66
    goto :goto_1

    .line 67
    :sswitch_3
    const-string v5, "android.intent.action.QUERY_PACKAGE_RESTART"

    .line 68
    .line 69
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    if-nez v3, :cond_6

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_6
    move v3, v1

    .line 77
    :goto_1
    packed-switch v3, :pswitch_data_0

    .line 78
    .line 79
    .line 80
    goto/16 :goto_4

    .line 81
    .line 82
    :pswitch_0
    const-string v0, "android.intent.extra.changed_component_name_list"

    .line 83
    .line 84
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    if-eqz p2, :cond_a

    .line 89
    .line 90
    array-length v0, p2

    .line 91
    move v3, v1

    .line 92
    :goto_2
    if-ge v3, v0, :cond_a

    .line 93
    .line 94
    aget-object v5, p2, v3

    .line 95
    .line 96
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v5

    .line 100
    if-eqz v5, :cond_7

    .line 101
    .line 102
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    const-wide/16 v2, 0x0

    .line 107
    .line 108
    invoke-static {v2, v3}, Landroid/content/pm/PackageManager$ApplicationInfoFlags;->of(J)Landroid/content/pm/PackageManager$ApplicationInfoFlags;

    .line 109
    .line 110
    .line 111
    move-result-object p2

    .line 112
    invoke-virtual {p1, v4, p2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$ApplicationInfoFlags;)Landroid/content/pm/ApplicationInfo;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    iget-boolean p1, p1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    .line 117
    .line 118
    if-nez p1, :cond_a

    .line 119
    .line 120
    invoke-static {}, Lcom/android/server/location/LocationServiceThread;->getExecutor()Ljava/util/concurrent/Executor;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    new-instance p2, Lcom/android/server/location/injector/SystemPackageResetHelper$Receiver$$ExternalSyntheticLambda0;

    .line 125
    .line 126
    invoke-direct {p2, p0, v4, v1}, Lcom/android/server/location/injector/SystemPackageResetHelper$Receiver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/injector/SystemPackageResetHelper$Receiver;Ljava/lang/String;I)V

    .line 127
    .line 128
    .line 129
    check-cast p1, Landroid/os/HandlerExecutor;

    .line 130
    .line 131
    invoke-virtual {p1, p2}, Landroid/os/HandlerExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    .line 133
    .line 134
    goto :goto_4

    .line 135
    :catch_0
    return-void

    .line 136
    :cond_7
    add-int/2addr v3, v2

    .line 137
    goto :goto_2

    .line 138
    :pswitch_1
    invoke-static {}, Lcom/android/server/location/LocationServiceThread;->getExecutor()Ljava/util/concurrent/Executor;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    new-instance p2, Lcom/android/server/location/injector/SystemPackageResetHelper$Receiver$$ExternalSyntheticLambda0;

    .line 143
    .line 144
    invoke-direct {p2, p0, v4, v2}, Lcom/android/server/location/injector/SystemPackageResetHelper$Receiver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/injector/SystemPackageResetHelper$Receiver;Ljava/lang/String;I)V

    .line 145
    .line 146
    .line 147
    check-cast p1, Landroid/os/HandlerExecutor;

    .line 148
    .line 149
    invoke-virtual {p1, p2}, Landroid/os/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 150
    .line 151
    .line 152
    goto :goto_4

    .line 153
    :pswitch_2
    const-string p1, "android.intent.extra.PACKAGES"

    .line 154
    .line 155
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    if-eqz p1, :cond_a

    .line 160
    .line 161
    array-length p2, p1

    .line 162
    :goto_3
    if-ge v1, p2, :cond_a

    .line 163
    .line 164
    aget-object v3, p1, v1

    .line 165
    .line 166
    iget-object v4, p0, Lcom/android/server/location/injector/SystemPackageResetHelper$Receiver;->this$0:Lcom/android/server/location/injector/SystemPackageResetHelper;

    .line 167
    .line 168
    iget-object v4, v4, Lcom/android/server/location/injector/SystemPackageResetHelper;->mResponders:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 169
    .line 170
    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 171
    .line 172
    .line 173
    move-result-object v4

    .line 174
    :cond_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 175
    .line 176
    .line 177
    move-result v5

    .line 178
    if-eqz v5, :cond_9

    .line 179
    .line 180
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v5

    .line 184
    check-cast v5, Lcom/android/server/location/injector/PackageResetHelper$Responder;

    .line 185
    .line 186
    invoke-interface {v5, v3}, Lcom/android/server/location/injector/PackageResetHelper$Responder;->isResetableForPackage(Ljava/lang/String;)Z

    .line 187
    .line 188
    .line 189
    move-result v5

    .line 190
    if-eqz v5, :cond_8

    .line 191
    .line 192
    invoke-virtual {p0, v0}, Landroid/content/BroadcastReceiver;->setResultCode(I)V

    .line 193
    .line 194
    .line 195
    goto :goto_4

    .line 196
    :cond_9
    add-int/2addr v1, v2

    .line 197
    goto :goto_3

    .line 198
    :cond_a
    :goto_4
    return-void

    .line 199
    :sswitch_data_0
    .sparse-switch
        -0x3ff1ba66 -> :sswitch_3
        -0x2d2ad030 -> :sswitch_2
        0xa480416 -> :sswitch_1
        0x1f50b9c2 -> :sswitch_0
    .end sparse-switch

    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
