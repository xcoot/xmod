.class public final synthetic Lcom/android/server/location/gnss/GnssVisibilityControl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/location/gnss/GnssVisibilityControl;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/gnss/GnssVisibilityControl;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/location/gnss/GnssVisibilityControl;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/location/gnss/GnssVisibilityControl;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p0, Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v0, p0}, Lcom/android/server/location/gnss/GnssVisibilityControl;->getProxyAppInfo(Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    iget-object v2, v0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mProxyAppsState:Landroid/util/ArrayMap;

    .line 19
    .line 20
    invoke-virtual {v2, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Lcom/android/server/location/gnss/GnssVisibilityControl$ProxyAppState;

    .line 25
    .line 26
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 27
    .line 28
    invoke-virtual {v0, v2, v1, p0}, Lcom/android/server/location/gnss/GnssVisibilityControl;->clearLocationIcon(Lcom/android/server/location/gnss/GnssVisibilityControl$ProxyAppState;ILjava/lang/String;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void

    .line 32
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/location/gnss/GnssVisibilityControl;

    .line 33
    .line 34
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast p0, Ljava/lang/Runnable;

    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    :try_start_0
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    .line 43
    .line 44
    iget-object p0, v0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 45
    .line 46
    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :catchall_0
    move-exception p0

    .line 51
    iget-object v0, v0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 52
    .line 53
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 54
    .line 55
    .line 56
    throw p0

    .line 57
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/location/gnss/GnssVisibilityControl;

    .line 58
    .line 59
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast p0, Ljava/util/List;

    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    iget-object v2, v0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mProxyAppsState:Landroid/util/ArrayMap;

    .line 71
    .line 72
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    if-eq v1, v2, :cond_1

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    if-eqz v2, :cond_6

    .line 88
    .line 89
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    check-cast v2, Ljava/lang/String;

    .line 94
    .line 95
    iget-object v3, v0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mProxyAppsState:Landroid/util/ArrayMap;

    .line 96
    .line 97
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    if-nez v2, :cond_2

    .line 102
    .line 103
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    if-eqz v1, :cond_3

    .line 108
    .line 109
    iget-object p0, v0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mProxyAppsState:Landroid/util/ArrayMap;

    .line 110
    .line 111
    invoke-virtual {p0}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 112
    .line 113
    .line 114
    move-result p0

    .line 115
    if-nez p0, :cond_6

    .line 116
    .line 117
    iget-object p0, v0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 118
    .line 119
    iget-object v1, v0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mOnPermissionsChangedListener:Lcom/android/server/location/gnss/GnssVisibilityControl$$ExternalSyntheticLambda3;

    .line 120
    .line 121
    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->removeOnPermissionsChangeListener(Landroid/content/pm/PackageManager$OnPermissionsChangedListener;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssVisibilityControl;->resetProxyAppsState()V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssVisibilityControl;->updateNfwLocationAccessProxyAppsInGnssHal()V

    .line 128
    .line 129
    .line 130
    goto :goto_3

    .line 131
    :cond_3
    iget-object v1, v0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mProxyAppsState:Landroid/util/ArrayMap;

    .line 132
    .line 133
    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    if-eqz v1, :cond_4

    .line 138
    .line 139
    iget-object v1, v0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 140
    .line 141
    iget-object v2, v0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mOnPermissionsChangedListener:Lcom/android/server/location/gnss/GnssVisibilityControl$$ExternalSyntheticLambda3;

    .line 142
    .line 143
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->addOnPermissionsChangeListener(Landroid/content/pm/PackageManager$OnPermissionsChangedListener;)V

    .line 144
    .line 145
    .line 146
    goto :goto_1

    .line 147
    :cond_4
    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssVisibilityControl;->resetProxyAppsState()V

    .line 148
    .line 149
    .line 150
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 151
    .line 152
    .line 153
    move-result-object p0

    .line 154
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 155
    .line 156
    .line 157
    move-result v1

    .line 158
    if-eqz v1, :cond_5

    .line 159
    .line 160
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    check-cast v1, Ljava/lang/String;

    .line 165
    .line 166
    new-instance v2, Lcom/android/server/location/gnss/GnssVisibilityControl$ProxyAppState;

    .line 167
    .line 168
    invoke-virtual {v0, v1}, Lcom/android/server/location/gnss/GnssVisibilityControl;->shouldEnableLocationPermissionInGnssHal(Ljava/lang/String;)Z

    .line 169
    .line 170
    .line 171
    move-result v3

    .line 172
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 173
    .line 174
    .line 175
    iput-boolean v3, v2, Lcom/android/server/location/gnss/GnssVisibilityControl$ProxyAppState;->mHasLocationPermission:Z

    .line 176
    .line 177
    iget-object v3, v0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mProxyAppsState:Landroid/util/ArrayMap;

    .line 178
    .line 179
    invoke-virtual {v3, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    goto :goto_2

    .line 183
    :cond_5
    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssVisibilityControl;->updateNfwLocationAccessProxyAppsInGnssHal()V

    .line 184
    .line 185
    .line 186
    :cond_6
    :goto_3
    return-void

    .line 187
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
