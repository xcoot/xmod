.class public final Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mCtxt:Landroid/content/Context;

.field public final mIntentReceiver:Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor$1;

.field public final mReceiver:Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor$1;

.field public final mTelephonyManager:Landroid/telephony/TelephonyManager;

.field public final synthetic this$0:Lcom/android/server/enterprise/general/MiscPolicy;


# direct methods
.method public static -$$Nest$msaveSimState(Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, "CurrentSimSerialNumber"

    .line 5
    .line 6
    invoke-static {v0}, Lcom/android/server/enterprise/utils/Utils;->readPropertyValue(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    iget-object v2, p0, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 13
    .line 14
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    iget-object v2, p0, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 21
    .line 22
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const-string v1, "CurrentSimCountryIso"

    .line 34
    .line 35
    invoke-static {v1}, Lcom/android/server/enterprise/utils/Utils;->readPropertyValue(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    const-string v3, "PreviousSimCountryIso"

    .line 40
    .line 41
    const-string v4, "/data/system/SimCard.dat"

    .line 42
    .line 43
    invoke-static {v3, v2, v4}, Lcom/android/server/enterprise/utils/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const-string v2, "CurrentSimOperator"

    .line 47
    .line 48
    invoke-static {v2}, Lcom/android/server/enterprise/utils/Utils;->readPropertyValue(Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    const-string v5, "PreviousSimOperator"

    .line 53
    .line 54
    invoke-static {v5, v3, v4}, Lcom/android/server/enterprise/utils/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    const-string v3, "CurrentSimOperatorName"

    .line 58
    .line 59
    invoke-static {v3}, Lcom/android/server/enterprise/utils/Utils;->readPropertyValue(Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    const-string v6, "PreviousSimOperatorName"

    .line 64
    .line 65
    invoke-static {v6, v5, v4}, Lcom/android/server/enterprise/utils/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    const-string v5, "PreviousSimSerialNumber"

    .line 69
    .line 70
    invoke-static {v0}, Lcom/android/server/enterprise/utils/Utils;->readPropertyValue(Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v6

    .line 74
    invoke-static {v5, v6, v4}, Lcom/android/server/enterprise/utils/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    const-string v5, "CurrentSimPhoneNumber"

    .line 78
    .line 79
    invoke-static {v5}, Lcom/android/server/enterprise/utils/Utils;->readPropertyValue(Ljava/lang/String;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v6

    .line 83
    const-string v7, "PreviousSimPhoneNumber"

    .line 84
    .line 85
    invoke-static {v7, v6, v4}, Lcom/android/server/enterprise/utils/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    iget-object v6, p0, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 89
    .line 90
    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v6

    .line 94
    invoke-static {v1, v6, v4}, Lcom/android/server/enterprise/utils/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    iget-object v1, p0, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 98
    .line 99
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-static {v2, v1, v4}, Lcom/android/server/enterprise/utils/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    iget-object v1, p0, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 107
    .line 108
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-static {v3, v1, v4}, Lcom/android/server/enterprise/utils/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    iget-object v1, p0, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 116
    .line 117
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    invoke-static {v0, v1, v4}, Lcom/android/server/enterprise/utils/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    iget-object p0, p0, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 125
    .line 126
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    invoke-static {v5, p0, v4}, Lcom/android/server/enterprise/utils/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    new-instance p0, Ljava/io/File;

    .line 134
    .line 135
    invoke-direct {p0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object p0

    .line 142
    const/16 v0, 0x1a0

    .line 143
    .line 144
    const/4 v1, -0x1

    .line 145
    invoke-static {p0, v0, v1, v1}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 146
    .line 147
    .line 148
    :goto_0
    return-void
.end method

.method public constructor <init>(Lcom/android/server/enterprise/general/MiscPolicy;Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;->this$0:Lcom/android/server/enterprise/general/MiscPolicy;

    .line 5
    .line 6
    new-instance p1, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor$1;

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    invoke-direct {p1, p0, v0}, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor$1;-><init>(Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;I)V

    .line 10
    .line 11
    .line 12
    new-instance v0, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor$1;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-direct {v0, p0, v1}, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor$1;-><init>(Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;I)V

    .line 16
    .line 17
    .line 18
    iput-object p2, p0, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;->mCtxt:Landroid/content/Context;

    .line 19
    .line 20
    const-string/jumbo v1, "phone"

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 28
    .line 29
    iput-object v1, p0, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 30
    .line 31
    new-instance p0, Landroid/content/IntentFilter;

    .line 32
    .line 33
    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 34
    .line 35
    .line 36
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    .line 37
    .line 38
    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2, p1, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 42
    .line 43
    .line 44
    new-instance p0, Landroid/content/IntentFilter;

    .line 45
    .line 46
    const-string/jumbo p1, "com.samsung.android.knox.intent.action.KNOXFRAMEWORK_SYSTEMUI_UPDATE_INTENT_INTERNAL"

    .line 47
    .line 48
    .line 49
    invoke-direct {p0, p1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    const/4 p1, 0x2

    .line 53
    invoke-virtual {p2, v0, p0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 54
    .line 55
    .line 56
    return-void
.end method
