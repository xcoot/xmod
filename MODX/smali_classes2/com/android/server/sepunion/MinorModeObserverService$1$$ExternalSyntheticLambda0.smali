.class public final synthetic Lcom/android/server/sepunion/MinorModeObserverService$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/sepunion/MinorModeObserverService$1;

.field public final synthetic f$1:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/sepunion/MinorModeObserverService$1;Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/sepunion/MinorModeObserverService$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/sepunion/MinorModeObserverService$1;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/sepunion/MinorModeObserverService$1$$ExternalSyntheticLambda0;->f$1:Landroid/content/Intent;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/sepunion/MinorModeObserverService$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/sepunion/MinorModeObserverService$1;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/sepunion/MinorModeObserverService$1$$ExternalSyntheticLambda0;->f$1:Landroid/content/Intent;

    .line 4
    .line 5
    sget v1, Lcom/android/server/sepunion/MinorModeObserverService$1;->$r8$clinit:I

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string/jumbo v2, "onReceive: "

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const-string v2, "MinorModeObserverService"

    .line 30
    .line 31
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    const-string v1, "android.intent.action.USER_UNLOCKED"

    .line 39
    .line 40
    invoke-static {p0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    if-eqz p0, :cond_4

    .line 45
    .line 46
    iget-object p0, v0, Lcom/android/server/sepunion/MinorModeObserverService$1;->this$0:Lcom/android/server/sepunion/MinorModeObserverService;

    .line 47
    .line 48
    iget-object p0, p0, Lcom/android/server/sepunion/MinorModeObserverService;->mContext:Landroid/content/Context;

    .line 49
    .line 50
    const-string/jumbo v1, "user"

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    check-cast p0, Landroid/os/UserManager;

    .line 58
    .line 59
    if-eqz p0, :cond_3

    .line 60
    .line 61
    invoke-virtual {p0}, Landroid/os/UserManager;->isUserUnlocked()Z

    .line 62
    .line 63
    .line 64
    move-result p0

    .line 65
    if-eqz p0, :cond_3

    .line 66
    .line 67
    iget-object p0, v0, Lcom/android/server/sepunion/MinorModeObserverService$1;->this$0:Lcom/android/server/sepunion/MinorModeObserverService;

    .line 68
    .line 69
    iget-object v0, p0, Lcom/android/server/sepunion/MinorModeObserverService;->mContext:Landroid/content/Context;

    .line 70
    .line 71
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    const-string/jumbo v1, "minors_mode"

    .line 76
    .line 77
    .line 78
    const/4 v3, 0x0

    .line 79
    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    const/4 v1, 0x1

    .line 84
    if-ne v0, v1, :cond_0

    .line 85
    .line 86
    move v0, v1

    .line 87
    goto :goto_0

    .line 88
    :cond_0
    move v0, v3

    .line 89
    :goto_0
    iput-boolean v0, p0, Lcom/android/server/sepunion/MinorModeObserverService;->mMinorModeSupport:Z

    .line 90
    .line 91
    iget-object v0, p0, Lcom/android/server/sepunion/MinorModeObserverService;->mContext:Landroid/content/Context;

    .line 92
    .line 93
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    const-string/jumbo v4, "minors_mode_enabled"

    .line 98
    .line 99
    .line 100
    invoke-static {v0, v4, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    if-ne v0, v1, :cond_1

    .line 105
    .line 106
    move v3, v1

    .line 107
    :cond_1
    iput-boolean v3, p0, Lcom/android/server/sepunion/MinorModeObserverService;->mMinorModeEnabled:Z

    .line 108
    .line 109
    invoke-virtual {p0}, Lcom/android/server/sepunion/MinorModeObserverService;->handleLimitPackages()V

    .line 110
    .line 111
    .line 112
    iget-object v0, p0, Lcom/android/server/sepunion/MinorModeObserverService;->mContext:Landroid/content/Context;

    .line 113
    .line 114
    const-string/jumbo v1, "usagestats"

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    check-cast v0, Landroid/app/usage/UsageStatsManager;

    .line 122
    .line 123
    if-eqz v0, :cond_2

    .line 124
    .line 125
    iget-object v1, p0, Lcom/android/server/sepunion/MinorModeObserverService;->mUsageStatsWatcher:Lcom/android/server/sepunion/MinorModeObserverService$2;

    .line 126
    .line 127
    invoke-virtual {v0, v1}, Landroid/app/usage/UsageStatsManager;->registerUsageStatsWatcher(Lcom/samsung/android/app/usage/IUsageStatsWatcher;)V

    .line 128
    .line 129
    .line 130
    iget v0, p0, Lcom/android/server/sepunion/MinorModeObserverService;->mObserverRegisterState:I

    .line 131
    .line 132
    or-int/lit8 v0, v0, 0x2

    .line 133
    .line 134
    iput v0, p0, Lcom/android/server/sepunion/MinorModeObserverService;->mObserverRegisterState:I

    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_2
    const-string p0, "get UsageStatsManager null"

    .line 138
    .line 139
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    .line 141
    .line 142
    goto :goto_1

    .line 143
    :cond_3
    const-string/jumbo p0, "registerUsageStatsWatcher: failed"

    .line 144
    .line 145
    .line 146
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    .line 148
    .line 149
    :cond_4
    :goto_1
    return-void
.end method
