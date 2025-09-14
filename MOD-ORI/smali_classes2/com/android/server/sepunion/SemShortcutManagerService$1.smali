.class public final Lcom/android/server/sepunion/SemShortcutManagerService$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/content/pm/ShortcutServiceInternal$ShortcutChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/SemShortcutManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/SemShortcutManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/sepunion/SemShortcutManagerService$1;->this$0:Lcom/android/server/sepunion/SemShortcutManagerService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onShortcutChanged(Ljava/lang/String;I)V
    .locals 10

    .line 1
    const-string/jumbo v0, "onShortcutChanged: size="

    .line 2
    .line 3
    .line 4
    const-string/jumbo v1, "onShortcutChanged: "

    .line 5
    .line 6
    .line 7
    sget-object v2, Lcom/android/server/sepunion/SemShortcutManagerService;->mLock:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v2

    .line 10
    :try_start_0
    const-string v3, "SemExecuteManagerService"

    .line 11
    .line 12
    new-instance v4, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lcom/android/server/sepunion/SemShortcutManagerService$1;->this$0:Lcom/android/server/sepunion/SemShortcutManagerService;

    .line 31
    .line 32
    iget-object v1, v1, Lcom/android/server/sepunion/SemShortcutManagerService;->mShortcutChangedCallbackMap:Ljava/util/HashMap;

    .line 33
    .line 34
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    check-cast v1, Ljava/util/ArrayList;

    .line 43
    .line 44
    if-eqz v1, :cond_0

    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    const-string v4, "SemExecuteManagerService"

    .line 51
    .line 52
    new-instance v5, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    const/4 v0, 0x0

    .line 68
    move v4, v0

    .line 69
    :goto_0
    if-ge v4, v3, :cond_0

    .line 70
    .line 71
    iget-object v5, p0, Lcom/android/server/sepunion/SemShortcutManagerService$1;->this$0:Lcom/android/server/sepunion/SemShortcutManagerService;

    .line 72
    .line 73
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    new-instance v5, Landroid/content/Intent;

    .line 77
    .line 78
    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 79
    .line 80
    .line 81
    const-string v6, "com.samsung.android.shortcut.PACKAGE_NAME"

    .line 82
    .line 83
    invoke-virtual {v5, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    .line 85
    .line 86
    const-string v6, "com.samsung.android.shortcut.USER_ID"

    .line 87
    .line 88
    invoke-virtual {v5, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v6

    .line 95
    check-cast v6, Landroid/app/PendingIntent;

    .line 96
    .line 97
    const-string v7, "SemExecuteManagerService"

    .line 98
    .line 99
    new-instance v8, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .line 103
    .line 104
    const-string/jumbo v9, "onShortcutChanged: send callback "

    .line 105
    .line 106
    .line 107
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v6}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v9

    .line 114
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v6}, Landroid/app/PendingIntent;->getCreatorUid()I

    .line 118
    .line 119
    .line 120
    move-result v9

    .line 121
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v8

    .line 128
    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    .line 130
    .line 131
    :try_start_1
    iget-object v7, p0, Lcom/android/server/sepunion/SemShortcutManagerService$1;->this$0:Lcom/android/server/sepunion/SemShortcutManagerService;

    .line 132
    .line 133
    iget-object v7, v7, Lcom/android/server/sepunion/SemShortcutManagerService;->mContext:Landroid/content/Context;

    .line 134
    .line 135
    invoke-virtual {v6, v7, v0, v5}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    .line 137
    .line 138
    goto :goto_1

    .line 139
    :catchall_0
    move-exception p0

    .line 140
    goto :goto_2

    .line 141
    :catch_0
    move-exception v5

    .line 142
    :try_start_2
    invoke-virtual {v5}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    .line 143
    .line 144
    .line 145
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 146
    .line 147
    goto :goto_0

    .line 148
    :cond_0
    monitor-exit v2

    .line 149
    return-void

    .line 150
    :goto_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 151
    throw p0
.end method
