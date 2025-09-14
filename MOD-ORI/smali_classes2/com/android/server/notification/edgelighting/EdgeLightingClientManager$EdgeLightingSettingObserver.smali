.class public final Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;
.super Landroid/database/ContentObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final EDGE_LIGHTING_SETTING:Landroid/net/Uri;

.field public final EDGE_LIGHTING_SHOW_CONDITION:Landroid/net/Uri;

.field public final defaultCarrierEdgeLighting:Ljava/lang/String;

.field public final defaultEdgeLighting:Ljava/lang/String;

.field public mDefaultValue:I

.field public mLastEnabled:Z

.field public final synthetic this$0:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$1;)V
    .locals 7

    .line 1
    iput-object p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->this$0:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4
    .line 5
    .line 6
    const/4 p2, 0x0

    .line 7
    iput-boolean p2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->mLastEnabled:Z

    .line 8
    .line 9
    const-string v0, "edge_lighting"

    .line 10
    .line 11
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iput-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->EDGE_LIGHTING_SETTING:Landroid/net/Uri;

    .line 16
    .line 17
    const-string v2, "edge_lighting_show_condition"

    .line 18
    .line 19
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    iput-object v2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->EDGE_LIGHTING_SHOW_CONDITION:Landroid/net/Uri;

    .line 24
    .line 25
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    const-string v4, "CscFeature_Framework_ConfigDefStatusEdgeLighting"

    .line 30
    .line 31
    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    iput-object v3, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->defaultEdgeLighting:Ljava/lang/String;

    .line 36
    .line 37
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    const-string v5, "CarrierFeature_SystemUI_ConfigDefStatusEdgeLighting"

    .line 42
    .line 43
    const-string v6, ""

    .line 44
    .line 45
    invoke-virtual {v4, p2, v5, v6, p2}, Lcom/samsung/android/feature/SemCarrierFeature;->getString(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    iput-object v4, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->defaultCarrierEdgeLighting:Ljava/lang/String;

    .line 50
    .line 51
    const-string v5, "-defaulton"

    .line 52
    .line 53
    const/4 v6, 0x1

    .line 54
    if-eqz v3, :cond_0

    .line 55
    .line 56
    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    if-nez v3, :cond_1

    .line 61
    .line 62
    :cond_0
    if-eqz v4, :cond_2

    .line 63
    .line 64
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    if-eqz v3, :cond_2

    .line 69
    .line 70
    :cond_1
    move v3, p2

    .line 71
    goto :goto_0

    .line 72
    :cond_2
    move v3, v6

    .line 73
    :goto_0
    iput v3, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->mDefaultValue:I

    .line 74
    .line 75
    iget-object v3, p1, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mContext:Landroid/content/Context;

    .line 76
    .line 77
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    iget v4, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->mDefaultValue:I

    .line 82
    .line 83
    const/4 v5, -0x2

    .line 84
    invoke-static {v3, v0, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-ne v0, v6, :cond_3

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_3
    move v6, p2

    .line 92
    :goto_1
    iput-boolean v6, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->mLastEnabled:Z

    .line 93
    .line 94
    iget-object p1, p1, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mContext:Landroid/content/Context;

    .line 95
    .line 96
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    const/4 v0, -0x1

    .line 101
    invoke-virtual {p1, v1, p2, p0, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1, v2, p2, p0, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 105
    .line 106
    .line 107
    sget-boolean p1, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->DEBUG:Z

    .line 108
    .line 109
    new-instance p1, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    const-string p2, "EdgeLightingSettingObserver : mLastEnabled = "

    .line 112
    .line 113
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    iget-boolean p2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->mLastEnabled:Z

    .line 117
    .line 118
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    const-string p2, " mDefaultValue = "

    .line 122
    .line 123
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    iget p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->mDefaultValue:I

    .line 127
    .line 128
    const-string p2, "EdgeLightingClientManager"

    .line 129
    .line 130
    invoke-static {p1, p0, p2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 131
    .line 132
    .line 133
    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 6

    .line 1
    const-string p1, "EdgeLightingClientManager"

    .line 2
    .line 3
    const/4 v0, -0x2

    .line 4
    const/4 v1, 0x0

    .line 5
    const/4 v2, 0x1

    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    iget-object v3, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->EDGE_LIGHTING_SETTING:Landroid/net/Uri;

    .line 9
    .line 10
    invoke-virtual {v3, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    if-eqz v3, :cond_2

    .line 15
    .line 16
    :cond_0
    iget-object v3, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->this$0:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;

    .line 17
    .line 18
    iget-object v3, v3, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    const-string v4, "edge_lighting"

    .line 25
    .line 26
    iget v5, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->mDefaultValue:I

    .line 27
    .line 28
    invoke-static {v3, v4, v5, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-ne v3, v2, :cond_1

    .line 33
    .line 34
    move v3, v2

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    move v3, v1

    .line 37
    :goto_0
    sget-boolean v4, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->DEBUG:Z

    .line 38
    .line 39
    const-string/jumbo v4, "onChange - edge_lighting : newValue = "

    .line 40
    .line 41
    .line 42
    const-string v5, " mLastEnabled = "

    .line 43
    .line 44
    invoke-static {v4, v5, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    iget-boolean v5, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->mLastEnabled:Z

    .line 49
    .line 50
    invoke-static {p1, v4, v5}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 51
    .line 52
    .line 53
    iget-boolean v4, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->mLastEnabled:Z

    .line 54
    .line 55
    if-eq v3, v4, :cond_2

    .line 56
    .line 57
    iput-boolean v3, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->mLastEnabled:Z

    .line 58
    .line 59
    if-eqz v3, :cond_2

    .line 60
    .line 61
    new-instance v3, Landroid/content/Intent;

    .line 62
    .line 63
    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 64
    .line 65
    .line 66
    const-string v4, "com.android.systemui"

    .line 67
    .line 68
    const-string v5, "com.android.systemui.edgelighting.EdgeLightingService"

    .line 69
    .line 70
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    .line 72
    .line 73
    :try_start_0
    iget-object v4, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->this$0:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;

    .line 74
    .line 75
    iget-object v4, v4, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mContext:Landroid/content/Context;

    .line 76
    .line 77
    sget-object v5, Landroid/os/UserHandle;->SEM_OWNER:Landroid/os/UserHandle;

    .line 78
    .line 79
    invoke-virtual {v4, v3, v5}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :catch_0
    move-exception v3

    .line 84
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 85
    .line 86
    .line 87
    :cond_2
    :goto_1
    if-eqz p2, :cond_3

    .line 88
    .line 89
    iget-object v3, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->EDGE_LIGHTING_SHOW_CONDITION:Landroid/net/Uri;

    .line 90
    .line 91
    invoke-virtual {v3, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result p2

    .line 95
    if-eqz p2, :cond_6

    .line 96
    .line 97
    :cond_3
    iget-object p2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->this$0:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;

    .line 98
    .line 99
    iget-object p2, p2, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mContext:Landroid/content/Context;

    .line 100
    .line 101
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 102
    .line 103
    .line 104
    move-result-object p2

    .line 105
    const-string v3, "edge_lighting_show_condition"

    .line 106
    .line 107
    invoke-static {p2, v3, v1, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 108
    .line 109
    .line 110
    move-result p2

    .line 111
    if-eqz p2, :cond_5

    .line 112
    .line 113
    if-eq p2, v2, :cond_4

    .line 114
    .line 115
    const/4 v0, 0x2

    .line 116
    if-eq p2, v0, :cond_5

    .line 117
    .line 118
    iget-object p2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->this$0:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;

    .line 119
    .line 120
    iput v1, p2, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mCondition:I

    .line 121
    .line 122
    goto :goto_2

    .line 123
    :cond_4
    iget-object p2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->this$0:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;

    .line 124
    .line 125
    iput v2, p2, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mCondition:I

    .line 126
    .line 127
    goto :goto_2

    .line 128
    :cond_5
    iget-object p2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->this$0:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;

    .line 129
    .line 130
    const/4 v0, 0x3

    .line 131
    iput v0, p2, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mCondition:I

    .line 132
    .line 133
    :goto_2
    sget-boolean p2, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->DEBUG:Z

    .line 134
    .line 135
    new-instance p2, Ljava/lang/StringBuilder;

    .line 136
    .line 137
    const-string/jumbo v0, "onChange - edge_lighting_show_condition : mCondition = "

    .line 138
    .line 139
    .line 140
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->this$0:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;

    .line 144
    .line 145
    iget p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mCondition:I

    .line 146
    .line 147
    invoke-static {p2, p0, p1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 148
    .line 149
    .line 150
    :cond_6
    return-void
.end method

.method public final recheckEdgeLightingDefaultValue()V
    .locals 7

    .line 1
    const-string v0, "edge_lighting"

    .line 2
    .line 3
    const-string/jumbo v1, "recheckEdgeLightingDefaultValue : mLastEnabled = "

    .line 4
    .line 5
    .line 6
    iget-object v2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->defaultEdgeLighting:Ljava/lang/String;

    .line 7
    .line 8
    const-string v3, "-defaulton"

    .line 9
    .line 10
    const/4 v4, 0x0

    .line 11
    const/4 v5, 0x1

    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-nez v2, :cond_1

    .line 19
    .line 20
    :cond_0
    iget-object v2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->defaultCarrierEdgeLighting:Ljava/lang/String;

    .line 21
    .line 22
    if-eqz v2, :cond_2

    .line 23
    .line 24
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_2

    .line 29
    .line 30
    :cond_1
    move v2, v4

    .line 31
    goto :goto_0

    .line 32
    :cond_2
    move v2, v5

    .line 33
    :goto_0
    iput v2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->mDefaultValue:I

    .line 34
    .line 35
    sget-boolean v2, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->DEBUG:Z

    .line 36
    .line 37
    new-instance v2, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string/jumbo v3, "recheckEdgeLightingDefaultValue : mDefaultValue = "

    .line 40
    .line 41
    .line 42
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget v3, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->mDefaultValue:I

    .line 46
    .line 47
    const-string v6, "EdgeLightingClientManager"

    .line 48
    .line 49
    invoke-static {v2, v3, v6}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 50
    .line 51
    .line 52
    const/4 v2, -0x2

    .line 53
    :try_start_0
    iget-object v3, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->this$0:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;

    .line 54
    .line 55
    iget-object v3, v3, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mContext:Landroid/content/Context;

    .line 56
    .line 57
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    invoke-static {v3, v0, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    if-ne v3, v5, :cond_3

    .line 66
    .line 67
    move v3, v5

    .line 68
    goto :goto_1

    .line 69
    :cond_3
    move v3, v4

    .line 70
    :goto_1
    iput-boolean v3, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->mLastEnabled:Z

    .line 71
    .line 72
    new-instance v3, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    iget-boolean v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->mLastEnabled:Z

    .line 78
    .line 79
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-static {v6, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    .line 88
    .line 89
    goto :goto_2

    .line 90
    :catch_0
    iget v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->mDefaultValue:I

    .line 91
    .line 92
    if-ne v1, v5, :cond_4

    .line 93
    .line 94
    move v4, v5

    .line 95
    :cond_4
    iput-boolean v4, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->mLastEnabled:Z

    .line 96
    .line 97
    iget-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->this$0:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;

    .line 98
    .line 99
    iget-object v1, v1, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mContext:Landroid/content/Context;

    .line 100
    .line 101
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    iget v3, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->mDefaultValue:I

    .line 106
    .line 107
    invoke-static {v1, v0, v3, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 108
    .line 109
    .line 110
    sget-boolean v0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->DEBUG:Z

    .line 111
    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    const-string/jumbo v1, "recheckEdgeLightingDefaultValue - SettingNotFoundException : mLastEnabled = "

    .line 115
    .line 116
    .line 117
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    iget-boolean p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->mLastEnabled:Z

    .line 121
    .line 122
    invoke-static {v6, v0, p0}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 123
    .line 124
    .line 125
    :goto_2
    return-void
.end method
