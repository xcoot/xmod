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

    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

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

    .line 7
    move-result-object v3

    .line 8
    if-nez v3, :cond_0

    .line 10
    return-void

    .line 11
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 14
    move-result-object v4

    .line 15
    if-nez v4, :cond_1

    .line 17
    return-void

    .line 18
    :cond_1
    invoke-virtual {v4}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 21
    move-result-object v4

    .line 22
    if-nez v4, :cond_2

    .line 24
    return-void

    .line 25
    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 28
    move-result v5

    .line 29
    sparse-switch v5, :sswitch_data_0

    .line 32
    :goto_0
    move v3, v0

    .line 33
    goto :goto_1

    .line 34
    :sswitch_0
    const-string v5, "android.intent.action.PACKAGE_REMOVED"

    .line 36
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    move-result v3

    .line 40
    if-nez v3, :cond_3

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

    .line 47
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    move-result v3

    .line 51
    if-nez v3, :cond_4

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

    .line 58
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    move-result v3

    .line 62
    if-nez v3, :cond_5

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

    .line 69
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    move-result v3

    .line 73
    if-nez v3, :cond_6

    .line 75
    goto :goto_0

    .line 76
    :cond_6
    move v3, v1

    .line 77
    :goto_1
    packed-switch v3, :pswitch_data_0

    .line 80
    goto/16 :goto_4

    .line 82
    :pswitch_0
    const-string v0, "android.intent.extra.changed_component_name_list"

    .line 84
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    .line 87
    move-result-object p2

    .line 88
    if-eqz p2, :cond_a

    .line 90
    array-length v0, p2

    .line 91
    move v3, v1

    .line 92
    :goto_2
    if-ge v3, v0, :cond_a

    .line 94
    aget-object v5, p2, v3

    .line 96
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 99
    move-result v5

    .line 100
    if-eqz v5, :cond_7

    .line 102
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 105
    move-result-object p1

    .line 106
    const-wide/16 v2, 0x0

    .line 108
    invoke-static {v2, v3}, Landroid/content/pm/PackageManager$ApplicationInfoFlags;->of(J)Landroid/content/pm/PackageManager$ApplicationInfoFlags;

    .line 111
    move-result-object p2

    .line 112
    invoke-virtual {p1, v4, p2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$ApplicationInfoFlags;)Landroid/content/pm/ApplicationInfo;

    .line 115
    move-result-object p1

    .line 116
    iget-boolean p1, p1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    .line 118
    if-nez p1, :cond_a

    .line 120
    invoke-static {}, Lcom/android/server/location/LocationServiceThread;->getExecutor()Ljava/util/concurrent/Executor;

    .line 123
    move-result-object p1

    .line 124
    new-instance p2, Lcom/android/server/location/injector/SystemPackageResetHelper$Receiver$$ExternalSyntheticLambda0;

    .line 126
    invoke-direct {p2, p0, v4, v1}, Lcom/android/server/location/injector/SystemPackageResetHelper$Receiver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/injector/SystemPackageResetHelper$Receiver;Ljava/lang/String;I)V

    .line 129
    check-cast p1, Landroid/os/HandlerExecutor;

    .line 131
    invoke-virtual {p1, p2}, Landroid/os/HandlerExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

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

    .line 141
    move-result-object p1

    .line 142
    new-instance p2, Lcom/android/server/location/injector/SystemPackageResetHelper$Receiver$$ExternalSyntheticLambda0;

    .line 144
    invoke-direct {p2, p0, v4, v2}, Lcom/android/server/location/injector/SystemPackageResetHelper$Receiver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/injector/SystemPackageResetHelper$Receiver;Ljava/lang/String;I)V

    .line 147
    check-cast p1, Landroid/os/HandlerExecutor;

    .line 149
    invoke-virtual {p1, p2}, Landroid/os/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 152
    goto :goto_4

    .line 153
    :pswitch_2
    const-string p1, "android.intent.extra.PACKAGES"

    .line 155
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    .line 158
    move-result-object p1

    .line 159
    if-eqz p1, :cond_a

    .line 161
    array-length p2, p1

    .line 162
    :goto_3
    if-ge v1, p2, :cond_a

    .line 164
    aget-object v3, p1, v1

    .line 166
    iget-object v4, p0, Lcom/android/server/location/injector/SystemPackageResetHelper$Receiver;->this$0:Lcom/android/server/location/injector/SystemPackageResetHelper;

    .line 168
    iget-object v4, v4, Lcom/android/server/location/injector/SystemPackageResetHelper;->mResponders:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 170
    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 173
    move-result-object v4

    .line 174
    :cond_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 177
    move-result v5

    .line 178
    if-eqz v5, :cond_9

    .line 180
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 183
    move-result-object v5

    .line 184
    check-cast v5, Lcom/android/server/location/injector/PackageResetHelper$Responder;

    .line 186
    invoke-interface {v5, v3}, Lcom/android/server/location/injector/PackageResetHelper$Responder;->isResetableForPackage(Ljava/lang/String;)Z

    .line 189
    move-result v5

    .line 190
    if-eqz v5, :cond_8

    .line 192
    invoke-virtual {p0, v0}, Landroid/content/BroadcastReceiver;->setResultCode(I)V

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

    .line 217
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
