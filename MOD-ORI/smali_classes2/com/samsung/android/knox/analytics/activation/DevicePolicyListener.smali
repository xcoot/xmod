.class public final Lcom/samsung/android/knox/analytics/activation/DevicePolicyListener;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final ACTION_DEVICE_OWNER_CHANGED:Ljava/lang/String; = "android.app.action.DEVICE_OWNER_CHANGED"

.field public static final ACTION_PROFILE_OWNER_ADDED:Ljava/lang/String; = "android.intent.action.MANAGED_PROFILE_ADDED"

.field public static final ACTION_PROFILE_OWNER_REMOVED:Ljava/lang/String; = "android.intent.action.MANAGED_PROFILE_REMOVED"

.field public static final EXTRA_DO_CHANGED_STATUS:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.EXTRA_DO_CHANGED_STATUS"

.field public static final EXTRA_DO_PO_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.EXTRA_DO_PO_PACKAGE_NAME"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final mActivationMonitor:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;

.field public final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/samsung/android/knox/analytics/activation/DevicePolicyListener;

    .line 2
    .line 3
    const-string v0, "[KnoxAnalytics] DevicePolicyListener"

    .line 4
    .line 5
    sput-object v0, Lcom/samsung/android/knox/analytics/activation/DevicePolicyListener;->TAG:Ljava/lang/String;

    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/knox/analytics/activation/DevicePolicyListener;->mActivationMonitor:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/samsung/android/knox/analytics/activation/DevicePolicyListener;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 1
    const/4 p1, 0x0

    .line 2
    sget-object v0, Lcom/samsung/android/knox/analytics/activation/DevicePolicyListener;->TAG:Ljava/lang/String;

    .line 3
    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    const-string/jumbo v2, "onReceive("

    .line 7
    .line 8
    .line 9
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v2, ")"

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    const-string v1, "com.samsung.android.knox.intent.extra.EXTRA_DO_PO_PACKAGE_NAME"

    .line 39
    .line 40
    const/4 v2, -0x1

    .line 41
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    sparse-switch v3, :sswitch_data_0

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :sswitch_0
    const-string v3, "android.intent.action.MANAGED_PROFILE_REMOVED"

    .line 50
    .line 51
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-nez v0, :cond_0

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    const/4 v2, 0x2

    .line 59
    goto :goto_0

    .line 60
    :sswitch_1
    const-string v3, "android.app.action.DEVICE_OWNER_CHANGED"

    .line 61
    .line 62
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-nez v0, :cond_1

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_1
    const/4 v2, 0x1

    .line 70
    goto :goto_0

    .line 71
    :sswitch_2
    const-string v3, "android.intent.action.MANAGED_PROFILE_ADDED"

    .line 72
    .line 73
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-nez v0, :cond_2

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_2
    move v2, p1

    .line 81
    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :pswitch_0
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/activation/DevicePolicyListener;->mActivationMonitor:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;

    .line 90
    .line 91
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->onPoRemoved(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    goto :goto_1

    .line 95
    :pswitch_1
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/activation/DevicePolicyListener;->mActivationMonitor:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;

    .line 100
    .line 101
    const-string v1, "com.samsung.android.knox.intent.extra.EXTRA_DO_CHANGED_STATUS"

    .line 102
    .line 103
    invoke-virtual {p2, v1, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->checkDO(Ljava/lang/String;Z)V

    .line 108
    .line 109
    .line 110
    goto :goto_1

    .line 111
    :pswitch_2
    const-string p1, "android.intent.extra.USER"

    .line 112
    .line 113
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    check-cast p1, Landroid/os/UserHandle;

    .line 118
    .line 119
    if-eqz p1, :cond_3

    .line 120
    .line 121
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/activation/DevicePolicyListener;->mActivationMonitor:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;

    .line 122
    .line 123
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    .line 124
    .line 125
    .line 126
    move-result p1

    .line 127
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->onPoAdded(I)V

    .line 128
    .line 129
    .line 130
    :cond_3
    :goto_1
    return-void

    .line 131
    :sswitch_data_0
    .sparse-switch
        -0x16fbb1bb -> :sswitch_2
        0x161995ab -> :sswitch_1
        0x3eac4465 -> :sswitch_0
    .end sparse-switch

    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final register()V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/knox/analytics/activation/DevicePolicyListener;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string/jumbo v1, "start()"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    new-instance v0, Landroid/content/IntentFilter;

    .line 10
    .line 11
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v1, "android.app.action.DEVICE_OWNER_CHANGED"

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string v1, "android.intent.action.MANAGED_PROFILE_ADDED"

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const-string v1, "android.intent.action.MANAGED_PROFILE_REMOVED"

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lcom/samsung/android/knox/analytics/activation/DevicePolicyListener;->mContext:Landroid/content/Context;

    .line 30
    .line 31
    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 32
    .line 33
    .line 34
    return-void
.end method
