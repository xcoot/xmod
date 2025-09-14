.class public final Lcom/android/server/biometrics/AuthenticationStatsCollector$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/AuthenticationStatsCollector;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/AuthenticationStatsCollector;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector$1;->this$0:Lcom/android/server/biometrics/AuthenticationStatsCollector;

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
    .locals 5

    .line 1
    const-string/jumbo p1, "frr_stats"

    .line 2
    .line 3
    .line 4
    const-string v0, "android.intent.extra.user_handle"

    .line 5
    .line 6
    const/16 v1, -0x2710

    .line 7
    .line 8
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eq v0, v1, :cond_3

    .line 13
    .line 14
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    const-string v1, "android.intent.action.USER_REMOVED"

    .line 19
    .line 20
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    if-eqz p2, :cond_3

    .line 25
    .line 26
    const-string p2, "Removing data for user: "

    .line 27
    .line 28
    const-string v1, "AuthenticationStatsCollector"

    .line 29
    .line 30
    invoke-static {v0, p2, v1}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object p0, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector$1;->this$0:Lcom/android/server/biometrics/AuthenticationStatsCollector;

    .line 34
    .line 35
    iget-object p2, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mUserAuthenticationStatsMap:Ljava/util/Map;

    .line 36
    .line 37
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    check-cast p2, Ljava/util/HashMap;

    .line 42
    .line 43
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    iget-object p0, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mAuthenticationStatsPersister:Lcom/android/server/biometrics/AuthenticationStatsPersister;

    .line 47
    .line 48
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    :try_start_0
    new-instance p2, Ljava/util/HashSet;

    .line 52
    .line 53
    iget-object v1, p0, Lcom/android/server/biometrics/AuthenticationStatsPersister;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 54
    .line 55
    invoke-static {}, Ljava/util/Set;->of()Ljava/util/Set;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-direct {p2, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    if-eqz v2, :cond_2

    .line 75
    .line 76
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    check-cast v2, Ljava/lang/String;

    .line 81
    .line 82
    new-instance v3, Lorg/json/JSONObject;

    .line 83
    .line 84
    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    const-string/jumbo v2, "user_id"

    .line 88
    .line 89
    .line 90
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 91
    .line 92
    .line 93
    move-result v4

    .line 94
    if-eqz v4, :cond_1

    .line 95
    .line 96
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    goto :goto_0

    .line 101
    :cond_1
    const-string v2, ""

    .line 102
    .line 103
    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    if-eqz v2, :cond_0

    .line 112
    .line 113
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 114
    .line 115
    .line 116
    :cond_2
    iget-object p0, p0, Lcom/android/server/biometrics/AuthenticationStatsPersister;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 117
    .line 118
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    .line 128
    .line 129
    :catch_0
    :cond_3
    return-void
.end method
