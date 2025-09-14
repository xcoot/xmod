.class public final synthetic Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Ljava/util/ArrayList;

    .line 10
    .line 11
    const/4 v2, 0x5

    .line 12
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 13
    .line 14
    .line 15
    const-string v2, "content://com.samsung.bt.btservice.btsettingsprovider/bonddevice"

    .line 16
    .line 17
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    if-nez v2, :cond_0

    .line 26
    .line 27
    goto :goto_3

    .line 28
    :cond_0
    const-string v6, "bond_state == 2 OR bond_state == 1 OR bond_state == 4"

    .line 29
    .line 30
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    const-string/jumbo v8, "timestamp DESC"

    .line 35
    .line 36
    .line 37
    const/4 v5, 0x0

    .line 38
    const/4 v7, 0x0

    .line 39
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 40
    .line 41
    .line 42
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 46
    .line 47
    .line 48
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-nez v2, :cond_2

    .line 53
    .line 54
    const-string v2, "address"

    .line 55
    .line 56
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    if-nez v2, :cond_1

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    const-string/jumbo v3, "name"

    .line 68
    .line 69
    .line 70
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    new-instance v4, Lcom/samsung/android/server/continuity/autoswitch/BluetoothDeviceDb$DeviceProperty;

    .line 79
    .line 80
    invoke-direct {v4, v2, v3}, Lcom/samsung/android/server/continuity/autoswitch/BluetoothDeviceDb$DeviceProperty;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :catchall_0
    move-exception v2

    .line 91
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 92
    .line 93
    .line 94
    goto :goto_1

    .line 95
    :catchall_1
    move-exception v0

    .line 96
    :try_start_3
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 97
    .line 98
    .line 99
    :goto_1
    throw v2

    .line 100
    :catch_0
    move-exception v0

    .line 101
    goto :goto_2

    .line 102
    :cond_2
    if-eqz v0, :cond_3

    .line 103
    .line 104
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0

    .line 105
    .line 106
    .line 107
    goto :goto_3

    .line 108
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    const-string/jumbo v3, "retrieveBackupDevices - Exception : "

    .line 111
    .line 112
    .line 113
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    const-string v2, "[MCF_DS_SYS]_BluetoothDeviceDb"

    .line 124
    .line 125
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    .line 127
    .line 128
    :cond_3
    :goto_3
    new-instance v0, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper$$ExternalSyntheticLambda1;

    .line 129
    .line 130
    invoke-direct {v0, p0, v1}, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;Ljava/util/ArrayList;)V

    .line 131
    .line 132
    .line 133
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 134
    .line 135
    .line 136
    move-result-object p0

    .line 137
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    move-result p0

    .line 145
    if-eqz p0, :cond_4

    .line 146
    .line 147
    invoke-virtual {v0}, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper$$ExternalSyntheticLambda1;->run()V

    .line 148
    .line 149
    .line 150
    goto :goto_4

    .line 151
    :cond_4
    sget-object p0, Lcom/samsung/android/server/continuity/common/ExecutorUtil;->sHandler:Landroid/os/Handler;

    .line 152
    .line 153
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 154
    .line 155
    .line 156
    :goto_4
    return-void
.end method
