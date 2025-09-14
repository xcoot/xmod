.class public final Lcom/android/server/chimera/heimdall/Heimdall$ScpmManager;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final POLICY_ITEM_URI:Landroid/net/Uri;

.field public final synthetic this$0:Lcom/android/server/chimera/heimdall/Heimdall;


# direct methods
.method public constructor <init>(Lcom/android/server/chimera/heimdall/Heimdall;Landroid/content/Context;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/server/chimera/heimdall/Heimdall$ScpmManager;->this$0:Lcom/android/server/chimera/heimdall/Heimdall;

    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    const-string/jumbo p1, "content://com.samsung.android.sm.policy"

    .line 9
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 12
    move-result-object p1

    .line 13
    const-string/jumbo v0, "policy_item"

    .line 16
    invoke-static {p1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    .line 19
    move-result-object p1

    .line 20
    const-string/jumbo v0, "heimdall"

    .line 23
    invoke-static {p1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    .line 26
    move-result-object p1

    .line 27
    iput-object p1, p0, Lcom/android/server/chimera/heimdall/Heimdall$ScpmManager;->POLICY_ITEM_URI:Landroid/net/Uri;

    .line 29
    new-instance p1, Landroid/content/IntentFilter;

    .line 31
    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 34
    const-string/jumbo v0, "sec.app.policy.UPDATE.heimdall"

    .line 37
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 40
    const/4 v0, 0x2

    .line 41
    invoke-virtual {p2, p0, p1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 44
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4
    move-result-object p2

    .line 5
    const-string/jumbo v0, "sec.app.policy.UPDATE.heimdall"

    .line 8
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    move-result p2

    .line 12
    if-eqz p2, :cond_5

    .line 14
    const-string p2, "1"

    .line 16
    const-string v0, "0"

    .line 18
    const-string/jumbo v1, "ro.product.device"

    .line 21
    const-string v2, ""

    .line 23
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_0

    .line 37
    goto/16 :goto_4

    .line 39
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 42
    move-result-object v3

    .line 43
    iget-object v4, p0, Lcom/android/server/chimera/heimdall/Heimdall$ScpmManager;->POLICY_ITEM_URI:Landroid/net/Uri;

    .line 45
    const/4 v5, 0x0

    .line 46
    const/4 v6, 0x0

    .line 47
    const/4 v7, 0x0

    .line 48
    const/4 v8, 0x0

    .line 49
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 52
    move-result-object p1

    .line 53
    if-nez p1, :cond_1

    .line 55
    goto :goto_4

    .line 56
    :cond_1
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 59
    move-result v2

    .line 60
    if-eqz v2, :cond_4

    .line 62
    const/4 v2, 0x1

    .line 63
    :try_start_0
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 66
    move-result-object v3

    .line 67
    const/4 v4, 0x2

    .line 68
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 71
    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    goto :goto_1

    .line 73
    :catch_0
    const/4 v3, 0x0

    .line 74
    move-object v4, v3

    .line 75
    :goto_1
    if-eqz v3, :cond_1

    .line 77
    if-nez v4, :cond_2

    .line 79
    goto :goto_0

    .line 80
    :cond_2
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    move-result v3

    .line 84
    if-eqz v3, :cond_1

    .line 86
    :try_start_1
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 89
    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 90
    const-string/jumbo v3, "persist.sys.heimdalld.disable"

    .line 93
    if-eqz v1, :cond_3

    .line 95
    :try_start_2
    invoke-static {v3, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object p0, p0, Lcom/android/server/chimera/heimdall/Heimdall$ScpmManager;->this$0:Lcom/android/server/chimera/heimdall/Heimdall;

    .line 100
    const/4 p2, 0x0

    .line 101
    iput-boolean p2, p0, Lcom/android/server/chimera/heimdall/Heimdall;->DISABLED:Z

    .line 103
    const-string p0, "DISABLED set false"

    .line 105
    invoke-static {p0}, Lcom/android/server/chimera/heimdall/Heimdall;->log(Ljava/lang/String;)V

    .line 108
    goto :goto_3

    .line 109
    :catch_1
    move-exception p0

    .line 110
    goto :goto_2

    .line 111
    :cond_3
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 114
    move-result v0

    .line 115
    if-eqz v0, :cond_4

    .line 117
    invoke-static {v3, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object p0, p0, Lcom/android/server/chimera/heimdall/Heimdall$ScpmManager;->this$0:Lcom/android/server/chimera/heimdall/Heimdall;

    .line 122
    iput-boolean v2, p0, Lcom/android/server/chimera/heimdall/Heimdall;->DISABLED:Z

    .line 124
    const-string p0, "DISABLED set true"

    .line 126
    invoke-static {p0}, Lcom/android/server/chimera/heimdall/Heimdall;->log(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 129
    goto :goto_3

    .line 130
    :goto_2
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 133
    move-result-object p0

    .line 134
    invoke-static {p0}, Lcom/android/server/chimera/heimdall/Heimdall;->log(Ljava/lang/String;)V

    .line 137
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 140
    goto :goto_4

    .line 141
    :cond_4
    :goto_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 144
    :cond_5
    :goto_4
    return-void
.end method
